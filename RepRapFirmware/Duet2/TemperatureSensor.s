ARM GAS  /tmp/cc8I9Rwr.s 			page 1


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
  13              		.file	"TemperatureSensor.cpp"
  14              		.section	.text._ZN17TemperatureSensorC2EjPKc,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN17TemperatureSensorC2EjPKc
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN17TemperatureSensorC2EjPKc, %function
  23              	_ZN17TemperatureSensorC2EjPKc:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28 0002 044C     		ldr	r4, .L4
  29 0004 4160     		str	r1, [r0, #4]
  30 0006 0021     		movs	r1, #0
  31 0008 0460     		str	r4, [r0]
  32 000a 8260     		str	r2, [r0, #8]
  33 000c C160     		str	r1, [r0, #12]
  34 000e 5DF8044B 		ldr	r4, [sp], #4
  35 0012 7047     		bx	lr
  36              	.L5:
  37              		.align	2
  38              	.L4:
  39 0014 08000000 		.word	.LANCHOR0+8
  40              		.size	_ZN17TemperatureSensorC2EjPKc, .-_ZN17TemperatureSensorC2EjPKc
  41              		.global	_ZN17TemperatureSensorC1EjPKc
  42              		.thumb_set _ZN17TemperatureSensorC1EjPKc,_ZN17TemperatureSensorC2EjPKc
  43              		.section	.text._ZN17TemperatureSensorD2Ev,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZN17TemperatureSensorD2Ev
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	_ZN17TemperatureSensorD2Ev, %function
  52              	_ZN17TemperatureSensorD2Ev:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 10B5     		push	{r4, lr}
  56 0002 044B     		ldr	r3, .L8
  57 0004 0360     		str	r3, [r0]
ARM GAS  /tmp/cc8I9Rwr.s 			page 2


  58 0006 0446     		mov	r4, r0
  59 0008 0121     		movs	r1, #1
  60 000a C068     		ldr	r0, [r0, #12]
  61 000c FFF7FEFF 		bl	_ZdlPvj
  62 0010 2046     		mov	r0, r4
  63 0012 10BD     		pop	{r4, pc}
  64              	.L9:
  65              		.align	2
  66              	.L8:
  67 0014 08000000 		.word	.LANCHOR0+8
  68              		.size	_ZN17TemperatureSensorD2Ev, .-_ZN17TemperatureSensorD2Ev
  69              		.global	_ZN17TemperatureSensorD1Ev
  70              		.thumb_set _ZN17TemperatureSensorD1Ev,_ZN17TemperatureSensorD2Ev
  71              		.section	.text._ZN17TemperatureSensorD0Ev,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_ZN17TemperatureSensorD0Ev
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_ZN17TemperatureSensorD0Ev, %function
  80              	_ZN17TemperatureSensorD0Ev:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83 0000 10B5     		push	{r4, lr}
  84 0002 064B     		ldr	r3, .L12
  85 0004 0360     		str	r3, [r0]
  86 0006 0446     		mov	r4, r0
  87 0008 0121     		movs	r1, #1
  88 000a C068     		ldr	r0, [r0, #12]
  89 000c FFF7FEFF 		bl	_ZdlPvj
  90 0010 2046     		mov	r0, r4
  91 0012 1021     		movs	r1, #16
  92 0014 FFF7FEFF 		bl	_ZdlPvj
  93 0018 2046     		mov	r0, r4
  94 001a 10BD     		pop	{r4, pc}
  95              	.L13:
  96              		.align	2
  97              	.L12:
  98 001c 08000000 		.word	.LANCHOR0+8
  99              		.size	_ZN17TemperatureSensorD0Ev, .-_ZN17TemperatureSensorD0Ev
 100              		.section	.text._ZN17TemperatureSensor13SetHeaterNameEPKc,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	_ZN17TemperatureSensor13SetHeaterNameEPKc
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	_ZN17TemperatureSensor13SetHeaterNameEPKc, %function
 109              	_ZN17TemperatureSensor13SetHeaterNameEPKc:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112 0000 38B5     		push	{r3, r4, r5, lr}
 113 0002 0446     		mov	r4, r0
 114 0004 0023     		movs	r3, #0
ARM GAS  /tmp/cc8I9Rwr.s 			page 3


 115 0006 0D46     		mov	r5, r1
 116 0008 C068     		ldr	r0, [r0, #12]
 117 000a E360     		str	r3, [r4, #12]
 118 000c 0121     		movs	r1, #1
 119 000e FFF7FEFF 		bl	_ZdlPvj
 120 0012 0DB1     		cbz	r5, .L14
 121 0014 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 122 0016 03B9     		cbnz	r3, .L23
 123              	.L14:
 124 0018 38BD     		pop	{r3, r4, r5, pc}
 125              	.L23:
 126 001a 2846     		mov	r0, r5
 127 001c FFF7FEFF 		bl	strlen
 128 0020 0130     		adds	r0, r0, #1
 129 0022 FFF7FEFF 		bl	_Znaj
 130 0026 2946     		mov	r1, r5
 131 0028 FFF7FEFF 		bl	strcpy
 132 002c E060     		str	r0, [r4, #12]
 133 002e 38BD     		pop	{r3, r4, r5, pc}
 134              		.size	_ZN17TemperatureSensor13SetHeaterNameEPKc, .-_ZN17TemperatureSensor13SetHeaterNameEPKc
 135              		.section	.text._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, %function
 144              	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 70B5     		push	{r4, r5, r6, lr}
 148 0002 1546     		mov	r5, r2
 149 0004 0446     		mov	r4, r0
 150 0006 0A46     		mov	r2, r1
 151 0008 2846     		mov	r0, r5
 152 000a 0849     		ldr	r1, .L30
 153 000c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 154 0010 E268     		ldr	r2, [r4, #12]
 155 0012 1AB1     		cbz	r2, .L25
 156 0014 0649     		ldr	r1, .L30+4
 157 0016 2846     		mov	r0, r5
 158 0018 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 159              	.L25:
 160 001c 2846     		mov	r0, r5
 161 001e D4E90132 		ldrd	r3, r2, [r4, #4]
 162 0022 0449     		ldr	r1, .L30+8
 163 0024 BDE87040 		pop	{r4, r5, r6, lr}
 164 0028 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 165              	.L31:
 166              		.align	2
 167              	.L30:
 168 002c 00000000 		.word	.LC0
 169 0030 0C000000 		.word	.LC1
 170 0034 14000000 		.word	.LC2
 171              		.size	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, .-_ZNK17TemperatureSensor22Co
ARM GAS  /tmp/cc8I9Rwr.s 			page 4


 172              		.section	.text._ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, %function
 181              	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb:
 182              		@ args = 0, pretend = 0, frame = 40
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 185 0002 8BB0     		sub	sp, sp, #44
 186 0004 0746     		mov	r7, r0
 187 0006 0846     		mov	r0, r1
 188 0008 0021     		movs	r1, #0
 189 000a 0DF10703 		add	r3, sp, #7
 190 000e 8DF81010 		strb	r1, [sp, #16]
 191 0012 8DF80710 		strb	r1, [sp, #7]
 192 0016 1646     		mov	r6, r2
 193 0018 04AC     		add	r4, sp, #16
 194 001a 1525     		movs	r5, #21
 195 001c 02AA     		add	r2, sp, #8
 196 001e 5321     		movs	r1, #83
 197 0020 CDE90245 		strd	r4, r5, [sp, #8]
 198 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 199 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 200 002c 2BB1     		cbz	r3, .L32
 201 002e 2146     		mov	r1, r4
 202 0030 3846     		mov	r0, r7
 203 0032 FFF7FEFF 		bl	_ZN17TemperatureSensor13SetHeaterNameEPKc
 204 0036 0123     		movs	r3, #1
 205 0038 3370     		strb	r3, [r6]
 206              	.L32:
 207 003a 0BB0     		add	sp, sp, #44
 208              		@ sp needed
 209 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 210              		.size	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, .-_ZN17TemperatureSensor22T
 211              		.section	.text._ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv4-sp-d16
 219              		.type	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 220              	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
 221              		@ args = 4, pretend = 0, frame = 8
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223 0000 70B5     		push	{r4, r5, r6, lr}
 224 0002 40F23114 		movw	r4, #305
 225 0006 82B0     		sub	sp, sp, #8
 226 0008 0025     		movs	r5, #0
 227 000a A142     		cmp	r1, r4
 228 000c 8DF80750 		strb	r5, [sp, #7]
ARM GAS  /tmp/cc8I9Rwr.s 			page 5


 229 0010 02D0     		beq	.L43
 230              	.L40:
 231 0012 0120     		movs	r0, #1
 232 0014 02B0     		add	sp, sp, #8
 233              		@ sp needed
 234 0016 70BD     		pop	{r4, r5, r6, pc}
 235              	.L43:
 236 0018 1946     		mov	r1, r3
 237 001a 1646     		mov	r6, r2
 238 001c 0DF10702 		add	r2, sp, #7
 239 0020 1C46     		mov	r4, r3
 240 0022 0546     		mov	r5, r0
 241 0024 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 242 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 243 002c 002B     		cmp	r3, #0
 244 002e F0D1     		bne	.L40
 245 0030 2046     		mov	r0, r4
 246 0032 5821     		movs	r1, #88
 247 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 248 0038 0028     		cmp	r0, #0
 249 003a EAD1     		bne	.L40
 250 003c 3146     		mov	r1, r6
 251 003e 2846     		mov	r0, r5
 252 0040 069A     		ldr	r2, [sp, #24]
 253 0042 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 254 0046 E4E7     		b	.L40
 255              		.size	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN17TemperatureSensor9Conf
 256              		.section	.text._ZN17TemperatureSensor6CreateEj,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	_ZN17TemperatureSensor6CreateEj
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 264              		.type	_ZN17TemperatureSensor6CreateEj, %function
 265              	_ZN17TemperatureSensor6CreateEj:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268 0000 0728     		cmp	r0, #7
 269 0002 38B5     		push	{r3, r4, r5, lr}
 270 0004 0446     		mov	r4, r0
 271 0006 31D9     		bls	.L56
 272 0008 A0F5FA73 		sub	r3, r0, #500
 273 000c 072B     		cmp	r3, #7
 274 000e 1FD9     		bls	.L57
 275 0010 A0F16403 		sub	r3, r0, #100
 276 0014 072B     		cmp	r3, #7
 277 0016 3AD9     		bls	.L58
 278 0018 A0F19603 		sub	r3, r0, #150
 279 001c 072B     		cmp	r3, #7
 280 001e 3ED9     		bls	.L59
 281 0020 A0F1C803 		sub	r3, r0, #200
 282 0024 072B     		cmp	r3, #7
 283 0026 2AD9     		bls	.L60
 284 0028 A0F59673 		sub	r3, r0, #300
 285 002c 072B     		cmp	r3, #7
ARM GAS  /tmp/cc8I9Rwr.s 			page 6


 286 002e 3ED9     		bls	.L61
 287 0030 B0F57A7F 		cmp	r0, #1000
 288 0034 45D0     		beq	.L62
 289 0036 6FF47A73 		mvn	r3, #1000
 290 003a C318     		adds	r3, r0, r3
 291 003c 012B     		cmp	r3, #1
 292 003e 3ED8     		bhi	.L54
 293 0040 1020     		movs	r0, #16
 294 0042 FFF7FEFF 		bl	_Znwj
 295 0046 2146     		mov	r1, r4
 296 0048 0546     		mov	r5, r0
 297 004a FFF7FEFF 		bl	_ZN26TmcDriverTemperatureSensorC1Ej
 298 004e 07E0     		b	.L46
 299              	.L57:
 300 0050 3020     		movs	r0, #48
 301 0052 FFF7FEFF 		bl	_Znwj
 302 0056 2146     		mov	r1, r4
 303 0058 0122     		movs	r2, #1
 304 005a 0546     		mov	r5, r0
 305 005c FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 306              	.L46:
 307 0060 2B68     		ldr	r3, [r5]
 308 0062 2846     		mov	r0, r5
 309 0064 5B68     		ldr	r3, [r3, #4]
 310 0066 9847     		blx	r3
 311              	.L44:
 312 0068 2846     		mov	r0, r5
 313 006a 38BD     		pop	{r3, r4, r5, pc}
 314              	.L56:
 315 006c 3020     		movs	r0, #48
 316 006e FFF7FEFF 		bl	_Znwj
 317 0072 2146     		mov	r1, r4
 318 0074 0022     		movs	r2, #0
 319 0076 0546     		mov	r5, r0
 320 0078 FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 321 007c F0E7     		b	.L46
 322              	.L60:
 323 007e 2820     		movs	r0, #40
 324 0080 FFF7FEFF 		bl	_Znwj
 325 0084 2146     		mov	r1, r4
 326 0086 0546     		mov	r5, r0
 327 0088 FFF7FEFF 		bl	_ZN14RtdSensor31865C1Ej
 328 008c E8E7     		b	.L46
 329              	.L58:
 330 008e 2420     		movs	r0, #36
 331 0090 FFF7FEFF 		bl	_Znwj
 332 0094 2146     		mov	r1, r4
 333 0096 0546     		mov	r5, r0
 334 0098 FFF7FEFF 		bl	_ZN23ThermocoupleSensor31855C1Ej
 335 009c E0E7     		b	.L46
 336              	.L59:
 337 009e 2420     		movs	r0, #36
 338 00a0 FFF7FEFF 		bl	_Znwj
 339 00a4 2146     		mov	r1, r4
 340 00a6 0546     		mov	r5, r0
 341 00a8 FFF7FEFF 		bl	_ZN23ThermocoupleSensor31856C1Ej
 342 00ac D8E7     		b	.L46
ARM GAS  /tmp/cc8I9Rwr.s 			page 7


 343              	.L61:
 344 00ae 3420     		movs	r0, #52
 345 00b0 FFF7FEFF 		bl	_Znwj
 346 00b4 2146     		mov	r1, r4
 347 00b6 0546     		mov	r5, r0
 348 00b8 FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensorC1Ej
 349 00bc D0E7     		b	.L46
 350              	.L54:
 351 00be 0025     		movs	r5, #0
 352 00c0 D2E7     		b	.L44
 353              	.L62:
 354 00c2 1020     		movs	r0, #16
 355 00c4 FFF7FEFF 		bl	_Znwj
 356 00c8 2146     		mov	r1, r4
 357 00ca 0546     		mov	r5, r0
 358 00cc FFF7FEFF 		bl	_ZN20CpuTemperatureSensorC1Ej
 359 00d0 C6E7     		b	.L46
 360              		.size	_ZN17TemperatureSensor6CreateEj, .-_ZN17TemperatureSensor6CreateEj
 361 00d2 00BF     		.section	.text._ZN17TemperatureSensor19GetPT100TemperatureERft,"ax",%progbits
 362              		.align	1
 363              		.p2align 2,,3
 364              		.global	_ZN17TemperatureSensor19GetPT100TemperatureERft
 365              		.syntax unified
 366              		.thumb
 367              		.thumb_func
 368              		.fpu fpv4-sp-d16
 369              		.type	_ZN17TemperatureSensor19GetPT100TemperatureERft, %function
 370              	_ZN17TemperatureSensor19GetPT100TemperatureERft:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              		@ link register save eliminated.
 374 0000 70B4     		push	{r4, r5, r6}
 375 0002 284E     		ldr	r6, .L77
 376 0004 45F6D253 		movw	r3, #24018
 377 0008 0022     		movs	r2, #0
 378 000a 6025     		movs	r5, #96
 379              	.L69:
 380 000c AC1A     		subs	r4, r5, r2
 381 000e 9942     		cmp	r1, r3
 382 0010 02EB5404 		add	r4, r2, r4, lsr #1
 383 0014 05D9     		bls	.L64
 384 0016 34E0     		b	.L76
 385              	.L74:
 386 0018 36F81350 		ldrh	r5, [r6, r3, lsl #1]
 387 001c 8D42     		cmp	r5, r1
 388 001e 32D3     		bcc	.L65
 389 0020 1C46     		mov	r4, r3
 390              	.L64:
 391 0022 A31A     		subs	r3, r4, r2
 392 0024 A242     		cmp	r2, r4
 393 0026 02EB5303 		add	r3, r2, r3, lsr #1
 394 002a F5D3     		bcc	.L74
 395 002c 1AB9     		cbnz	r2, .L68
 396 002e 0123     		movs	r3, #1
 397 0030 1846     		mov	r0, r3
 398 0032 70BC     		pop	{r4, r5, r6}
 399 0034 7047     		bx	lr
ARM GAS  /tmp/cc8I9Rwr.s 			page 8


 400              	.L68:
 401 0036 5F2A     		cmp	r2, #95
 402 0038 2FD8     		bhi	.L72
 403 003a 541E     		subs	r4, r2, #1
 404 003c 194D     		ldr	r5, .L77
 405 003e 9FED1A6A 		vldr.32	s12, .L77+4
 406 0042 35F81230 		ldrh	r3, [r5, r2, lsl #1]
 407 0046 35F81420 		ldrh	r2, [r5, r4, lsl #1]
 408 004a 9B1A     		subs	r3, r3, r2
 409 004c 891A     		subs	r1, r1, r2
 410 004e 07EE103A 		vmov	s14, r3	@ int
 411 0052 07EE901A 		vmov	s15, r1	@ int
 412 0056 B8EEC77A 		vcvt.f32.s32	s14, s14
 413 005a F8EEE77A 		vcvt.f32.s32	s15, s15
 414 005e 06EE904A 		vmov	s13, r4	@ int
 415 0062 C7EE875A 		vdiv.f32	s11, s15, s14
 416 0066 0023     		movs	r3, #0
 417 0068 70BC     		pop	{r4, r5, r6}
 418 006a F8EEE66A 		vcvt.f32.s32	s13, s13
 419 006e F2EE047A 		vmov.f32	s15, #1.0e+1
 420 0072 75EEA66A 		vadd.f32	s13, s11, s13
 421 0076 A6EEA76A 		vfma.f32	s12, s13, s15
 422 007a 80ED006A 		vstr.32	s12, [r0]
 423 007e 1846     		mov	r0, r3
 424 0080 7047     		bx	lr
 425              	.L76:
 426 0082 2346     		mov	r3, r4
 427 0084 2C46     		mov	r4, r5
 428              	.L65:
 429 0086 5A1C     		adds	r2, r3, #1
 430 0088 A242     		cmp	r2, r4
 431 008a D4D2     		bcs	.L68
 432 008c A31A     		subs	r3, r4, r2
 433 008e 02EB5303 		add	r3, r2, r3, lsr #1
 434 0092 2546     		mov	r5, r4
 435 0094 36F81330 		ldrh	r3, [r6, r3, lsl #1]
 436 0098 B8E7     		b	.L69
 437              	.L72:
 438 009a 0423     		movs	r3, #4
 439 009c 1846     		mov	r0, r3
 440 009e 70BC     		pop	{r4, r5, r6}
 441 00a0 7047     		bx	lr
 442              	.L78:
 443 00a2 00BF     		.align	2
 444              	.L77:
 445 00a4 00000000 		.word	.LANCHOR1
 446 00a8 0000C8C2 		.word	3267887104
 447              		.size	_ZN17TemperatureSensor19GetPT100TemperatureERft, .-_ZN17TemperatureSensor19GetPT100Temperatu
 448              		.global	_ZTV17TemperatureSensor
 449              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 451              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 452              	_ZL28cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 455              		.align	2
 456              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  /tmp/cc8I9Rwr.s 			page 9


 457              		.size	_ZL32cpu_irq_critical_section_counter, 4
 458              	_ZL32cpu_irq_critical_section_counter:
 459 0000 00000000 		.space	4
 460              		.section	.rodata._ZL9tempTable,"a",%progbits
 461              		.align	2
 462              		.set	.LANCHOR1,. + 0
 463              		.type	_ZL9tempTable, %object
 464              		.size	_ZL9tempTable, 192
 465              	_ZL9tempTable:
 466 0000 8A17     		.short	6026
 467 0002 1E19     		.short	6430
 468 0004 B11A     		.short	6833
 469 0006 411C     		.short	7233
 470 0008 D11D     		.short	7633
 471 000a 5F1F     		.short	8031
 472 000c EB20     		.short	8427
 473 000e 7622     		.short	8822
 474 0010 0024     		.short	9216
 475 0012 8925     		.short	9609
 476 0014 1027     		.short	10000
 477 0016 9628     		.short	10390
 478 0018 1B2A     		.short	10779
 479 001a 9F2B     		.short	11167
 480 001c 222D     		.short	11554
 481 001e A42E     		.short	11940
 482 0020 2430     		.short	12324
 483 0022 A431     		.short	12708
 484 0024 2233     		.short	13090
 485 0026 9F34     		.short	13471
 486 0028 1B36     		.short	13851
 487 002a 9537     		.short	14229
 488 002c 0F39     		.short	14607
 489 002e 873A     		.short	14983
 490 0030 FE3B     		.short	15358
 491 0032 753D     		.short	15733
 492 0034 E93E     		.short	16105
 493 0036 5D40     		.short	16477
 494 0038 D041     		.short	16848
 495 003a 4143     		.short	17217
 496 003c B244     		.short	17586
 497 003e 2146     		.short	17953
 498 0040 8F47     		.short	18319
 499 0042 FC48     		.short	18684
 500 0044 674A     		.short	19047
 501 0046 D24B     		.short	19410
 502 0048 3B4D     		.short	19771
 503 004a A34E     		.short	20131
 504 004c 0A50     		.short	20490
 505 004e 7051     		.short	20848
 506 0050 D552     		.short	21205
 507 0052 3954     		.short	21561
 508 0054 9B55     		.short	21915
 509 0056 FC56     		.short	22268
 510 0058 5D58     		.short	22621
 511 005a BC59     		.short	22972
 512 005c 195B     		.short	23321
 513 005e 765C     		.short	23670
ARM GAS  /tmp/cc8I9Rwr.s 			page 10


 514 0060 D25D     		.short	24018
 515 0062 2C5F     		.short	24364
 516 0064 8560     		.short	24709
 517 0066 DD61     		.short	25053
 518 0068 3463     		.short	25396
 519 006a 8A64     		.short	25738
 520 006c DE65     		.short	26078
 521 006e 3267     		.short	26418
 522 0070 8468     		.short	26756
 523 0072 D569     		.short	27093
 524 0074 256B     		.short	27429
 525 0076 746C     		.short	27764
 526 0078 C26D     		.short	28098
 527 007a 0E6F     		.short	28430
 528 007c 5A70     		.short	28762
 529 007e A471     		.short	29092
 530 0080 ED72     		.short	29421
 531 0082 3574     		.short	29749
 532 0084 7B75     		.short	30075
 533 0086 C176     		.short	30401
 534 0088 0578     		.short	30725
 535 008a 4879     		.short	31048
 536 008c 8B7A     		.short	31371
 537 008e CC7B     		.short	31692
 538 0090 0C7D     		.short	32012
 539 0092 4A7E     		.short	32330
 540 0094 887F     		.short	32648
 541 0096 C480     		.short	-32572
 542 0098 FF81     		.short	-32257
 543 009a 3983     		.short	-31943
 544 009c 7284     		.short	-31630
 545 009e AA85     		.short	-31318
 546 00a0 E086     		.short	-31008
 547 00a2 1688     		.short	-30698
 548 00a4 4A89     		.short	-30390
 549 00a6 7D8A     		.short	-30083
 550 00a8 AF8B     		.short	-29777
 551 00aa E08C     		.short	-29472
 552 00ac 0F8E     		.short	-29169
 553 00ae 3E8F     		.short	-28866
 554 00b0 6B90     		.short	-28565
 555 00b2 9791     		.short	-28265
 556 00b4 C292     		.short	-27966
 557 00b6 EC93     		.short	-27668
 558 00b8 1595     		.short	-27371
 559 00ba 3C96     		.short	-27076
 560 00bc 6397     		.short	-26781
 561 00be 8898     		.short	-26488
 562              		.section	.rodata._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef.str1.4,"aMS",%progb
 563              		.align	2
 564              	.LC0:
 565 0000 48656174 		.ascii	"Heater %u\000"
 565      65722025 
 565      7500
 566 000a 0000     		.space	2
 567              	.LC1:
 568 000c 20282573 		.ascii	" (%s)\000"
ARM GAS  /tmp/cc8I9Rwr.s 			page 11


 568      2900
 569 0012 0000     		.space	2
 570              	.LC2:
 571 0014 20757365 		.ascii	" uses %s sensor channel %u\000"
 571      73202573 
 571      2073656E 
 571      736F7220 
 571      6368616E 
 572              		.section	.rodata._ZTV17TemperatureSensor,"a",%progbits
 573              		.align	2
 574              		.set	.LANCHOR0,. + 0
 575              		.type	_ZTV17TemperatureSensor, %object
 576              		.size	_ZTV17TemperatureSensor, 28
 577              	_ZTV17TemperatureSensor:
 578 0000 00000000 		.word	0
 579 0004 00000000 		.word	0
 580 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 581 000c 00000000 		.word	__cxa_pure_virtual
 582 0010 00000000 		.word	__cxa_pure_virtual
 583 0014 00000000 		.word	0
 584 0018 00000000 		.word	0
 585              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
