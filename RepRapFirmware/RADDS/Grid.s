ARM GAS  /tmp/ccz0BzxB.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"Grid.cpp"
  12              		.global	__aeabi_fsub
  13              		.global	__aeabi_fcmpge
  14              		.global	__aeabi_fdiv
  15              		.global	__aeabi_f2uiz
  16              		.global	__aeabi_fcmplt
  17              		.section	.text._ZN14GridDefinition13CheckValidityEv,"ax",%progbits
  18              		.align	1
  19              		.p2align 2,,3
  20              		.global	_ZN14GridDefinition13CheckValidityEv
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu softvfp
  25              		.type	_ZN14GridDefinition13CheckValidityEv, %function
  26              	_ZN14GridDefinition13CheckValidityEv:
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  30 0002 0168     		ldr	r1, [r0]	@ float
  31 0004 0446     		mov	r4, r0
  32 0006 4068     		ldr	r0, [r0, #4]	@ float
  33 0008 FFF7FEFF 		bl	__aeabi_fsub
  34 000c 4FF07E51 		mov	r1, #1065353216
  35 0010 0646     		mov	r6, r0
  36 0012 FFF7FEFF 		bl	__aeabi_fcmpge
  37 0016 30B1     		cbz	r0, .L20
  38 0018 6569     		ldr	r5, [r4, #20]	@ float
  39 001a 2A49     		ldr	r1, .L24
  40 001c 2846     		mov	r0, r5
  41 001e FFF7FEFF 		bl	__aeabi_fcmpge
  42 0022 0028     		cmp	r0, #0
  43 0024 41D1     		bne	.L23
  44              	.L20:
  45 0026 0546     		mov	r5, r0
  46              	.L2:
  47 0028 A168     		ldr	r1, [r4, #8]	@ float
  48 002a E561     		str	r5, [r4, #28]
  49 002c E068     		ldr	r0, [r4, #12]	@ float
  50 002e FFF7FEFF 		bl	__aeabi_fsub
  51 0032 4FF07E51 		mov	r1, #1065353216
  52 0036 0746     		mov	r7, r0
  53 0038 FFF7FEFF 		bl	__aeabi_fcmpge
  54 003c 80B3     		cbz	r0, .L5
  55 003e A669     		ldr	r6, [r4, #24]	@ float
  56 0040 2049     		ldr	r1, .L24
  57 0042 3046     		mov	r0, r6
ARM GAS  /tmp/ccz0BzxB.s 			page 2


  58 0044 FFF7FEFF 		bl	__aeabi_fcmpge
  59 0048 50B3     		cbz	r0, .L5
  60 004a 3146     		mov	r1, r6
  61 004c 3846     		mov	r0, r7
  62 004e FFF7FEFF 		bl	__aeabi_fdiv
  63 0052 FFF7FEFF 		bl	__aeabi_f2uiz
  64 0056 0130     		adds	r0, r0, #1
  65 0058 00FB05F3 		mul	r3, r0, r5
  66 005c 013B     		subs	r3, r3, #1
  67 005e 782B     		cmp	r3, #120
  68 0060 2062     		str	r0, [r4, #32]
  69 0062 2AD8     		bhi	.L8
  70 0064 2769     		ldr	r7, [r4, #16]	@ float
  71 0066 0021     		movs	r1, #0
  72 0068 3846     		mov	r0, r7
  73 006a FFF7FEFF 		bl	__aeabi_fcmplt
  74 006e 28B9     		cbnz	r0, .L9
  75 0070 3846     		mov	r0, r7
  76 0072 4FF07E51 		mov	r1, #1065353216
  77 0076 FFF7FEFF 		bl	__aeabi_fcmpge
  78 007a F0B1     		cbz	r0, .L8
  79              	.L9:
  80 007c 152D     		cmp	r5, #21
  81 007e 1CD8     		bhi	.L8
  82 0080 0123     		movs	r3, #1
  83 0082 6169     		ldr	r1, [r4, #20]	@ float
  84 0084 84F82C30 		strb	r3, [r4, #44]
  85 0088 4FF07E50 		mov	r0, #1065353216
  86 008c FFF7FEFF 		bl	__aeabi_fdiv
  87 0090 3146     		mov	r1, r6
  88 0092 6062     		str	r0, [r4, #36]	@ float
  89 0094 4FF07E50 		mov	r0, #1065353216
  90 0098 FFF7FEFF 		bl	__aeabi_fdiv
  91 009c A062     		str	r0, [r4, #40]	@ float
  92 009e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  93              	.L5:
  94 00a0 0023     		movs	r3, #0
  95 00a2 2362     		str	r3, [r4, #32]
  96 00a4 84F82C30 		strb	r3, [r4, #44]
  97 00a8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  98              	.L23:
  99 00aa 2946     		mov	r1, r5
 100 00ac 3046     		mov	r0, r6
 101 00ae FFF7FEFF 		bl	__aeabi_fdiv
 102 00b2 FFF7FEFF 		bl	__aeabi_f2uiz
 103 00b6 451C     		adds	r5, r0, #1
 104 00b8 B6E7     		b	.L2
 105              	.L8:
 106 00ba 0023     		movs	r3, #0
 107 00bc 84F82C30 		strb	r3, [r4, #44]
 108 00c0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 109              	.L25:
 110 00c2 00BF     		.align	2
 111              	.L24:
 112 00c4 CDCCCC3D 		.word	1036831949
 113              		.size	_ZN14GridDefinition13CheckValidityEv, .-_ZN14GridDefinition13CheckValidityEv
 114              		.section	.text._ZN14GridDefinitionC2Ev,"ax",%progbits
ARM GAS  /tmp/ccz0BzxB.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZN14GridDefinitionC2Ev
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu softvfp
 122              		.type	_ZN14GridDefinitionC2Ev, %function
 123              	_ZN14GridDefinitionC2Ev:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 0023     		movs	r3, #0
 127 0002 10B5     		push	{r4, lr}
 128 0004 0446     		mov	r4, r0
 129 0006 064A     		ldr	r2, .L28
 130 0008 0360     		str	r3, [r0]	@ float
 131 000a 8360     		str	r3, [r0, #8]	@ float
 132 000c 4361     		str	r3, [r0, #20]	@ float
 133 000e 8361     		str	r3, [r0, #24]	@ float
 134 0010 4260     		str	r2, [r0, #4]	@ float
 135 0012 C260     		str	r2, [r0, #12]	@ float
 136 0014 0261     		str	r2, [r0, #16]	@ float
 137 0016 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 138 001a 2046     		mov	r0, r4
 139 001c 10BD     		pop	{r4, pc}
 140              	.L29:
 141 001e 00BF     		.align	2
 142              	.L28:
 143 0020 000080BF 		.word	-1082130432
 144              		.size	_ZN14GridDefinitionC2Ev, .-_ZN14GridDefinitionC2Ev
 145              		.global	_ZN14GridDefinitionC1Ev
 146              		.thumb_set _ZN14GridDefinitionC1Ev,_ZN14GridDefinitionC2Ev
 147              		.section	.text._ZN14GridDefinition3SetEPKfS1_fS1_,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	_ZN14GridDefinition3SetEPKfS1_fS1_
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu softvfp
 155              		.type	_ZN14GridDefinition3SetEPKfS1_fS1_, %function
 156              	_ZN14GridDefinition3SetEPKfS1_fS1_:
 157              		@ args = 4, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159 0000 70B5     		push	{r4, r5, r6, lr}
 160 0002 0446     		mov	r4, r0
 161 0004 0E68     		ldr	r6, [r1]	@ float
 162 0006 049D     		ldr	r5, [sp, #16]
 163 0008 0660     		str	r6, [r0]	@ float
 164 000a 4968     		ldr	r1, [r1, #4]	@ float
 165 000c 4160     		str	r1, [r0, #4]	@ float
 166 000e 1168     		ldr	r1, [r2]	@ float
 167 0010 8160     		str	r1, [r0, #8]	@ float
 168 0012 5268     		ldr	r2, [r2, #4]	@ float
 169 0014 0361     		str	r3, [r0, #16]	@ float
 170 0016 C260     		str	r2, [r0, #12]	@ float
 171 0018 2B68     		ldr	r3, [r5]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 4


 172 001a 4361     		str	r3, [r0, #20]	@ float
 173 001c 6B68     		ldr	r3, [r5, #4]	@ float
 174 001e 8361     		str	r3, [r0, #24]	@ float
 175 0020 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 176 0024 94F82C00 		ldrb	r0, [r4, #44]	@ zero_extendqisi2
 177 0028 70BD     		pop	{r4, r5, r6, pc}
 178              		.size	_ZN14GridDefinition3SetEPKfS1_fS1_, .-_ZN14GridDefinition3SetEPKfS1_fS1_
 179              		.global	__aeabi_ui2f
 180              		.global	__aeabi_fmul
 181              		.global	__aeabi_fadd
 182 002a 00BF     		.section	.text._ZNK14GridDefinition14GetXCoordinateEj,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZNK14GridDefinition14GetXCoordinateEj
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu softvfp
 190              		.type	_ZNK14GridDefinition14GetXCoordinateEj, %function
 191              	_ZNK14GridDefinition14GetXCoordinateEj:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 10B5     		push	{r4, lr}
 195 0002 0446     		mov	r4, r0
 196 0004 0846     		mov	r0, r1
 197 0006 FFF7FEFF 		bl	__aeabi_ui2f
 198 000a 6169     		ldr	r1, [r4, #20]	@ float
 199 000c FFF7FEFF 		bl	__aeabi_fmul
 200 0010 2168     		ldr	r1, [r4]	@ float
 201 0012 FFF7FEFF 		bl	__aeabi_fadd
 202 0016 10BD     		pop	{r4, pc}
 203              		.size	_ZNK14GridDefinition14GetXCoordinateEj, .-_ZNK14GridDefinition14GetXCoordinateEj
 204              		.section	.text._ZNK14GridDefinition14GetYCoordinateEj,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZNK14GridDefinition14GetYCoordinateEj
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu softvfp
 212              		.type	_ZNK14GridDefinition14GetYCoordinateEj, %function
 213              	_ZNK14GridDefinition14GetYCoordinateEj:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216 0000 10B5     		push	{r4, lr}
 217 0002 0446     		mov	r4, r0
 218 0004 0846     		mov	r0, r1
 219 0006 FFF7FEFF 		bl	__aeabi_ui2f
 220 000a A169     		ldr	r1, [r4, #24]	@ float
 221 000c FFF7FEFF 		bl	__aeabi_fmul
 222 0010 A168     		ldr	r1, [r4, #8]	@ float
 223 0012 FFF7FEFF 		bl	__aeabi_fadd
 224 0016 10BD     		pop	{r4, pc}
 225              		.size	_ZNK14GridDefinition14GetYCoordinateEj, .-_ZNK14GridDefinition14GetYCoordinateEj
 226              		.section	.text._ZNK14GridDefinition10IsInRadiusEff,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/ccz0BzxB.s 			page 5


 229              		.global	_ZNK14GridDefinition10IsInRadiusEff
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu softvfp
 234              		.type	_ZNK14GridDefinition10IsInRadiusEff, %function
 235              	_ZNK14GridDefinition10IsInRadiusEff:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238 0000 70B5     		push	{r4, r5, r6, lr}
 239 0002 0469     		ldr	r4, [r0, #16]	@ float
 240 0004 0E46     		mov	r6, r1
 241 0006 2046     		mov	r0, r4
 242 0008 0021     		movs	r1, #0
 243 000a 1546     		mov	r5, r2
 244 000c FFF7FEFF 		bl	__aeabi_fcmplt
 245 0010 E8B9     		cbnz	r0, .L39
 246 0012 3146     		mov	r1, r6
 247 0014 3046     		mov	r0, r6
 248 0016 FFF7FEFF 		bl	__aeabi_fmul
 249 001a 2946     		mov	r1, r5
 250 001c 0646     		mov	r6, r0
 251 001e 2846     		mov	r0, r5
 252 0020 FFF7FEFF 		bl	__aeabi_fmul
 253 0024 0146     		mov	r1, r0
 254 0026 3046     		mov	r0, r6
 255 0028 FFF7FEFF 		bl	__aeabi_fadd
 256 002c 2146     		mov	r1, r4
 257 002e 0546     		mov	r5, r0
 258 0030 2046     		mov	r0, r4
 259 0032 FFF7FEFF 		bl	__aeabi_fmul
 260 0036 0146     		mov	r1, r0
 261 0038 2846     		mov	r0, r5
 262 003a FFF7FEFF 		bl	__aeabi_fcmplt
 263 003e 4FF00103 		mov	r3, #1
 264 0042 08B1     		cbz	r0, .L41
 265 0044 D8B2     		uxtb	r0, r3
 266 0046 70BD     		pop	{r4, r5, r6, pc}
 267              	.L41:
 268 0048 0346     		mov	r3, r0
 269 004a D8B2     		uxtb	r0, r3
 270 004c 70BD     		pop	{r4, r5, r6, pc}
 271              	.L39:
 272 004e 0120     		movs	r0, #1
 273 0050 70BD     		pop	{r4, r5, r6, pc}
 274              		.size	_ZNK14GridDefinition10IsInRadiusEff, .-_ZNK14GridDefinition10IsInRadiusEff
 275              		.global	__aeabi_f2d
 276 0052 00BF     		.section	.text._ZNK14GridDefinition15PrintParametersERK9StringRef,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	_ZNK14GridDefinition15PrintParametersERK9StringRef
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu softvfp
 284              		.type	_ZNK14GridDefinition15PrintParametersERK9StringRef, %function
 285              	_ZNK14GridDefinition15PrintParametersERK9StringRef:
ARM GAS  /tmp/ccz0BzxB.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 289 0002 0446     		mov	r4, r0
 290 0004 8FB0     		sub	sp, sp, #60
 291 0006 0068     		ldr	r0, [r0]	@ float
 292 0008 0D46     		mov	r5, r1
 293 000a FFF7FEFF 		bl	__aeabi_f2d
 294 000e E269     		ldr	r2, [r4, #28]
 295 0010 236A     		ldr	r3, [r4, #32]
 296 0012 0646     		mov	r6, r0
 297 0014 03FB02F3 		mul	r3, r3, r2
 298 0018 A069     		ldr	r0, [r4, #24]	@ float
 299 001a 0F46     		mov	r7, r1
 300 001c 0C93     		str	r3, [sp, #48]
 301 001e FFF7FEFF 		bl	__aeabi_f2d
 302 0022 CDE90A01 		strd	r0, [sp, #40]
 303 0026 6069     		ldr	r0, [r4, #20]	@ float
 304 0028 FFF7FEFF 		bl	__aeabi_f2d
 305 002c CDE90801 		strd	r0, [sp, #32]
 306 0030 2069     		ldr	r0, [r4, #16]	@ float
 307 0032 FFF7FEFF 		bl	__aeabi_f2d
 308 0036 CDE90601 		strd	r0, [sp, #24]
 309 003a E068     		ldr	r0, [r4, #12]	@ float
 310 003c FFF7FEFF 		bl	__aeabi_f2d
 311 0040 CDE90401 		strd	r0, [sp, #16]
 312 0044 A068     		ldr	r0, [r4, #8]	@ float
 313 0046 FFF7FEFF 		bl	__aeabi_f2d
 314 004a CDE90201 		strd	r0, [sp, #8]
 315 004e 6068     		ldr	r0, [r4, #4]	@ float
 316 0050 FFF7FEFF 		bl	__aeabi_f2d
 317 0054 3246     		mov	r2, r6
 318 0056 CDE90001 		strd	r0, [sp]
 319 005a 3B46     		mov	r3, r7
 320 005c 2846     		mov	r0, r5
 321 005e 0249     		ldr	r1, .L44
 322 0060 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 323 0064 0FB0     		add	sp, sp, #60
 324              		@ sp needed
 325 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 326              	.L45:
 327              		.align	2
 328              	.L44:
 329 0068 00000000 		.word	.LC0
 330              		.size	_ZNK14GridDefinition15PrintParametersERK9StringRef, .-_ZNK14GridDefinition15PrintParametersE
 331              		.section	.text._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu softvfp
 339              		.type	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, %function
 340              	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccz0BzxB.s 			page 7


 343 0000 30B5     		push	{r4, r5, lr}
 344 0002 026A     		ldr	r2, [r0, #32]
 345 0004 C369     		ldr	r3, [r0, #28]
 346 0006 91B0     		sub	sp, sp, #68
 347 0008 0446     		mov	r4, r0
 348 000a 8069     		ldr	r0, [r0, #24]	@ float
 349 000c 0D46     		mov	r5, r1
 350 000e 0F92     		str	r2, [sp, #60]
 351 0010 0E93     		str	r3, [sp, #56]
 352 0012 FFF7FEFF 		bl	__aeabi_f2d
 353 0016 CDE90C01 		strd	r0, [sp, #48]
 354 001a 6069     		ldr	r0, [r4, #20]	@ float
 355 001c FFF7FEFF 		bl	__aeabi_f2d
 356 0020 CDE90A01 		strd	r0, [sp, #40]
 357 0024 2069     		ldr	r0, [r4, #16]	@ float
 358 0026 FFF7FEFF 		bl	__aeabi_f2d
 359 002a CDE90801 		strd	r0, [sp, #32]
 360 002e E068     		ldr	r0, [r4, #12]	@ float
 361 0030 FFF7FEFF 		bl	__aeabi_f2d
 362 0034 CDE90601 		strd	r0, [sp, #24]
 363 0038 A068     		ldr	r0, [r4, #8]	@ float
 364 003a FFF7FEFF 		bl	__aeabi_f2d
 365 003e CDE90401 		strd	r0, [sp, #16]
 366 0042 6068     		ldr	r0, [r4, #4]	@ float
 367 0044 FFF7FEFF 		bl	__aeabi_f2d
 368 0048 CDE90201 		strd	r0, [sp, #8]
 369 004c 2068     		ldr	r0, [r4]	@ float
 370 004e FFF7FEFF 		bl	__aeabi_f2d
 371 0052 044A     		ldr	r2, .L48
 372 0054 CDE90001 		strd	r0, [sp]
 373 0058 2846     		mov	r0, r5
 374 005a 0349     		ldr	r1, .L48+4
 375 005c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 376 0060 11B0     		add	sp, sp, #68
 377              		@ sp needed
 378 0062 30BD     		pop	{r4, r5, pc}
 379              	.L49:
 380              		.align	2
 381              	.L48:
 382 0064 00000000 		.word	.LC1
 383 0068 38000000 		.word	.LC2
 384              		.size	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, .-_ZNK14GridDefinition25WriteH
 385              		.section	.text._ZN14GridDefinition12CheckHeadingERK9StringRef,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	_ZN14GridDefinition12CheckHeadingERK9StringRef
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu softvfp
 393              		.type	_ZN14GridDefinition12CheckHeadingERK9StringRef, %function
 394              	_ZN14GridDefinition12CheckHeadingERK9StringRef:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397 0000 10B5     		push	{r4, lr}
 398 0002 0949     		ldr	r1, .L56
 399 0004 0446     		mov	r4, r0
ARM GAS  /tmp/ccz0BzxB.s 			page 8


 400 0006 0068     		ldr	r0, [r0]
 401 0008 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 402 000c 48B9     		cbnz	r0, .L53
 403 000e 2068     		ldr	r0, [r4]
 404 0010 0649     		ldr	r1, .L56+4
 405 0012 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 406 0016 0028     		cmp	r0, #0
 407 0018 0CBF     		ite	eq
 408 001a 4FF0FF30 		moveq	r0, #-1
 409 001e 0120     		movne	r0, #1
 410 0020 10BD     		pop	{r4, pc}
 411              	.L53:
 412 0022 0020     		movs	r0, #0
 413 0024 10BD     		pop	{r4, pc}
 414              	.L57:
 415 0026 00BF     		.align	2
 416              	.L56:
 417 0028 00000000 		.word	.LC3
 418 002c 00000000 		.word	.LC1
 419              		.size	_ZN14GridDefinition12CheckHeadingERK9StringRef, .-_ZN14GridDefinition12CheckHeadingERK9Strin
 420              		.section	.text._ZN14GridDefinition14ReadParametersERK9StringRefi,"ax",%progbits
 421              		.align	1
 422              		.p2align 2,,3
 423              		.global	_ZN14GridDefinition14ReadParametersERK9StringRefi
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu softvfp
 428              		.type	_ZN14GridDefinition14ReadParametersERK9StringRefi, %function
 429              	_ZN14GridDefinition14ReadParametersERK9StringRefi:
 430              		@ args = 0, pretend = 0, frame = 8
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432 0000 0023     		movs	r3, #0
 433 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 434 0004 0C68     		ldr	r4, [r1]
 435 0006 83B0     		sub	sp, sp, #12
 436 0008 80F82C30 		strb	r3, [r0, #44]
 437 000c 0546     		mov	r5, r0
 438 000e 01A9     		add	r1, sp, #4
 439 0010 2046     		mov	r0, r4
 440 0012 1646     		mov	r6, r2
 441 0014 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 442 0018 019B     		ldr	r3, [sp, #4]
 443 001a 2860     		str	r0, [r5]	@ float
 444 001c A342     		cmp	r3, r4
 445 001e 02D0     		beq	.L61
 446 0020 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 447 0022 2C2A     		cmp	r2, #44
 448 0024 02D0     		beq	.L65
 449              	.L61:
 450 0026 0020     		movs	r0, #0
 451              	.L60:
 452 0028 03B0     		add	sp, sp, #12
 453              		@ sp needed
 454 002a F0BD     		pop	{r4, r5, r6, r7, pc}
 455              	.L65:
 456 002c 5C1C     		adds	r4, r3, #1
ARM GAS  /tmp/ccz0BzxB.s 			page 9


 457 002e 2046     		mov	r0, r4
 458 0030 01A9     		add	r1, sp, #4
 459 0032 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 460 0036 019B     		ldr	r3, [sp, #4]
 461 0038 6860     		str	r0, [r5, #4]	@ float
 462 003a 9C42     		cmp	r4, r3
 463 003c F3D0     		beq	.L61
 464 003e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 465 0040 2C2A     		cmp	r2, #44
 466 0042 F0D1     		bne	.L61
 467 0044 5C1C     		adds	r4, r3, #1
 468 0046 2046     		mov	r0, r4
 469 0048 01A9     		add	r1, sp, #4
 470 004a FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 471 004e 019B     		ldr	r3, [sp, #4]
 472 0050 A860     		str	r0, [r5, #8]	@ float
 473 0052 9C42     		cmp	r4, r3
 474 0054 E7D0     		beq	.L61
 475 0056 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 476 0058 2C2A     		cmp	r2, #44
 477 005a E4D1     		bne	.L61
 478 005c 5C1C     		adds	r4, r3, #1
 479 005e 2046     		mov	r0, r4
 480 0060 01A9     		add	r1, sp, #4
 481 0062 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 482 0066 019B     		ldr	r3, [sp, #4]
 483 0068 E860     		str	r0, [r5, #12]	@ float
 484 006a 9C42     		cmp	r4, r3
 485 006c DBD0     		beq	.L61
 486 006e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 487 0070 2C2A     		cmp	r2, #44
 488 0072 D8D1     		bne	.L61
 489 0074 5C1C     		adds	r4, r3, #1
 490 0076 2046     		mov	r0, r4
 491 0078 01A9     		add	r1, sp, #4
 492 007a FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 493 007e 019F     		ldr	r7, [sp, #4]
 494 0080 2861     		str	r0, [r5, #16]	@ float
 495 0082 BC42     		cmp	r4, r7
 496 0084 CFD0     		beq	.L61
 497 0086 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 498 0088 2C2A     		cmp	r2, #44
 499 008a CCD1     		bne	.L61
 500 008c 0137     		adds	r7, r7, #1
 501 008e 3846     		mov	r0, r7
 502 0090 01A9     		add	r1, sp, #4
 503 0092 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 504 0096 019C     		ldr	r4, [sp, #4]
 505 0098 6861     		str	r0, [r5, #20]	@ float
 506 009a A742     		cmp	r7, r4
 507 009c C3D0     		beq	.L61
 508 009e 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 509 00a0 2C2B     		cmp	r3, #44
 510 00a2 C0D1     		bne	.L61
 511 00a4 0134     		adds	r4, r4, #1
 512 00a6 DEB9     		cbnz	r6, .L62
 513 00a8 A861     		str	r0, [r5, #24]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 10


 514              	.L63:
 515 00aa 0A22     		movs	r2, #10
 516 00ac 01A9     		add	r1, sp, #4
 517 00ae 2046     		mov	r0, r4
 518 00b0 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 519 00b4 019B     		ldr	r3, [sp, #4]
 520 00b6 E861     		str	r0, [r5, #28]
 521 00b8 9C42     		cmp	r4, r3
 522 00ba B4D0     		beq	.L61
 523 00bc 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 524 00be 2C2A     		cmp	r2, #44
 525 00c0 B1D1     		bne	.L61
 526 00c2 5C1C     		adds	r4, r3, #1
 527 00c4 01A9     		add	r1, sp, #4
 528 00c6 2046     		mov	r0, r4
 529 00c8 0A22     		movs	r2, #10
 530 00ca FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 531 00ce 019B     		ldr	r3, [sp, #4]
 532 00d0 2862     		str	r0, [r5, #32]
 533 00d2 9C42     		cmp	r4, r3
 534 00d4 A7D0     		beq	.L61
 535 00d6 2846     		mov	r0, r5
 536 00d8 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 537 00dc 0120     		movs	r0, #1
 538 00de A3E7     		b	.L60
 539              	.L62:
 540 00e0 01A9     		add	r1, sp, #4
 541 00e2 2046     		mov	r0, r4
 542 00e4 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 543 00e8 019B     		ldr	r3, [sp, #4]
 544 00ea A861     		str	r0, [r5, #24]	@ float
 545 00ec 9C42     		cmp	r4, r3
 546 00ee 9AD0     		beq	.L61
 547 00f0 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 548 00f2 2C2A     		cmp	r2, #44
 549 00f4 97D1     		bne	.L61
 550 00f6 5C1C     		adds	r4, r3, #1
 551 00f8 D7E7     		b	.L63
 552              		.size	_ZN14GridDefinition14ReadParametersERK9StringRefi, .-_ZN14GridDefinition14ReadParametersERK9
 553              		.global	__aeabi_fcmpun
 554              		.global	__aeabi_fcmpgt
 555 00fa 00BF     		.section	.text._ZNK14GridDefinition10PrintErrorEffRK9StringRef,"ax",%progbits
 556              		.align	1
 557              		.p2align 2,,3
 558              		.global	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 559              		.syntax unified
 560              		.thumb
 561              		.thumb_func
 562              		.fpu softvfp
 563              		.type	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, %function
 564              	_ZNK14GridDefinition10PrintErrorEffRK9StringRef:
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 568 0004 0446     		mov	r4, r0
 569 0006 0E46     		mov	r6, r1
 570 0008 4069     		ldr	r0, [r0, #20]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 11


 571 000a 3649     		ldr	r1, .L86
 572 000c 1746     		mov	r7, r2
 573 000e 1D46     		mov	r5, r3
 574 0010 FFF7FEFF 		bl	__aeabi_fcmplt
 575 0014 0028     		cmp	r0, #0
 576 0016 45D1     		bne	.L67
 577 0018 3249     		ldr	r1, .L86
 578 001a A069     		ldr	r0, [r4, #24]	@ float
 579 001c FFF7FEFF 		bl	__aeabi_fcmplt
 580 0020 0028     		cmp	r0, #0
 581 0022 3FD1     		bne	.L67
 582 0024 E369     		ldr	r3, [r4, #28]
 583 0026 002B     		cmp	r3, #0
 584 0028 50D0     		beq	.L83
 585 002a 226A     		ldr	r2, [r4, #32]
 586 002c 002A     		cmp	r2, #0
 587 002e 53D0     		beq	.L84
 588 0030 152B     		cmp	r3, #21
 589 0032 3DD9     		bls	.L85
 590              	.L72:
 591 0034 3946     		mov	r1, r7
 592 0036 3046     		mov	r0, r6
 593 0038 FFF7FEFF 		bl	__aeabi_fadd
 594 003c 3946     		mov	r1, r7
 595 003e 0446     		mov	r4, r0
 596 0040 3046     		mov	r0, r6
 597 0042 FFF7FEFF 		bl	__aeabi_fmul
 598 0046 2849     		ldr	r1, .L86+4
 599 0048 FFF7FEFF 		bl	__aeabi_fmul
 600 004c 2146     		mov	r1, r4
 601 004e 0746     		mov	r7, r0
 602 0050 2046     		mov	r0, r4
 603 0052 FFF7FEFF 		bl	__aeabi_fmul
 604 0056 0146     		mov	r1, r0
 605 0058 3846     		mov	r0, r7
 606 005a FFF7FEFF 		bl	__aeabi_fadd
 607 005e FFF7FEFF 		bl	sqrtf
 608 0062 0146     		mov	r1, r0
 609 0064 2046     		mov	r0, r4
 610 0066 FFF7FEFF 		bl	__aeabi_fadd
 611 006a 2049     		ldr	r1, .L86+8
 612 006c FFF7FEFF 		bl	__aeabi_fdiv
 613 0070 0146     		mov	r1, r0
 614 0072 0446     		mov	r4, r0
 615 0074 FFF7FEFF 		bl	__aeabi_fcmpun
 616 0078 30BB     		cbnz	r0, .L77
 617 007a 3046     		mov	r0, r6
 618 007c 1C49     		ldr	r1, .L86+12
 619 007e FFF7FEFF 		bl	__aeabi_fdiv
 620 0082 0646     		mov	r6, r0
 621 0084 0146     		mov	r1, r0
 622 0086 2046     		mov	r0, r4
 623 0088 FFF7FEFF 		bl	__aeabi_fcmpgt
 624 008c E0B9     		cbnz	r0, .L77
 625 008e 3046     		mov	r0, r6
 626              	.L74:
 627 0090 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccz0BzxB.s 			page 12


 628 0094 0246     		mov	r2, r0
 629 0096 0B46     		mov	r3, r1
 630 0098 2846     		mov	r0, r5
 631 009a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 632 009e 1549     		ldr	r1, .L86+16
 633 00a0 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 634              	.L67:
 635 00a4 2846     		mov	r0, r5
 636 00a6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 637 00aa 1349     		ldr	r1, .L86+20
 638 00ac FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 639              	.L85:
 640 00b0 792A     		cmp	r2, #121
 641 00b2 BFD8     		bhi	.L72
 642 00b4 02FB03F3 		mul	r3, r2, r3
 643 00b8 792B     		cmp	r3, #121
 644 00ba BBD8     		bhi	.L72
 645 00bc 2846     		mov	r0, r5
 646 00be BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 647 00c2 0E49     		ldr	r1, .L86+24
 648 00c4 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 649              	.L77:
 650 00c8 2046     		mov	r0, r4
 651 00ca E1E7     		b	.L74
 652              	.L83:
 653 00cc 2846     		mov	r0, r5
 654 00ce BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 655 00d2 0B49     		ldr	r1, .L86+28
 656 00d4 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 657              	.L84:
 658 00d8 2846     		mov	r0, r5
 659 00da BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 660 00de 0949     		ldr	r1, .L86+32
 661 00e0 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 662              	.L87:
 663              		.align	2
 664              	.L86:
 665 00e4 CDCCCC3D 		.word	1036831949
 666 00e8 0000F043 		.word	1139802112
 667 00ec 00007043 		.word	1131413504
 668 00f0 0000A041 		.word	1101004800
 669 00f4 3C000000 		.word	.LC7
 670 00f8 00000000 		.word	.LC4
 671 00fc 78000000 		.word	.LC8
 672 0100 14000000 		.word	.LC5
 673 0104 28000000 		.word	.LC6
 674              		.size	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, .-_ZNK14GridDefinition10PrintErrorEffRK9Str
 675              		.section	.text._ZN9HeightMapC2Ev,"ax",%progbits
 676              		.align	1
 677              		.p2align 2,,3
 678              		.global	_ZN9HeightMapC2Ev
 679              		.syntax unified
 680              		.thumb
 681              		.thumb_func
 682              		.fpu softvfp
 683              		.type	_ZN9HeightMapC2Ev, %function
 684              	_ZN9HeightMapC2Ev:
ARM GAS  /tmp/ccz0BzxB.s 			page 13


 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687 0000 0023     		movs	r3, #0
 688 0002 084A     		ldr	r2, .L90
 689 0004 10B5     		push	{r4, lr}
 690 0006 0360     		str	r3, [r0]	@ float
 691 0008 8360     		str	r3, [r0, #8]	@ float
 692 000a 4361     		str	r3, [r0, #20]	@ float
 693 000c 8361     		str	r3, [r0, #24]	@ float
 694 000e 4260     		str	r2, [r0, #4]	@ float
 695 0010 C260     		str	r2, [r0, #12]	@ float
 696 0012 0261     		str	r2, [r0, #16]	@ float
 697 0014 0446     		mov	r4, r0
 698 0016 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 699 001a 0023     		movs	r3, #0
 700 001c 2046     		mov	r0, r4
 701 001e 84F82432 		strb	r3, [r4, #548]
 702 0022 10BD     		pop	{r4, pc}
 703              	.L91:
 704              		.align	2
 705              	.L90:
 706 0024 000080BF 		.word	-1082130432
 707              		.size	_ZN9HeightMapC2Ev, .-_ZN9HeightMapC2Ev
 708              		.global	_ZN9HeightMapC1Ev
 709              		.thumb_set _ZN9HeightMapC1Ev,_ZN9HeightMapC2Ev
 710              		.section	.text._ZN9HeightMap7SetGridERK14GridDefinition,"ax",%progbits
 711              		.align	1
 712              		.p2align 2,,3
 713              		.global	_ZN9HeightMap7SetGridERK14GridDefinition
 714              		.syntax unified
 715              		.thumb
 716              		.thumb_func
 717              		.fpu softvfp
 718              		.type	_ZN9HeightMap7SetGridERK14GridDefinition, %function
 719              	_ZN9HeightMap7SetGridERK14GridDefinition:
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722              		@ link register save eliminated.
 723 0000 0022     		movs	r2, #0
 724 0002 0346     		mov	r3, r0
 725 0004 F0B4     		push	{r4, r5, r6, r7}
 726 0006 80F82422 		strb	r2, [r0, #548]
 727 000a 01F12002 		add	r2, r1, #32
 728              	.L93:
 729 000e 0F68     		ldr	r7, [r1]	@ unaligned
 730 0010 4E68     		ldr	r6, [r1, #4]	@ unaligned
 731 0012 8D68     		ldr	r5, [r1, #8]	@ unaligned
 732 0014 CC68     		ldr	r4, [r1, #12]	@ unaligned
 733 0016 1031     		adds	r1, r1, #16
 734 0018 9142     		cmp	r1, r2
 735 001a 1F60     		str	r7, [r3]	@ unaligned
 736 001c 5E60     		str	r6, [r3, #4]	@ unaligned
 737 001e 9D60     		str	r5, [r3, #8]	@ unaligned
 738 0020 DC60     		str	r4, [r3, #12]	@ unaligned
 739 0022 03F11003 		add	r3, r3, #16
 740 0026 F2D1     		bne	.L93
 741 0028 0022     		movs	r2, #0
ARM GAS  /tmp/ccz0BzxB.s 			page 14


 742 002a 0E68     		ldr	r6, [r1]	@ unaligned
 743 002c 4D68     		ldr	r5, [r1, #4]	@ unaligned
 744 002e 8C68     		ldr	r4, [r1, #8]	@ unaligned
 745 0030 1E60     		str	r6, [r3]	@ unaligned
 746 0032 5D60     		str	r5, [r3, #4]	@ unaligned
 747 0034 9C60     		str	r4, [r3, #8]	@ unaligned
 748 0036 097B     		ldrb	r1, [r1, #12]	@ zero_extendqisi2
 749 0038 F0BC     		pop	{r4, r5, r6, r7}
 750 003a 1973     		strb	r1, [r3, #12]
 751 003c C0F81422 		str	r2, [r0, #532]
 752 0040 C0F81822 		str	r2, [r0, #536]
 753 0044 C0F81C22 		str	r2, [r0, #540]
 754 0048 C0F82022 		str	r2, [r0, #544]
 755 004c 7047     		bx	lr
 756              		.size	_ZN9HeightMap7SetGridERK14GridDefinition, .-_ZN9HeightMap7SetGridERK14GridDefinition
 757              		.section	.text._ZN9HeightMap16ClearGridHeightsEv,"ax",%progbits
 758              		.align	1
 759              		.p2align 2,,3
 760              		.global	_ZN9HeightMap16ClearGridHeightsEv
 761              		.syntax unified
 762              		.thumb
 763              		.thumb_func
 764              		.fpu softvfp
 765              		.type	_ZN9HeightMap16ClearGridHeightsEv, %function
 766              	_ZN9HeightMap16ClearGridHeightsEv:
 767              		@ args = 0, pretend = 0, frame = 0
 768              		@ frame_needed = 0, uses_anonymous_args = 0
 769              		@ link register save eliminated.
 770 0000 0023     		movs	r3, #0
 771 0002 C0F81432 		str	r3, [r0, #532]
 772 0006 C0F81832 		str	r3, [r0, #536]
 773 000a C0F81C32 		str	r3, [r0, #540]
 774 000e C0F82032 		str	r3, [r0, #544]
 775 0012 7047     		bx	lr
 776              		.size	_ZN9HeightMap16ClearGridHeightsEv, .-_ZN9HeightMap16ClearGridHeightsEv
 777              		.section	.text._ZN9HeightMap13SetGridHeightEjjf,"ax",%progbits
 778              		.align	1
 779              		.p2align 2,,3
 780              		.global	_ZN9HeightMap13SetGridHeightEjjf
 781              		.syntax unified
 782              		.thumb
 783              		.thumb_func
 784              		.fpu softvfp
 785              		.type	_ZN9HeightMap13SetGridHeightEjjf, %function
 786              	_ZN9HeightMap13SetGridHeightEjjf:
 787              		@ args = 0, pretend = 0, frame = 0
 788              		@ frame_needed = 0, uses_anonymous_args = 0
 789              		@ link register save eliminated.
 790 0000 30B4     		push	{r4, r5}
 791 0002 C469     		ldr	r4, [r0, #28]
 792 0004 04FB0212 		mla	r2, r4, r2, r1
 793 0008 782A     		cmp	r2, #120
 794 000a 10D8     		bhi	.L97
 795 000c 0121     		movs	r1, #1
 796 000e 02F10C05 		add	r5, r2, #12
 797 0012 5409     		lsrs	r4, r2, #5
 798 0014 40F82530 		str	r3, [r0, r5, lsl #2]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 15


 799 0018 00EB8400 		add	r0, r0, r4, lsl #2
 800 001c D0F81432 		ldr	r3, [r0, #532]
 801 0020 02F01F02 		and	r2, r2, #31
 802 0024 01FA02F2 		lsl	r2, r1, r2
 803 0028 1343     		orrs	r3, r3, r2
 804 002a C0F81432 		str	r3, [r0, #532]
 805              	.L97:
 806 002e 30BC     		pop	{r4, r5}
 807 0030 7047     		bx	lr
 808              		.size	_ZN9HeightMap13SetGridHeightEjjf, .-_ZN9HeightMap13SetGridHeightEjjf
 809 0032 00BF     		.section	.text._ZNK9HeightMap18GetMinimumSegmentsEff,"ax",%progbits
 810              		.align	1
 811              		.p2align 2,,3
 812              		.global	_ZNK9HeightMap18GetMinimumSegmentsEff
 813              		.syntax unified
 814              		.thumb
 815              		.thumb_func
 816              		.fpu softvfp
 817              		.type	_ZNK9HeightMap18GetMinimumSegmentsEff, %function
 818              	_ZNK9HeightMap18GetMinimumSegmentsEff:
 819              		@ args = 0, pretend = 0, frame = 0
 820              		@ frame_needed = 0, uses_anonymous_args = 0
 821 0000 70B5     		push	{r4, r5, r6, lr}
 822 0002 21F00045 		bic	r5, r1, #-2147483648
 823 0006 0646     		mov	r6, r0
 824 0008 0021     		movs	r1, #0
 825 000a 2846     		mov	r0, r5
 826 000c 1446     		mov	r4, r2
 827 000e FFF7FEFF 		bl	__aeabi_fcmpgt
 828 0012 E8B1     		cbz	r0, .L109
 829 0014 2846     		mov	r0, r5
 830 0016 716A     		ldr	r1, [r6, #36]	@ float
 831 0018 FFF7FEFF 		bl	__aeabi_fmul
 832 001c 1049     		ldr	r1, .L112
 833 001e FFF7FEFF 		bl	__aeabi_fadd
 834 0022 FFF7FEFF 		bl	__aeabi_f2uiz
 835 0026 0546     		mov	r5, r0
 836              	.L101:
 837 0028 24F00044 		bic	r4, r4, #-2147483648
 838 002c 2046     		mov	r0, r4
 839 002e 0021     		movs	r1, #0
 840 0030 FFF7FEFF 		bl	__aeabi_fcmpgt
 841 0034 70B1     		cbz	r0, .L110
 842 0036 B16A     		ldr	r1, [r6, #40]	@ float
 843 0038 2046     		mov	r0, r4
 844 003a FFF7FEFF 		bl	__aeabi_fmul
 845 003e 0849     		ldr	r1, .L112
 846 0040 FFF7FEFF 		bl	__aeabi_fadd
 847 0044 FFF7FEFF 		bl	__aeabi_f2uiz
 848 0048 A842     		cmp	r0, r5
 849 004a 38BF     		it	cc
 850 004c 2846     		movcc	r0, r5
 851 004e 70BD     		pop	{r4, r5, r6, pc}
 852              	.L109:
 853 0050 0125     		movs	r5, #1
 854 0052 E9E7     		b	.L101
 855              	.L110:
ARM GAS  /tmp/ccz0BzxB.s 			page 16


 856 0054 0120     		movs	r0, #1
 857 0056 A842     		cmp	r0, r5
 858 0058 38BF     		it	cc
 859 005a 2846     		movcc	r0, r5
 860 005c 70BD     		pop	{r4, r5, r6, pc}
 861              	.L113:
 862 005e 00BF     		.align	2
 863              	.L112:
 864 0060 CDCCCC3E 		.word	1053609165
 865              		.size	_ZNK9HeightMap18GetMinimumSegmentsEff, .-_ZNK9HeightMap18GetMinimumSegmentsEff
 866              		.global	__aeabi_dadd
 867              		.global	__aeabi_dmul
 868              		.global	__aeabi_ui2d
 869              		.global	__aeabi_ddiv
 870              		.global	__aeabi_d2f
 871              		.global	__aeabi_dsub
 872              		.section	.text._ZNK9HeightMap13GetStatisticsERfS0_,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	_ZNK9HeightMap13GetStatisticsERfS0_
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu softvfp
 880              		.type	_ZNK9HeightMap13GetStatisticsERfS0_, %function
 881              	_ZNK9HeightMap13GetStatisticsERfS0_:
 882              		@ args = 0, pretend = 0, frame = 24
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 885 0004 C369     		ldr	r3, [r0, #28]
 886 0006 8246     		mov	r10, r0
 887 0008 006A     		ldr	r0, [r0, #32]
 888 000a 87B0     		sub	sp, sp, #28
 889 000c 00FB03F9 		mul	r9, r0, r3
 890 0010 0491     		str	r1, [sp, #16]
 891 0012 0592     		str	r2, [sp, #20]
 892 0014 B9F1000F 		cmp	r9, #0
 893 0018 3CD0     		beq	.L115
 894 001a 0024     		movs	r4, #0
 895 001c 0022     		movs	r2, #0
 896 001e 0023     		movs	r3, #0
 897 0020 A046     		mov	r8, r4
 898 0022 4FF0010B 		mov	fp, #1
 899 0026 CDE90223 		strd	r2, [sp, #8]
 900 002a CDE90023 		strd	r2, [sp]
 901 002e 0AF13005 		add	r5, r10, #48
 902              	.L117:
 903 0032 6309     		lsrs	r3, r4, #5
 904 0034 0AEB8303 		add	r3, r10, r3, lsl #2
 905 0038 D3F81422 		ldr	r2, [r3, #532]
 906 003c 04F01F03 		and	r3, r4, #31
 907 0040 0BFA03F3 		lsl	r3, fp, r3
 908 0044 1342     		tst	r3, r2
 909 0046 04F10104 		add	r4, r4, #1
 910 004a 1CD0     		beq	.L116
 911 004c 2868     		ldr	r0, [r5]	@ float
 912 004e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccz0BzxB.s 			page 17


 913 0052 0646     		mov	r6, r0
 914 0054 0F46     		mov	r7, r1
 915 0056 0246     		mov	r2, r0
 916 0058 0B46     		mov	r3, r1
 917 005a DDE90001 		ldrd	r0, [sp]
 918 005e FFF7FEFF 		bl	__aeabi_dadd
 919 0062 3246     		mov	r2, r6
 920 0064 CDE90001 		strd	r0, [sp]
 921 0068 3B46     		mov	r3, r7
 922 006a 3046     		mov	r0, r6
 923 006c 3946     		mov	r1, r7
 924 006e FFF7FEFF 		bl	__aeabi_dmul
 925 0072 0246     		mov	r2, r0
 926 0074 0B46     		mov	r3, r1
 927 0076 DDE90201 		ldrd	r0, [sp, #8]
 928 007a FFF7FEFF 		bl	__aeabi_dadd
 929 007e CDE90201 		strd	r0, [sp, #8]
 930 0082 08F10108 		add	r8, r8, #1
 931              	.L116:
 932 0086 4C45     		cmp	r4, r9
 933 0088 05F10405 		add	r5, r5, #4
 934 008c D1D1     		bne	.L117
 935 008e B8F1000F 		cmp	r8, #0
 936 0092 0AD1     		bne	.L118
 937              	.L115:
 938 0094 4FF00008 		mov	r8, #0
 939 0098 0023     		movs	r3, #0
 940 009a 4046     		mov	r0, r8
 941 009c 059A     		ldr	r2, [sp, #20]
 942 009e 1360     		str	r3, [r2]	@ float
 943 00a0 049A     		ldr	r2, [sp, #16]
 944 00a2 1360     		str	r3, [r2]	@ float
 945 00a4 07B0     		add	sp, sp, #28
 946              		@ sp needed
 947 00a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 948              	.L118:
 949 00aa 4046     		mov	r0, r8
 950 00ac FFF7FEFF 		bl	__aeabi_ui2d
 951 00b0 DDE90067 		ldrd	r6, [sp]
 952 00b4 0246     		mov	r2, r0
 953 00b6 0B46     		mov	r3, r1
 954 00b8 0446     		mov	r4, r0
 955 00ba 0D46     		mov	r5, r1
 956 00bc 3046     		mov	r0, r6
 957 00be 3946     		mov	r1, r7
 958 00c0 FFF7FEFF 		bl	__aeabi_ddiv
 959 00c4 FFF7FEFF 		bl	__aeabi_d2f
 960 00c8 0499     		ldr	r1, [sp, #16]
 961 00ca 2246     		mov	r2, r4
 962 00cc 2B46     		mov	r3, r5
 963 00ce 0860     		str	r0, [r1]	@ float
 964 00d0 DDE90201 		ldrd	r0, [sp, #8]
 965 00d4 FFF7FEFF 		bl	__aeabi_dmul
 966 00d8 3246     		mov	r2, r6
 967 00da 0446     		mov	r4, r0
 968 00dc 0D46     		mov	r5, r1
 969 00de 3B46     		mov	r3, r7
ARM GAS  /tmp/ccz0BzxB.s 			page 18


 970 00e0 3046     		mov	r0, r6
 971 00e2 3946     		mov	r1, r7
 972 00e4 FFF7FEFF 		bl	__aeabi_dmul
 973 00e8 0246     		mov	r2, r0
 974 00ea 0B46     		mov	r3, r1
 975 00ec 2046     		mov	r0, r4
 976 00ee 2946     		mov	r1, r5
 977 00f0 FFF7FEFF 		bl	__aeabi_dsub
 978 00f4 FFF7FEFF 		bl	sqrt
 979 00f8 FFF7FEFF 		bl	__aeabi_d2f
 980 00fc 0446     		mov	r4, r0
 981 00fe 4046     		mov	r0, r8
 982 0100 FFF7FEFF 		bl	__aeabi_ui2f
 983 0104 0146     		mov	r1, r0
 984 0106 2046     		mov	r0, r4
 985 0108 FFF7FEFF 		bl	__aeabi_fdiv
 986 010c 059B     		ldr	r3, [sp, #20]
 987 010e 1860     		str	r0, [r3]	@ float
 988 0110 4046     		mov	r0, r8
 989 0112 07B0     		add	sp, sp, #28
 990              		@ sp needed
 991 0114 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 992              		.size	_ZNK9HeightMap13GetStatisticsERfS0_, .-_ZNK9HeightMap13GetStatisticsERfS0_
 993              		.section	.text._ZNK9HeightMap10SaveToFileEP9FileStoref,"ax",%progbits
 994              		.align	1
 995              		.p2align 2,,3
 996              		.global	_ZNK9HeightMap10SaveToFileEP9FileStoref
 997              		.syntax unified
 998              		.thumb
 999              		.thumb_func
 1000              		.fpu softvfp
 1001              		.type	_ZNK9HeightMap10SaveToFileEP9FileStoref, %function
 1002              	_ZNK9HeightMap10SaveToFileEP9FileStoref:
 1003              		@ args = 0, pretend = 0, frame = 528
 1004              		@ frame_needed = 0, uses_anonymous_args = 0
 1005 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1006 0004 0026     		movs	r6, #0
 1007 0006 40F2F515 		movw	r5, #501
 1008 000a ADF5097D 		sub	sp, sp, #548
 1009 000e 594C     		ldr	r4, .L160
 1010 0010 0591     		str	r1, [sp, #20]
 1011 0012 0AAB     		add	r3, sp, #40
 1012 0014 0746     		mov	r7, r0
 1013 0016 5849     		ldr	r1, .L160+4
 1014 0018 08A8     		add	r0, sp, #32
 1015 001a 9146     		mov	r9, r2
 1016 001c 8DF82860 		strb	r6, [sp, #40]
 1017 0020 0893     		str	r3, [sp, #32]
 1018 0022 0995     		str	r5, [sp, #36]
 1019 0024 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1020 0028 2068     		ldr	r0, [r4]	@ unaligned
 1021 002a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 1022 002e 0028     		cmp	r0, #0
 1023 0030 40F08880 		bne	.L156
 1024 0034 07AE     		add	r6, sp, #28
 1025              	.L129:
 1026 0036 3246     		mov	r2, r6
ARM GAS  /tmp/ccz0BzxB.s 			page 19


 1027 0038 06A9     		add	r1, sp, #24
 1028 003a 3846     		mov	r0, r7
 1029 003c FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 1030 0040 0699     		ldr	r1, [sp, #24]	@ float
 1031 0042 4846     		mov	r0, r9
 1032 0044 FFF7FEFF 		bl	__aeabi_fadd
 1033 0048 FFF7FEFF 		bl	__aeabi_f2d
 1034 004c 0446     		mov	r4, r0
 1035 004e 3068     		ldr	r0, [r6]	@ float
 1036 0050 0D46     		mov	r5, r1
 1037 0052 FFF7FEFF 		bl	__aeabi_f2d
 1038 0056 2246     		mov	r2, r4
 1039 0058 CDE90001 		strd	r0, [sp]
 1040 005c 2B46     		mov	r3, r5
 1041 005e 4749     		ldr	r1, .L160+8
 1042 0060 08A8     		add	r0, sp, #32
 1043 0062 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1044 0066 0899     		ldr	r1, [sp, #32]
 1045 0068 0598     		ldr	r0, [sp, #20]
 1046 006a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1047 006e 20B9     		cbnz	r0, .L130
 1048              	.L132:
 1049 0070 0120     		movs	r0, #1
 1050 0072 0DF5097D 		add	sp, sp, #548
 1051              		@ sp needed
 1052 0076 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1053              	.L130:
 1054 007a 08A9     		add	r1, sp, #32
 1055 007c 3846     		mov	r0, r7
 1056 007e FFF7FEFF 		bl	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 1057 0082 0899     		ldr	r1, [sp, #32]
 1058 0084 0598     		ldr	r0, [sp, #20]
 1059 0086 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1060 008a 0028     		cmp	r0, #0
 1061 008c F0D0     		beq	.L132
 1062 008e 3B6A     		ldr	r3, [r7, #32]
 1063 0090 002B     		cmp	r3, #0
 1064 0092 4DD0     		beq	.L140
 1065 0094 0023     		movs	r3, #0
 1066 0096 1C46     		mov	r4, r3
 1067 0098 DFF8E8B0 		ldr	fp, .L160+16
 1068 009c DFF8E8A0 		ldr	r10, .L160+20
 1069 00a0 0493     		str	r3, [sp, #16]
 1070              	.L141:
 1071 00a2 4FF00002 		mov	r2, #0
 1072 00a6 089B     		ldr	r3, [sp, #32]
 1073 00a8 1A70     		strb	r2, [r3]
 1074 00aa FB69     		ldr	r3, [r7, #28]
 1075 00ac 83B3     		cbz	r3, .L134
 1076 00ae 04F10C06 		add	r6, r4, #12
 1077 00b2 07EB8606 		add	r6, r7, r6, lsl #2
 1078 00b6 0025     		movs	r5, #0
 1079 00b8 4FF00108 		mov	r8, #1
 1080 00bc 13E0     		b	.L135
 1081              	.L159:
 1082 00be 3168     		ldr	r1, [r6]	@ float
 1083 00c0 4846     		mov	r0, r9
ARM GAS  /tmp/ccz0BzxB.s 			page 20


 1084 00c2 FFF7FEFF 		bl	__aeabi_fadd
 1085 00c6 FFF7FEFF 		bl	__aeabi_f2d
 1086 00ca 0B46     		mov	r3, r1
 1087 00cc 0246     		mov	r2, r0
 1088 00ce 5146     		mov	r1, r10
 1089 00d0 08A8     		add	r0, sp, #32
 1090 00d2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1091 00d6 FB69     		ldr	r3, [r7, #28]
 1092 00d8 0135     		adds	r5, r5, #1
 1093 00da AB42     		cmp	r3, r5
 1094 00dc 04F10104 		add	r4, r4, #1
 1095 00e0 16D9     		bls	.L134
 1096              	.L139:
 1097 00e2 55BB     		cbnz	r5, .L158
 1098              	.L136:
 1099 00e4 0436     		adds	r6, r6, #4
 1100              	.L135:
 1101 00e6 6309     		lsrs	r3, r4, #5
 1102 00e8 07EB8303 		add	r3, r7, r3, lsl #2
 1103 00ec D3F81422 		ldr	r2, [r3, #532]
 1104 00f0 04F01F03 		and	r3, r4, #31
 1105 00f4 08FA03F3 		lsl	r3, r8, r3
 1106 00f8 1342     		tst	r3, r2
 1107 00fa E0D1     		bne	.L159
 1108 00fc 5946     		mov	r1, fp
 1109 00fe 08A8     		add	r0, sp, #32
 1110 0100 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1111 0104 FB69     		ldr	r3, [r7, #28]
 1112 0106 0135     		adds	r5, r5, #1
 1113 0108 AB42     		cmp	r3, r5
 1114 010a 04F10104 		add	r4, r4, #1
 1115 010e E8D8     		bhi	.L139
 1116              	.L134:
 1117 0110 0A21     		movs	r1, #10
 1118 0112 08A8     		add	r0, sp, #32
 1119 0114 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1120 0118 0899     		ldr	r1, [sp, #32]
 1121 011a 0598     		ldr	r0, [sp, #20]
 1122 011c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1123 0120 0028     		cmp	r0, #0
 1124 0122 A5D0     		beq	.L132
 1125 0124 049A     		ldr	r2, [sp, #16]
 1126 0126 3B6A     		ldr	r3, [r7, #32]
 1127 0128 0132     		adds	r2, r2, #1
 1128 012a 9342     		cmp	r3, r2
 1129 012c 0492     		str	r2, [sp, #16]
 1130 012e B8D8     		bhi	.L141
 1131              	.L140:
 1132 0130 0020     		movs	r0, #0
 1133 0132 0DF5097D 		add	sp, sp, #548
 1134              		@ sp needed
 1135 0136 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1136              	.L158:
 1137 013a 2C21     		movs	r1, #44
 1138 013c 08A8     		add	r0, sp, #32
 1139 013e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1140 0142 CFE7     		b	.L136
ARM GAS  /tmp/ccz0BzxB.s 			page 21


 1141              	.L156:
 1142 0144 2068     		ldr	r0, [r4]
 1143 0146 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1144 014a 07AE     		add	r6, sp, #28
 1145 014c 0790     		str	r0, [sp, #28]
 1146 014e 3046     		mov	r0, r6
 1147 0150 FFF7FEFF 		bl	gmtime
 1148 0154 4168     		ldr	r1, [r0, #4]
 1149 0156 0369     		ldr	r3, [r0, #16]
 1150 0158 4269     		ldr	r2, [r0, #20]
 1151 015a 0291     		str	r1, [sp, #8]
 1152 015c 8168     		ldr	r1, [r0, #8]
 1153 015e 02F26C72 		addw	r2, r2, #1900
 1154 0162 0191     		str	r1, [sp, #4]
 1155 0164 C168     		ldr	r1, [r0, #12]
 1156 0166 08A8     		add	r0, sp, #32
 1157 0168 0091     		str	r1, [sp]
 1158 016a 0549     		ldr	r1, .L160+12
 1159 016c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1160 0170 61E7     		b	.L129
 1161              	.L161:
 1162 0172 00BF     		.align	2
 1163              	.L160:
 1164 0174 00000000 		.word	reprap
 1165 0178 00000000 		.word	.LC9
 1166 017c 4C000000 		.word	.LC11
 1167 0180 24000000 		.word	.LC10
 1168 0184 78000000 		.word	.LC13
 1169 0188 70000000 		.word	.LC12
 1170              		.size	_ZNK9HeightMap10SaveToFileEP9FileStoref, .-_ZNK9HeightMap10SaveToFileEP9FileStoref
 1171              		.section	.text._ZN9HeightMap12UseHeightMapEb,"ax",%progbits
 1172              		.align	1
 1173              		.p2align 2,,3
 1174              		.global	_ZN9HeightMap12UseHeightMapEb
 1175              		.syntax unified
 1176              		.thumb
 1177              		.thumb_func
 1178              		.fpu softvfp
 1179              		.type	_ZN9HeightMap12UseHeightMapEb, %function
 1180              	_ZN9HeightMap12UseHeightMapEb:
 1181              		@ args = 0, pretend = 0, frame = 0
 1182              		@ frame_needed = 0, uses_anonymous_args = 0
 1183              		@ link register save eliminated.
 1184 0000 09B1     		cbz	r1, .L163
 1185 0002 90F82C10 		ldrb	r1, [r0, #44]	@ zero_extendqisi2
 1186              	.L163:
 1187 0006 80F82412 		strb	r1, [r0, #548]
 1188 000a 0846     		mov	r0, r1
 1189 000c 7047     		bx	lr
 1190              		.size	_ZN9HeightMap12UseHeightMapEb, .-_ZN9HeightMap12UseHeightMapEb
 1191              		.global	__aeabi_f2iz
 1192 000e 00BF     		.section	.text._ZNK9HeightMap26GetInterpolatedHeightErrorEff,"ax",%progbits
 1193              		.align	1
 1194              		.p2align 2,,3
 1195              		.global	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1196              		.syntax unified
 1197              		.thumb
ARM GAS  /tmp/ccz0BzxB.s 			page 22


 1198              		.thumb_func
 1199              		.fpu softvfp
 1200              		.type	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, %function
 1201              	_ZNK9HeightMap26GetInterpolatedHeightErrorEff:
 1202              		@ args = 0, pretend = 0, frame = 0
 1203              		@ frame_needed = 0, uses_anonymous_args = 0
 1204 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1205 0004 90F82432 		ldrb	r3, [r0, #548]	@ zero_extendqisi2
 1206 0008 002B     		cmp	r3, #0
 1207 000a 00F0A380 		beq	.L175
 1208 000e 0446     		mov	r4, r0
 1209 0010 C569     		ldr	r5, [r0, #28]
 1210 0012 D0F80090 		ldr	r9, [r0]	@ float
 1211 0016 681E     		subs	r0, r5, #1
 1212 0018 1646     		mov	r6, r2
 1213 001a 0F46     		mov	r7, r1
 1214 001c FFF7FEFF 		bl	__aeabi_ui2f
 1215 0020 6169     		ldr	r1, [r4, #20]	@ float
 1216 0022 FFF7FEFF 		bl	__aeabi_fmul
 1217 0026 4946     		mov	r1, r9
 1218 0028 FFF7FEFF 		bl	__aeabi_fadd
 1219 002c 8246     		mov	r10, r0
 1220 002e 206A     		ldr	r0, [r4, #32]
 1221 0030 D4F80880 		ldr	r8, [r4, #8]	@ float
 1222 0034 0138     		subs	r0, r0, #1
 1223 0036 FFF7FEFF 		bl	__aeabi_ui2f
 1224 003a A169     		ldr	r1, [r4, #24]	@ float
 1225 003c FFF7FEFF 		bl	__aeabi_fmul
 1226 0040 4146     		mov	r1, r8
 1227 0042 FFF7FEFF 		bl	__aeabi_fadd
 1228 0046 3946     		mov	r1, r7
 1229 0048 8346     		mov	fp, r0
 1230 004a 4846     		mov	r0, r9
 1231 004c FFF7FEFF 		bl	__aeabi_fcmpgt
 1232 0050 00B1     		cbz	r0, .L167
 1233 0052 4F46     		mov	r7, r9
 1234              	.L167:
 1235 0054 3146     		mov	r1, r6
 1236 0056 4046     		mov	r0, r8
 1237 0058 FFF7FEFF 		bl	__aeabi_fcmpgt
 1238 005c 00B1     		cbz	r0, .L169
 1239 005e 4646     		mov	r6, r8
 1240              	.L169:
 1241 0060 5046     		mov	r0, r10
 1242 0062 3E49     		ldr	r1, .L181
 1243 0064 FFF7FEFF 		bl	__aeabi_fsub
 1244 0068 8246     		mov	r10, r0
 1245 006a 0146     		mov	r1, r0
 1246 006c 3846     		mov	r0, r7
 1247 006e FFF7FEFF 		bl	__aeabi_fcmpgt
 1248 0072 00B1     		cbz	r0, .L171
 1249 0074 5746     		mov	r7, r10
 1250              	.L171:
 1251 0076 3949     		ldr	r1, .L181
 1252 0078 5846     		mov	r0, fp
 1253 007a FFF7FEFF 		bl	__aeabi_fsub
 1254 007e 8246     		mov	r10, r0
ARM GAS  /tmp/ccz0BzxB.s 			page 23


 1255 0080 0146     		mov	r1, r0
 1256 0082 3046     		mov	r0, r6
 1257 0084 FFF7FEFF 		bl	__aeabi_fcmpgt
 1258 0088 00B1     		cbz	r0, .L173
 1259 008a 5646     		mov	r6, r10
 1260              	.L173:
 1261 008c 4946     		mov	r1, r9
 1262 008e 3846     		mov	r0, r7
 1263 0090 FFF7FEFF 		bl	__aeabi_fsub
 1264 0094 616A     		ldr	r1, [r4, #36]	@ float
 1265 0096 FFF7FEFF 		bl	__aeabi_fmul
 1266 009a 8146     		mov	r9, r0
 1267 009c FFF7FEFF 		bl	floorf
 1268 00a0 4146     		mov	r1, r8
 1269 00a2 8246     		mov	r10, r0
 1270 00a4 3046     		mov	r0, r6
 1271 00a6 FFF7FEFF 		bl	__aeabi_fsub
 1272 00aa A16A     		ldr	r1, [r4, #40]	@ float
 1273 00ac FFF7FEFF 		bl	__aeabi_fmul
 1274 00b0 0746     		mov	r7, r0
 1275 00b2 FFF7FEFF 		bl	floorf
 1276 00b6 5146     		mov	r1, r10
 1277 00b8 0646     		mov	r6, r0
 1278 00ba 4846     		mov	r0, r9
 1279 00bc FFF7FEFF 		bl	__aeabi_fsub
 1280 00c0 3146     		mov	r1, r6
 1281 00c2 8046     		mov	r8, r0
 1282 00c4 3846     		mov	r0, r7
 1283 00c6 FFF7FEFF 		bl	__aeabi_fsub
 1284 00ca 0746     		mov	r7, r0
 1285 00cc 3046     		mov	r0, r6
 1286 00ce FFF7FEFF 		bl	__aeabi_f2iz
 1287 00d2 05FB00F9 		mul	r9, r5, r0
 1288 00d6 5046     		mov	r0, r10
 1289 00d8 FFF7FEFF 		bl	__aeabi_f2iz
 1290 00dc 3946     		mov	r1, r7
 1291 00de 8144     		add	r9, r9, r0
 1292 00e0 4046     		mov	r0, r8
 1293 00e2 FFF7FEFF 		bl	__aeabi_fmul
 1294 00e6 0646     		mov	r6, r0
 1295 00e8 4146     		mov	r1, r8
 1296 00ea 4FF07E50 		mov	r0, #1065353216
 1297 00ee FFF7FEFF 		bl	__aeabi_fsub
 1298 00f2 4D44     		add	r5, r5, r9
 1299 00f4 3946     		mov	r1, r7
 1300 00f6 04EB8505 		add	r5, r4, r5, lsl #2
 1301 00fa FFF7FEFF 		bl	__aeabi_fsub
 1302 00fe 04EB8904 		add	r4, r4, r9, lsl #2
 1303 0102 3146     		mov	r1, r6
 1304 0104 FFF7FEFF 		bl	__aeabi_fadd
 1305 0108 216B     		ldr	r1, [r4, #48]	@ float
 1306 010a FFF7FEFF 		bl	__aeabi_fmul
 1307 010e 3146     		mov	r1, r6
 1308 0110 8146     		mov	r9, r0
 1309 0112 4046     		mov	r0, r8
 1310 0114 FFF7FEFF 		bl	__aeabi_fsub
 1311 0118 616B     		ldr	r1, [r4, #52]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 24


 1312 011a FFF7FEFF 		bl	__aeabi_fmul
 1313 011e 0146     		mov	r1, r0
 1314 0120 4846     		mov	r0, r9
 1315 0122 FFF7FEFF 		bl	__aeabi_fadd
 1316 0126 3146     		mov	r1, r6
 1317 0128 0446     		mov	r4, r0
 1318 012a 3846     		mov	r0, r7
 1319 012c FFF7FEFF 		bl	__aeabi_fsub
 1320 0130 296B     		ldr	r1, [r5, #48]	@ float
 1321 0132 FFF7FEFF 		bl	__aeabi_fmul
 1322 0136 0146     		mov	r1, r0
 1323 0138 2046     		mov	r0, r4
 1324 013a FFF7FEFF 		bl	__aeabi_fadd
 1325 013e 696B     		ldr	r1, [r5, #52]	@ float
 1326 0140 0446     		mov	r4, r0
 1327 0142 3046     		mov	r0, r6
 1328 0144 FFF7FEFF 		bl	__aeabi_fmul
 1329 0148 0146     		mov	r1, r0
 1330 014a 2046     		mov	r0, r4
 1331 014c FFF7FEFF 		bl	__aeabi_fadd
 1332 0150 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1333              	.L175:
 1334 0154 0020     		movs	r0, #0
 1335 0156 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1336              	.L182:
 1337 015a 00BF     		.align	2
 1338              	.L181:
 1339 015c 0AD7233C 		.word	1008981770
 1340              		.size	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, .-_ZNK9HeightMap26GetInterpolatedHeightErrorE
 1341              		.section	.text._ZNK9HeightMap13InterpolateXYEmmff,"ax",%progbits
 1342              		.align	1
 1343              		.p2align 2,,3
 1344              		.global	_ZNK9HeightMap13InterpolateXYEmmff
 1345              		.syntax unified
 1346              		.thumb
 1347              		.thumb_func
 1348              		.fpu softvfp
 1349              		.type	_ZNK9HeightMap13InterpolateXYEmmff, %function
 1350              	_ZNK9HeightMap13InterpolateXYEmmff:
 1351              		@ args = 4, pretend = 0, frame = 0
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1354 0004 C469     		ldr	r4, [r0, #28]
 1355 0006 0546     		mov	r5, r0
 1356 0008 04FB0218 		mla	r8, r4, r2, r1
 1357 000c 1846     		mov	r0, r3
 1358 000e 0699     		ldr	r1, [sp, #24]	@ float
 1359 0010 1F46     		mov	r7, r3
 1360 0012 FFF7FEFF 		bl	__aeabi_fmul
 1361 0016 0646     		mov	r6, r0
 1362 0018 3946     		mov	r1, r7
 1363 001a 4FF07E50 		mov	r0, #1065353216
 1364 001e FFF7FEFF 		bl	__aeabi_fsub
 1365 0022 4444     		add	r4, r4, r8
 1366 0024 0699     		ldr	r1, [sp, #24]	@ float
 1367 0026 05EB8404 		add	r4, r5, r4, lsl #2
 1368 002a FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  /tmp/ccz0BzxB.s 			page 25


 1369 002e 05EB8805 		add	r5, r5, r8, lsl #2
 1370 0032 3146     		mov	r1, r6
 1371 0034 FFF7FEFF 		bl	__aeabi_fadd
 1372 0038 296B     		ldr	r1, [r5, #48]	@ float
 1373 003a FFF7FEFF 		bl	__aeabi_fmul
 1374 003e 3146     		mov	r1, r6
 1375 0040 8046     		mov	r8, r0
 1376 0042 3846     		mov	r0, r7
 1377 0044 FFF7FEFF 		bl	__aeabi_fsub
 1378 0048 696B     		ldr	r1, [r5, #52]	@ float
 1379 004a FFF7FEFF 		bl	__aeabi_fmul
 1380 004e 0146     		mov	r1, r0
 1381 0050 4046     		mov	r0, r8
 1382 0052 FFF7FEFF 		bl	__aeabi_fadd
 1383 0056 3146     		mov	r1, r6
 1384 0058 0546     		mov	r5, r0
 1385 005a 0698     		ldr	r0, [sp, #24]	@ float
 1386 005c FFF7FEFF 		bl	__aeabi_fsub
 1387 0060 216B     		ldr	r1, [r4, #48]	@ float
 1388 0062 FFF7FEFF 		bl	__aeabi_fmul
 1389 0066 0146     		mov	r1, r0
 1390 0068 2846     		mov	r0, r5
 1391 006a FFF7FEFF 		bl	__aeabi_fadd
 1392 006e 616B     		ldr	r1, [r4, #52]	@ float
 1393 0070 0546     		mov	r5, r0
 1394 0072 3046     		mov	r0, r6
 1395 0074 FFF7FEFF 		bl	__aeabi_fmul
 1396 0078 0146     		mov	r1, r0
 1397 007a 2846     		mov	r0, r5
 1398 007c FFF7FEFF 		bl	__aeabi_fadd
 1399 0080 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1400              		.size	_ZNK9HeightMap13InterpolateXYEmmff, .-_ZNK9HeightMap13InterpolateXYEmmff
 1401              		.global	__aeabi_fcmple
 1402              		.global	__aeabi_i2f
 1403              		.section	.text._ZN9HeightMap18ExtrapolateMissingEv,"ax",%progbits
 1404              		.align	1
 1405              		.p2align 2,,3
 1406              		.global	_ZN9HeightMap18ExtrapolateMissingEv
 1407              		.syntax unified
 1408              		.thumb
 1409              		.thumb_func
 1410              		.fpu softvfp
 1411              		.type	_ZN9HeightMap18ExtrapolateMissingEv, %function
 1412              	_ZN9HeightMap18ExtrapolateMissingEv:
 1413              		@ args = 0, pretend = 0, frame = 56
 1414              		@ frame_needed = 0, uses_anonymous_args = 0
 1415 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1416 0004 036A     		ldr	r3, [r0, #32]
 1417 0006 8FB0     		sub	sp, sp, #60
 1418 0008 0493     		str	r3, [sp, #16]
 1419 000a 002B     		cmp	r3, #0
 1420 000c 00F0CE81 		beq	.L185
 1421 0010 0027     		movs	r7, #0
 1422 0012 00F13003 		add	r3, r0, #48
 1423 0016 0D93     		str	r3, [sp, #52]
 1424 0018 0B93     		str	r3, [sp, #44]
 1425 001a 0393     		str	r3, [sp, #12]
ARM GAS  /tmp/ccz0BzxB.s 			page 26


 1426 001c C369     		ldr	r3, [r0, #28]
 1427 001e BB46     		mov	fp, r7
 1428 0020 9900     		lsls	r1, r3, #2
 1429 0022 4FF0000A 		mov	r10, #0
 1430 0026 0C91     		str	r1, [sp, #48]
 1431 0028 3946     		mov	r1, r7
 1432 002a 0697     		str	r7, [sp, #24]
 1433 002c 0446     		mov	r4, r0
 1434 002e 1F46     		mov	r7, r3
 1435 0030 D146     		mov	r9, r10
 1436 0032 5B46     		mov	r3, fp
 1437 0034 0122     		movs	r2, #1
 1438 0036 D346     		mov	fp, r10
 1439 0038 8846     		mov	r8, r1
 1440              	.L191:
 1441 003a 002F     		cmp	r7, #0
 1442 003c 40D0     		beq	.L187
 1443 003e 4146     		mov	r1, r8
 1444 0040 0025     		movs	r5, #0
 1445 0042 B846     		mov	r8, r7
 1446 0044 1F46     		mov	r7, r3
 1447 0046 0B46     		mov	r3, r1
 1448 0048 039E     		ldr	r6, [sp, #12]
 1449              	.L189:
 1450 004a 5919     		adds	r1, r3, r5
 1451 004c 4809     		lsrs	r0, r1, #5
 1452 004e 04EB8000 		add	r0, r4, r0, lsl #2
 1453 0052 D0F81402 		ldr	r0, [r0, #532]
 1454 0056 01F01F01 		and	r1, r1, #31
 1455 005a 02FA01F1 		lsl	r1, r2, r1
 1456 005e 0142     		tst	r1, r0
 1457 0060 25D0     		beq	.L188
 1458 0062 2846     		mov	r0, r5
 1459 0064 0293     		str	r3, [sp, #8]
 1460 0066 0192     		str	r2, [sp, #4]
 1461 0068 FFF7FEFF 		bl	__aeabi_ui2f
 1462 006c 6169     		ldr	r1, [r4, #20]	@ float
 1463 006e FFF7FEFF 		bl	__aeabi_fmul
 1464 0072 2168     		ldr	r1, [r4]	@ float
 1465 0074 FFF7FEFF 		bl	__aeabi_fadd
 1466 0078 0146     		mov	r1, r0
 1467 007a 4846     		mov	r0, r9
 1468 007c FFF7FEFF 		bl	__aeabi_fadd
 1469 0080 8146     		mov	r9, r0
 1470 0082 0698     		ldr	r0, [sp, #24]
 1471 0084 FFF7FEFF 		bl	__aeabi_ui2f
 1472 0088 A169     		ldr	r1, [r4, #24]	@ float
 1473 008a FFF7FEFF 		bl	__aeabi_fmul
 1474 008e A168     		ldr	r1, [r4, #8]	@ float
 1475 0090 FFF7FEFF 		bl	__aeabi_fadd
 1476 0094 0146     		mov	r1, r0
 1477 0096 5046     		mov	r0, r10
 1478 0098 FFF7FEFF 		bl	__aeabi_fadd
 1479 009c 3168     		ldr	r1, [r6]	@ float
 1480 009e 8246     		mov	r10, r0
 1481 00a0 5846     		mov	r0, fp
 1482 00a2 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  /tmp/ccz0BzxB.s 			page 27


 1483 00a6 8346     		mov	fp, r0
 1484 00a8 029B     		ldr	r3, [sp, #8]
 1485 00aa 019A     		ldr	r2, [sp, #4]
 1486 00ac 0137     		adds	r7, r7, #1
 1487              	.L188:
 1488 00ae 0135     		adds	r5, r5, #1
 1489 00b0 A845     		cmp	r8, r5
 1490 00b2 06F10406 		add	r6, r6, #4
 1491 00b6 C8D1     		bne	.L189
 1492 00b8 1946     		mov	r1, r3
 1493 00ba 3B46     		mov	r3, r7
 1494 00bc 4746     		mov	r7, r8
 1495 00be 8846     		mov	r8, r1
 1496              	.L187:
 1497 00c0 0398     		ldr	r0, [sp, #12]
 1498 00c2 0C9D     		ldr	r5, [sp, #48]
 1499 00c4 0699     		ldr	r1, [sp, #24]
 1500 00c6 2844     		add	r0, r0, r5
 1501 00c8 0390     		str	r0, [sp, #12]
 1502 00ca 0498     		ldr	r0, [sp, #16]
 1503 00cc 0131     		adds	r1, r1, #1
 1504 00ce 8142     		cmp	r1, r0
 1505 00d0 0691     		str	r1, [sp, #24]
 1506 00d2 B844     		add	r8, r8, r7
 1507 00d4 B1D1     		bne	.L191
 1508 00d6 D046     		mov	r8, r10
 1509 00d8 DA46     		mov	r10, fp
 1510 00da 9B46     		mov	fp, r3
 1511 00dc 0022     		movs	r2, #0
 1512 00de 5846     		mov	r0, fp
 1513 00e0 0192     		str	r2, [sp, #4]
 1514 00e2 0497     		str	r7, [sp, #16]
 1515 00e4 FFF7FEFF 		bl	__aeabi_i2f
 1516 00e8 0146     		mov	r1, r0
 1517 00ea 4FF07E50 		mov	r0, #1065353216
 1518 00ee FFF7FEFF 		bl	__aeabi_fdiv
 1519 00f2 4946     		mov	r1, r9
 1520 00f4 0546     		mov	r5, r0
 1521 00f6 FFF7FEFF 		bl	__aeabi_fmul
 1522 00fa 4146     		mov	r1, r8
 1523 00fc 0890     		str	r0, [sp, #32]	@ float
 1524 00fe 2846     		mov	r0, r5
 1525 0100 FFF7FEFF 		bl	__aeabi_fmul
 1526 0104 4FF0000B 		mov	fp, #0
 1527 0108 0A90     		str	r0, [sp, #40]	@ float
 1528 010a 5146     		mov	r1, r10
 1529 010c 2846     		mov	r0, r5
 1530 010e FFF7FEFF 		bl	__aeabi_fmul
 1531 0112 019A     		ldr	r2, [sp, #4]
 1532 0114 049B     		ldr	r3, [sp, #16]
 1533 0116 0792     		str	r2, [sp, #28]
 1534 0118 9246     		mov	r10, r2
 1535 011a 5A46     		mov	r2, fp
 1536 011c 0990     		str	r0, [sp, #36]	@ float
 1537 011e CDF808B0 		str	fp, [sp, #8]	@ float
 1538 0122 CDF80CB0 		str	fp, [sp, #12]	@ float
 1539 0126 CDF804B0 		str	fp, [sp, #4]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 28


 1540              	.L195:
 1541 012a 002B     		cmp	r3, #0
 1542 012c 64D0     		beq	.L192
 1543 012e 0025     		movs	r5, #0
 1544 0130 0B9E     		ldr	r6, [sp, #44]
 1545              	.L194:
 1546 0132 0127     		movs	r7, #1
 1547 0134 0AEB0501 		add	r1, r10, r5
 1548 0138 4809     		lsrs	r0, r1, #5
 1549 013a 04EB8000 		add	r0, r4, r0, lsl #2
 1550 013e D0F81402 		ldr	r0, [r0, #532]
 1551 0142 01F01F01 		and	r1, r1, #31
 1552 0146 07FA01F1 		lsl	r1, r7, r1
 1553 014a 0142     		tst	r1, r0
 1554 014c 4FD0     		beq	.L193
 1555 014e 2846     		mov	r0, r5
 1556 0150 0593     		str	r3, [sp, #20]
 1557 0152 0492     		str	r2, [sp, #16]
 1558 0154 FFF7FEFF 		bl	__aeabi_ui2f
 1559 0158 6169     		ldr	r1, [r4, #20]	@ float
 1560 015a FFF7FEFF 		bl	__aeabi_fmul
 1561 015e 2168     		ldr	r1, [r4]	@ float
 1562 0160 FFF7FEFF 		bl	__aeabi_fadd
 1563 0164 0899     		ldr	r1, [sp, #32]	@ float
 1564 0166 FFF7FEFF 		bl	__aeabi_fsub
 1565 016a 8046     		mov	r8, r0
 1566 016c 0798     		ldr	r0, [sp, #28]
 1567 016e FFF7FEFF 		bl	__aeabi_ui2f
 1568 0172 A169     		ldr	r1, [r4, #24]	@ float
 1569 0174 FFF7FEFF 		bl	__aeabi_fmul
 1570 0178 A168     		ldr	r1, [r4, #8]	@ float
 1571 017a FFF7FEFF 		bl	__aeabi_fadd
 1572 017e 0A99     		ldr	r1, [sp, #40]	@ float
 1573 0180 FFF7FEFF 		bl	__aeabi_fsub
 1574 0184 0999     		ldr	r1, [sp, #36]	@ float
 1575 0186 0746     		mov	r7, r0
 1576 0188 3068     		ldr	r0, [r6]	@ float
 1577 018a FFF7FEFF 		bl	__aeabi_fsub
 1578 018e 4146     		mov	r1, r8
 1579 0190 8146     		mov	r9, r0
 1580 0192 4046     		mov	r0, r8
 1581 0194 FFF7FEFF 		bl	__aeabi_fmul
 1582 0198 0146     		mov	r1, r0
 1583 019a 0198     		ldr	r0, [sp, #4]	@ float
 1584 019c FFF7FEFF 		bl	__aeabi_fadd
 1585 01a0 3946     		mov	r1, r7
 1586 01a2 0190     		str	r0, [sp, #4]	@ float
 1587 01a4 4046     		mov	r0, r8
 1588 01a6 FFF7FEFF 		bl	__aeabi_fmul
 1589 01aa 0146     		mov	r1, r0
 1590 01ac 5846     		mov	r0, fp
 1591 01ae FFF7FEFF 		bl	__aeabi_fadd
 1592 01b2 4946     		mov	r1, r9
 1593 01b4 8346     		mov	fp, r0
 1594 01b6 4046     		mov	r0, r8
 1595 01b8 FFF7FEFF 		bl	__aeabi_fmul
 1596 01bc 0146     		mov	r1, r0
ARM GAS  /tmp/ccz0BzxB.s 			page 29


 1597 01be 0398     		ldr	r0, [sp, #12]	@ float
 1598 01c0 FFF7FEFF 		bl	__aeabi_fadd
 1599 01c4 3946     		mov	r1, r7
 1600 01c6 0390     		str	r0, [sp, #12]	@ float
 1601 01c8 3846     		mov	r0, r7
 1602 01ca FFF7FEFF 		bl	__aeabi_fmul
 1603 01ce 0146     		mov	r1, r0
 1604 01d0 0298     		ldr	r0, [sp, #8]	@ float
 1605 01d2 FFF7FEFF 		bl	__aeabi_fadd
 1606 01d6 4946     		mov	r1, r9
 1607 01d8 0290     		str	r0, [sp, #8]	@ float
 1608 01da 3846     		mov	r0, r7
 1609 01dc FFF7FEFF 		bl	__aeabi_fmul
 1610 01e0 049A     		ldr	r2, [sp, #16]
 1611 01e2 0146     		mov	r1, r0
 1612 01e4 1046     		mov	r0, r2
 1613 01e6 FFF7FEFF 		bl	__aeabi_fadd
 1614 01ea 0246     		mov	r2, r0
 1615 01ec 059B     		ldr	r3, [sp, #20]
 1616              	.L193:
 1617 01ee 0135     		adds	r5, r5, #1
 1618 01f0 AB42     		cmp	r3, r5
 1619 01f2 06F10406 		add	r6, r6, #4
 1620 01f6 9CD1     		bne	.L194
 1621              	.L192:
 1622 01f8 0B98     		ldr	r0, [sp, #44]
 1623 01fa 0C9D     		ldr	r5, [sp, #48]
 1624 01fc 0799     		ldr	r1, [sp, #28]
 1625 01fe 2844     		add	r0, r0, r5
 1626 0200 0B90     		str	r0, [sp, #44]
 1627 0202 0698     		ldr	r0, [sp, #24]
 1628 0204 0131     		adds	r1, r1, #1
 1629 0206 8842     		cmp	r0, r1
 1630 0208 0791     		str	r1, [sp, #28]
 1631 020a 9A44     		add	r10, r10, r3
 1632 020c 8DD1     		bne	.L195
 1633 020e DDF80880 		ldr	r8, [sp, #8]	@ float
 1634 0212 DDF80490 		ldr	r9, [sp, #4]	@ float
 1635 0216 4146     		mov	r1, r8
 1636 0218 4846     		mov	r0, r9
 1637 021a DA46     		mov	r10, fp
 1638 021c 9346     		mov	fp, r2
 1639 021e FFF7FEFF 		bl	__aeabi_fmul
 1640 0222 5146     		mov	r1, r10
 1641 0224 0546     		mov	r5, r0
 1642 0226 5046     		mov	r0, r10
 1643 0228 FFF7FEFF 		bl	__aeabi_fmul
 1644 022c 0146     		mov	r1, r0
 1645 022e 2846     		mov	r0, r5
 1646 0230 FFF7FEFF 		bl	__aeabi_fsub
 1647 0234 0021     		movs	r1, #0
 1648 0236 0646     		mov	r6, r0
 1649 0238 FFF7FEFF 		bl	__aeabi_fcmple
 1650 023c 0746     		mov	r7, r0
 1651 023e 0028     		cmp	r0, #0
 1652 0240 40F0B480 		bne	.L185
 1653 0244 5946     		mov	r1, fp
ARM GAS  /tmp/ccz0BzxB.s 			page 30


 1654 0246 5046     		mov	r0, r10
 1655 0248 FFF7FEFF 		bl	__aeabi_fmul
 1656 024c 4146     		mov	r1, r8
 1657 024e DDF80C80 		ldr	r8, [sp, #12]	@ float
 1658 0252 0546     		mov	r5, r0
 1659 0254 4046     		mov	r0, r8
 1660 0256 FFF7FEFF 		bl	__aeabi_fmul
 1661 025a 0146     		mov	r1, r0
 1662 025c 2846     		mov	r0, r5
 1663 025e FFF7FEFF 		bl	__aeabi_fsub
 1664 0262 3146     		mov	r1, r6
 1665 0264 FFF7FEFF 		bl	__aeabi_fdiv
 1666 0268 4146     		mov	r1, r8
 1667 026a 0546     		mov	r5, r0
 1668 026c 5046     		mov	r0, r10
 1669 026e FFF7FEFF 		bl	__aeabi_fmul
 1670 0272 5946     		mov	r1, fp
 1671 0274 8046     		mov	r8, r0
 1672 0276 4846     		mov	r0, r9
 1673 0278 FFF7FEFF 		bl	__aeabi_fmul
 1674 027c 0146     		mov	r1, r0
 1675 027e 4046     		mov	r0, r8
 1676 0280 FFF7FEFF 		bl	__aeabi_fsub
 1677 0284 3146     		mov	r1, r6
 1678 0286 FFF7FEFF 		bl	__aeabi_fdiv
 1679 028a 2946     		mov	r1, r5
 1680 028c 8046     		mov	r8, r0
 1681 028e 2846     		mov	r0, r5
 1682 0290 FFF7FEFF 		bl	__aeabi_fmul
 1683 0294 4146     		mov	r1, r8
 1684 0296 0646     		mov	r6, r0
 1685 0298 4046     		mov	r0, r8
 1686 029a FFF7FEFF 		bl	__aeabi_fmul
 1687 029e 0146     		mov	r1, r0
 1688 02a0 3046     		mov	r0, r6
 1689 02a2 FFF7FEFF 		bl	__aeabi_fadd
 1690 02a6 4FF07E51 		mov	r1, #1065353216
 1691 02aa FFF7FEFF 		bl	__aeabi_fadd
 1692 02ae FFF7FEFF 		bl	sqrtf
 1693 02b2 0146     		mov	r1, r0
 1694 02b4 0190     		str	r0, [sp, #4]	@ float
 1695 02b6 4FF07E50 		mov	r0, #1065353216
 1696 02ba FFF7FEFF 		bl	__aeabi_fdiv
 1697 02be 0646     		mov	r6, r0
 1698 02c0 0146     		mov	r1, r0
 1699 02c2 2846     		mov	r0, r5
 1700 02c4 FFF7FEFF 		bl	__aeabi_fmul
 1701 02c8 3146     		mov	r1, r6
 1702 02ca 0546     		mov	r5, r0
 1703 02cc 0290     		str	r0, [sp, #8]	@ float
 1704 02ce 4046     		mov	r0, r8
 1705 02d0 FFF7FEFF 		bl	__aeabi_fmul
 1706 02d4 0899     		ldr	r1, [sp, #32]	@ float
 1707 02d6 8046     		mov	r8, r0
 1708 02d8 0390     		str	r0, [sp, #12]	@ float
 1709 02da 2846     		mov	r0, r5
 1710 02dc FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccz0BzxB.s 			page 31


 1711 02e0 0A99     		ldr	r1, [sp, #40]	@ float
 1712 02e2 0546     		mov	r5, r0
 1713 02e4 4046     		mov	r0, r8
 1714 02e6 FFF7FEFF 		bl	__aeabi_fmul
 1715 02ea 0146     		mov	r1, r0
 1716 02ec 2846     		mov	r0, r5
 1717 02ee FFF7FEFF 		bl	__aeabi_fadd
 1718 02f2 0999     		ldr	r1, [sp, #36]	@ float
 1719 02f4 0546     		mov	r5, r0
 1720 02f6 3046     		mov	r0, r6
 1721 02f8 FFF7FEFF 		bl	__aeabi_fmul
 1722 02fc 0146     		mov	r1, r0
 1723 02fe 2846     		mov	r0, r5
 1724 0300 FFF7FEFF 		bl	__aeabi_fadd
 1725 0304 236A     		ldr	r3, [r4, #32]
 1726 0306 0490     		str	r0, [sp, #16]	@ float
 1727 0308 0693     		str	r3, [sp, #24]
 1728 030a 002B     		cmp	r3, #0
 1729 030c 4ED0     		beq	.L185
 1730 030e B946     		mov	r9, r7
 1731 0310 4FF0010A 		mov	r10, #1
 1732 0314 0D9B     		ldr	r3, [sp, #52]
 1733 0316 D4F81C80 		ldr	r8, [r4, #28]
 1734 031a 0593     		str	r3, [sp, #20]
 1735 031c 4FEA8803 		lsl	r3, r8, #2
 1736 0320 0793     		str	r3, [sp, #28]
 1737              	.L199:
 1738 0322 B8F1000F 		cmp	r8, #0
 1739 0326 37D0     		beq	.L201
 1740 0328 0025     		movs	r5, #0
 1741 032a 059E     		ldr	r6, [sp, #20]
 1742              	.L198:
 1743 032c 7A19     		adds	r2, r7, r5
 1744 032e 5109     		lsrs	r1, r2, #5
 1745 0330 04EB8101 		add	r1, r4, r1, lsl #2
 1746 0334 D1F81412 		ldr	r1, [r1, #532]
 1747 0338 02F01F02 		and	r2, r2, #31
 1748 033c 0AFA02F2 		lsl	r2, r10, r2
 1749 0340 0A42     		tst	r2, r1
 1750 0342 24D1     		bne	.L200
 1751 0344 2846     		mov	r0, r5
 1752 0346 FFF7FEFF 		bl	__aeabi_ui2f
 1753 034a 6169     		ldr	r1, [r4, #20]	@ float
 1754 034c FFF7FEFF 		bl	__aeabi_fmul
 1755 0350 2168     		ldr	r1, [r4]	@ float
 1756 0352 FFF7FEFF 		bl	__aeabi_fadd
 1757 0356 0299     		ldr	r1, [sp, #8]	@ float
 1758 0358 FFF7FEFF 		bl	__aeabi_fmul
 1759 035c 8346     		mov	fp, r0
 1760 035e 4846     		mov	r0, r9
 1761 0360 FFF7FEFF 		bl	__aeabi_ui2f
 1762 0364 A169     		ldr	r1, [r4, #24]	@ float
 1763 0366 FFF7FEFF 		bl	__aeabi_fmul
 1764 036a A168     		ldr	r1, [r4, #8]	@ float
 1765 036c FFF7FEFF 		bl	__aeabi_fadd
 1766 0370 0399     		ldr	r1, [sp, #12]	@ float
 1767 0372 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccz0BzxB.s 			page 32


 1768 0376 0146     		mov	r1, r0
 1769 0378 5846     		mov	r0, fp
 1770 037a FFF7FEFF 		bl	__aeabi_fadd
 1771 037e 0146     		mov	r1, r0
 1772 0380 0498     		ldr	r0, [sp, #16]	@ float
 1773 0382 FFF7FEFF 		bl	__aeabi_fsub
 1774 0386 0199     		ldr	r1, [sp, #4]	@ float
 1775 0388 FFF7FEFF 		bl	__aeabi_fmul
 1776 038c 3060     		str	r0, [r6]	@ float
 1777              	.L200:
 1778 038e 0135     		adds	r5, r5, #1
 1779 0390 4545     		cmp	r5, r8
 1780 0392 06F10406 		add	r6, r6, #4
 1781 0396 C9D1     		bne	.L198
 1782              	.L201:
 1783 0398 059B     		ldr	r3, [sp, #20]
 1784 039a 079A     		ldr	r2, [sp, #28]
 1785 039c 09F10109 		add	r9, r9, #1
 1786 03a0 1344     		add	r3, r3, r2
 1787 03a2 0593     		str	r3, [sp, #20]
 1788 03a4 069B     		ldr	r3, [sp, #24]
 1789 03a6 4744     		add	r7, r7, r8
 1790 03a8 9945     		cmp	r9, r3
 1791 03aa BAD1     		bne	.L199
 1792              	.L185:
 1793 03ac 0FB0     		add	sp, sp, #60
 1794              		@ sp needed
 1795 03ae BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1796              		.size	_ZN9HeightMap18ExtrapolateMissingEv, .-_ZN9HeightMap18ExtrapolateMissingEv
 1797 03b2 00BF     		.section	.text._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef,"ax",%progbits
 1798              		.align	1
 1799              		.p2align 2,,3
 1800              		.global	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef
 1801              		.syntax unified
 1802              		.thumb
 1803              		.thumb_func
 1804              		.fpu softvfp
 1805              		.type	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, %function
 1806              	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef:
 1807              		@ args = 0, pretend = 0, frame = 232
 1808              		@ frame_needed = 0, uses_anonymous_args = 0
 1809 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1810 0004 0024     		movs	r4, #0
 1811 0006 0023     		movs	r3, #0
 1812 0008 8946     		mov	r9, r1
 1813 000a AB27     		movs	r7, #171
 1814 000c BBB0     		sub	sp, sp, #236
 1815 000e DFF808E2 		ldr	lr, .L264+28
 1816 0012 C0F81442 		str	r4, [r0, #532]
 1817 0016 C0F81842 		str	r4, [r0, #536]
 1818 001a C0F81C42 		str	r4, [r0, #540]
 1819 001e C0F82042 		str	r4, [r0, #544]
 1820 0022 0FAE     		add	r6, sp, #60
 1821 0024 0546     		mov	r5, r0
 1822 0026 03A8     		add	r0, sp, #12
 1823 0028 9246     		mov	r10, r2
 1824 002a 0393     		str	r3, [sp, #12]	@ float
ARM GAS  /tmp/ccz0BzxB.s 			page 33


 1825 002c 0593     		str	r3, [sp, #20]	@ float
 1826 002e 0893     		str	r3, [sp, #32]	@ float
 1827 0030 0993     		str	r3, [sp, #36]	@ float
 1828 0032 CDF810E0 		str	lr, [sp, #16]	@ float
 1829 0036 CDF818E0 		str	lr, [sp, #24]	@ float
 1830 003a CDF81CE0 		str	lr, [sp, #28]	@ float
 1831 003e 0297     		str	r7, [sp, #8]
 1832 0040 0196     		str	r6, [sp, #4]
 1833 0042 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 1834 0046 3A46     		mov	r2, r7
 1835 0048 3146     		mov	r1, r6
 1836 004a 4846     		mov	r0, r9
 1837 004c FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1838 0050 A042     		cmp	r0, r4
 1839 0052 40F38E80 		ble	.L229
 1840 0056 6949     		ldr	r1, .L264
 1841 0058 3046     		mov	r0, r6
 1842 005a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1843 005e 8046     		mov	r8, r0
 1844 0060 0028     		cmp	r0, #0
 1845 0062 7CD0     		beq	.L259
 1846 0064 3A46     		mov	r2, r7
 1847 0066 3146     		mov	r1, r6
 1848 0068 4846     		mov	r0, r9
 1849 006a FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1850 006e 0028     		cmp	r0, #0
 1851 0070 7FDD     		ble	.L229
 1852 0072 01A8     		add	r0, sp, #4
 1853 0074 FFF7FEFF 		bl	_ZN14GridDefinition12CheckHeadingERK9StringRef
 1854 0078 B0F1000B 		subs	fp, r0, #0
 1855 007c C0F2AE80 		blt	.L260
 1856 0080 3A46     		mov	r2, r7
 1857 0082 3146     		mov	r1, r6
 1858 0084 4846     		mov	r0, r9
 1859 0086 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1860 008a 0028     		cmp	r0, #0
 1861 008c 71DD     		ble	.L229
 1862 008e 5A46     		mov	r2, fp
 1863 0090 01A9     		add	r1, sp, #4
 1864 0092 03A8     		add	r0, sp, #12
 1865 0094 FFF7FEFF 		bl	_ZN14GridDefinition14ReadParametersERK9StringRefi
 1866 0098 0346     		mov	r3, r0
 1867 009a 0028     		cmp	r0, #0
 1868 009c 00F0A380 		beq	.L261
 1869 00a0 9DF83880 		ldrb	r8, [sp, #56]	@ zero_extendqisi2
 1870 00a4 B8F1000F 		cmp	r8, #0
 1871 00a8 00F0A280 		beq	.L262
 1872 00ac AE46     		mov	lr, r5
 1873 00ae 03AF     		add	r7, sp, #12
 1874 00b0 85F82442 		strb	r4, [r5, #548]
 1875 00b4 0DF12C0C 		add	ip, sp, #44
 1876              	.L233:
 1877 00b8 3C46     		mov	r4, r7
 1878 00ba 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 1879 00bc 6445     		cmp	r4, ip
 1880 00be CEF80000 		str	r0, [lr]	@ unaligned
 1881 00c2 CEF80410 		str	r1, [lr, #4]	@ unaligned
ARM GAS  /tmp/ccz0BzxB.s 			page 34


 1882 00c6 CEF80820 		str	r2, [lr, #8]	@ unaligned
 1883 00ca CEF80C30 		str	r3, [lr, #12]	@ unaligned
 1884 00ce 07F11007 		add	r7, r7, #16
 1885 00d2 0EF1100E 		add	lr, lr, #16
 1886 00d6 EFD1     		bne	.L233
 1887 00d8 3B46     		mov	r3, r7
 1888 00da 0027     		movs	r7, #0
 1889 00dc 07CB     		ldmia	r3!, {r0, r1, r2}
 1890 00de 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1891 00e0 CEF80000 		str	r0, [lr]	@ unaligned
 1892 00e4 8EF80C30 		strb	r3, [lr, #12]
 1893 00e8 CEF80410 		str	r1, [lr, #4]	@ unaligned
 1894 00ec CEF80820 		str	r2, [lr, #8]	@ unaligned
 1895 00f0 2B6A     		ldr	r3, [r5, #32]
 1896 00f2 C5F81472 		str	r7, [r5, #532]
 1897 00f6 C5F81872 		str	r7, [r5, #536]
 1898 00fa C5F81C72 		str	r7, [r5, #540]
 1899 00fe C5F82072 		str	r7, [r5, #544]
 1900 0102 33B3     		cbz	r3, .L236
 1901              	.L237:
 1902 0104 AB22     		movs	r2, #171
 1903 0106 3146     		mov	r1, r6
 1904 0108 4846     		mov	r0, r9
 1905 010a FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1906 010e 0028     		cmp	r0, #0
 1907 0110 2FDD     		ble	.L229
 1908 0112 EB69     		ldr	r3, [r5, #28]
 1909 0114 CBB1     		cbz	r3, .L246
 1910 0116 4FF0000B 		mov	fp, #0
 1911 011a 3146     		mov	r1, r6
 1912              	.L238:
 1913 011c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1914 011e 0C46     		mov	r4, r1
 1915 0120 202B     		cmp	r3, #32
 1916 0122 01F10101 		add	r1, r1, #1
 1917 0126 F9D0     		beq	.L238
 1918 0128 092B     		cmp	r3, #9
 1919 012a F7D0     		beq	.L238
 1920 012c 302B     		cmp	r3, #48
 1921 012e 2AD1     		bne	.L240
 1922 0130 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 1923 0132 2C2B     		cmp	r3, #44
 1924 0134 00D0     		beq	.L241
 1925 0136 33BB     		cbnz	r3, .L240
 1926              	.L241:
 1927 0138 611C     		adds	r1, r4, #1
 1928 013a EC69     		ldr	r4, [r5, #28]
 1929              	.L242:
 1930 013c 2C2B     		cmp	r3, #44
 1931 013e 0BF1010B 		add	fp, fp, #1
 1932 0142 08BF     		it	eq
 1933 0144 0131     		addeq	r1, r1, #1
 1934 0146 5C45     		cmp	r4, fp
 1935 0148 E8D8     		bhi	.L238
 1936              	.L246:
 1937 014a 2B6A     		ldr	r3, [r5, #32]
 1938 014c 0137     		adds	r7, r7, #1
ARM GAS  /tmp/ccz0BzxB.s 			page 35


 1939 014e BB42     		cmp	r3, r7
 1940 0150 D8D8     		bhi	.L237
 1941              	.L236:
 1942 0152 2846     		mov	r0, r5
 1943 0154 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 1944 0158 4FF00008 		mov	r8, #0
 1945 015c 05E0     		b	.L227
 1946              	.L259:
 1947 015e 5046     		mov	r0, r10
 1948 0160 2749     		ldr	r1, .L264+4
 1949 0162 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1950 0166 4FF00108 		mov	r8, #1
 1951              	.L227:
 1952 016a 4046     		mov	r0, r8
 1953 016c 3BB0     		add	sp, sp, #236
 1954              		@ sp needed
 1955 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1956              	.L229:
 1957 0172 4FF00108 		mov	r8, #1
 1958 0176 5046     		mov	r0, r10
 1959 0178 2249     		ldr	r1, .L264+8
 1960 017a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1961 017e 4046     		mov	r0, r8
 1962 0180 3BB0     		add	sp, sp, #236
 1963              		@ sp needed
 1964 0182 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1965              	.L240:
 1966 0186 6946     		mov	r1, sp
 1967 0188 2046     		mov	r0, r4
 1968 018a FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 1969 018e 0099     		ldr	r1, [sp]
 1970 0190 8C42     		cmp	r4, r1
 1971 0192 18D0     		beq	.L263
 1972 0194 EC69     		ldr	r4, [r5, #28]
 1973 0196 07FB04B3 		mla	r3, r7, r4, fp
 1974 019a 782B     		cmp	r3, #120
 1975 019c 11D8     		bhi	.L244
 1976 019e 0122     		movs	r2, #1
 1977 01a0 03F10C0C 		add	ip, r3, #12
 1978 01a4 4FEA531E 		lsr	lr, r3, #5
 1979 01a8 45F82C00 		str	r0, [r5, ip, lsl #2]	@ float
 1980 01ac 05EB8E0E 		add	lr, r5, lr, lsl #2
 1981 01b0 DEF81402 		ldr	r0, [lr, #532]
 1982 01b4 03F01F03 		and	r3, r3, #31
 1983 01b8 02FA03F3 		lsl	r3, r2, r3
 1984 01bc 0343     		orrs	r3, r3, r0
 1985 01be CEF81432 		str	r3, [lr, #532]
 1986              	.L244:
 1987 01c2 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1988 01c4 BAE7     		b	.L242
 1989              	.L263:
 1990 01c6 A31B     		subs	r3, r4, r6
 1991 01c8 0133     		adds	r3, r3, #1
 1992 01ca FA1C     		adds	r2, r7, #3
 1993 01cc 5046     		mov	r0, r10
 1994 01ce 0E49     		ldr	r1, .L264+12
 1995 01d0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccz0BzxB.s 			page 36


 1996 01d4 4046     		mov	r0, r8
 1997 01d6 3BB0     		add	sp, sp, #236
 1998              		@ sp needed
 1999 01d8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2000              	.L260:
 2001 01dc 5046     		mov	r0, r10
 2002 01de 0B49     		ldr	r1, .L264+16
 2003 01e0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2004 01e4 C1E7     		b	.L227
 2005              	.L261:
 2006 01e6 5046     		mov	r0, r10
 2007 01e8 0949     		ldr	r1, .L264+20
 2008 01ea FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2009 01ee BCE7     		b	.L227
 2010              	.L262:
 2011 01f0 5046     		mov	r0, r10
 2012 01f2 0849     		ldr	r1, .L264+24
 2013 01f4 9846     		mov	r8, r3
 2014 01f6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2015 01fa B6E7     		b	.L227
 2016              	.L265:
 2017              		.align	2
 2018              	.L264:
 2019 01fc 00000000 		.word	.LC9
 2020 0200 20000000 		.word	.LC15
 2021 0204 00000000 		.word	.LC14
 2022 0208 88000000 		.word	.LC19
 2023 020c 48000000 		.word	.LC16
 2024 0210 58000000 		.word	.LC17
 2025 0214 78000000 		.word	.LC18
 2026 0218 000080BF 		.word	-1082130432
 2027              		.size	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, .-_ZN9HeightMap12LoadFromFileEP9FileSto
 2028              		.global	_ZN9HeightMap16HeightMapCommentE
 2029              		.global	_ZN14GridDefinition19HeightMapLabelLinesE
 2030              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2031              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2032              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2033              	_ZL28cpu_irq_prev_interrupt_state:
 2034 0000 00       		.space	1
 2035              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2036              		.align	2
 2037              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2038              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2039              	_ZL32cpu_irq_critical_section_counter:
 2040 0000 00000000 		.space	4
 2041              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2042              		.align	2
 2043              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2044              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2045              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2046 0000 00000000 		.space	4
 2047              		.section	.rodata._ZN14GridDefinition12CheckHeadingERK9StringRef.str1.4,"aMS",%progbits,1
 2048              		.align	2
 2049              	.LC3:
 2050 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,spacing,xnum,ynum\000"
 2050      2C786D61 
 2050      782C796D 
ARM GAS  /tmp/ccz0BzxB.s 			page 37


 2050      696E2C79 
 2050      6D61782C 
 2051              		.section	.rodata._ZN14GridDefinition19HeightMapLabelLinesE,"a",%progbits
 2052              		.align	2
 2053              		.type	_ZN14GridDefinition19HeightMapLabelLinesE, %object
 2054              		.size	_ZN14GridDefinition19HeightMapLabelLinesE, 8
 2055              	_ZN14GridDefinition19HeightMapLabelLinesE:
 2056 0000 00000000 		.word	.LC3
 2057 0004 00000000 		.word	.LC1
 2058              		.section	.rodata._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef.str1.4,"aMS",%progbits,1
 2059              		.align	2
 2060              	.LC14:
 2061 0000 6661696C 		.ascii	"failed to read line from file\000"
 2061      65642074 
 2061      6F207265 
 2061      6164206C 
 2061      696E6520 
 2062 001e 0000     		.space	2
 2063              	.LC15:
 2064 0020 62616420 		.ascii	"bad header line or wrong version header\000"
 2064      68656164 
 2064      6572206C 
 2064      696E6520 
 2064      6F722077 
 2065              	.LC16:
 2066 0048 62616420 		.ascii	"bad label line\000"
 2066      6C616265 
 2066      6C206C69 
 2066      6E6500
 2067 0057 00       		.space	1
 2068              	.LC17:
 2069 0058 6661696C 		.ascii	"failed to parse grid parameters\000"
 2069      65642074 
 2069      6F207061 
 2069      72736520 
 2069      67726964 
 2070              	.LC18:
 2071 0078 696E7661 		.ascii	"invalid grid\000"
 2071      6C696420 
 2071      67726964 
 2071      00
 2072 0085 000000   		.space	3
 2073              	.LC19:
 2074 0088 6E756D62 		.ascii	"number expected at line %lu column %d\000"
 2074      65722065 
 2074      78706563 
 2074      74656420 
 2074      6174206C 
 2075              		.section	.rodata._ZN9HeightMap16HeightMapCommentE,"a",%progbits
 2076              		.align	2
 2077              		.type	_ZN9HeightMap16HeightMapCommentE, %object
 2078              		.size	_ZN9HeightMap16HeightMapCommentE, 4
 2079              	_ZN9HeightMap16HeightMapCommentE:
 2080 0000 00000000 		.word	.LC9
 2081              		.section	.rodata._ZNK14GridDefinition10PrintErrorEffRK9StringRef.str1.4,"aMS",%progbits,1
 2082              		.align	2
 2083              	.LC4:
ARM GAS  /tmp/ccz0BzxB.s 			page 38


 2084 0000 53706163 		.ascii	"Spacing too small\000"
 2084      696E6720 
 2084      746F6F20 
 2084      736D616C 
 2084      6C00
 2085 0012 0000     		.space	2
 2086              	.LC5:
 2087 0014 58207261 		.ascii	"X range too small\000"
 2087      6E676520 
 2087      746F6F20 
 2087      736D616C 
 2087      6C00
 2088 0026 0000     		.space	2
 2089              	.LC6:
 2090 0028 59207261 		.ascii	"Y range too small\000"
 2090      6E676520 
 2090      746F6F20 
 2090      736D616C 
 2090      6C00
 2091 003a 0000     		.space	2
 2092              	.LC7:
 2093 003c 546F6F20 		.ascii	"Too many grid points; suggest increase spacing to %"
 2093      6D616E79 
 2093      20677269 
 2093      6420706F 
 2093      696E7473 
 2094 006f 2E31666D 		.ascii	".1fmm\000"
 2094      6D00
 2095 0075 000000   		.space	3
 2096              	.LC8:
 2097 0078 42616420 		.ascii	"Bad radius\000"
 2097      72616469 
 2097      757300
 2098              		.section	.rodata._ZNK14GridDefinition15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,1
 2099              		.align	2
 2100              	.LC0:
 2101 0000 58252E31 		.ascii	"X%.1f:%.1f, Y%.1f:%.1f, radius %.1f, X spacing %.1f"
 2101      663A252E 
 2101      31662C20 
 2101      59252E31 
 2101      663A252E 
 2102 0033 2C205920 		.ascii	", Y spacing %.1f, %lu points\000"
 2102      73706163 
 2102      696E6720 
 2102      252E3166 
 2102      2C20256C 
 2103              		.section	.rodata._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef.str1.4,"aMS",%progbi
 2104              		.align	2
 2105              	.LC1:
 2106 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,xspacing,yspacing,xnum,y"
 2106      2C786D61 
 2106      782C796D 
 2106      696E2C79 
 2106      6D61782C 
 2107 0033 6E756D00 		.ascii	"num\000"
 2108 0037 00       		.space	1
 2109              	.LC2:
ARM GAS  /tmp/ccz0BzxB.s 			page 39


 2110 0038 25730A25 		.ascii	"%s\012%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%li,%li\012"
 2110      2E32662C 
 2110      252E3266 
 2110      2C252E32 
 2110      662C252E 
 2111 0066 00       		.ascii	"\000"
 2112              		.section	.rodata._ZNK9HeightMap10SaveToFileEP9FileStoref.str1.4,"aMS",%progbits,1
 2113              		.align	2
 2114              	.LC9:
 2115 0000 52657052 		.ascii	"RepRapFirmware height map file v2\000"
 2115      61704669 
 2115      726D7761 
 2115      72652068 
 2115      65696768 
 2116 0022 0000     		.space	2
 2117              	.LC10:
 2118 0024 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 2118      65726174 
 2118      65642061 
 2118      74202530 
 2118      34752D25 
 2119 004b 00       		.space	1
 2120              	.LC11:
 2121 004c 2C206D65 		.ascii	", mean error %.3f, deviation %.3f\012\000"
 2121      616E2065 
 2121      72726F72 
 2121      20252E33 
 2121      662C2064 
 2122 006f 00       		.space	1
 2123              	.LC12:
 2124 0070 25372E33 		.ascii	"%7.3f\000"
 2124      6600
 2125 0076 0000     		.space	2
 2126              	.LC13:
 2127 0078 20202020 		.ascii	"      0\000"
 2127      20203000 
 2128              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
