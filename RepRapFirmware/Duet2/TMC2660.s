ARM GAS  /tmp/cccpp1UI.s 			page 1


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
  13              		.file	"TMC2660.cpp"
  14              		.section	.text._ZN14TmcDriverState4InitEmm,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN14TmcDriverState4InitEmm
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14TmcDriverState4InitEmm, %function
  23              	_ZN14TmcDriverState4InitEmm:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 0162     		str	r1, [r0, #32]
  29 0006 4261     		str	r2, [r0, #20]
  30 0008 0421     		movs	r1, #4
  31 000a D0B2     		uxtb	r0, r2
  32 000c 0022     		movs	r2, #0
  33 000e FFF7FEFF 		bl	pinModeDuet
  34 0012 4FF40173 		mov	r3, #516
  35 0016 1C4A     		ldr	r2, .L4
  36 0018 2360     		str	r3, [r4]
  37 001a 1C48     		ldr	r0, .L4+4
  38 001c A260     		str	r2, [r4, #8]
  39 001e 1C49     		ldr	r1, .L4+8
  40 0020 0022     		movs	r2, #0
  41 0022 1F23     		movs	r3, #31
  42 0024 4FF42025 		mov	r5, #655360
  43 0028 2561     		str	r5, [r4, #16]
  44 002a 6060     		str	r0, [r4, #4]
  45 002c E160     		str	r1, [r4, #12]
  46 002e E361     		str	r3, [r4, #28]
  47 0030 6263     		str	r2, [r4, #52]
  48 0032 A263     		str	r2, [r4, #56]
  49 0034 2368     		ldr	r3, [r4]
  50 0036 1749     		ldr	r1, .L4+12
  51 0038 84F83C20 		strb	r2, [r4, #60]
  52 003c 23F00F03 		bic	r3, r3, #15
  53 0040 43F40173 		orr	r3, r3, #516
  54 0044 2360     		str	r3, [r4]
  55 0046 E369     		ldr	r3, [r4, #28]
  56 0048 2263     		str	r2, [r4, #48]
  57 004a 43F00103 		orr	r3, r3, #1
ARM GAS  /tmp/cccpp1UI.s 			page 2


  58 004e E361     		str	r3, [r4, #28]
  59 0050 6368     		ldr	r3, [r4, #4]
  60 0052 A161     		str	r1, [r4, #24]
  61 0054 23F4FE43 		bic	r3, r3, #32512
  62 0058 43F48073 		orr	r3, r3, #256
  63 005c 6360     		str	r3, [r4, #4]
  64 005e E369     		ldr	r3, [r4, #28]
  65 0060 43F00203 		orr	r3, r3, #2
  66 0064 E361     		str	r3, [r4, #28]
  67 0066 6368     		ldr	r3, [r4, #4]
  68 0068 23F48033 		bic	r3, r3, #65536
  69 006c 6360     		str	r3, [r4, #4]
  70 006e E369     		ldr	r3, [r4, #28]
  71 0070 40F2FF30 		movw	r0, #1023
  72 0074 0421     		movs	r1, #4
  73 0076 43F00203 		orr	r3, r3, #2
  74 007a 41F24F22 		movw	r2, #4687
  75 007e E062     		str	r0, [r4, #44]
  76 0080 6162     		str	r1, [r4, #36]
  77 0082 E361     		str	r3, [r4, #28]
  78 0084 A262     		str	r2, [r4, #40]
  79 0086 38BD     		pop	{r3, r4, r5, pc}
  80              	.L5:
  81              		.align	2
  82              	.L4:
  83 0088 B0010900 		.word	590256
  84 008c 00010C00 		.word	786688
  85 0090 50030E00 		.word	918352
  86 0094 B4010900 		.word	590260
  87              		.size	_ZN14TmcDriverState4InitEmm, .-_ZN14TmcDriverState4InitEmm
  88              		.section	.text._ZN14TmcDriverState11SetChopConfEm,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZN14TmcDriverState11SetChopConfEm
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	_ZN14TmcDriverState11SetChopConfEm, %function
  97              	_ZN14TmcDriverState11SetChopConfEm:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 C1F31003 		ubfx	r3, r1, #0, #17
 102 0004 90F83C20 		ldrb	r2, [r0, #60]	@ zero_extendqisi2
 103 0008 43F40023 		orr	r3, r3, #524288
 104 000c 8361     		str	r3, [r0, #24]
 105 000e 1AB9     		cbnz	r2, .L7
 106 0010 054B     		ldr	r3, .L8
 107 0012 0B40     		ands	r3, r3, r1
 108 0014 43F40023 		orr	r3, r3, #524288
 109              	.L7:
 110 0018 8360     		str	r3, [r0, #8]
 111 001a C369     		ldr	r3, [r0, #28]
 112 001c 43F00403 		orr	r3, r3, #4
 113 0020 C361     		str	r3, [r0, #28]
 114 0022 0120     		movs	r0, #1
ARM GAS  /tmp/cccpp1UI.s 			page 3


 115 0024 7047     		bx	lr
 116              	.L9:
 117 0026 00BF     		.align	2
 118              	.L8:
 119 0028 F0FF0100 		.word	131056
 120              		.size	_ZN14TmcDriverState11SetChopConfEm, .-_ZN14TmcDriverState11SetChopConfEm
 121              		.section	.text._ZN14TmcDriverState13SetDriverModeEj,"ax",%progbits
 122              		.align	1
 123              		.p2align 2,,3
 124              		.global	_ZN14TmcDriverState13SetDriverModeEj
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu fpv4-sp-d16
 129              		.type	_ZN14TmcDriverState13SetDriverModeEj, %function
 130              	_ZN14TmcDriverState13SetDriverModeEj:
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133              		@ link register save eliminated.
 134 0000 0129     		cmp	r1, #1
 135 0002 23D0     		beq	.L12
 136 0004 11D3     		bcc	.L13
 137 0006 0229     		cmp	r1, #2
 138 0008 0DD1     		bne	.L20
 139 000a 8269     		ldr	r2, [r0, #24]
 140 000c 90F83C10 		ldrb	r1, [r0, #60]	@ zero_extendqisi2
 141 0010 22F4C043 		bic	r3, r2, #24576
 142 0014 8361     		str	r3, [r0, #24]
 143 0016 59B3     		cbz	r1, .L21
 144              	.L17:
 145 0018 8360     		str	r3, [r0, #8]
 146 001a C369     		ldr	r3, [r0, #28]
 147 001c 43F00403 		orr	r3, r3, #4
 148 0020 C361     		str	r3, [r0, #28]
 149 0022 0120     		movs	r0, #1
 150 0024 7047     		bx	lr
 151              	.L20:
 152 0026 0020     		movs	r0, #0
 153 0028 7047     		bx	lr
 154              	.L13:
 155 002a 8269     		ldr	r2, [r0, #24]
 156 002c 90F83C10 		ldrb	r1, [r0, #60]	@ zero_extendqisi2
 157 0030 22F4C043 		bic	r3, r2, #24576
 158 0034 43F48043 		orr	r3, r3, #16384
 159 0038 8361     		str	r3, [r0, #24]
 160 003a 0029     		cmp	r1, #0
 161 003c ECD1     		bne	.L17
 162 003e 22F4C043 		bic	r3, r2, #24576
 163 0042 23F00F03 		bic	r3, r3, #15
 164 0046 43F48043 		orr	r3, r3, #16384
 165 004a E5E7     		b	.L17
 166              	.L12:
 167 004c 8369     		ldr	r3, [r0, #24]
 168 004e 90F83C10 		ldrb	r1, [r0, #60]	@ zero_extendqisi2
 169 0052 43F4C042 		orr	r2, r3, #24576
 170 0056 8261     		str	r2, [r0, #24]
 171 0058 19B9     		cbnz	r1, .L16
ARM GAS  /tmp/cccpp1UI.s 			page 4


 172 005a 23F00F03 		bic	r3, r3, #15
 173 005e 43F4C042 		orr	r2, r3, #24576
 174              	.L16:
 175 0062 8260     		str	r2, [r0, #8]
 176 0064 C369     		ldr	r3, [r0, #28]
 177 0066 43F00403 		orr	r3, r3, #4
 178 006a C361     		str	r3, [r0, #28]
 179 006c 0120     		movs	r0, #1
 180 006e 7047     		bx	lr
 181              	.L21:
 182 0070 23F00F03 		bic	r3, r3, #15
 183 0074 D0E7     		b	.L17
 184              		.size	_ZN14TmcDriverState13SetDriverModeEj, .-_ZN14TmcDriverState13SetDriverModeEj
 185 0076 00BF     		.section	.text._ZNK14TmcDriverState13GetDriverModeEv,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	_ZNK14TmcDriverState13GetDriverModeEv
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	_ZNK14TmcDriverState13GetDriverModeEv, %function
 194              	_ZNK14TmcDriverState13GetDriverModeEv:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 8069     		ldr	r0, [r0, #24]
 199 0002 4304     		lsls	r3, r0, #17
 200 0004 4CBF     		ite	mi
 201 0006 C0F34030 		ubfxmi	r0, r0, #13, #1
 202 000a 0220     		movpl	r0, #2
 203 000c 7047     		bx	lr
 204              		.size	_ZNK14TmcDriverState13GetDriverModeEv, .-_ZNK14TmcDriverState13GetDriverModeEv
 205 000e 00BF     		.section	.text._ZN14TmcDriverState16SetMicrosteppingEmb,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	_ZN14TmcDriverState16SetMicrosteppingEmb
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_ZN14TmcDriverState16SetMicrosteppingEmb, %function
 214              	_ZN14TmcDriverState16SetMicrosteppingEmb:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 0368     		ldr	r3, [r0]
 219 0002 4162     		str	r1, [r0, #36]
 220 0004 C1F10801 		rsb	r1, r1, #8
 221 0008 01F00F01 		and	r1, r1, #15
 222 000c 23F00F03 		bic	r3, r3, #15
 223 0010 1943     		orrs	r1, r1, r3
 224 0012 42B9     		cbnz	r2, .L28
 225 0014 21F40071 		bic	r1, r1, #512
 226              	.L27:
 227 0018 0160     		str	r1, [r0]
 228 001a C369     		ldr	r3, [r0, #28]
ARM GAS  /tmp/cccpp1UI.s 			page 5


 229 001c 43F00103 		orr	r3, r3, #1
 230 0020 C361     		str	r3, [r0, #28]
 231 0022 0120     		movs	r0, #1
 232 0024 7047     		bx	lr
 233              	.L28:
 234 0026 41F40071 		orr	r1, r1, #512
 235 002a F5E7     		b	.L27
 236              		.size	_ZN14TmcDriverState16SetMicrosteppingEmb, .-_ZN14TmcDriverState16SetMicrosteppingEmb
 237              		.section	.text._ZN14TmcDriverState10SetCurrentEf,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZN14TmcDriverState10SetCurrentEf
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZN14TmcDriverState10SetCurrentEf, %function
 246              	_ZN14TmcDriverState10SetCurrentEf:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 B4EE400A 		vcmp.f32	s0, s0
 251 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 252 0008 1AD6     		bvs	.L33
 253 000a DFED157A 		vldr.32	s15, .L37
 254 000e B4EEE70A 		vcmpe.f32	s0, s15
 255 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 256 0016 11D5     		bpl	.L36
 257 0018 DFED127A 		vldr.32	s15, .L37+4
 258 001c B4EEE70A 		vcmpe.f32	s0, s15
 259 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 260 0024 0CDC     		bgt	.L33
 261 0026 0023     		movs	r3, #0
 262              	.L31:
 263 0028 4268     		ldr	r2, [r0, #4]
 264 002a 22F01F02 		bic	r2, r2, #31
 265 002e 1343     		orrs	r3, r3, r2
 266 0030 4360     		str	r3, [r0, #4]
 267 0032 C369     		ldr	r3, [r0, #28]
 268 0034 43F00203 		orr	r3, r3, #2
 269 0038 C361     		str	r3, [r0, #28]
 270 003a 7047     		bx	lr
 271              	.L36:
 272 003c 1723     		movs	r3, #23
 273 003e F3E7     		b	.L31
 274              	.L33:
 275 0040 BCEEC00A 		vcvt.u32.f32	s0, s0
 276 0044 0849     		ldr	r1, .L37+8
 277 0046 10EE103A 		vmov	r3, s0	@ int
 278 004a 03F10062 		add	r2, r3, #134217728
 279 004e 323A     		subs	r2, r2, #50
 280 0050 5301     		lsls	r3, r2, #5
 281 0052 9B08     		lsrs	r3, r3, #2
 282 0054 A1FB0323 		umull	r2, r3, r1, r3
 283 0058 C3F30413 		ubfx	r3, r3, #4, #5
 284 005c E4E7     		b	.L31
 285              	.L38:
ARM GAS  /tmp/cccpp1UI.s 			page 6


 286 005e 00BF     		.align	2
 287              	.L37:
 288 0060 00001645 		.word	1159069696
 289 0064 0000C842 		.word	1120403456
 290 0068 71231005 		.word	84943729
 291              		.size	_ZN14TmcDriverState10SetCurrentEf, .-_ZN14TmcDriverState10SetCurrentEf
 292              		.section	.text._ZN14TmcDriverState6EnableEb,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	_ZN14TmcDriverState6EnableEb
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	_ZN14TmcDriverState6EnableEb, %function
 301              	_ZN14TmcDriverState6EnableEb:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304              		@ link register save eliminated.
 305 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 306 0004 8B42     		cmp	r3, r1
 307 0006 0AD0     		beq	.L39
 308 0008 8369     		ldr	r3, [r0, #24]
 309 000a 49B9     		cbnz	r1, .L43
 310 000c 80F83C10 		strb	r1, [r0, #60]
 311 0010 23F00F03 		bic	r3, r3, #15
 312              	.L42:
 313 0014 8360     		str	r3, [r0, #8]
 314 0016 C369     		ldr	r3, [r0, #28]
 315 0018 43F00403 		orr	r3, r3, #4
 316 001c C361     		str	r3, [r0, #28]
 317              	.L39:
 318 001e 7047     		bx	lr
 319              	.L43:
 320 0020 826B     		ldr	r2, [r0, #56]
 321 0022 22F00102 		bic	r2, r2, #1
 322 0026 8263     		str	r2, [r0, #56]
 323 0028 426B     		ldr	r2, [r0, #52]
 324 002a 0121     		movs	r1, #1
 325 002c 22F00102 		bic	r2, r2, #1
 326 0030 4263     		str	r2, [r0, #52]
 327 0032 80F83C10 		strb	r1, [r0, #60]
 328 0036 EDE7     		b	.L42
 329              		.size	_ZN14TmcDriverState6EnableEb, .-_ZN14TmcDriverState6EnableEb
 330              		.section	.text._ZN14TmcDriverState22UpdateChopConfRegisterEv,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZN14TmcDriverState22UpdateChopConfRegisterEv
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZN14TmcDriverState22UpdateChopConfRegisterEv, %function
 339              	_ZN14TmcDriverState22UpdateChopConfRegisterEv:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342              		@ link register save eliminated.
ARM GAS  /tmp/cccpp1UI.s 			page 7


 343 0000 90F83C20 		ldrb	r2, [r0, #60]	@ zero_extendqisi2
 344 0004 8369     		ldr	r3, [r0, #24]
 345 0006 0AB9     		cbnz	r2, .L45
 346 0008 23F00F03 		bic	r3, r3, #15
 347              	.L45:
 348 000c 8360     		str	r3, [r0, #8]
 349 000e C369     		ldr	r3, [r0, #28]
 350 0010 43F00403 		orr	r3, r3, #4
 351 0014 C361     		str	r3, [r0, #28]
 352 0016 7047     		bx	lr
 353              		.size	_ZN14TmcDriverState22UpdateChopConfRegisterEv, .-_ZN14TmcDriverState22UpdateChopConfRegister
 354              		.section	.text._ZN14TmcDriverState21ReadAccumulatedStatusEm,"ax",%progbits
 355              		.align	1
 356              		.p2align 2,,3
 357              		.global	_ZN14TmcDriverState21ReadAccumulatedStatusEm
 358              		.syntax unified
 359              		.thumb
 360              		.thumb_func
 361              		.fpu fpv4-sp-d16
 362              		.type	_ZN14TmcDriverState21ReadAccumulatedStatusEm, %function
 363              	_ZN14TmcDriverState21ReadAccumulatedStatusEm:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366              		@ link register save eliminated.
 367 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 368 0004 002B     		cmp	r3, #0
 369 0006 70B4     		push	{r4, r5, r6}
 370 0008 14BF     		ite	ne
 371 000a 4FF0FF35 		movne	r5, #-1
 372 000e 6FF00105 		mvneq	r5, #1
 373              		.syntax unified
 374              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 375 0012 EFF31084 		MRS r4, primask
 376              	@ 0 "" 2
 377              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 378 0016 72B6     		cpsid i
 379              	@ 0 "" 2
 380              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 381 0018 BFF35F8F 		dmb
 382              	@ 0 "" 2
 383              		.thumb
 384              		.syntax unified
 385 001c 094E     		ldr	r6, .L51
 386 001e 0023     		movs	r3, #0
 387 0020 3370     		strb	r3, [r6]
 388 0022 826B     		ldr	r2, [r0, #56]
 389 0024 836B     		ldr	r3, [r0, #56]
 390 0026 1940     		ands	r1, r1, r3
 391 0028 2940     		ands	r1, r1, r5
 392 002a 8163     		str	r1, [r0, #56]
 393 002c 24B9     		cbnz	r4, .L48
 394 002e 0123     		movs	r3, #1
 395 0030 3370     		strb	r3, [r6]
 396              		.syntax unified
 397              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 398 0032 BFF35F8F 		dmb
 399              	@ 0 "" 2
ARM GAS  /tmp/cccpp1UI.s 			page 8


 400              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 401 0036 62B6     		cpsie i
 402              	@ 0 "" 2
 403              		.thumb
 404              		.syntax unified
 405              	.L48:
 406 0038 D2B2     		uxtb	r2, r2
 407 003a 02EA0500 		and	r0, r2, r5
 408 003e 70BC     		pop	{r4, r5, r6}
 409 0040 7047     		bx	lr
 410              	.L52:
 411 0042 00BF     		.align	2
 412              	.L51:
 413 0044 00000000 		.word	g_interrupt_enabled
 414              		.size	_ZN14TmcDriverState21ReadAccumulatedStatusEm, .-_ZN14TmcDriverState21ReadAccumulatedStatusEm
 415              		.section	.text._ZN14TmcDriverState23SetStallDetectThresholdEi,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	_ZN14TmcDriverState23SetStallDetectThresholdEi
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 423              		.type	_ZN14TmcDriverState23SetStallDetectThresholdEi, %function
 424              	_ZN14TmcDriverState23SetStallDetectThresholdEi:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 4368     		ldr	r3, [r0, #4]
 429 0002 01F30601 		ssat	r1, #7, r1
 430 0006 0902     		lsls	r1, r1, #8
 431 0008 23F4FE43 		bic	r3, r3, #32512
 432 000c 01F4FE41 		and	r1, r1, #32512
 433 0010 1943     		orrs	r1, r1, r3
 434 0012 4160     		str	r1, [r0, #4]
 435 0014 C369     		ldr	r3, [r0, #28]
 436 0016 43F00203 		orr	r3, r3, #2
 437 001a C361     		str	r3, [r0, #28]
 438 001c 7047     		bx	lr
 439              		.size	_ZN14TmcDriverState23SetStallDetectThresholdEi, .-_ZN14TmcDriverState23SetStallDetectThresho
 440 001e 00BF     		.section	.text._ZN14TmcDriverState20SetStallDetectFilterEb,"ax",%progbits
 441              		.align	1
 442              		.p2align 2,,3
 443              		.global	_ZN14TmcDriverState20SetStallDetectFilterEb
 444              		.syntax unified
 445              		.thumb
 446              		.thumb_func
 447              		.fpu fpv4-sp-d16
 448              		.type	_ZN14TmcDriverState20SetStallDetectFilterEb, %function
 449              	_ZN14TmcDriverState20SetStallDetectFilterEb:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452              		@ link register save eliminated.
 453 0000 4368     		ldr	r3, [r0, #4]
 454 0002 39B9     		cbnz	r1, .L57
 455 0004 23F48033 		bic	r3, r3, #65536
 456 0008 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/cccpp1UI.s 			page 9


 457 000a C369     		ldr	r3, [r0, #28]
 458 000c 43F00203 		orr	r3, r3, #2
 459 0010 C361     		str	r3, [r0, #28]
 460 0012 7047     		bx	lr
 461              	.L57:
 462 0014 43F48033 		orr	r3, r3, #65536
 463 0018 4360     		str	r3, [r0, #4]
 464 001a C369     		ldr	r3, [r0, #28]
 465 001c 43F00203 		orr	r3, r3, #2
 466 0020 C361     		str	r3, [r0, #28]
 467 0022 7047     		bx	lr
 468              		.size	_ZN14TmcDriverState20SetStallDetectFilterEb, .-_ZN14TmcDriverState20SetStallDetectFilterEb
 469              		.section	.text._ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj,"ax",%progbits
 470              		.align	1
 471              		.p2align 2,,3
 472              		.global	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu fpv4-sp-d16
 477              		.type	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj, %function
 478              	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj:
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481              		@ link register save eliminated.
 482 0000 0129     		cmp	r1, #1
 483 0002 38BF     		it	cc
 484 0004 0121     		movcc	r1, #1
 485 0006 024B     		ldr	r3, .L59
 486 0008 B3FBF1F1 		udiv	r1, r3, r1
 487 000c 8162     		str	r1, [r0, #40]
 488 000e 7047     		bx	lr
 489              	.L60:
 490              		.align	2
 491              	.L59:
 492 0010 1C4E0E00 		.word	937500
 493              		.size	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj, .-_ZN14TmcDriverState29SetStallMinimum
 494              		.section	.text._ZN14TmcDriverState11SetCoolStepEt,"ax",%progbits
 495              		.align	1
 496              		.p2align 2,,3
 497              		.global	_ZN14TmcDriverState11SetCoolStepEt
 498              		.syntax unified
 499              		.thumb
 500              		.thumb_func
 501              		.fpu fpv4-sp-d16
 502              		.type	_ZN14TmcDriverState11SetCoolStepEt, %function
 503              	_ZN14TmcDriverState11SetCoolStepEt:
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507 0000 41F42021 		orr	r1, r1, #655360
 508 0004 0161     		str	r1, [r0, #16]
 509 0006 C369     		ldr	r3, [r0, #28]
 510 0008 43F01003 		orr	r3, r3, #16
 511 000c C361     		str	r3, [r0, #28]
 512 000e 7047     		bx	lr
 513              		.size	_ZN14TmcDriverState11SetCoolStepEt, .-_ZN14TmcDriverState11SetCoolStepEt
ARM GAS  /tmp/cccpp1UI.s 			page 10


 514              		.section	.text._ZNK14TmcDriverState17AppendStallConfigERK9StringRef,"ax",%progbits
 515              		.align	1
 516              		.p2align 2,,3
 517              		.global	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef
 518              		.syntax unified
 519              		.thumb
 520              		.thumb_func
 521              		.fpu fpv4-sp-d16
 522              		.type	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef, %function
 523              	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef:
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 527 0002 4468     		ldr	r4, [r0, #4]
 528 0004 4268     		ldr	r2, [r0, #4]
 529 0006 0569     		ldr	r5, [r0, #16]
 530 0008 0C4E     		ldr	r6, .L67
 531 000a 0D4B     		ldr	r3, .L67+4
 532 000c 876A     		ldr	r7, [r0, #40]
 533 000e 83B0     		sub	sp, sp, #12
 534 0010 C2F30622 		ubfx	r2, r2, #8, #7
 535 0014 3F2A     		cmp	r2, #63
 536 0016 04F48034 		and	r4, r4, #65536
 537 001a ADB2     		uxth	r5, r5
 538 001c C8BF     		it	gt
 539 001e 803A     		subgt	r2, r2, #128
 540 0020 0846     		mov	r0, r1
 541 0022 0195     		str	r5, [sp, #4]
 542 0024 002C     		cmp	r4, #0
 543 0026 18BF     		it	ne
 544 0028 3346     		movne	r3, r6
 545 002a 0649     		ldr	r1, .L67+8
 546 002c B1FBF7F1 		udiv	r1, r1, r7
 547 0030 0091     		str	r1, [sp]
 548 0032 0549     		ldr	r1, .L67+12
 549 0034 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 550 0038 03B0     		add	sp, sp, #12
 551              		@ sp needed
 552 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 553              	.L68:
 554              		.align	2
 555              	.L67:
 556 003c 00000000 		.word	.LC0
 557 0040 04000000 		.word	.LC1
 558 0044 1C4E0E00 		.word	937500
 559 0048 08000000 		.word	.LC2
 560              		.size	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef, .-_ZNK14TmcDriverState17AppendStallCon
 561              		.section	.text._ZN14TmcDriverState18AppendDriverStatusERK9StringRef,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv4-sp-d16
 569              		.type	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef, %function
 570              	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef:
ARM GAS  /tmp/cccpp1UI.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 0
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573 0000 38B5     		push	{r3, r4, r5, lr}
 574 0002 436B     		ldr	r3, [r0, #52]
 575 0004 0D46     		mov	r5, r1
 576 0006 9907     		lsls	r1, r3, #30
 577 0008 0446     		mov	r4, r0
 578 000a 46D4     		bmi	.L92
 579 000c 436B     		ldr	r3, [r0, #52]
 580 000e 5A07     		lsls	r2, r3, #29
 581 0010 36D4     		bmi	.L93
 582              	.L71:
 583 0012 636B     		ldr	r3, [r4, #52]
 584 0014 13F0180F 		tst	r3, #24
 585 0018 3AD1     		bne	.L94
 586              	.L72:
 587 001a 636B     		ldr	r3, [r4, #52]
 588 001c 9B06     		lsls	r3, r3, #26
 589 001e 02D5     		bpl	.L73
 590 0020 636B     		ldr	r3, [r4, #52]
 591 0022 1806     		lsls	r0, r3, #24
 592 0024 48D5     		bpl	.L95
 593              	.L73:
 594 0026 636B     		ldr	r3, [r4, #52]
 595 0028 5906     		lsls	r1, r3, #25
 596 002a 02D5     		bpl	.L74
 597 002c 636B     		ldr	r3, [r4, #52]
 598 002e 1A06     		lsls	r2, r3, #24
 599 0030 3DD5     		bpl	.L96
 600              	.L74:
 601 0032 636B     		ldr	r3, [r4, #52]
 602 0034 1B06     		lsls	r3, r3, #24
 603 0036 35D4     		bmi	.L97
 604 0038 636B     		ldr	r3, [r4, #52]
 605 003a 13F07E0F 		tst	r3, #126
 606 003e 0DD0     		beq	.L98
 607              	.L76:
 608 0040 D4E90B23 		ldrd	r2, r3, [r4, #44]
 609 0044 9A42     		cmp	r2, r3
 610 0046 2846     		mov	r0, r5
 611 0048 11D9     		bls	.L99
 612              	.L77:
 613 004a 1E49     		ldr	r1, .L100
 614 004c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 615 0050 40F2FF32 		movw	r2, #1023
 616 0054 0023     		movs	r3, #0
 617 0056 C4E90B23 		strd	r2, r3, [r4, #44]
 618 005a 38BD     		pop	{r3, r4, r5, pc}
 619              	.L98:
 620 005c 1A49     		ldr	r1, .L100+4
 621 005e 2846     		mov	r0, r5
 622 0060 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 623 0064 D4E90B23 		ldrd	r2, r3, [r4, #44]
 624 0068 9A42     		cmp	r2, r3
 625 006a 2846     		mov	r0, r5
 626 006c EDD8     		bhi	.L77
 627              	.L99:
ARM GAS  /tmp/cccpp1UI.s 			page 12


 628 006e 1749     		ldr	r1, .L100+8
 629 0070 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 630 0074 40F2FF32 		movw	r2, #1023
 631 0078 0023     		movs	r3, #0
 632 007a C4E90B23 		strd	r2, r3, [r4, #44]
 633 007e 38BD     		pop	{r3, r4, r5, pc}
 634              	.L93:
 635 0080 1349     		ldr	r1, .L100+12
 636 0082 2846     		mov	r0, r5
 637 0084 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 638 0088 636B     		ldr	r3, [r4, #52]
 639 008a 13F0180F 		tst	r3, #24
 640 008e C4D0     		beq	.L72
 641              	.L94:
 642 0090 1049     		ldr	r1, .L100+16
 643 0092 2846     		mov	r0, r5
 644 0094 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 645 0098 BFE7     		b	.L72
 646              	.L92:
 647 009a 0F49     		ldr	r1, .L100+20
 648 009c 2846     		mov	r0, r5
 649 009e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 650 00a2 B6E7     		b	.L71
 651              	.L97:
 652 00a4 0D49     		ldr	r1, .L100+24
 653 00a6 2846     		mov	r0, r5
 654 00a8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 655 00ac C8E7     		b	.L76
 656              	.L96:
 657 00ae 0C49     		ldr	r1, .L100+28
 658 00b0 2846     		mov	r0, r5
 659 00b2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 660 00b6 BCE7     		b	.L74
 661              	.L95:
 662 00b8 0A49     		ldr	r1, .L100+32
 663 00ba 2846     		mov	r0, r5
 664 00bc FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 665 00c0 B1E7     		b	.L73
 666              	.L101:
 667 00c2 00BF     		.align	2
 668              	.L100:
 669 00c4 8C000000 		.word	.LC11
 670 00c8 70000000 		.word	.LC9
 671 00cc 74000000 		.word	.LC10
 672 00d0 18000000 		.word	.LC4
 673 00d4 30000000 		.word	.LC5
 674 00d8 00000000 		.word	.LC3
 675 00dc 64000000 		.word	.LC8
 676 00e0 54000000 		.word	.LC7
 677 00e4 44000000 		.word	.LC6
 678              		.size	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef, .-_ZN14TmcDriverState18AppendDriverSta
 679              		.section	.text._ZNK14TmcDriverState16GetMicrosteppingERb,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	_ZNK14TmcDriverState16GetMicrosteppingERb
 683              		.syntax unified
 684              		.thumb
ARM GAS  /tmp/cccpp1UI.s 			page 13


 685              		.thumb_func
 686              		.fpu fpv4-sp-d16
 687              		.type	_ZNK14TmcDriverState16GetMicrosteppingERb, %function
 688              	_ZNK14TmcDriverState16GetMicrosteppingERb:
 689              		@ args = 0, pretend = 0, frame = 0
 690              		@ frame_needed = 0, uses_anonymous_args = 0
 691              		@ link register save eliminated.
 692 0000 0368     		ldr	r3, [r0]
 693 0002 406A     		ldr	r0, [r0, #36]
 694 0004 10B4     		push	{r4}
 695 0006 C3F34023 		ubfx	r3, r3, #9, #1
 696 000a 0124     		movs	r4, #1
 697 000c 04FA00F0 		lsl	r0, r4, r0
 698 0010 0B70     		strb	r3, [r1]
 699 0012 5DF8044B 		ldr	r4, [sp], #4
 700 0016 7047     		bx	lr
 701              		.size	_ZNK14TmcDriverState16GetMicrosteppingERb, .-_ZNK14TmcDriverState16GetMicrosteppingERb
 702              		.section	.text._ZNK14TmcDriverState11GetChopConfEv,"ax",%progbits
 703              		.align	1
 704              		.p2align 2,,3
 705              		.global	_ZNK14TmcDriverState11GetChopConfEv
 706              		.syntax unified
 707              		.thumb
 708              		.thumb_func
 709              		.fpu fpv4-sp-d16
 710              		.type	_ZNK14TmcDriverState11GetChopConfEv, %function
 711              	_ZNK14TmcDriverState11GetChopConfEv:
 712              		@ args = 0, pretend = 0, frame = 0
 713              		@ frame_needed = 0, uses_anonymous_args = 0
 714              		@ link register save eliminated.
 715 0000 8069     		ldr	r0, [r0, #24]
 716 0002 C0F31000 		ubfx	r0, r0, #0, #17
 717 0006 7047     		bx	lr
 718              		.size	_ZNK14TmcDriverState11GetChopConfEv, .-_ZNK14TmcDriverState11GetChopConfEv
 719              		.section	.text.hot.USART1_Handler,"ax",%progbits
 720              		.align	1
 721              		.p2align 2,,3
 722              		.global	USART1_Handler
 723              		.syntax unified
 724              		.thumb
 725              		.thumb_func
 726              		.fpu fpv4-sp-d16
 727              		.type	USART1_Handler, %function
 728              	USART1_Handler:
 729              		@ args = 0, pretend = 0, frame = 0
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 4E49     		ldr	r1, .L137
 732 0002 0B68     		ldr	r3, [r1]
 733 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 734 0006 002B     		cmp	r3, #0
 735 0008 00F08180 		beq	.L106
 736 000c 5A69     		ldr	r2, [r3, #20]
 737 000e 4C4C     		ldr	r4, .L137+4
 738 0010 4C48     		ldr	r0, .L137+8
 739 0012 4D4D     		ldr	r5, .L137+12
 740 0014 8768     		ldr	r7, [r0, #8]	@ unaligned
 741 0016 C2EBC202 		rsb	r2, r2, r2, lsl #3
ARM GAS  /tmp/cccpp1UI.s 			page 14


 742 001a 9200     		lsls	r2, r2, #2
 743 001c A018     		adds	r0, r4, r2
 744 001e A258     		ldr	r2, [r4, r2]
 745 0020 4068     		ldr	r0, [r0, #4]
 746 0022 1063     		str	r0, [r2, #48]
 747 0024 2868     		ldr	r0, [r5]
 748 0026 3E68     		ldr	r6, [r7]
 749 0028 00BA     		rev	r0, r0
 750 002a 020B     		lsrs	r2, r0, #12
 751 002c EEB1     		cbz	r6, .L107
 752 002e 7F7C     		ldrb	r7, [r7, #17]	@ zero_extendqisi2
 753 0030 DFB9     		cbnz	r7, .L107
 754 0032 1F6A     		ldr	r7, [r3, #32]
 755 0034 3E37     		adds	r7, r7, #62
 756 0036 56F82760 		ldr	r6, [r6, r7, lsl #2]
 757 003a B6B1     		cbz	r6, .L107
 758 003c D3F824C0 		ldr	ip, [r3, #36]
 759 0040 F768     		ldr	r7, [r6, #12]
 760 0042 37FA0CF7 		lsrs	r7, r7, ip
 761 0046 10D0     		beq	.L107
 762 0048 B669     		ldr	r6, [r6, #24]
 763 004a 16FA0CFC 		lsls	ip, r6, ip
 764 004e 0CD0     		beq	.L107
 765 0050 9E6A     		ldr	r6, [r3, #40]
 766 0052 B445     		cmp	ip, r6
 767 0054 09D8     		bhi	.L107
 768 0056 DE6A     		ldr	r6, [r3, #44]
 769 0058 800D     		lsrs	r0, r0, #22
 770 005a B042     		cmp	r0, r6
 771 005c 1E6B     		ldr	r6, [r3, #48]
 772 005e 38BF     		it	cc
 773 0060 D862     		strcc	r0, [r3, #44]
 774 0062 B042     		cmp	r0, r6
 775 0064 88BF     		it	hi
 776 0066 1863     		strhi	r0, [r3, #48]
 777 0068 01E0     		b	.L109
 778              	.L107:
 779 006a 22F00102 		bic	r2, r2, #1
 780              	.L109:
 781 006e 5A63     		str	r2, [r3, #52]
 782 0070 3648     		ldr	r0, .L137+16
 783 0072 9E6B     		ldr	r6, [r3, #56]
 784 0074 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 785 0076 3243     		orrs	r2, r2, r6
 786 0078 9A63     		str	r2, [r3, #56]
 787 007a 0028     		cmp	r0, #0
 788 007c 47D0     		beq	.L106
 789 007e 344A     		ldr	r2, .L137+20
 790 0080 3448     		ldr	r0, .L137+24
 791 0082 1268     		ldr	r2, [r2]
 792 0084 4033     		adds	r3, r3, #64
 793 0086 00EB8212 		add	r2, r0, r2, lsl #6
 794 008a 9342     		cmp	r3, r2
 795 008c 08BF     		it	eq
 796 008e 0346     		moveq	r3, r0
 797 0090 0B60     		str	r3, [r1]
 798 0092 DA69     		ldr	r2, [r3, #28]
ARM GAS  /tmp/cccpp1UI.s 			page 15


 799 0094 002A     		cmp	r2, #0
 800 0096 40D1     		bne	.L116
 801 0098 1A69     		ldr	r2, [r3, #16]
 802              	.L113:
 803              		.syntax unified
 804              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 805 009a EFF31080 		MRS r0, primask
 806              	@ 0 "" 2
 807              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 808 009e 72B6     		cpsid i
 809              	@ 0 "" 2
 810              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 811 00a0 BFF35F8F 		dmb
 812              	@ 0 "" 2
 813              		.thumb
 814              		.syntax unified
 815 00a4 2C4F     		ldr	r7, .L137+28
 816 00a6 2D4E     		ldr	r6, .L137+32
 817 00a8 2D49     		ldr	r1, .L137+36
 818 00aa 4FF0000C 		mov	ip, #0
 819 00ae 87F800C0 		strb	ip, [r7]
 820 00b2 4FF00C0C 		mov	ip, #12
 821 00b6 C6F800C0 		str	ip, [r6]
 822 00ba 5B69     		ldr	r3, [r3, #20]
 823 00bc 0968     		ldr	r1, [r1]
 824 00be C3EBC303 		rsb	r3, r3, r3, lsl #3
 825 00c2 9B00     		lsls	r3, r3, #2
 826 00c4 04EB030C 		add	ip, r4, r3
 827 00c8 E358     		ldr	r3, [r4, r3]
 828 00ca DCF804C0 		ldr	ip, [ip, #4]
 829 00ce 254C     		ldr	r4, .L137+40
 830 00d0 C3F834C0 		str	ip, [r3, #52]
 831 00d4 1202     		lsls	r2, r2, #8
 832 00d6 13BA     		rev	r3, r2
 833 00d8 40F2022C 		movw	ip, #514
 834 00dc C1F820C0 		str	ip, [r1, #32]
 835 00e0 0322     		movs	r2, #3
 836 00e2 2360     		str	r3, [r4]
 837 00e4 40F2011E 		movw	lr, #257
 838 00e8 4FF0080C 		mov	ip, #8
 839 00ec 5023     		movs	r3, #80
 840 00ee 8C60     		str	r4, [r1, #8]
 841 00f0 CA60     		str	r2, [r1, #12]
 842 00f2 0D60     		str	r5, [r1]
 843 00f4 4A60     		str	r2, [r1, #4]
 844 00f6 C1F820E0 		str	lr, [r1, #32]
 845 00fa C6F808C0 		str	ip, [r6, #8]
 846 00fe 3360     		str	r3, [r6]
 847 0100 20B9     		cbnz	r0, .L105
 848 0102 0123     		movs	r3, #1
 849 0104 3B70     		strb	r3, [r7]
 850              		.syntax unified
 851              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 852 0106 BFF35F8F 		dmb
 853              	@ 0 "" 2
 854              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 855 010a 62B6     		cpsie i
ARM GAS  /tmp/cccpp1UI.s 			page 16


 856              	@ 0 "" 2
 857              		.thumb
 858              		.syntax unified
 859              	.L105:
 860 010c F0BD     		pop	{r4, r5, r6, r7, pc}
 861              	.L106:
 862 010e 134A     		ldr	r2, .L137+32
 863 0110 0820     		movs	r0, #8
 864 0112 0023     		movs	r3, #0
 865 0114 D060     		str	r0, [r2, #12]
 866 0116 0B60     		str	r3, [r1]
 867 0118 F0BD     		pop	{r4, r5, r6, r7, pc}
 868              	.L116:
 869 011a 0122     		movs	r2, #1
 870 011c 0021     		movs	r1, #0
 871              	.L112:
 872 011e D869     		ldr	r0, [r3, #28]
 873 0120 1042     		tst	r0, r2
 874 0122 04D1     		bne	.L114
 875 0124 0131     		adds	r1, r1, #1
 876 0126 0429     		cmp	r1, #4
 877 0128 4FEA4202 		lsl	r2, r2, #1
 878 012c F7D1     		bne	.L112
 879              	.L114:
 880 012e D869     		ldr	r0, [r3, #28]
 881 0130 20EA0202 		bic	r2, r0, r2
 882 0134 DA61     		str	r2, [r3, #28]
 883 0136 53F82120 		ldr	r2, [r3, r1, lsl #2]
 884 013a AEE7     		b	.L113
 885              	.L138:
 886              		.align	2
 887              	.L137:
 888 013c 00000000 		.word	.LANCHOR1
 889 0140 00000000 		.word	g_APinDescription
 890 0144 00000000 		.word	reprap
 891 0148 00000000 		.word	.LANCHOR2
 892 014c 00000000 		.word	.LANCHOR3
 893 0150 00000000 		.word	.LANCHOR4
 894 0154 00000000 		.word	.LANCHOR0
 895 0158 00000000 		.word	g_interrupt_enabled
 896 015c 00400A40 		.word	1074413568
 897 0160 00000000 		.word	.LANCHOR5
 898 0164 00000000 		.word	.LANCHOR6
 899              		.size	USART1_Handler, .-USART1_Handler
 900              		.section	.text._ZN12SmartDrivers4InitEPKhj,"ax",%progbits
 901              		.align	1
 902              		.p2align 2,,3
 903              		.global	_ZN12SmartDrivers4InitEPKhj
 904              		.syntax unified
 905              		.thumb
 906              		.thumb_func
 907              		.fpu fpv4-sp-d16
 908              		.type	_ZN12SmartDrivers4InitEPKhj, %function
 909              	_ZN12SmartDrivers4InitEPKhj:
 910              		@ args = 0, pretend = 0, frame = 0
 911              		@ frame_needed = 0, uses_anonymous_args = 0
 912 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  /tmp/cccpp1UI.s 			page 17


 913 0002 0A29     		cmp	r1, #10
 914 0004 1C4F     		ldr	r7, .L148
 915 0006 0B46     		mov	r3, r1
 916 0008 4FF00002 		mov	r2, #0
 917 000c 28BF     		it	cs
 918 000e 0A23     		movcs	r3, #10
 919 0010 0421     		movs	r1, #4
 920 0012 0646     		mov	r6, r0
 921 0014 2620     		movs	r0, #38
 922 0016 3B60     		str	r3, [r7]
 923 0018 FFF7FEFF 		bl	pinModeDuet
 924 001c 1748     		ldr	r0, .L148+4
 925 001e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 926 0022 1748     		ldr	r0, .L148+8
 927 0024 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 928 0028 1648     		ldr	r0, .L148+12
 929 002a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 930 002e 0F20     		movs	r0, #15
 931 0030 FFF7FEFF 		bl	pmc_enable_periph_clk
 932 0034 144B     		ldr	r3, .L148+16
 933 0036 1549     		ldr	r1, .L148+20
 934 0038 154A     		ldr	r2, .L148+24
 935 003a 4FF0FF30 		mov	r0, #-1
 936 003e D860     		str	r0, [r3, #12]
 937 0040 AC20     		movs	r0, #172
 938 0042 1860     		str	r0, [r3]
 939 0044 5960     		str	r1, [r3, #4]
 940 0046 3C20     		movs	r0, #60
 941 0048 4FF4D671 		mov	r1, #428
 942 004c 1862     		str	r0, [r3, #32]
 943 004e 1960     		str	r1, [r3]
 944 0050 3B68     		ldr	r3, [r7]
 945 0052 0024     		movs	r4, #0
 946 0054 1470     		strb	r4, [r2]
 947 0056 6BB1     		cbz	r3, .L139
 948 0058 0E4D     		ldr	r5, .L148+28
 949 005a 013E     		subs	r6, r6, #1
 950              	.L142:
 951 005c 2146     		mov	r1, r4
 952 005e 2846     		mov	r0, r5
 953 0060 16F8012F 		ldrb	r2, [r6, #1]!	@ zero_extendqisi2
 954 0064 FFF7FEFF 		bl	_ZN14TmcDriverState4InitEmm
 955 0068 3B68     		ldr	r3, [r7]
 956 006a 0134     		adds	r4, r4, #1
 957 006c A342     		cmp	r3, r4
 958 006e 05F14005 		add	r5, r5, #64
 959 0072 F3D8     		bhi	.L142
 960              	.L139:
 961 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 962              	.L149:
 963 0076 00BF     		.align	2
 964              	.L148:
 965 0078 00000000 		.word	.LANCHOR4
 966 007c 68020000 		.word	g_APinDescription+616
 967 0080 4C020000 		.word	g_APinDescription+588
 968 0084 84020000 		.word	g_APinDescription+644
 969 0088 00400A40 		.word	1074413568
ARM GAS  /tmp/cccpp1UI.s 			page 18


 970 008c CE000500 		.word	327886
 971 0090 00000000 		.word	.LANCHOR3
 972 0094 00000000 		.word	.LANCHOR0
 973              		.size	_ZN12SmartDrivers4InitEPKhj, .-_ZN12SmartDrivers4InitEPKhj
 974              		.section	.text._ZN12SmartDrivers13SetAxisNumberEjm,"ax",%progbits
 975              		.align	1
 976              		.p2align 2,,3
 977              		.global	_ZN12SmartDrivers13SetAxisNumberEjm
 978              		.syntax unified
 979              		.thumb
 980              		.thumb_func
 981              		.fpu fpv4-sp-d16
 982              		.type	_ZN12SmartDrivers13SetAxisNumberEjm, %function
 983              	_ZN12SmartDrivers13SetAxisNumberEjm:
 984              		@ args = 0, pretend = 0, frame = 0
 985              		@ frame_needed = 0, uses_anonymous_args = 0
 986              		@ link register save eliminated.
 987 0000 044B     		ldr	r3, .L152
 988 0002 1B68     		ldr	r3, [r3]
 989 0004 8342     		cmp	r3, r0
 990 0006 03D9     		bls	.L150
 991 0008 034B     		ldr	r3, .L152+4
 992 000a 03EB8010 		add	r0, r3, r0, lsl #6
 993 000e 0162     		str	r1, [r0, #32]
 994              	.L150:
 995 0010 7047     		bx	lr
 996              	.L153:
 997 0012 00BF     		.align	2
 998              	.L152:
 999 0014 00000000 		.word	.LANCHOR4
 1000 0018 00000000 		.word	.LANCHOR0
 1001              		.size	_ZN12SmartDrivers13SetAxisNumberEjm, .-_ZN12SmartDrivers13SetAxisNumberEjm
 1002              		.section	.text._ZN12SmartDrivers10SetCurrentEjf,"ax",%progbits
 1003              		.align	1
 1004              		.p2align 2,,3
 1005              		.global	_ZN12SmartDrivers10SetCurrentEjf
 1006              		.syntax unified
 1007              		.thumb
 1008              		.thumb_func
 1009              		.fpu fpv4-sp-d16
 1010              		.type	_ZN12SmartDrivers10SetCurrentEjf, %function
 1011              	_ZN12SmartDrivers10SetCurrentEjf:
 1012              		@ args = 0, pretend = 0, frame = 0
 1013              		@ frame_needed = 0, uses_anonymous_args = 0
 1014              		@ link register save eliminated.
 1015 0000 044B     		ldr	r3, .L157
 1016 0002 1B68     		ldr	r3, [r3]
 1017 0004 8342     		cmp	r3, r0
 1018 0006 00D8     		bhi	.L156
 1019 0008 7047     		bx	lr
 1020              	.L156:
 1021 000a 034B     		ldr	r3, .L157+4
 1022 000c 03EB8010 		add	r0, r3, r0, lsl #6
 1023 0010 FFF7FEBF 		b	_ZN14TmcDriverState10SetCurrentEf
 1024              	.L158:
 1025              		.align	2
 1026              	.L157:
ARM GAS  /tmp/cccpp1UI.s 			page 19


 1027 0014 00000000 		.word	.LANCHOR4
 1028 0018 00000000 		.word	.LANCHOR0
 1029              		.size	_ZN12SmartDrivers10SetCurrentEjf, .-_ZN12SmartDrivers10SetCurrentEjf
 1030              		.section	.text._ZN12SmartDrivers11EnableDriveEjb,"ax",%progbits
 1031              		.align	1
 1032              		.p2align 2,,3
 1033              		.global	_ZN12SmartDrivers11EnableDriveEjb
 1034              		.syntax unified
 1035              		.thumb
 1036              		.thumb_func
 1037              		.fpu fpv4-sp-d16
 1038              		.type	_ZN12SmartDrivers11EnableDriveEjb, %function
 1039              	_ZN12SmartDrivers11EnableDriveEjb:
 1040              		@ args = 0, pretend = 0, frame = 0
 1041              		@ frame_needed = 0, uses_anonymous_args = 0
 1042              		@ link register save eliminated.
 1043 0000 134B     		ldr	r3, .L168
 1044 0002 1B68     		ldr	r3, [r3]
 1045 0004 8342     		cmp	r3, r0
 1046 0006 15D9     		bls	.L164
 1047 0008 124B     		ldr	r3, .L168+4
 1048 000a 8001     		lsls	r0, r0, #6
 1049 000c 1A18     		adds	r2, r3, r0
 1050 000e 30B4     		push	{r4, r5}
 1051 0010 92F83C40 		ldrb	r4, [r2, #60]	@ zero_extendqisi2
 1052 0014 8C42     		cmp	r4, r1
 1053 0016 0BD0     		beq	.L159
 1054 0018 69B9     		cbnz	r1, .L167
 1055 001a 9469     		ldr	r4, [r2, #24]
 1056 001c 82F83C10 		strb	r1, [r2, #60]
 1057 0020 24F00F01 		bic	r1, r4, #15
 1058              	.L162:
 1059 0024 1844     		add	r0, r0, r3
 1060 0026 8160     		str	r1, [r0, #8]
 1061 0028 C369     		ldr	r3, [r0, #28]
 1062 002a 43F00403 		orr	r3, r3, #4
 1063 002e C361     		str	r3, [r0, #28]
 1064              	.L159:
 1065 0030 30BC     		pop	{r4, r5}
 1066 0032 7047     		bx	lr
 1067              	.L164:
 1068 0034 7047     		bx	lr
 1069              	.L167:
 1070 0036 946B     		ldr	r4, [r2, #56]
 1071 0038 9169     		ldr	r1, [r2, #24]
 1072 003a 24F00104 		bic	r4, r4, #1
 1073 003e 9463     		str	r4, [r2, #56]
 1074 0040 546B     		ldr	r4, [r2, #52]
 1075 0042 0125     		movs	r5, #1
 1076 0044 24F00104 		bic	r4, r4, #1
 1077 0048 5463     		str	r4, [r2, #52]
 1078 004a 82F83C50 		strb	r5, [r2, #60]
 1079 004e E9E7     		b	.L162
 1080              	.L169:
 1081              		.align	2
 1082              	.L168:
 1083 0050 00000000 		.word	.LANCHOR4
ARM GAS  /tmp/cccpp1UI.s 			page 20


 1084 0054 00000000 		.word	.LANCHOR0
 1085              		.size	_ZN12SmartDrivers11EnableDriveEjb, .-_ZN12SmartDrivers11EnableDriveEjb
 1086              		.section	.text._ZN12SmartDrivers13GetLiveStatusEj,"ax",%progbits
 1087              		.align	1
 1088              		.p2align 2,,3
 1089              		.global	_ZN12SmartDrivers13GetLiveStatusEj
 1090              		.syntax unified
 1091              		.thumb
 1092              		.thumb_func
 1093              		.fpu fpv4-sp-d16
 1094              		.type	_ZN12SmartDrivers13GetLiveStatusEj, %function
 1095              	_ZN12SmartDrivers13GetLiveStatusEj:
 1096              		@ args = 0, pretend = 0, frame = 0
 1097              		@ frame_needed = 0, uses_anonymous_args = 0
 1098              		@ link register save eliminated.
 1099 0000 084B     		ldr	r3, .L175
 1100 0002 1B68     		ldr	r3, [r3]
 1101 0004 8342     		cmp	r3, r0
 1102 0006 0BD9     		bls	.L173
 1103 0008 074B     		ldr	r3, .L175+4
 1104 000a 03EB8010 		add	r0, r3, r0, lsl #6
 1105 000e 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1106 0012 406B     		ldr	r0, [r0, #52]
 1107 0014 13B9     		cbnz	r3, .L174
 1108 0016 00F0FE00 		and	r0, r0, #254
 1109 001a 7047     		bx	lr
 1110              	.L174:
 1111 001c C0B2     		uxtb	r0, r0
 1112 001e 7047     		bx	lr
 1113              	.L173:
 1114 0020 0020     		movs	r0, #0
 1115 0022 7047     		bx	lr
 1116              	.L176:
 1117              		.align	2
 1118              	.L175:
 1119 0024 00000000 		.word	.LANCHOR4
 1120 0028 00000000 		.word	.LANCHOR0
 1121              		.size	_ZN12SmartDrivers13GetLiveStatusEj, .-_ZN12SmartDrivers13GetLiveStatusEj
 1122              		.section	.text._ZN12SmartDrivers20GetAccumulatedStatusEjm,"ax",%progbits
 1123              		.align	1
 1124              		.p2align 2,,3
 1125              		.global	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 1126              		.syntax unified
 1127              		.thumb
 1128              		.thumb_func
 1129              		.fpu fpv4-sp-d16
 1130              		.type	_ZN12SmartDrivers20GetAccumulatedStatusEjm, %function
 1131              	_ZN12SmartDrivers20GetAccumulatedStatusEjm:
 1132              		@ args = 0, pretend = 0, frame = 0
 1133              		@ frame_needed = 0, uses_anonymous_args = 0
 1134              		@ link register save eliminated.
 1135 0000 054B     		ldr	r3, .L180
 1136 0002 1B68     		ldr	r3, [r3]
 1137 0004 8342     		cmp	r3, r0
 1138 0006 01D8     		bhi	.L179
 1139 0008 0020     		movs	r0, #0
 1140 000a 7047     		bx	lr
ARM GAS  /tmp/cccpp1UI.s 			page 21


 1141              	.L179:
 1142 000c 034B     		ldr	r3, .L180+4
 1143 000e 03EB8010 		add	r0, r3, r0, lsl #6
 1144 0012 FFF7FEBF 		b	_ZN14TmcDriverState21ReadAccumulatedStatusEm
 1145              	.L181:
 1146 0016 00BF     		.align	2
 1147              	.L180:
 1148 0018 00000000 		.word	.LANCHOR4
 1149 001c 00000000 		.word	.LANCHOR0
 1150              		.size	_ZN12SmartDrivers20GetAccumulatedStatusEjm, .-_ZN12SmartDrivers20GetAccumulatedStatusEjm
 1151              		.section	.text._ZN12SmartDrivers16SetMicrosteppingEjjb,"ax",%progbits
 1152              		.align	1
 1153              		.p2align 2,,3
 1154              		.global	_ZN12SmartDrivers16SetMicrosteppingEjjb
 1155              		.syntax unified
 1156              		.thumb
 1157              		.thumb_func
 1158              		.fpu fpv4-sp-d16
 1159              		.type	_ZN12SmartDrivers16SetMicrosteppingEjjb, %function
 1160              	_ZN12SmartDrivers16SetMicrosteppingEjjb:
 1161              		@ args = 0, pretend = 0, frame = 0
 1162              		@ frame_needed = 0, uses_anonymous_args = 0
 1163              		@ link register save eliminated.
 1164 0000 194B     		ldr	r3, .L203
 1165 0002 1B68     		ldr	r3, [r3]
 1166 0004 8342     		cmp	r3, r0
 1167 0006 0ED9     		bls	.L188
 1168 0008 69B1     		cbz	r1, .L188
 1169 000a 11F00103 		ands	r3, r1, #1
 1170 000e 70B4     		push	{r4, r5, r6}
 1171 0010 21D1     		bne	.L201
 1172              	.L184:
 1173 0012 4908     		lsrs	r1, r1, #1
 1174 0014 CC07     		lsls	r4, r1, #31
 1175 0016 03F10103 		add	r3, r3, #1
 1176 001a FAD5     		bpl	.L184
 1177 001c 0129     		cmp	r1, #1
 1178 001e 04D0     		beq	.L202
 1179              	.L192:
 1180 0020 0020     		movs	r0, #0
 1181              	.L183:
 1182 0022 70BC     		pop	{r4, r5, r6}
 1183 0024 7047     		bx	lr
 1184              	.L188:
 1185 0026 0020     		movs	r0, #0
 1186 0028 7047     		bx	lr
 1187              	.L202:
 1188 002a 082B     		cmp	r3, #8
 1189 002c F8D8     		bhi	.L192
 1190 002e C3F10804 		rsb	r4, r3, #8
 1191              	.L185:
 1192 0032 8001     		lsls	r0, r0, #6
 1193 0034 0D49     		ldr	r1, .L203+4
 1194 0036 0D58     		ldr	r5, [r1, r0]
 1195 0038 0E18     		adds	r6, r1, r0
 1196 003a 25F00F05 		bic	r5, r5, #15
 1197 003e 2C43     		orrs	r4, r4, r5
ARM GAS  /tmp/cccpp1UI.s 			page 22


 1198 0040 7362     		str	r3, [r6, #36]
 1199 0042 6AB1     		cbz	r2, .L186
 1200 0044 44F40074 		orr	r4, r4, #512
 1201              	.L187:
 1202 0048 0C50     		str	r4, [r1, r0]
 1203 004a 0144     		add	r1, r1, r0
 1204 004c 0120     		movs	r0, #1
 1205 004e CB69     		ldr	r3, [r1, #28]
 1206 0050 0343     		orrs	r3, r3, r0
 1207 0052 CB61     		str	r3, [r1, #28]
 1208 0054 E5E7     		b	.L183
 1209              	.L201:
 1210 0056 0129     		cmp	r1, #1
 1211 0058 E2D1     		bne	.L192
 1212 005a 0824     		movs	r4, #8
 1213 005c 0023     		movs	r3, #0
 1214 005e E8E7     		b	.L185
 1215              	.L186:
 1216 0060 24F40074 		bic	r4, r4, #512
 1217 0064 F0E7     		b	.L187
 1218              	.L204:
 1219 0066 00BF     		.align	2
 1220              	.L203:
 1221 0068 00000000 		.word	.LANCHOR4
 1222 006c 00000000 		.word	.LANCHOR0
 1223              		.size	_ZN12SmartDrivers16SetMicrosteppingEjjb, .-_ZN12SmartDrivers16SetMicrosteppingEjjb
 1224              		.section	.text._ZN12SmartDrivers16GetMicrosteppingEjRb,"ax",%progbits
 1225              		.align	1
 1226              		.p2align 2,,3
 1227              		.global	_ZN12SmartDrivers16GetMicrosteppingEjRb
 1228              		.syntax unified
 1229              		.thumb
 1230              		.thumb_func
 1231              		.fpu fpv4-sp-d16
 1232              		.type	_ZN12SmartDrivers16GetMicrosteppingEjRb, %function
 1233              	_ZN12SmartDrivers16GetMicrosteppingEjRb:
 1234              		@ args = 0, pretend = 0, frame = 0
 1235              		@ frame_needed = 0, uses_anonymous_args = 0
 1236              		@ link register save eliminated.
 1237 0000 094B     		ldr	r3, .L209
 1238 0002 1B68     		ldr	r3, [r3]
 1239 0004 8342     		cmp	r3, r0
 1240 0006 03D8     		bhi	.L208
 1241 0008 0023     		movs	r3, #0
 1242 000a 0B70     		strb	r3, [r1]
 1243 000c 0120     		movs	r0, #1
 1244 000e 7047     		bx	lr
 1245              	.L208:
 1246 0010 064B     		ldr	r3, .L209+4
 1247 0012 8001     		lsls	r0, r0, #6
 1248 0014 1A58     		ldr	r2, [r3, r0]
 1249 0016 1844     		add	r0, r0, r3
 1250 0018 C2F34023 		ubfx	r3, r2, #9, #1
 1251 001c 0B70     		strb	r3, [r1]
 1252 001e 436A     		ldr	r3, [r0, #36]
 1253 0020 0120     		movs	r0, #1
 1254 0022 9840     		lsls	r0, r0, r3
ARM GAS  /tmp/cccpp1UI.s 			page 23


 1255 0024 7047     		bx	lr
 1256              	.L210:
 1257 0026 00BF     		.align	2
 1258              	.L209:
 1259 0028 00000000 		.word	.LANCHOR4
 1260 002c 00000000 		.word	.LANCHOR0
 1261              		.size	_ZN12SmartDrivers16GetMicrosteppingEjRb, .-_ZN12SmartDrivers16GetMicrosteppingEjRb
 1262              		.section	.text._ZN12SmartDrivers13SetDriverModeEjj,"ax",%progbits
 1263              		.align	1
 1264              		.p2align 2,,3
 1265              		.global	_ZN12SmartDrivers13SetDriverModeEjj
 1266              		.syntax unified
 1267              		.thumb
 1268              		.thumb_func
 1269              		.fpu fpv4-sp-d16
 1270              		.type	_ZN12SmartDrivers13SetDriverModeEjj, %function
 1271              	_ZN12SmartDrivers13SetDriverModeEjj:
 1272              		@ args = 0, pretend = 0, frame = 0
 1273              		@ frame_needed = 0, uses_anonymous_args = 0
 1274              		@ link register save eliminated.
 1275 0000 054B     		ldr	r3, .L214
 1276 0002 1B68     		ldr	r3, [r3]
 1277 0004 8342     		cmp	r3, r0
 1278 0006 01D8     		bhi	.L213
 1279 0008 0020     		movs	r0, #0
 1280 000a 7047     		bx	lr
 1281              	.L213:
 1282 000c 034B     		ldr	r3, .L214+4
 1283 000e 03EB8010 		add	r0, r3, r0, lsl #6
 1284 0012 FFF7FEBF 		b	_ZN14TmcDriverState13SetDriverModeEj
 1285              	.L215:
 1286 0016 00BF     		.align	2
 1287              	.L214:
 1288 0018 00000000 		.word	.LANCHOR4
 1289 001c 00000000 		.word	.LANCHOR0
 1290              		.size	_ZN12SmartDrivers13SetDriverModeEjj, .-_ZN12SmartDrivers13SetDriverModeEjj
 1291              		.section	.text._ZN12SmartDrivers13GetDriverModeEj,"ax",%progbits
 1292              		.align	1
 1293              		.p2align 2,,3
 1294              		.global	_ZN12SmartDrivers13GetDriverModeEj
 1295              		.syntax unified
 1296              		.thumb
 1297              		.thumb_func
 1298              		.fpu fpv4-sp-d16
 1299              		.type	_ZN12SmartDrivers13GetDriverModeEj, %function
 1300              	_ZN12SmartDrivers13GetDriverModeEj:
 1301              		@ args = 0, pretend = 0, frame = 0
 1302              		@ frame_needed = 0, uses_anonymous_args = 0
 1303              		@ link register save eliminated.
 1304 0000 084B     		ldr	r3, .L220
 1305 0002 1B68     		ldr	r3, [r3]
 1306 0004 8342     		cmp	r3, r0
 1307 0006 0AD9     		bls	.L218
 1308 0008 074B     		ldr	r3, .L220+4
 1309 000a 03EB8010 		add	r0, r3, r0, lsl #6
 1310 000e 8069     		ldr	r0, [r0, #24]
 1311 0010 4304     		lsls	r3, r0, #17
ARM GAS  /tmp/cccpp1UI.s 			page 24


 1312 0012 02D5     		bpl	.L219
 1313 0014 C0F34030 		ubfx	r0, r0, #13, #1
 1314 0018 7047     		bx	lr
 1315              	.L219:
 1316 001a 0220     		movs	r0, #2
 1317 001c 7047     		bx	lr
 1318              	.L218:
 1319 001e 0420     		movs	r0, #4
 1320 0020 7047     		bx	lr
 1321              	.L221:
 1322 0022 00BF     		.align	2
 1323              	.L220:
 1324 0024 00000000 		.word	.LANCHOR4
 1325 0028 00000000 		.word	.LANCHOR0
 1326              		.size	_ZN12SmartDrivers13GetDriverModeEj, .-_ZN12SmartDrivers13GetDriverModeEj
 1327              		.section	.text._ZN12SmartDrivers25SetChopperControlRegisterEjm,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	_ZN12SmartDrivers25SetChopperControlRegisterEjm
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu fpv4-sp-d16
 1335              		.type	_ZN12SmartDrivers25SetChopperControlRegisterEjm, %function
 1336              	_ZN12SmartDrivers25SetChopperControlRegisterEjm:
 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340 0000 0F4B     		ldr	r3, .L231
 1341 0002 1B68     		ldr	r3, [r3]
 1342 0004 8342     		cmp	r3, r0
 1343 0006 19D9     		bls	.L225
 1344 0008 0E4A     		ldr	r2, .L231+4
 1345 000a 8001     		lsls	r0, r0, #6
 1346 000c 30B4     		push	{r4, r5}
 1347 000e 1418     		adds	r4, r2, r0
 1348 0010 C1F31003 		ubfx	r3, r1, #0, #17
 1349 0014 94F83C50 		ldrb	r5, [r4, #60]	@ zero_extendqisi2
 1350 0018 43F40023 		orr	r3, r3, #524288
 1351 001c A361     		str	r3, [r4, #24]
 1352 001e 45B1     		cbz	r5, .L230
 1353              	.L224:
 1354 0020 0244     		add	r2, r2, r0
 1355 0022 30BC     		pop	{r4, r5}
 1356 0024 9360     		str	r3, [r2, #8]
 1357 0026 D369     		ldr	r3, [r2, #28]
 1358 0028 43F00403 		orr	r3, r3, #4
 1359 002c 0120     		movs	r0, #1
 1360 002e D361     		str	r3, [r2, #28]
 1361 0030 7047     		bx	lr
 1362              	.L230:
 1363 0032 054B     		ldr	r3, .L231+8
 1364 0034 0B40     		ands	r3, r3, r1
 1365 0036 43F40023 		orr	r3, r3, #524288
 1366 003a F1E7     		b	.L224
 1367              	.L225:
 1368 003c 0020     		movs	r0, #0
ARM GAS  /tmp/cccpp1UI.s 			page 25


 1369 003e 7047     		bx	lr
 1370              	.L232:
 1371              		.align	2
 1372              	.L231:
 1373 0040 00000000 		.word	.LANCHOR4
 1374 0044 00000000 		.word	.LANCHOR0
 1375 0048 F0FF0100 		.word	131056
 1376              		.size	_ZN12SmartDrivers25SetChopperControlRegisterEjm, .-_ZN12SmartDrivers25SetChopperControlRegis
 1377              		.section	.text._ZN12SmartDrivers25GetChopperControlRegisterEj,"ax",%progbits
 1378              		.align	1
 1379              		.p2align 2,,3
 1380              		.global	_ZN12SmartDrivers25GetChopperControlRegisterEj
 1381              		.syntax unified
 1382              		.thumb
 1383              		.thumb_func
 1384              		.fpu fpv4-sp-d16
 1385              		.type	_ZN12SmartDrivers25GetChopperControlRegisterEj, %function
 1386              	_ZN12SmartDrivers25GetChopperControlRegisterEj:
 1387              		@ args = 0, pretend = 0, frame = 0
 1388              		@ frame_needed = 0, uses_anonymous_args = 0
 1389              		@ link register save eliminated.
 1390 0000 064B     		ldr	r3, .L236
 1391 0002 1B68     		ldr	r3, [r3]
 1392 0004 8342     		cmp	r3, r0
 1393 0006 06D9     		bls	.L235
 1394 0008 054B     		ldr	r3, .L236+4
 1395 000a 03EB8010 		add	r0, r3, r0, lsl #6
 1396 000e 8069     		ldr	r0, [r0, #24]
 1397 0010 C0F31000 		ubfx	r0, r0, #0, #17
 1398 0014 7047     		bx	lr
 1399              	.L235:
 1400 0016 0020     		movs	r0, #0
 1401 0018 7047     		bx	lr
 1402              	.L237:
 1403 001a 00BF     		.align	2
 1404              	.L236:
 1405 001c 00000000 		.word	.LANCHOR4
 1406 0020 00000000 		.word	.LANCHOR0
 1407              		.size	_ZN12SmartDrivers25GetChopperControlRegisterEj, .-_ZN12SmartDrivers25GetChopperControlRegist
 1408              		.section	.text._ZN12SmartDrivers4SpinEb,"ax",%progbits
 1409              		.align	1
 1410              		.p2align 2,,3
 1411              		.global	_ZN12SmartDrivers4SpinEb
 1412              		.syntax unified
 1413              		.thumb
 1414              		.thumb_func
 1415              		.fpu fpv4-sp-d16
 1416              		.type	_ZN12SmartDrivers4SpinEb, %function
 1417              	_ZN12SmartDrivers4SpinEb:
 1418              		@ args = 0, pretend = 0, frame = 0
 1419              		@ frame_needed = 0, uses_anonymous_args = 0
 1420 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1421 0002 414B     		ldr	r3, .L266
 1422 0004 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1423 0006 1870     		strb	r0, [r3]
 1424 0008 28B1     		cbz	r0, .L239
 1425 000a 64B1     		cbz	r4, .L264
ARM GAS  /tmp/cccpp1UI.s 			page 26


 1426 000c 3F4B     		ldr	r3, .L266+4
 1427 000e 1A68     		ldr	r2, [r3]
 1428 0010 002A     		cmp	r2, #0
 1429 0012 5ED0     		beq	.L265
 1430              	.L238:
 1431 0014 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1432              	.L239:
 1433 0016 002C     		cmp	r4, #0
 1434 0018 FCD0     		beq	.L238
 1435 001a 0121     		movs	r1, #1
 1436 001c 2620     		movs	r0, #38
 1437 001e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1438 0022 FFF7FEBF 		b	digitalWrite
 1439              	.L264:
 1440 0026 2146     		mov	r1, r4
 1441 0028 2620     		movs	r0, #38
 1442 002a FFF7FEFF 		bl	digitalWrite
 1443 002e 4FF4C873 		mov	r3, #400
 1444              		.syntax unified
 1445              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 1446              		L_1523_delayMicroseconds:
 1447 0032 013B     		subs   r3, #1
 1448 0034 FDD1     		bne    L_1523_delayMicroseconds
 1449              	
 1450              	@ 0 "" 2
 1451              		.thumb
 1452              		.syntax unified
 1453 0036 364B     		ldr	r3, .L266+8
 1454 0038 1868     		ldr	r0, [r3]
 1455 003a 0028     		cmp	r0, #0
 1456 003c 60D0     		beq	.L241
 1457 003e 354A     		ldr	r2, .L266+12
 1458 0040 2146     		mov	r1, r4
 1459 0042 1F24     		movs	r4, #31
 1460              	.L243:
 1461 0044 02EB8113 		add	r3, r2, r1, lsl #6
 1462 0048 0131     		adds	r1, r1, #1
 1463 004a 8142     		cmp	r1, r0
 1464 004c DC61     		str	r4, [r3, #28]
 1465 004e F9D1     		bne	.L243
 1466 0050 2E4B     		ldr	r3, .L266+4
 1467 0052 1968     		ldr	r1, [r3]
 1468 0054 0029     		cmp	r1, #0
 1469 0056 DDD1     		bne	.L238
 1470              	.L250:
 1471 0058 2F49     		ldr	r1, .L266+16
 1472 005a 4FF40040 		mov	r0, #32768
 1473 005e 0860     		str	r0, [r1]
 1474 0060 1A60     		str	r2, [r3]
 1475 0062 D369     		ldr	r3, [r2, #28]
 1476 0064 002B     		cmp	r3, #0
 1477 0066 3AD1     		bne	.L251
 1478 0068 1169     		ldr	r1, [r2, #16]
 1479              	.L248:
 1480              		.syntax unified
 1481              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1482 006a EFF31080 		MRS r0, primask
ARM GAS  /tmp/cccpp1UI.s 			page 27


 1483              	@ 0 "" 2
 1484              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1485 006e 72B6     		cpsid i
 1486              	@ 0 "" 2
 1487              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1488 0070 BFF35F8F 		dmb
 1489              	@ 0 "" 2
 1490              		.thumb
 1491              		.syntax unified
 1492 0074 294E     		ldr	r6, .L266+20
 1493 0076 2A4C     		ldr	r4, .L266+24
 1494 0078 2A4D     		ldr	r5, .L266+28
 1495 007a 2B4F     		ldr	r7, .L266+32
 1496 007c DFF8B0C0 		ldr	ip, .L266+40
 1497 0080 0023     		movs	r3, #0
 1498 0082 3370     		strb	r3, [r6]
 1499 0084 0C23     		movs	r3, #12
 1500 0086 2360     		str	r3, [r4]
 1501 0088 5369     		ldr	r3, [r2, #20]
 1502 008a 3A68     		ldr	r2, [r7]
 1503 008c C3EBC303 		rsb	r3, r3, r3, lsl #3
 1504 0090 9B00     		lsls	r3, r3, #2
 1505 0092 EF18     		adds	r7, r5, r3
 1506 0094 EB58     		ldr	r3, [r5, r3]
 1507 0096 7F68     		ldr	r7, [r7, #4]
 1508 0098 244D     		ldr	r5, .L266+36
 1509 009a 5F63     		str	r7, [r3, #52]
 1510 009c 0902     		lsls	r1, r1, #8
 1511 009e 0BBA     		rev	r3, r1
 1512 00a0 40F20227 		movw	r7, #514
 1513 00a4 1762     		str	r7, [r2, #32]
 1514 00a6 0321     		movs	r1, #3
 1515 00a8 2B60     		str	r3, [r5]
 1516 00aa 40F20117 		movw	r7, #257
 1517 00ae 9560     		str	r5, [r2, #8]
 1518 00b0 5023     		movs	r3, #80
 1519 00b2 0825     		movs	r5, #8
 1520 00b4 D160     		str	r1, [r2, #12]
 1521 00b6 C2F800C0 		str	ip, [r2]
 1522 00ba 5160     		str	r1, [r2, #4]
 1523 00bc 1762     		str	r7, [r2, #32]
 1524 00be A560     		str	r5, [r4, #8]
 1525 00c0 2360     		str	r3, [r4]
 1526 00c2 0028     		cmp	r0, #0
 1527 00c4 A6D1     		bne	.L238
 1528 00c6 0123     		movs	r3, #1
 1529 00c8 3370     		strb	r3, [r6]
 1530              		.syntax unified
 1531              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1532 00ca BFF35F8F 		dmb
 1533              	@ 0 "" 2
 1534              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1535 00ce 62B6     		cpsie i
 1536              	@ 0 "" 2
 1537              		.thumb
 1538              		.syntax unified
 1539 00d0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/cccpp1UI.s 			page 28


 1540              	.L265:
 1541 00d2 0F4A     		ldr	r2, .L266+8
 1542 00d4 1268     		ldr	r2, [r2]
 1543 00d6 002A     		cmp	r2, #0
 1544 00d8 9CD0     		beq	.L238
 1545 00da 0E4A     		ldr	r2, .L266+12
 1546 00dc BCE7     		b	.L250
 1547              	.L251:
 1548 00de 0123     		movs	r3, #1
 1549 00e0 0021     		movs	r1, #0
 1550              	.L247:
 1551 00e2 D069     		ldr	r0, [r2, #28]
 1552 00e4 1842     		tst	r0, r3
 1553 00e6 04D1     		bne	.L249
 1554 00e8 0131     		adds	r1, r1, #1
 1555 00ea 0429     		cmp	r1, #4
 1556 00ec 4FEA4303 		lsl	r3, r3, #1
 1557 00f0 F7D1     		bne	.L247
 1558              	.L249:
 1559 00f2 D069     		ldr	r0, [r2, #28]
 1560 00f4 20EA0303 		bic	r3, r0, r3
 1561 00f8 D361     		str	r3, [r2, #28]
 1562 00fa 52F82110 		ldr	r1, [r2, r1, lsl #2]
 1563 00fe B4E7     		b	.L248
 1564              	.L241:
 1565 0100 024B     		ldr	r3, .L266+4
 1566 0102 1B68     		ldr	r3, [r3]
 1567 0104 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1568              	.L267:
 1569 0106 00BF     		.align	2
 1570              	.L266:
 1571 0108 00000000 		.word	.LANCHOR3
 1572 010c 00000000 		.word	.LANCHOR1
 1573 0110 00000000 		.word	.LANCHOR4
 1574 0114 00000000 		.word	.LANCHOR0
 1575 0118 00E100E0 		.word	-536813312
 1576 011c 00000000 		.word	g_interrupt_enabled
 1577 0120 00400A40 		.word	1074413568
 1578 0124 00000000 		.word	g_APinDescription
 1579 0128 00000000 		.word	.LANCHOR5
 1580 012c 00000000 		.word	.LANCHOR6
 1581 0130 00000000 		.word	.LANCHOR2
 1582              		.size	_ZN12SmartDrivers4SpinEb, .-_ZN12SmartDrivers4SpinEb
 1583              		.section	.text._ZN12SmartDrivers14TurnDriversOffEv,"ax",%progbits
 1584              		.align	1
 1585              		.p2align 2,,3
 1586              		.global	_ZN12SmartDrivers14TurnDriversOffEv
 1587              		.syntax unified
 1588              		.thumb
 1589              		.thumb_func
 1590              		.fpu fpv4-sp-d16
 1591              		.type	_ZN12SmartDrivers14TurnDriversOffEv, %function
 1592              	_ZN12SmartDrivers14TurnDriversOffEv:
 1593              		@ args = 0, pretend = 0, frame = 0
 1594              		@ frame_needed = 0, uses_anonymous_args = 0
 1595 0000 08B5     		push	{r3, lr}
 1596 0002 0121     		movs	r1, #1
ARM GAS  /tmp/cccpp1UI.s 			page 29


 1597 0004 2620     		movs	r0, #38
 1598 0006 FFF7FEFF 		bl	digitalWrite
 1599 000a 024B     		ldr	r3, .L270
 1600 000c 0022     		movs	r2, #0
 1601 000e 1A70     		strb	r2, [r3]
 1602 0010 08BD     		pop	{r3, pc}
 1603              	.L271:
 1604 0012 00BF     		.align	2
 1605              	.L270:
 1606 0014 00000000 		.word	.LANCHOR3
 1607              		.size	_ZN12SmartDrivers14TurnDriversOffEv, .-_ZN12SmartDrivers14TurnDriversOffEv
 1608              		.section	.text._ZN12SmartDrivers17SetStallThresholdEji,"ax",%progbits
 1609              		.align	1
 1610              		.p2align 2,,3
 1611              		.global	_ZN12SmartDrivers17SetStallThresholdEji
 1612              		.syntax unified
 1613              		.thumb
 1614              		.thumb_func
 1615              		.fpu fpv4-sp-d16
 1616              		.type	_ZN12SmartDrivers17SetStallThresholdEji, %function
 1617              	_ZN12SmartDrivers17SetStallThresholdEji:
 1618              		@ args = 0, pretend = 0, frame = 0
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620              		@ link register save eliminated.
 1621 0000 0A4B     		ldr	r3, .L274
 1622 0002 1B68     		ldr	r3, [r3]
 1623 0004 8342     		cmp	r3, r0
 1624 0006 10D9     		bls	.L272
 1625 0008 094B     		ldr	r3, .L274+4
 1626 000a 03EB8010 		add	r0, r3, r0, lsl #6
 1627 000e 01F30601 		ssat	r1, #7, r1
 1628 0012 4368     		ldr	r3, [r0, #4]
 1629 0014 0902     		lsls	r1, r1, #8
 1630 0016 23F4FE43 		bic	r3, r3, #32512
 1631 001a 01F4FE41 		and	r1, r1, #32512
 1632 001e 1943     		orrs	r1, r1, r3
 1633 0020 4160     		str	r1, [r0, #4]
 1634 0022 C369     		ldr	r3, [r0, #28]
 1635 0024 43F00203 		orr	r3, r3, #2
 1636 0028 C361     		str	r3, [r0, #28]
 1637              	.L272:
 1638 002a 7047     		bx	lr
 1639              	.L275:
 1640              		.align	2
 1641              	.L274:
 1642 002c 00000000 		.word	.LANCHOR4
 1643 0030 00000000 		.word	.LANCHOR0
 1644              		.size	_ZN12SmartDrivers17SetStallThresholdEji, .-_ZN12SmartDrivers17SetStallThresholdEji
 1645              		.section	.text._ZN12SmartDrivers14SetStallFilterEjb,"ax",%progbits
 1646              		.align	1
 1647              		.p2align 2,,3
 1648              		.global	_ZN12SmartDrivers14SetStallFilterEjb
 1649              		.syntax unified
 1650              		.thumb
 1651              		.thumb_func
 1652              		.fpu fpv4-sp-d16
 1653              		.type	_ZN12SmartDrivers14SetStallFilterEjb, %function
ARM GAS  /tmp/cccpp1UI.s 			page 30


 1654              	_ZN12SmartDrivers14SetStallFilterEjb:
 1655              		@ args = 0, pretend = 0, frame = 0
 1656              		@ frame_needed = 0, uses_anonymous_args = 0
 1657              		@ link register save eliminated.
 1658 0000 0B4B     		ldr	r3, .L281
 1659 0002 1B68     		ldr	r3, [r3]
 1660 0004 8342     		cmp	r3, r0
 1661 0006 0CD9     		bls	.L276
 1662 0008 0A4B     		ldr	r3, .L281+4
 1663 000a 8001     		lsls	r0, r0, #6
 1664 000c 51B9     		cbnz	r1, .L280
 1665 000e 1918     		adds	r1, r3, r0
 1666 0010 4A68     		ldr	r2, [r1, #4]
 1667 0012 22F48032 		bic	r2, r2, #65536
 1668 0016 4A60     		str	r2, [r1, #4]
 1669              	.L279:
 1670 0018 1844     		add	r0, r0, r3
 1671 001a C369     		ldr	r3, [r0, #28]
 1672 001c 43F00203 		orr	r3, r3, #2
 1673 0020 C361     		str	r3, [r0, #28]
 1674              	.L276:
 1675 0022 7047     		bx	lr
 1676              	.L280:
 1677 0024 1918     		adds	r1, r3, r0
 1678 0026 4A68     		ldr	r2, [r1, #4]
 1679 0028 42F48032 		orr	r2, r2, #65536
 1680 002c 4A60     		str	r2, [r1, #4]
 1681 002e F3E7     		b	.L279
 1682              	.L282:
 1683              		.align	2
 1684              	.L281:
 1685 0030 00000000 		.word	.LANCHOR4
 1686 0034 00000000 		.word	.LANCHOR0
 1687              		.size	_ZN12SmartDrivers14SetStallFilterEjb, .-_ZN12SmartDrivers14SetStallFilterEjb
 1688              		.section	.text._ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj,"ax",%progbits
 1689              		.align	1
 1690              		.p2align 2,,3
 1691              		.global	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj
 1692              		.syntax unified
 1693              		.thumb
 1694              		.thumb_func
 1695              		.fpu fpv4-sp-d16
 1696              		.type	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj, %function
 1697              	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj:
 1698              		@ args = 0, pretend = 0, frame = 0
 1699              		@ frame_needed = 0, uses_anonymous_args = 0
 1700              		@ link register save eliminated.
 1701 0000 074B     		ldr	r3, .L285
 1702 0002 1B68     		ldr	r3, [r3]
 1703 0004 8342     		cmp	r3, r0
 1704 0006 09D9     		bls	.L283
 1705 0008 064B     		ldr	r3, .L285+4
 1706 000a 074A     		ldr	r2, .L285+8
 1707 000c 03EB8010 		add	r0, r3, r0, lsl #6
 1708 0010 0129     		cmp	r1, #1
 1709 0012 38BF     		it	cc
 1710 0014 0121     		movcc	r1, #1
ARM GAS  /tmp/cccpp1UI.s 			page 31


 1711 0016 B2FBF1F1 		udiv	r1, r2, r1
 1712 001a 8162     		str	r1, [r0, #40]
 1713              	.L283:
 1714 001c 7047     		bx	lr
 1715              	.L286:
 1716 001e 00BF     		.align	2
 1717              	.L285:
 1718 0020 00000000 		.word	.LANCHOR4
 1719 0024 00000000 		.word	.LANCHOR0
 1720 0028 1C4E0E00 		.word	937500
 1721              		.size	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj, .-_ZN12SmartDrivers29SetStallMinimumSte
 1722              		.section	.text._ZN12SmartDrivers11SetCoolStepEjt,"ax",%progbits
 1723              		.align	1
 1724              		.p2align 2,,3
 1725              		.global	_ZN12SmartDrivers11SetCoolStepEjt
 1726              		.syntax unified
 1727              		.thumb
 1728              		.thumb_func
 1729              		.fpu fpv4-sp-d16
 1730              		.type	_ZN12SmartDrivers11SetCoolStepEjt, %function
 1731              	_ZN12SmartDrivers11SetCoolStepEjt:
 1732              		@ args = 0, pretend = 0, frame = 0
 1733              		@ frame_needed = 0, uses_anonymous_args = 0
 1734              		@ link register save eliminated.
 1735 0000 074B     		ldr	r3, .L289
 1736 0002 1B68     		ldr	r3, [r3]
 1737 0004 8342     		cmp	r3, r0
 1738 0006 09D9     		bls	.L287
 1739 0008 064B     		ldr	r3, .L289+4
 1740 000a 03EB8010 		add	r0, r3, r0, lsl #6
 1741 000e 41F42021 		orr	r1, r1, #655360
 1742 0012 0161     		str	r1, [r0, #16]
 1743 0014 C369     		ldr	r3, [r0, #28]
 1744 0016 43F01003 		orr	r3, r3, #16
 1745 001a C361     		str	r3, [r0, #28]
 1746              	.L287:
 1747 001c 7047     		bx	lr
 1748              	.L290:
 1749 001e 00BF     		.align	2
 1750              	.L289:
 1751 0020 00000000 		.word	.LANCHOR4
 1752 0024 00000000 		.word	.LANCHOR0
 1753              		.size	_ZN12SmartDrivers11SetCoolStepEjt, .-_ZN12SmartDrivers11SetCoolStepEjt
 1754              		.section	.text._ZN12SmartDrivers17AppendStallConfigEjRK9StringRef,"ax",%progbits
 1755              		.align	1
 1756              		.p2align 2,,3
 1757              		.global	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef
 1758              		.syntax unified
 1759              		.thumb
 1760              		.thumb_func
 1761              		.fpu fpv4-sp-d16
 1762              		.type	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef, %function
 1763              	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef:
 1764              		@ args = 0, pretend = 0, frame = 0
 1765              		@ frame_needed = 0, uses_anonymous_args = 0
 1766              		@ link register save eliminated.
 1767 0000 044B     		ldr	r3, .L294
ARM GAS  /tmp/cccpp1UI.s 			page 32


 1768 0002 1B68     		ldr	r3, [r3]
 1769 0004 8342     		cmp	r3, r0
 1770 0006 00D8     		bhi	.L293
 1771 0008 7047     		bx	lr
 1772              	.L293:
 1773 000a 034B     		ldr	r3, .L294+4
 1774 000c 03EB8010 		add	r0, r3, r0, lsl #6
 1775 0010 FFF7FEBF 		b	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef
 1776              	.L295:
 1777              		.align	2
 1778              	.L294:
 1779 0014 00000000 		.word	.LANCHOR4
 1780 0018 00000000 		.word	.LANCHOR0
 1781              		.size	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef, .-_ZN12SmartDrivers17AppendStallConfigEj
 1782              		.section	.text._ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef,"ax",%progbits
 1783              		.align	1
 1784              		.p2align 2,,3
 1785              		.global	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef
 1786              		.syntax unified
 1787              		.thumb
 1788              		.thumb_func
 1789              		.fpu fpv4-sp-d16
 1790              		.type	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef, %function
 1791              	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef:
 1792              		@ args = 0, pretend = 0, frame = 0
 1793              		@ frame_needed = 0, uses_anonymous_args = 0
 1794              		@ link register save eliminated.
 1795 0000 044B     		ldr	r3, .L299
 1796 0002 1B68     		ldr	r3, [r3]
 1797 0004 8342     		cmp	r3, r0
 1798 0006 00D8     		bhi	.L298
 1799 0008 7047     		bx	lr
 1800              	.L298:
 1801 000a 034B     		ldr	r3, .L299+4
 1802 000c 03EB8010 		add	r0, r3, r0, lsl #6
 1803 0010 FFF7FEBF 		b	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef
 1804              	.L300:
 1805              		.align	2
 1806              	.L299:
 1807 0014 00000000 		.word	.LANCHOR4
 1808 0018 00000000 		.word	.LANCHOR0
 1809              		.size	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef, .-_ZN12SmartDrivers18AppendDriverStatus
 1810              		.section	.text._ZN12SmartDrivers27GetStandstillCurrentPercentEj,"ax",%progbits
 1811              		.align	1
 1812              		.p2align 2,,3
 1813              		.global	_ZN12SmartDrivers27GetStandstillCurrentPercentEj
 1814              		.syntax unified
 1815              		.thumb
 1816              		.thumb_func
 1817              		.fpu fpv4-sp-d16
 1818              		.type	_ZN12SmartDrivers27GetStandstillCurrentPercentEj, %function
 1819              	_ZN12SmartDrivers27GetStandstillCurrentPercentEj:
 1820              		@ args = 0, pretend = 0, frame = 0
 1821              		@ frame_needed = 0, uses_anonymous_args = 0
 1822              		@ link register save eliminated.
 1823 0000 9FED010A 		vldr.32	s0, .L302
 1824 0004 7047     		bx	lr
ARM GAS  /tmp/cccpp1UI.s 			page 33


 1825              	.L303:
 1826 0006 00BF     		.align	2
 1827              	.L302:
 1828 0008 0000C842 		.word	1120403456
 1829              		.size	_ZN12SmartDrivers27GetStandstillCurrentPercentEj, .-_ZN12SmartDrivers27GetStandstillCurrentP
 1830              		.section	.text._ZN12SmartDrivers27SetStandstillCurrentPercentEjf,"ax",%progbits
 1831              		.align	1
 1832              		.p2align 2,,3
 1833              		.global	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf
 1834              		.syntax unified
 1835              		.thumb
 1836              		.thumb_func
 1837              		.fpu fpv4-sp-d16
 1838              		.type	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf, %function
 1839              	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf:
 1840              		@ args = 0, pretend = 0, frame = 0
 1841              		@ frame_needed = 0, uses_anonymous_args = 0
 1842              		@ link register save eliminated.
 1843 0000 7047     		bx	lr
 1844              		.size	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf, .-_ZN12SmartDrivers27SetStandstillCurrent
 1845 0002 00BF     		.section	.text.startup._GLOBAL__sub_I__ZN14TmcDriverState4InitEmm,"ax",%progbits
 1846              		.align	1
 1847              		.p2align 2,,3
 1848              		.syntax unified
 1849              		.thumb
 1850              		.thumb_func
 1851              		.fpu fpv4-sp-d16
 1852              		.type	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm, %function
 1853              	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm:
 1854              		@ args = 0, pretend = 0, frame = 0
 1855              		@ frame_needed = 0, uses_anonymous_args = 0
 1856 0000 08B5     		push	{r3, lr}
 1857 0002 0348     		ldr	r0, .L307
 1858 0004 FFF7FEFF 		bl	usart_get_pdc_base
 1859 0008 024B     		ldr	r3, .L307+4
 1860 000a 1860     		str	r0, [r3]
 1861 000c 08BD     		pop	{r3, pc}
 1862              	.L308:
 1863 000e 00BF     		.align	2
 1864              	.L307:
 1865 0010 00400A40 		.word	1074413568
 1866 0014 00000000 		.word	.LANCHOR5
 1867              		.size	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm, .-_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm
 1868              		.section	.init_array,"aw",%init_array
 1869              		.align	2
 1870 0000 00000000 		.word	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm(target1)
 1871              		.section	.bss._ZL10spiDataOut,"aw",%nobits
 1872              		.align	2
 1873              		.set	.LANCHOR6,. + 0
 1874              		.type	_ZL10spiDataOut, %object
 1875              		.size	_ZL10spiDataOut, 4
 1876              	_ZL10spiDataOut:
 1877 0000 00000000 		.space	4
 1878              		.section	.bss._ZL12driverStates,"aw",%nobits
 1879              		.align	2
 1880              		.set	.LANCHOR0,. + 0
 1881              		.type	_ZL12driverStates, %object
ARM GAS  /tmp/cccpp1UI.s 			page 34


 1882              		.size	_ZL12driverStates, 640
 1883              	_ZL12driverStates:
 1884 0000 00000000 		.space	640
 1884      00000000 
 1884      00000000 
 1884      00000000 
 1884      00000000 
 1885              		.section	.bss._ZL13currentDriver,"aw",%nobits
 1886              		.align	2
 1887              		.set	.LANCHOR1,. + 0
 1888              		.type	_ZL13currentDriver, %object
 1889              		.size	_ZL13currentDriver, 4
 1890              	_ZL13currentDriver:
 1891 0000 00000000 		.space	4
 1892              		.section	.bss._ZL14driversPowered,"aw",%nobits
 1893              		.set	.LANCHOR3,. + 0
 1894              		.type	_ZL14driversPowered, %object
 1895              		.size	_ZL14driversPowered, 1
 1896              	_ZL14driversPowered:
 1897 0000 00       		.space	1
 1898              		.section	.bss._ZL17numTmc2660Drivers,"aw",%nobits
 1899              		.align	2
 1900              		.set	.LANCHOR4,. + 0
 1901              		.type	_ZL17numTmc2660Drivers, %object
 1902              		.size	_ZL17numTmc2660Drivers, 4
 1903              	_ZL17numTmc2660Drivers:
 1904 0000 00000000 		.space	4
 1905              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1906              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1907              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1908              	_ZL28cpu_irq_prev_interrupt_state:
 1909 0000 00       		.space	1
 1910              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1911              		.align	2
 1912              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1913              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1914              	_ZL32cpu_irq_critical_section_counter:
 1915 0000 00000000 		.space	4
 1916              		.section	.bss._ZL8usartPdc,"aw",%nobits
 1917              		.align	2
 1918              		.set	.LANCHOR5,. + 0
 1919              		.type	_ZL8usartPdc, %object
 1920              		.size	_ZL8usartPdc, 4
 1921              	_ZL8usartPdc:
 1922 0000 00000000 		.space	4
 1923              		.section	.bss._ZL9spiDataIn,"aw",%nobits
 1924              		.align	2
 1925              		.set	.LANCHOR2,. + 0
 1926              		.type	_ZL9spiDataIn, %object
 1927              		.size	_ZL9spiDataIn, 4
 1928              	_ZL9spiDataIn:
 1929 0000 00000000 		.space	4
 1930              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1931              		.align	2
 1932              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1933              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1934              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
ARM GAS  /tmp/cccpp1UI.s 			page 35


 1935 0000 00000000 		.space	4
 1936              		.section	.rodata._ZN14TmcDriverState18AppendDriverStatusERK9StringRef.str1.4,"aMS",%progbits,1
 1937              		.align	2
 1938              	.LC3:
 1939 0000 2074656D 		.ascii	" temperature-shutdown!\000"
 1939      70657261 
 1939      74757265 
 1939      2D736875 
 1939      74646F77 
 1940 0017 00       		.space	1
 1941              	.LC4:
 1942 0018 2074656D 		.ascii	" temperature-warning\000"
 1942      70657261 
 1942      74757265 
 1942      2D776172 
 1942      6E696E67 
 1943 002d 000000   		.space	3
 1944              	.LC5:
 1945 0030 2073686F 		.ascii	" short-to-ground\000"
 1945      72742D74 
 1945      6F2D6772 
 1945      6F756E64 
 1945      00
 1946 0041 000000   		.space	3
 1947              	.LC6:
 1948 0044 206F7065 		.ascii	" open-load-A\000"
 1948      6E2D6C6F 
 1948      61642D41 
 1948      00
 1949 0051 000000   		.space	3
 1950              	.LC7:
 1951 0054 206F7065 		.ascii	" open-load-B\000"
 1951      6E2D6C6F 
 1951      61642D42 
 1951      00
 1952 0061 000000   		.space	3
 1953              	.LC8:
 1954 0064 20737461 		.ascii	" standstill\000"
 1954      6E647374 
 1954      696C6C00 
 1955              	.LC9:
 1956 0070 206F6B00 		.ascii	" ok\000"
 1957              	.LC10:
 1958 0074 2C205347 		.ascii	", SG min/max %lu/%lu\000"
 1958      206D696E 
 1958      2F6D6178 
 1958      20256C75 
 1958      2F256C75 
 1959 0089 000000   		.space	3
 1960              	.LC11:
 1961 008c 2C205347 		.ascii	", SG min/max not available\000"
 1961      206D696E 
 1961      2F6D6178 
 1961      206E6F74 
 1961      20617661 
 1962              		.section	.rodata._ZNK14TmcDriverState17AppendStallConfigERK9StringRef.str1.4,"aMS",%progbits,1
 1963              		.align	2
ARM GAS  /tmp/cccpp1UI.s 			page 36


 1964              	.LC0:
 1965 0000 6F6E00   		.ascii	"on\000"
 1966 0003 00       		.space	1
 1967              	.LC1:
 1968 0004 6F666600 		.ascii	"off\000"
 1969              	.LC2:
 1970 0008 7374616C 		.ascii	"stall threshold %d, filter %s, steps/sec %lu, cools"
 1970      6C207468 
 1970      72657368 
 1970      6F6C6420 
 1970      25642C20 
 1971 003b 74657020 		.ascii	"tep %lx\000"
 1971      256C7800 
 1972              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
