ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN17TemperatureSensorC2EjPKc,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN17TemperatureSensorC2EjPKc
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN17TemperatureSensorC2EjPKc, %function
  24              	_ZN17TemperatureSensorC2EjPKc:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 10B4     		push	{r4}
  29 0002 044C     		ldr	r4, .L4
  30 0004 4160     		str	r1, [r0, #4]
  31 0006 0021     		movs	r1, #0
  32 0008 0460     		str	r4, [r0]
  33 000a 8260     		str	r2, [r0, #8]
  34 000c C160     		str	r1, [r0, #12]
  35 000e 5DF8044B 		ldr	r4, [sp], #4
  36 0012 7047     		bx	lr
  37              	.L5:
  38              		.align	2
  39              	.L4:
  40 0014 08000000 		.word	.LANCHOR0+8
  41              		.size	_ZN17TemperatureSensorC2EjPKc, .-_ZN17TemperatureSensorC2EjPKc
  42              		.global	_ZN17TemperatureSensorC1EjPKc
  43              		.thumb_set _ZN17TemperatureSensorC1EjPKc,_ZN17TemperatureSensorC2EjPKc
  44              		.section	.text._ZN17TemperatureSensorD2Ev,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN17TemperatureSensorD2Ev
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN17TemperatureSensorD2Ev, %function
  53              	_ZN17TemperatureSensorD2Ev:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56 0000 10B5     		push	{r4, lr}
  57 0002 044B     		ldr	r3, .L8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 2


  58 0004 0360     		str	r3, [r0]
  59 0006 0446     		mov	r4, r0
  60 0008 0121     		movs	r1, #1
  61 000a C068     		ldr	r0, [r0, #12]
  62 000c FFF7FEFF 		bl	_ZdlPvj
  63 0010 2046     		mov	r0, r4
  64 0012 10BD     		pop	{r4, pc}
  65              	.L9:
  66              		.align	2
  67              	.L8:
  68 0014 08000000 		.word	.LANCHOR0+8
  69              		.size	_ZN17TemperatureSensorD2Ev, .-_ZN17TemperatureSensorD2Ev
  70              		.global	_ZN17TemperatureSensorD1Ev
  71              		.thumb_set _ZN17TemperatureSensorD1Ev,_ZN17TemperatureSensorD2Ev
  72              		.section	.text._ZN17TemperatureSensorD0Ev,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN17TemperatureSensorD0Ev
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	_ZN17TemperatureSensorD0Ev, %function
  81              	_ZN17TemperatureSensorD0Ev:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84 0000 10B5     		push	{r4, lr}
  85 0002 064B     		ldr	r3, .L12
  86 0004 0360     		str	r3, [r0]
  87 0006 0446     		mov	r4, r0
  88 0008 0121     		movs	r1, #1
  89 000a C068     		ldr	r0, [r0, #12]
  90 000c FFF7FEFF 		bl	_ZdlPvj
  91 0010 2046     		mov	r0, r4
  92 0012 1021     		movs	r1, #16
  93 0014 FFF7FEFF 		bl	_ZdlPvj
  94 0018 2046     		mov	r0, r4
  95 001a 10BD     		pop	{r4, pc}
  96              	.L13:
  97              		.align	2
  98              	.L12:
  99 001c 08000000 		.word	.LANCHOR0+8
 100              		.size	_ZN17TemperatureSensorD0Ev, .-_ZN17TemperatureSensorD0Ev
 101              		.section	.text._ZN17TemperatureSensor13SetHeaterNameEPKc,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN17TemperatureSensor13SetHeaterNameEPKc
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN17TemperatureSensor13SetHeaterNameEPKc, %function
 110              	_ZN17TemperatureSensor13SetHeaterNameEPKc:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 38B5     		push	{r3, r4, r5, lr}
 114 0002 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 3


 115 0004 0023     		movs	r3, #0
 116 0006 0D46     		mov	r5, r1
 117 0008 C068     		ldr	r0, [r0, #12]
 118 000a E360     		str	r3, [r4, #12]
 119 000c 0121     		movs	r1, #1
 120 000e FFF7FEFF 		bl	_ZdlPvj
 121 0012 0DB1     		cbz	r5, .L14
 122 0014 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 123 0016 03B9     		cbnz	r3, .L23
 124              	.L14:
 125 0018 38BD     		pop	{r3, r4, r5, pc}
 126              	.L23:
 127 001a 2846     		mov	r0, r5
 128 001c FFF7FEFF 		bl	strlen
 129 0020 0130     		adds	r0, r0, #1
 130 0022 FFF7FEFF 		bl	_Znaj
 131 0026 2946     		mov	r1, r5
 132 0028 FFF7FEFF 		bl	strcpy
 133 002c E060     		str	r0, [r4, #12]
 134 002e 38BD     		pop	{r3, r4, r5, pc}
 135              		.size	_ZN17TemperatureSensor13SetHeaterNameEPKc, .-_ZN17TemperatureSensor13SetHeaterNameEPKc
 136              		.section	.text._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, %function
 145              	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 70B5     		push	{r4, r5, r6, lr}
 149 0002 1546     		mov	r5, r2
 150 0004 0446     		mov	r4, r0
 151 0006 0A46     		mov	r2, r1
 152 0008 2846     		mov	r0, r5
 153 000a 0849     		ldr	r1, .L30
 154 000c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 155 0010 E268     		ldr	r2, [r4, #12]
 156 0012 1AB1     		cbz	r2, .L25
 157 0014 0649     		ldr	r1, .L30+4
 158 0016 2846     		mov	r0, r5
 159 0018 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 160              	.L25:
 161 001c 2846     		mov	r0, r5
 162 001e D4E90132 		ldrd	r3, r2, [r4, #4]
 163 0022 0449     		ldr	r1, .L30+8
 164 0024 BDE87040 		pop	{r4, r5, r6, lr}
 165 0028 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 166              	.L31:
 167              		.align	2
 168              	.L30:
 169 002c 00000000 		.word	.LC0
 170 0030 0C000000 		.word	.LC1
 171 0034 14000000 		.word	.LC2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 4


 172              		.size	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, .-_ZNK17TemperatureSensor22Co
 173              		.section	.text._ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, %function
 182              	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb:
 183              		@ args = 0, pretend = 0, frame = 40
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 186 0002 8BB0     		sub	sp, sp, #44
 187 0004 0746     		mov	r7, r0
 188 0006 0846     		mov	r0, r1
 189 0008 0021     		movs	r1, #0
 190 000a 0DF10703 		add	r3, sp, #7
 191 000e 8DF81010 		strb	r1, [sp, #16]
 192 0012 8DF80710 		strb	r1, [sp, #7]
 193 0016 1646     		mov	r6, r2
 194 0018 04AC     		add	r4, sp, #16
 195 001a 1525     		movs	r5, #21
 196 001c 02AA     		add	r2, sp, #8
 197 001e 5321     		movs	r1, #83
 198 0020 CDE90245 		strd	r4, r5, [sp, #8]
 199 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 200 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 201 002c 2BB1     		cbz	r3, .L32
 202 002e 2146     		mov	r1, r4
 203 0030 3846     		mov	r0, r7
 204 0032 FFF7FEFF 		bl	_ZN17TemperatureSensor13SetHeaterNameEPKc
 205 0036 0123     		movs	r3, #1
 206 0038 3370     		strb	r3, [r6]
 207              	.L32:
 208 003a 0BB0     		add	sp, sp, #44
 209              		@ sp needed
 210 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 211              		.size	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, .-_ZN17TemperatureSensor22T
 212 003e 00BF     		.section	.text._ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 221              	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
 222              		@ args = 4, pretend = 0, frame = 8
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 70B5     		push	{r4, r5, r6, lr}
 225 0002 40F23114 		movw	r4, #305
 226 0006 82B0     		sub	sp, sp, #8
 227 0008 0025     		movs	r5, #0
 228 000a A142     		cmp	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 5


 229 000c 8DF80750 		strb	r5, [sp, #7]
 230 0010 02D0     		beq	.L43
 231              	.L40:
 232 0012 0120     		movs	r0, #1
 233 0014 02B0     		add	sp, sp, #8
 234              		@ sp needed
 235 0016 70BD     		pop	{r4, r5, r6, pc}
 236              	.L43:
 237 0018 1946     		mov	r1, r3
 238 001a 1646     		mov	r6, r2
 239 001c 0DF10702 		add	r2, sp, #7
 240 0020 1C46     		mov	r4, r3
 241 0022 0546     		mov	r5, r0
 242 0024 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 243 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 244 002c 002B     		cmp	r3, #0
 245 002e F0D1     		bne	.L40
 246 0030 2046     		mov	r0, r4
 247 0032 5821     		movs	r1, #88
 248 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 249 0038 0028     		cmp	r0, #0
 250 003a EAD1     		bne	.L40
 251 003c 3146     		mov	r1, r6
 252 003e 2846     		mov	r0, r5
 253 0040 069A     		ldr	r2, [sp, #24]
 254 0042 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 255 0046 E4E7     		b	.L40
 256              		.size	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN17TemperatureSensor9Conf
 257              		.section	.text._ZN17TemperatureSensor6CreateEj,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	_ZN17TemperatureSensor6CreateEj
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_ZN17TemperatureSensor6CreateEj, %function
 266              	_ZN17TemperatureSensor6CreateEj:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 0728     		cmp	r0, #7
 270 0002 38B5     		push	{r3, r4, r5, lr}
 271 0004 0446     		mov	r4, r0
 272 0006 39D9     		bls	.L58
 273 0008 A0F5FA73 		sub	r3, r0, #500
 274 000c 072B     		cmp	r3, #7
 275 000e 27D9     		bls	.L59
 276 0010 A0F16403 		sub	r3, r0, #100
 277 0014 072B     		cmp	r3, #7
 278 0016 42D9     		bls	.L60
 279 0018 A0F19603 		sub	r3, r0, #150
 280 001c 072B     		cmp	r3, #7
 281 001e 46D9     		bls	.L61
 282 0020 A0F1C803 		sub	r3, r0, #200
 283 0024 072B     		cmp	r3, #7
 284 0026 32D9     		bls	.L62
 285 0028 A0F59673 		sub	r3, r0, #300
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 6


 286 002c 072B     		cmp	r3, #7
 287 002e 4ED9     		bls	.L63
 288 0030 A0F5C873 		sub	r3, r0, #400
 289 0034 072B     		cmp	r3, #7
 290 0036 52D9     		bls	.L64
 291 0038 A0F5E173 		sub	r3, r0, #450
 292 003c 072B     		cmp	r3, #7
 293 003e 3ED9     		bls	.L65
 294 0040 B0F57A7F 		cmp	r0, #1000
 295 0044 55D0     		beq	.L66
 296 0046 6FF47A73 		mvn	r3, #1000
 297 004a C318     		adds	r3, r0, r3
 298 004c 012B     		cmp	r3, #1
 299 004e 4ED8     		bhi	.L56
 300 0050 1020     		movs	r0, #16
 301 0052 FFF7FEFF 		bl	_Znwj
 302 0056 2146     		mov	r1, r4
 303 0058 0546     		mov	r5, r0
 304 005a FFF7FEFF 		bl	_ZN26TmcDriverTemperatureSensorC1Ej
 305 005e 07E0     		b	.L46
 306              	.L59:
 307 0060 3020     		movs	r0, #48
 308 0062 FFF7FEFF 		bl	_Znwj
 309 0066 2146     		mov	r1, r4
 310 0068 0122     		movs	r2, #1
 311 006a 0546     		mov	r5, r0
 312 006c FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 313              	.L46:
 314 0070 2B68     		ldr	r3, [r5]
 315 0072 2846     		mov	r0, r5
 316 0074 5B68     		ldr	r3, [r3, #4]
 317 0076 9847     		blx	r3
 318              	.L44:
 319 0078 2846     		mov	r0, r5
 320 007a 38BD     		pop	{r3, r4, r5, pc}
 321              	.L58:
 322 007c 3020     		movs	r0, #48
 323 007e FFF7FEFF 		bl	_Znwj
 324 0082 2146     		mov	r1, r4
 325 0084 0022     		movs	r2, #0
 326 0086 0546     		mov	r5, r0
 327 0088 FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 328 008c F0E7     		b	.L46
 329              	.L62:
 330 008e 2820     		movs	r0, #40
 331 0090 FFF7FEFF 		bl	_Znwj
 332 0094 2146     		mov	r1, r4
 333 0096 0546     		mov	r5, r0
 334 0098 FFF7FEFF 		bl	_ZN14RtdSensor31865C1Ej
 335 009c E8E7     		b	.L46
 336              	.L60:
 337 009e 2420     		movs	r0, #36
 338 00a0 FFF7FEFF 		bl	_Znwj
 339 00a4 2146     		mov	r1, r4
 340 00a6 0546     		mov	r5, r0
 341 00a8 FFF7FEFF 		bl	_ZN23ThermocoupleSensor31855C1Ej
 342 00ac E0E7     		b	.L46
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 7


 343              	.L61:
 344 00ae 2420     		movs	r0, #36
 345 00b0 FFF7FEFF 		bl	_Znwj
 346 00b4 2146     		mov	r1, r4
 347 00b6 0546     		mov	r5, r0
 348 00b8 FFF7FEFF 		bl	_ZN23ThermocoupleSensor31856C1Ej
 349 00bc D8E7     		b	.L46
 350              	.L65:
 351 00be 1020     		movs	r0, #16
 352 00c0 FFF7FEFF 		bl	_Znwj
 353 00c4 2146     		mov	r1, r4
 354 00c6 0546     		mov	r5, r0
 355 00c8 FFF7FEFF 		bl	_ZN17DhtHumiditySensorC1Ej
 356 00cc D0E7     		b	.L46
 357              	.L63:
 358 00ce 3C20     		movs	r0, #60
 359 00d0 FFF7FEFF 		bl	_Znwj
 360 00d4 2146     		mov	r1, r4
 361 00d6 0546     		mov	r5, r0
 362 00d8 FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensorC1Ej
 363 00dc C8E7     		b	.L46
 364              	.L64:
 365 00de 1020     		movs	r0, #16
 366 00e0 FFF7FEFF 		bl	_Znwj
 367 00e4 2146     		mov	r1, r4
 368 00e6 0546     		mov	r5, r0
 369 00e8 FFF7FEFF 		bl	_ZN20DhtTemperatureSensorC1Ej
 370 00ec C0E7     		b	.L46
 371              	.L56:
 372 00ee 0025     		movs	r5, #0
 373 00f0 C2E7     		b	.L44
 374              	.L66:
 375 00f2 1020     		movs	r0, #16
 376 00f4 FFF7FEFF 		bl	_Znwj
 377 00f8 2146     		mov	r1, r4
 378 00fa 0546     		mov	r5, r0
 379 00fc FFF7FEFF 		bl	_ZN20CpuTemperatureSensorC1Ej
 380 0100 B6E7     		b	.L46
 381              		.size	_ZN17TemperatureSensor6CreateEj, .-_ZN17TemperatureSensor6CreateEj
 382 0102 00BF     		.section	.text._ZN17TemperatureSensor19GetPT100TemperatureERft,"ax",%progbits
 383              		.align	1
 384              		.p2align 2,,3
 385              		.global	_ZN17TemperatureSensor19GetPT100TemperatureERft
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu fpv4-sp-d16
 390              		.type	_ZN17TemperatureSensor19GetPT100TemperatureERft, %function
 391              	_ZN17TemperatureSensor19GetPT100TemperatureERft:
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394              		@ link register save eliminated.
 395 0000 70B4     		push	{r4, r5, r6}
 396 0002 284E     		ldr	r6, .L81
 397 0004 45F6D253 		movw	r3, #24018
 398 0008 0022     		movs	r2, #0
 399 000a 6025     		movs	r5, #96
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 8


 400              	.L73:
 401 000c AC1A     		subs	r4, r5, r2
 402 000e 9942     		cmp	r1, r3
 403 0010 02EB5404 		add	r4, r2, r4, lsr #1
 404 0014 05D9     		bls	.L68
 405 0016 34E0     		b	.L80
 406              	.L78:
 407 0018 36F81350 		ldrh	r5, [r6, r3, lsl #1]
 408 001c 8D42     		cmp	r5, r1
 409 001e 32D3     		bcc	.L69
 410 0020 1C46     		mov	r4, r3
 411              	.L68:
 412 0022 A31A     		subs	r3, r4, r2
 413 0024 A242     		cmp	r2, r4
 414 0026 02EB5303 		add	r3, r2, r3, lsr #1
 415 002a F5D3     		bcc	.L78
 416 002c 1AB9     		cbnz	r2, .L72
 417 002e 0123     		movs	r3, #1
 418 0030 1846     		mov	r0, r3
 419 0032 70BC     		pop	{r4, r5, r6}
 420 0034 7047     		bx	lr
 421              	.L72:
 422 0036 5F2A     		cmp	r2, #95
 423 0038 2FD8     		bhi	.L76
 424 003a 541E     		subs	r4, r2, #1
 425 003c 194D     		ldr	r5, .L81
 426 003e 9FED1A6A 		vldr.32	s12, .L81+4
 427 0042 35F81230 		ldrh	r3, [r5, r2, lsl #1]
 428 0046 35F81420 		ldrh	r2, [r5, r4, lsl #1]
 429 004a 9B1A     		subs	r3, r3, r2
 430 004c 891A     		subs	r1, r1, r2
 431 004e 07EE103A 		vmov	s14, r3	@ int
 432 0052 07EE901A 		vmov	s15, r1	@ int
 433 0056 B8EEC77A 		vcvt.f32.s32	s14, s14
 434 005a F8EEE77A 		vcvt.f32.s32	s15, s15
 435 005e 06EE904A 		vmov	s13, r4	@ int
 436 0062 C7EE875A 		vdiv.f32	s11, s15, s14
 437 0066 0023     		movs	r3, #0
 438 0068 70BC     		pop	{r4, r5, r6}
 439 006a F8EEE66A 		vcvt.f32.s32	s13, s13
 440 006e F2EE047A 		vmov.f32	s15, #1.0e+1
 441 0072 75EEA66A 		vadd.f32	s13, s11, s13
 442 0076 A6EEA76A 		vfma.f32	s12, s13, s15
 443 007a 80ED006A 		vstr.32	s12, [r0]
 444 007e 1846     		mov	r0, r3
 445 0080 7047     		bx	lr
 446              	.L80:
 447 0082 2346     		mov	r3, r4
 448 0084 2C46     		mov	r4, r5
 449              	.L69:
 450 0086 5A1C     		adds	r2, r3, #1
 451 0088 A242     		cmp	r2, r4
 452 008a D4D2     		bcs	.L72
 453 008c A31A     		subs	r3, r4, r2
 454 008e 02EB5303 		add	r3, r2, r3, lsr #1
 455 0092 2546     		mov	r5, r4
 456 0094 36F81330 		ldrh	r3, [r6, r3, lsl #1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 9


 457 0098 B8E7     		b	.L73
 458              	.L76:
 459 009a 0423     		movs	r3, #4
 460 009c 1846     		mov	r0, r3
 461 009e 70BC     		pop	{r4, r5, r6}
 462 00a0 7047     		bx	lr
 463              	.L82:
 464 00a2 00BF     		.align	2
 465              	.L81:
 466 00a4 00000000 		.word	.LANCHOR1
 467 00a8 0000C8C2 		.word	-1027080192
 468              		.size	_ZN17TemperatureSensor19GetPT100TemperatureERft, .-_ZN17TemperatureSensor19GetPT100Temperatu
 469              		.global	_ZTV17TemperatureSensor
 470              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 471              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 472              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 473              	_ZL28cpu_irq_prev_interrupt_state:
 474 0000 00       		.space	1
 475              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 476              		.align	2
 477              		.type	_ZL32cpu_irq_critical_section_counter, %object
 478              		.size	_ZL32cpu_irq_critical_section_counter, 4
 479              	_ZL32cpu_irq_critical_section_counter:
 480 0000 00000000 		.space	4
 481              		.section	.rodata._ZL9tempTable,"a",%progbits
 482              		.align	2
 483              		.set	.LANCHOR1,. + 0
 484              		.type	_ZL9tempTable, %object
 485              		.size	_ZL9tempTable, 192
 486              	_ZL9tempTable:
 487 0000 8A17     		.short	6026
 488 0002 1E19     		.short	6430
 489 0004 B11A     		.short	6833
 490 0006 411C     		.short	7233
 491 0008 D11D     		.short	7633
 492 000a 5F1F     		.short	8031
 493 000c EB20     		.short	8427
 494 000e 7622     		.short	8822
 495 0010 0024     		.short	9216
 496 0012 8925     		.short	9609
 497 0014 1027     		.short	10000
 498 0016 9628     		.short	10390
 499 0018 1B2A     		.short	10779
 500 001a 9F2B     		.short	11167
 501 001c 222D     		.short	11554
 502 001e A42E     		.short	11940
 503 0020 2430     		.short	12324
 504 0022 A431     		.short	12708
 505 0024 2233     		.short	13090
 506 0026 9F34     		.short	13471
 507 0028 1B36     		.short	13851
 508 002a 9537     		.short	14229
 509 002c 0F39     		.short	14607
 510 002e 873A     		.short	14983
 511 0030 FE3B     		.short	15358
 512 0032 753D     		.short	15733
 513 0034 E93E     		.short	16105
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 10


 514 0036 5D40     		.short	16477
 515 0038 D041     		.short	16848
 516 003a 4143     		.short	17217
 517 003c B244     		.short	17586
 518 003e 2146     		.short	17953
 519 0040 8F47     		.short	18319
 520 0042 FC48     		.short	18684
 521 0044 674A     		.short	19047
 522 0046 D24B     		.short	19410
 523 0048 3B4D     		.short	19771
 524 004a A34E     		.short	20131
 525 004c 0A50     		.short	20490
 526 004e 7051     		.short	20848
 527 0050 D552     		.short	21205
 528 0052 3954     		.short	21561
 529 0054 9B55     		.short	21915
 530 0056 FC56     		.short	22268
 531 0058 5D58     		.short	22621
 532 005a BC59     		.short	22972
 533 005c 195B     		.short	23321
 534 005e 765C     		.short	23670
 535 0060 D25D     		.short	24018
 536 0062 2C5F     		.short	24364
 537 0064 8560     		.short	24709
 538 0066 DD61     		.short	25053
 539 0068 3463     		.short	25396
 540 006a 8A64     		.short	25738
 541 006c DE65     		.short	26078
 542 006e 3267     		.short	26418
 543 0070 8468     		.short	26756
 544 0072 D569     		.short	27093
 545 0074 256B     		.short	27429
 546 0076 746C     		.short	27764
 547 0078 C26D     		.short	28098
 548 007a 0E6F     		.short	28430
 549 007c 5A70     		.short	28762
 550 007e A471     		.short	29092
 551 0080 ED72     		.short	29421
 552 0082 3574     		.short	29749
 553 0084 7B75     		.short	30075
 554 0086 C176     		.short	30401
 555 0088 0578     		.short	30725
 556 008a 4879     		.short	31048
 557 008c 8B7A     		.short	31371
 558 008e CC7B     		.short	31692
 559 0090 0C7D     		.short	32012
 560 0092 4A7E     		.short	32330
 561 0094 887F     		.short	32648
 562 0096 C480     		.short	-32572
 563 0098 FF81     		.short	-32257
 564 009a 3983     		.short	-31943
 565 009c 7284     		.short	-31630
 566 009e AA85     		.short	-31318
 567 00a0 E086     		.short	-31008
 568 00a2 1688     		.short	-30698
 569 00a4 4A89     		.short	-30390
 570 00a6 7D8A     		.short	-30083
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuqRofP.s 			page 11


 571 00a8 AF8B     		.short	-29777
 572 00aa E08C     		.short	-29472
 573 00ac 0F8E     		.short	-29169
 574 00ae 3E8F     		.short	-28866
 575 00b0 6B90     		.short	-28565
 576 00b2 9791     		.short	-28265
 577 00b4 C292     		.short	-27966
 578 00b6 EC93     		.short	-27668
 579 00b8 1595     		.short	-27371
 580 00ba 3C96     		.short	-27076
 581 00bc 6397     		.short	-26781
 582 00be 8898     		.short	-26488
 583              		.section	.rodata._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef.str1.4,"aMS",%progb
 584              		.align	2
 585              	.LC0:
 586 0000 48656174 		.ascii	"Heater %u\000"
 586      65722025 
 586      7500
 587 000a 0000     		.space	2
 588              	.LC1:
 589 000c 20282573 		.ascii	" (%s)\000"
 589      2900
 590 0012 0000     		.space	2
 591              	.LC2:
 592 0014 20757365 		.ascii	" uses %s sensor channel %u\000"
 592      73202573 
 592      2073656E 
 592      736F7220 
 592      6368616E 
 593              		.section	.rodata._ZTV17TemperatureSensor,"a",%progbits
 594              		.align	2
 595              		.set	.LANCHOR0,. + 0
 596              		.type	_ZTV17TemperatureSensor, %object
 597              		.size	_ZTV17TemperatureSensor, 28
 598              	_ZTV17TemperatureSensor:
 599 0000 00000000 		.word	0
 600 0004 00000000 		.word	0
 601 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 602 000c 00000000 		.word	__cxa_pure_virtual
 603 0010 00000000 		.word	__cxa_pure_virtual
 604 0014 00000000 		.word	0
 605 0018 00000000 		.word	0
 606              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
