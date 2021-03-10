ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 1


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
  13              		.file	"DhtSensor.cpp"
  14              		.text
  15              		.section	.text._ZN20DhtTemperatureSensorD2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN20DhtTemperatureSensorD2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN20DhtTemperatureSensorD2Ev, %function
  24              	_ZN20DhtTemperatureSensorD2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 034B     		ldr	r3, .L4
  29 0004 0360     		str	r3, [r0]
  30 0006 0446     		mov	r4, r0
  31 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  32 000c 2046     		mov	r0, r4
  33 000e 10BD     		pop	{r4, pc}
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 0010 08000000 		.word	.LANCHOR0+8
  38              		.size	_ZN20DhtTemperatureSensorD2Ev, .-_ZN20DhtTemperatureSensorD2Ev
  39              		.global	_ZN20DhtTemperatureSensorD1Ev
  40              		.thumb_set _ZN20DhtTemperatureSensorD1Ev,_ZN20DhtTemperatureSensorD2Ev
  41              		.section	.text._ZN17DhtHumiditySensorD2Ev,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN17DhtHumiditySensorD2Ev
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN17DhtHumiditySensorD2Ev, %function
  50              	_ZN17DhtHumiditySensorD2Ev:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 10B5     		push	{r4, lr}
  54 0002 034B     		ldr	r3, .L8
  55 0004 0360     		str	r3, [r0]
  56 0006 0446     		mov	r4, r0
  57 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 2


  58 000c 2046     		mov	r0, r4
  59 000e 10BD     		pop	{r4, pc}
  60              	.L9:
  61              		.align	2
  62              	.L8:
  63 0010 08000000 		.word	.LANCHOR1+8
  64              		.size	_ZN17DhtHumiditySensorD2Ev, .-_ZN17DhtHumiditySensorD2Ev
  65              		.global	_ZN17DhtHumiditySensorD1Ev
  66              		.thumb_set _ZN17DhtHumiditySensorD1Ev,_ZN17DhtHumiditySensorD2Ev
  67              		.section	.text._ZN20DhtTemperatureSensorD0Ev,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN20DhtTemperatureSensorD0Ev
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZN20DhtTemperatureSensorD0Ev, %function
  76              	_ZN20DhtTemperatureSensorD0Ev:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 10B5     		push	{r4, lr}
  80 0002 054B     		ldr	r3, .L12
  81 0004 0360     		str	r3, [r0]
  82 0006 0446     		mov	r4, r0
  83 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  84 000c 2046     		mov	r0, r4
  85 000e 1021     		movs	r1, #16
  86 0010 FFF7FEFF 		bl	_ZdlPvj
  87 0014 2046     		mov	r0, r4
  88 0016 10BD     		pop	{r4, pc}
  89              	.L13:
  90              		.align	2
  91              	.L12:
  92 0018 08000000 		.word	.LANCHOR0+8
  93              		.size	_ZN20DhtTemperatureSensorD0Ev, .-_ZN20DhtTemperatureSensorD0Ev
  94              		.section	.text._ZN17DhtHumiditySensorD0Ev,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN17DhtHumiditySensorD0Ev
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN17DhtHumiditySensorD0Ev, %function
 103              	_ZN17DhtHumiditySensorD0Ev:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 10B5     		push	{r4, lr}
 107 0002 054B     		ldr	r3, .L16
 108 0004 0360     		str	r3, [r0]
 109 0006 0446     		mov	r4, r0
 110 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 111 000c 2046     		mov	r0, r4
 112 000e 1021     		movs	r1, #16
 113 0010 FFF7FEFF 		bl	_ZdlPvj
 114 0014 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 3


 115 0016 10BD     		pop	{r4, pc}
 116              	.L17:
 117              		.align	2
 118              	.L16:
 119 0018 08000000 		.word	.LANCHOR1+8
 120              		.size	_ZN17DhtHumiditySensorD0Ev, .-_ZN17DhtHumiditySensorD0Ev
 121              		.section	.text._ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9St
 122              		.align	1
 123              		.p2align 2,,3
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef.p
 129              	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef.part.1:
 130              		@ args = 4, pretend = 0, frame = 8
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 133 0004 82B0     		sub	sp, sp, #8
 134 0006 02AC     		add	r4, sp, #8
 135 0008 0025     		movs	r5, #0
 136 000a 04F8015D 		strb	r5, [r4, #-1]!
 137 000e 0E46     		mov	r6, r1
 138 0010 1D46     		mov	r5, r3
 139 0012 1946     		mov	r1, r3
 140 0014 0746     		mov	r7, r0
 141 0016 9046     		mov	r8, r2
 142 0018 3046     		mov	r0, r6
 143 001a 2246     		mov	r2, r4
 144 001c FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 145 0020 2846     		mov	r0, r5
 146 0022 5421     		movs	r1, #84
 147 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 148 0028 0124     		movs	r4, #1
 149 002a 30B9     		cbnz	r0, .L32
 150              	.L19:
 151 002c 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 152 0030 A3B1     		cbz	r3, .L33
 153              	.L25:
 154 0032 2046     		mov	r0, r4
 155 0034 02B0     		add	sp, sp, #8
 156              		@ sp needed
 157 0036 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 158              	.L32:
 159 003a 2846     		mov	r0, r5
 160 003c 8DF80740 		strb	r4, [sp, #7]
 161 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 162 0044 1528     		cmp	r0, #21
 163 0046 27D0     		beq	.L21
 164 0048 1628     		cmp	r0, #22
 165 004a 22D0     		beq	.L22
 166 004c 0B28     		cmp	r0, #11
 167 004e 26D0     		beq	.L34
 168 0050 1449     		ldr	r1, .L35
 169 0052 0898     		ldr	r0, [sp, #32]
 170 0054 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 171 0058 0224     		movs	r4, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 4


 172 005a E7E7     		b	.L19
 173              	.L33:
 174 005c 2846     		mov	r0, r5
 175 005e 5821     		movs	r1, #88
 176 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 177 0064 0028     		cmp	r0, #0
 178 0066 E4D1     		bne	.L25
 179 0068 089A     		ldr	r2, [sp, #32]
 180 006a 4146     		mov	r1, r8
 181 006c 3046     		mov	r0, r6
 182 006e FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 183 0072 7B68     		ldr	r3, [r7, #4]
 184 0074 0C49     		ldr	r1, .L35+4
 185 0076 0898     		ldr	r0, [sp, #32]
 186 0078 013B     		subs	r3, r3, #1
 187 007a 022B     		cmp	r3, #2
 188 007c 96BF     		itet	ls
 189 007e 0B4A     		ldrls	r2, .L35+8
 190 0080 0B4A     		ldrhi	r2, .L35+12
 191 0082 52F82320 		ldrls	r2, [r2, r3, lsl #2]
 192 0086 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 193 008a 2046     		mov	r0, r4
 194 008c 02B0     		add	sp, sp, #8
 195              		@ sp needed
 196 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 197              	.L22:
 198 0092 0323     		movs	r3, #3
 199 0094 7B60     		str	r3, [r7, #4]
 200 0096 C9E7     		b	.L19
 201              	.L21:
 202 0098 0223     		movs	r3, #2
 203 009a 7B60     		str	r3, [r7, #4]
 204 009c C6E7     		b	.L19
 205              	.L34:
 206 009e 7C60     		str	r4, [r7, #4]
 207 00a0 C4E7     		b	.L19
 208              	.L36:
 209 00a2 00BF     		.align	2
 210              	.L35:
 211 00a4 08000000 		.word	.LC1
 212 00a8 20000000 		.word	.LC2
 213 00ac 00000000 		.word	.LANCHOR2
 214 00b0 00000000 		.word	.LC0
 215              		.size	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef.p
 216              		.section	.text._ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2,"ax",%progbit
 217              		.align	1
 218              		.p2align 2,,3
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu fpv4-sp-d16
 223              		.type	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2, %function
 224              	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2:
 225              		@ args = 0, pretend = 0, frame = 8
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 70B5     		push	{r4, r5, r6, lr}
 228 0002 82B0     		sub	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 5


 229 0004 0446     		mov	r4, r0
 230 0006 0D46     		mov	r5, r1
 231 0008 1646     		mov	r6, r2
 232 000a 6846     		mov	r0, sp
 233 000c 4FF0FF32 		mov	r2, #-1
 234 0010 1049     		ldr	r1, .L43
 235 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 236 0016 104B     		ldr	r3, .L43+4
 237 0018 53F82430 		ldr	r3, [r3, r4, lsl #2]
 238 001c 83B1     		cbz	r3, .L42
 239 001e 93ED037A 		vldr.32	s14, [r3, #12]
 240 0022 D3ED047A 		vldr.32	s15, [r3, #16]
 241 0026 1C7A     		ldrb	r4, [r3, #8]	@ zero_extendqisi2
 242 0028 002E     		cmp	r6, #0
 243 002a 08BF     		it	eq
 244 002c F0EE477A 		vmoveq.f32	s15, s14
 245 0030 C5ED007A 		vstr.32	s15, [r5]
 246 0034 6846     		mov	r0, sp
 247 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 248 003a 2046     		mov	r0, r4
 249 003c 02B0     		add	sp, sp, #8
 250              		@ sp needed
 251 003e 70BD     		pop	{r4, r5, r6, pc}
 252              	.L42:
 253 0040 064B     		ldr	r3, .L43+8
 254 0042 2B60     		str	r3, [r5]	@ float
 255 0044 6846     		mov	r0, sp
 256 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 257 004a 0B24     		movs	r4, #11
 258 004c 2046     		mov	r0, r4
 259 004e 02B0     		add	sp, sp, #8
 260              		@ sp needed
 261 0050 70BD     		pop	{r4, r5, r6, pc}
 262              	.L44:
 263 0052 00BF     		.align	2
 264              	.L43:
 265 0054 00000000 		.word	.LANCHOR3
 266 0058 00000000 		.word	.LANCHOR4
 267 005c 0000FA44 		.word	1157234688
 268              		.size	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2, .-_ZN26DhtSensorHardw
 269              		.section	.text._ZN20DhtTemperatureSensor14GetTemperatureERf,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	_ZN20DhtTemperatureSensor14GetTemperatureERf
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu fpv4-sp-d16
 277              		.type	_ZN20DhtTemperatureSensor14GetTemperatureERf, %function
 278              	_ZN20DhtTemperatureSensor14GetTemperatureERf:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 4068     		ldr	r0, [r0, #4]
 283 0002 A0F5C870 		sub	r0, r0, #400
 284 0006 0728     		cmp	r0, #7
 285 0008 02D8     		bhi	.L49
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 6


 286 000a 0022     		movs	r2, #0
 287 000c FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2
 288              	.L49:
 289 0010 014A     		ldr	r2, .L50
 290 0012 0A60     		str	r2, [r1]	@ float
 291 0014 0A20     		movs	r0, #10
 292 0016 7047     		bx	lr
 293              	.L51:
 294              		.align	2
 295              	.L50:
 296 0018 0000FA44 		.word	1157234688
 297              		.size	_ZN20DhtTemperatureSensor14GetTemperatureERf, .-_ZN20DhtTemperatureSensor14GetTemperatureERf
 298              		.section	.text._ZN17DhtHumiditySensor14GetTemperatureERf,"ax",%progbits
 299              		.align	1
 300              		.p2align 2,,3
 301              		.global	_ZN17DhtHumiditySensor14GetTemperatureERf
 302              		.syntax unified
 303              		.thumb
 304              		.thumb_func
 305              		.fpu fpv4-sp-d16
 306              		.type	_ZN17DhtHumiditySensor14GetTemperatureERf, %function
 307              	_ZN17DhtHumiditySensor14GetTemperatureERf:
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 0, uses_anonymous_args = 0
 310              		@ link register save eliminated.
 311 0000 4068     		ldr	r0, [r0, #4]
 312 0002 A0F5E170 		sub	r0, r0, #450
 313 0006 0728     		cmp	r0, #7
 314 0008 02D8     		bhi	.L56
 315 000a 0122     		movs	r2, #1
 316 000c FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2
 317              	.L56:
 318 0010 014A     		ldr	r2, .L57
 319 0012 0A60     		str	r2, [r1]	@ float
 320 0014 0A20     		movs	r0, #10
 321 0016 7047     		bx	lr
 322              	.L58:
 323              		.align	2
 324              	.L57:
 325 0018 0000FA44 		.word	1157234688
 326              		.size	_ZN17DhtHumiditySensor14GetTemperatureERf, .-_ZN17DhtHumiditySensor14GetTemperatureERf
 327              		.section	.text._ZN26DhtSensorHardwareInterface9InterruptEv.part.3,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu fpv4-sp-d16
 334              		.type	_ZN26DhtSensorHardwareInterface9InterruptEv.part.3, %function
 335              	_ZN26DhtSensorHardwareInterface9InterruptEv.part.3:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338 0000 38B5     		push	{r3, r4, r5, lr}
 339 0002 0C4B     		ldr	r3, .L67
 340 0004 D3F89040 		ldr	r4, [r3, #144]
 341 0008 0546     		mov	r5, r0
 342 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 7


 343 000c A4B2     		uxth	r4, r4
 344 000e FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 345 0012 60B9     		cbnz	r0, .L66
 346 0014 2B8B     		ldrh	r3, [r5, #24]
 347 0016 9BB2     		uxth	r3, r3
 348 0018 43B1     		cbz	r3, .L59
 349 001a 2B8B     		ldrh	r3, [r5, #24]
 350 001c EA69     		ldr	r2, [r5, #28]
 351 001e 02F11001 		add	r1, r2, #16
 352 0022 E31A     		subs	r3, r4, r3
 353 0024 0132     		adds	r2, r2, #1
 354 0026 EA61     		str	r2, [r5, #28]
 355 0028 25F81130 		strh	r3, [r5, r1, lsl #1]	@ movhi
 356              	.L59:
 357 002c 38BD     		pop	{r3, r4, r5, pc}
 358              	.L66:
 359 002e 2C83     		strh	r4, [r5, #24]	@ movhi
 360 0030 38BD     		pop	{r3, r4, r5, pc}
 361              	.L68:
 362 0032 00BF     		.align	2
 363              	.L67:
 364 0034 00000940 		.word	1074331648
 365              		.size	_ZN26DhtSensorHardwareInterface9InterruptEv.part.3, .-_ZN26DhtSensorHardwareInterface9Interr
 366              		.section	.text.DhtDataTransition,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	DhtDataTransition
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu fpv4-sp-d16
 374              		.type	DhtDataTransition, %function
 375              	DhtDataTransition:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 C369     		ldr	r3, [r0, #28]
 380 0002 282B     		cmp	r3, #40
 381 0004 00D9     		bls	.L71
 382 0006 7047     		bx	lr
 383              	.L71:
 384 0008 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface9InterruptEv.part.3
 385              		.size	DhtDataTransition, .-DhtDataTransition
 386              		.section	.text._ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4, %function
 394              	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4:
 395              		@ args = 0, pretend = 0, frame = 8
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 70B4     		push	{r4, r5, r6}
 399 0002 83B0     		sub	sp, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 8


 400 0004 0022     		movs	r2, #0
 401 0006 1346     		mov	r3, r2
 402 0008 0092     		str	r2, [sp]
 403 000a 8DF80420 		strb	r2, [sp, #4]
 404 000e 1146     		mov	r1, r2
 405 0010 00F12004 		add	r4, r0, #32
 406 0014 01E0     		b	.L73
 407              	.L86:
 408 0016 13F8083C 		ldrb	r3, [r3, #-8]	@ zero_extendqisi2
 409              	.L73:
 410 001a 02AD     		add	r5, sp, #8
 411 001c 2A44     		add	r2, r2, r5
 412 001e 34F8025F 		ldrh	r5, [r4, #2]!
 413 0022 5B00     		lsls	r3, r3, #1
 414 0024 DBB2     		uxtb	r3, r3
 415 0026 2D2D     		cmp	r5, #45
 416 0028 02F8083C 		strb	r3, [r2, #-8]
 417 002c 01F10101 		add	r1, r1, #1
 418 0030 43F00103 		orr	r3, r3, #1
 419 0034 01D9     		bls	.L75
 420 0036 02F8083C 		strb	r3, [r2, #-8]
 421              	.L75:
 422 003a CA08     		lsrs	r2, r1, #3
 423 003c 02AB     		add	r3, sp, #8
 424 003e 2829     		cmp	r1, #40
 425 0040 1344     		add	r3, r3, r2
 426 0042 E8D1     		bne	.L86
 427 0044 9DF80050 		ldrb	r5, [sp]	@ zero_extendqisi2
 428 0048 9DF80120 		ldrb	r2, [sp, #1]	@ zero_extendqisi2
 429 004c 9DF80240 		ldrb	r4, [sp, #2]	@ zero_extendqisi2
 430 0050 9DF80310 		ldrb	r1, [sp, #3]	@ zero_extendqisi2
 431 0054 9DF80460 		ldrb	r6, [sp, #4]	@ zero_extendqisi2
 432 0058 2A44     		add	r2, r2, r5
 433 005a A318     		adds	r3, r4, r2
 434 005c 0B44     		add	r3, r3, r1
 435 005e DBB2     		uxtb	r3, r3
 436 0060 B342     		cmp	r3, r6
 437 0062 26D1     		bne	.L80
 438 0064 4368     		ldr	r3, [r0, #4]
 439 0066 012B     		cmp	r3, #1
 440 0068 27D0     		beq	.L77
 441 006a 36DB     		blt	.L81
 442 006c 032B     		cmp	r3, #3
 443 006e 34DC     		bgt	.L81
 444 0070 FF23     		movs	r3, #255
 445 0072 13FB0523 		smlabb	r3, r3, r5, r2
 446 0076 07EE103A 		vmov	s14, r3	@ int
 447 007a 04F07F03 		and	r3, r4, #127
 448 007e 01EB0321 		add	r1, r1, r3, lsl #8
 449 0082 07EE901A 		vmov	s15, r1	@ int
 450 0086 DFED176A 		vldr.32	s13, .L87
 451 008a F8EEE77A 		vcvt.f32.s32	s15, s15
 452 008e B8EEC77A 		vcvt.f32.s32	s14, s14
 453 0092 67EEA67A 		vmul.f32	s15, s15, s13
 454 0096 27EE267A 		vmul.f32	s14, s14, s13
 455 009a 2306     		lsls	r3, r4, #24
 456 009c 48BF     		it	mi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 9


 457 009e F1EE677A 		vnegmi.f32	s15, s15
 458 00a2 80ED047A 		vstr.32	s14, [r0, #16]
 459 00a6 C0ED037A 		vstr.32	s15, [r0, #12]
 460 00aa 0020     		movs	r0, #0
 461 00ac 03B0     		add	sp, sp, #12
 462              		@ sp needed
 463 00ae 70BC     		pop	{r4, r5, r6}
 464 00b0 7047     		bx	lr
 465              	.L80:
 466 00b2 0620     		movs	r0, #6
 467 00b4 03B0     		add	sp, sp, #12
 468              		@ sp needed
 469 00b6 70BC     		pop	{r4, r5, r6}
 470 00b8 7047     		bx	lr
 471              	.L77:
 472 00ba 07EE905A 		vmov	s15, r5	@ int
 473 00be 07EE104A 		vmov	s14, r4	@ int
 474 00c2 F8EE677A 		vcvt.f32.u32	s15, s15
 475 00c6 B8EE477A 		vcvt.f32.u32	s14, s14
 476 00ca C0ED047A 		vstr.32	s15, [r0, #16]
 477 00ce 80ED037A 		vstr.32	s14, [r0, #12]
 478 00d2 0020     		movs	r0, #0
 479 00d4 03B0     		add	sp, sp, #12
 480              		@ sp needed
 481 00d6 70BC     		pop	{r4, r5, r6}
 482 00d8 7047     		bx	lr
 483              	.L81:
 484 00da 0B20     		movs	r0, #11
 485 00dc 03B0     		add	sp, sp, #12
 486              		@ sp needed
 487 00de 70BC     		pop	{r4, r5, r6}
 488 00e0 7047     		bx	lr
 489              	.L88:
 490 00e2 00BF     		.align	2
 491              	.L87:
 492 00e4 CDCCCC3D 		.word	1036831949
 493              		.size	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4, .-_ZN26DhtSensorHardwareInterface
 494              		.section	.text._ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5,"ax",%progbits
 495              		.align	1
 496              		.p2align 2,,3
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5, %function
 502              	_ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 10B5     		push	{r4, lr}
 506 0002 0321     		movs	r1, #3
 507 0004 0446     		mov	r4, r0
 508 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 509 0008 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 510 000c 1420     		movs	r0, #20
 511 000e FFF7FEFF 		bl	_Z5delaym
 512 0012 FFF7FEFF 		bl	vTaskSuspendAll
 513 0016 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 10


 514 0018 0121     		movs	r1, #1
 515 001a FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 516 001e 1E4B     		ldr	r3, .L98
 517 0020 1E4A     		ldr	r2, .L98+4
 518 0022 1B68     		ldr	r3, [r3]
 519 0024 A2FB0323 		umull	r2, r3, r2, r3
 520 0028 9B0C     		lsrs	r3, r3, #18
 521 002a 03EB4303 		add	r3, r3, r3, lsl #1
 522              		.syntax unified
 523              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 524              		L_564_delayMicroseconds:
 525 002e 013B     		subs   r3, #1
 526 0030 FDD1     		bne    L_564_delayMicroseconds
 527              	
 528              	@ 0 "" 2
 529              		.thumb
 530              		.syntax unified
 531 0032 0121     		movs	r1, #1
 532 0034 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 533 0036 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 534 003a 2923     		movs	r3, #41
 535 003c 1849     		ldr	r1, .L98+8
 536 003e E361     		str	r3, [r4, #28]
 537 0040 0322     		movs	r2, #3
 538 0042 2346     		mov	r3, r4
 539 0044 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 540 0046 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 541 004a 0023     		movs	r3, #0
 542 004c 2383     		strh	r3, [r4, #24]	@ movhi
 543 004e E361     		str	r3, [r4, #28]
 544 0050 FFF7FEFF 		bl	xTaskResumeAll
 545 0054 1420     		movs	r0, #20
 546 0056 FFF7FEFF 		bl	_Z5delaym
 547 005a 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 548 005c FFF7FEFF 		bl	_Z15detachInterruptm
 549 0060 E369     		ldr	r3, [r4, #28]
 550 0062 292B     		cmp	r3, #41
 551 0064 0BD0     		beq	.L96
 552              	.L94:
 553 0066 0622     		movs	r2, #6
 554              	.L90:
 555 0068 6369     		ldr	r3, [r4, #20]
 556 006a 032B     		cmp	r3, #3
 557 006c 04D9     		bls	.L97
 558 006e 0D4B     		ldr	r3, .L98+12
 559 0070 2272     		strb	r2, [r4, #8]
 560 0072 E360     		str	r3, [r4, #12]	@ float
 561 0074 2361     		str	r3, [r4, #16]	@ float
 562 0076 10BD     		pop	{r4, pc}
 563              	.L97:
 564 0078 0133     		adds	r3, r3, #1
 565 007a 6361     		str	r3, [r4, #20]
 566 007c 10BD     		pop	{r4, pc}
 567              	.L96:
 568 007e 238C     		ldrh	r3, [r4, #32]
 569 0080 2D2B     		cmp	r3, #45
 570 0082 F0D9     		bls	.L94
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 11


 571 0084 2046     		mov	r0, r4
 572 0086 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4
 573 008a 0246     		mov	r2, r0
 574 008c 0028     		cmp	r0, #0
 575 008e EBD1     		bne	.L90
 576 0090 2072     		strb	r0, [r4, #8]
 577 0092 6061     		str	r0, [r4, #20]
 578 0094 10BD     		pop	{r4, pc}
 579              	.L99:
 580 0096 00BF     		.align	2
 581              	.L98:
 582 0098 00000000 		.word	SystemCoreClock
 583 009c 819F5E16 		.word	375299969
 584 00a0 00000000 		.word	DhtDataTransition
 585 00a4 0000FA44 		.word	1157234688
 586              		.size	_ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5, .-_ZN26DhtSensorHardwareInterface11Ta
 587              		.section	.text._ZN26DhtSensorHardwareInterfaceC2Eh,"ax",%progbits
 588              		.align	1
 589              		.p2align 2,,3
 590              		.global	_ZN26DhtSensorHardwareInterfaceC2Eh
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv4-sp-d16
 595              		.type	_ZN26DhtSensorHardwareInterfaceC2Eh, %function
 596              	_ZN26DhtSensorHardwareInterfaceC2Eh:
 597              		@ args = 0, pretend = 0, frame = 0
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599 0000 38B5     		push	{r3, r4, r5, lr}
 600 0002 0446     		mov	r4, r0
 601 0004 074B     		ldr	r3, .L102
 602 0006 0170     		strb	r1, [r0]
 603 0008 0022     		movs	r2, #0
 604 000a 0B25     		movs	r5, #11
 605 000c 0846     		mov	r0, r1
 606 000e 2572     		strb	r5, [r4, #8]
 607 0010 6260     		str	r2, [r4, #4]
 608 0012 6261     		str	r2, [r4, #20]
 609 0014 E360     		str	r3, [r4, #12]	@ float
 610 0016 2361     		str	r3, [r4, #16]	@ float
 611 0018 0121     		movs	r1, #1
 612 001a FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 613 001e 2046     		mov	r0, r4
 614 0020 38BD     		pop	{r3, r4, r5, pc}
 615              	.L103:
 616 0022 00BF     		.align	2
 617              	.L102:
 618 0024 0000FA44 		.word	1157234688
 619              		.size	_ZN26DhtSensorHardwareInterfaceC2Eh, .-_ZN26DhtSensorHardwareInterfaceC2Eh
 620              		.global	_ZN26DhtSensorHardwareInterfaceC1Eh
 621              		.thumb_set _ZN26DhtSensorHardwareInterfaceC1Eh,_ZN26DhtSensorHardwareInterfaceC2Eh
 622              		.section	.text._ZNK26DhtSensorHardwareInterface24GetTemperatureOrHumidityERfb,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	_ZNK26DhtSensorHardwareInterface24GetTemperatureOrHumidityERfb
 626              		.syntax unified
 627              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	_ZNK26DhtSensorHardwareInterface24GetTemperatureOrHumidityERfb, %function
 631              	_ZNK26DhtSensorHardwareInterface24GetTemperatureOrHumidityERfb:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634              		@ link register save eliminated.
 635 0000 90ED037A 		vldr.32	s14, [r0, #12]
 636 0004 D0ED047A 		vldr.32	s15, [r0, #16]
 637 0008 007A     		ldrb	r0, [r0, #8]	@ zero_extendqisi2
 638 000a 002A     		cmp	r2, #0
 639 000c 08BF     		it	eq
 640 000e F0EE477A 		vmoveq.f32	s15, s14
 641 0012 C1ED007A 		vstr.32	s15, [r1]
 642 0016 7047     		bx	lr
 643              		.size	_ZNK26DhtSensorHardwareInterface24GetTemperatureOrHumidityERfb, .-_ZNK26DhtSensorHardwareInt
 644              		.section	.text._ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9S
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRe
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu fpv4-sp-d16
 652              		.type	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRef,
 653              	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRef:
 654              		@ args = 8, pretend = 0, frame = 8
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 657 0002 85B0     		sub	sp, sp, #20
 658 0004 0C46     		mov	r4, r1
 659 0006 0646     		mov	r6, r0
 660 0008 1546     		mov	r5, r2
 661 000a 02A8     		add	r0, sp, #8
 662 000c 4FF0FF32 		mov	r2, #-1
 663 0010 1649     		ldr	r1, .L113
 664 0012 1F46     		mov	r7, r3
 665 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 666 0018 072C     		cmp	r4, #7
 667 001a 0ED8     		bhi	.L107
 668 001c 144B     		ldr	r3, .L113+4
 669 001e 53F82400 		ldr	r0, [r3, r4, lsl #2]
 670 0022 50B1     		cbz	r0, .L107
 671 0024 40F23113 		movw	r3, #305
 672 0028 9D42     		cmp	r5, r3
 673 002a 11D0     		beq	.L112
 674 002c 02A8     		add	r0, sp, #8
 675 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 676 0032 0124     		movs	r4, #1
 677 0034 2046     		mov	r0, r4
 678 0036 05B0     		add	sp, sp, #20
 679              		@ sp needed
 680 0038 F0BD     		pop	{r4, r5, r6, r7, pc}
 681              	.L107:
 682 003a 0E49     		ldr	r1, .L113+8
 683 003c 0B98     		ldr	r0, [sp, #44]
 684 003e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 13


 685 0042 02A8     		add	r0, sp, #8
 686 0044 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 687 0048 0224     		movs	r4, #2
 688 004a 2046     		mov	r0, r4
 689 004c 05B0     		add	sp, sp, #20
 690              		@ sp needed
 691 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 692              	.L112:
 693 0050 0B9B     		ldr	r3, [sp, #44]
 694 0052 0093     		str	r3, [sp]
 695 0054 3A46     		mov	r2, r7
 696 0056 3146     		mov	r1, r6
 697 0058 0A9B     		ldr	r3, [sp, #40]
 698 005a FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef.part
 699 005e 0446     		mov	r4, r0
 700 0060 02A8     		add	r0, sp, #8
 701 0062 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 702 0066 2046     		mov	r0, r4
 703 0068 05B0     		add	sp, sp, #20
 704              		@ sp needed
 705 006a F0BD     		pop	{r4, r5, r6, r7, pc}
 706              	.L114:
 707              		.align	2
 708              	.L113:
 709 006c 00000000 		.word	.LANCHOR3
 710 0070 00000000 		.word	.LANCHOR4
 711 0074 00000000 		.word	.LC3
 712              		.size	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRef,
 713              		.section	.text._ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 714              		.align	1
 715              		.p2align 2,,3
 716              		.global	_ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu fpv4-sp-d16
 721              		.type	_ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 722              	_ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
 723              		@ args = 4, pretend = 0, frame = 0
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 30B5     		push	{r4, r5, lr}
 726 0002 83B0     		sub	sp, sp, #12
 727 0004 4468     		ldr	r4, [r0, #4]
 728 0006 069D     		ldr	r5, [sp, #24]
 729 0008 CDE90035 		strd	r3, r5, [sp]
 730 000c 1346     		mov	r3, r2
 731 000e 0A46     		mov	r2, r1
 732 0010 A4F5C871 		sub	r1, r4, #400
 733 0014 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRef
 734 0018 03B0     		add	sp, sp, #12
 735              		@ sp needed
 736 001a 30BD     		pop	{r4, r5, pc}
 737              		.size	_ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN20DhtTemperatureSenso
 738              		.section	.text._ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	_ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu fpv4-sp-d16
 746              		.type	_ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 747              	_ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef:
 748              		@ args = 4, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750 0000 30B5     		push	{r4, r5, lr}
 751 0002 83B0     		sub	sp, sp, #12
 752 0004 4468     		ldr	r4, [r0, #4]
 753 0006 069D     		ldr	r5, [sp, #24]
 754 0008 CDE90035 		strd	r3, r5, [sp]
 755 000c 1346     		mov	r3, r2
 756 000e 0A46     		mov	r2, r1
 757 0010 A4F5E171 		sub	r1, r4, #450
 758 0014 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK9StringRef
 759 0018 03B0     		add	sp, sp, #12
 760              		@ sp needed
 761 001a 30BD     		pop	{r4, r5, pc}
 762              		.size	_ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN17DhtHumiditySensor9Conf
 763              		.section	.text._ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9St
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu fpv4-sp-d16
 771              		.type	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef, 
 772              	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef:
 773              		@ args = 8, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775              		@ link register save eliminated.
 776 0000 70B4     		push	{r4, r5, r6}
 777 0002 40F23114 		movw	r4, #305
 778 0006 A242     		cmp	r2, r4
 779 0008 1D46     		mov	r5, r3
 780 000a DDE90336 		ldrd	r3, r6, [sp, #12]
 781 000e 02D0     		beq	.L122
 782 0010 0120     		movs	r0, #1
 783 0012 70BC     		pop	{r4, r5, r6}
 784 0014 7047     		bx	lr
 785              	.L122:
 786 0016 0396     		str	r6, [sp, #12]
 787 0018 2A46     		mov	r2, r5
 788 001a 70BC     		pop	{r4, r5, r6}
 789 001c FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef.part.
 790              		.size	_ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9StringRef, 
 791              		.section	.text._ZN26DhtSensorHardwareInterface6CreateEj,"ax",%progbits
 792              		.align	1
 793              		.p2align 2,,3
 794              		.global	_ZN26DhtSensorHardwareInterface6CreateEj
 795              		.syntax unified
 796              		.thumb
 797              		.thumb_func
 798              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 15


 799              		.type	_ZN26DhtSensorHardwareInterface6CreateEj, %function
 800              	_ZN26DhtSensorHardwareInterface6CreateEj:
 801              		@ args = 0, pretend = 0, frame = 8
 802              		@ frame_needed = 0, uses_anonymous_args = 0
 803 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 804 0004 0728     		cmp	r0, #7
 805 0006 87B0     		sub	sp, sp, #28
 806 0008 16D8     		bhi	.L127
 807 000a 0446     		mov	r4, r0
 808 000c 284D     		ldr	r5, .L131
 809 000e 2949     		ldr	r1, .L131+4
 810 0010 04A8     		add	r0, sp, #16
 811 0012 4FF0FF32 		mov	r2, #-1
 812 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 813 001a 55F82460 		ldr	r6, [r5, r4, lsl #2]
 814 001e 86B1     		cbz	r6, .L129
 815 0020 254F     		ldr	r7, .L131+8
 816 0022 3E68     		ldr	r6, [r7]
 817 0024 2EB3     		cbz	r6, .L130
 818              	.L126:
 819 0026 04A8     		add	r0, sp, #16
 820 0028 55F82440 		ldr	r4, [r5, r4, lsl #2]
 821 002c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 822 0030 2046     		mov	r0, r4
 823 0032 07B0     		add	sp, sp, #28
 824              		@ sp needed
 825 0034 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 826              	.L127:
 827 0038 0024     		movs	r4, #0
 828 003a 2046     		mov	r0, r4
 829 003c 07B0     		add	sp, sp, #28
 830              		@ sp needed
 831 003e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 832              	.L129:
 833 0042 7420     		movs	r0, #116
 834 0044 FFF7FEFF 		bl	_Znwj
 835 0048 1C4B     		ldr	r3, .L131+12
 836 004a 4660     		str	r6, [r0, #4]
 837 004c 0746     		mov	r7, r0
 838 004e 1A5D     		ldrb	r2, [r3, r4]	@ zero_extendqisi2
 839 0050 1B4B     		ldr	r3, .L131+16
 840 0052 4661     		str	r6, [r0, #20]
 841 0054 0B21     		movs	r1, #11
 842 0056 0172     		strb	r1, [r0, #8]
 843 0058 3A70     		strb	r2, [r7]
 844 005a FB60     		str	r3, [r7, #12]	@ float
 845 005c 3B61     		str	r3, [r7, #16]	@ float
 846 005e 1046     		mov	r0, r2
 847 0060 0121     		movs	r1, #1
 848 0062 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 849 0066 45F82470 		str	r7, [r5, r4, lsl #2]
 850 006a 134F     		ldr	r7, .L131+8
 851 006c 3E68     		ldr	r6, [r7]
 852 006e 002E     		cmp	r6, #0
 853 0070 D9D1     		bne	.L126
 854              	.L130:
 855 0072 4FF4F870 		mov	r0, #496
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 16


 856 0076 FFF7FEFF 		bl	_Znwj
 857 007a 0222     		movs	r2, #2
 858 007c 8046     		mov	r8, r0
 859 007e 00F10809 		add	r9, r0, #8
 860 0082 00F16003 		add	r3, r0, #96
 861 0086 CDE90139 		strd	r3, r9, [sp, #4]
 862 008a 0092     		str	r2, [sp]
 863 008c 3346     		mov	r3, r6
 864 008e 6422     		movs	r2, #100
 865 0090 0660     		str	r6, [r0]
 866 0092 0C49     		ldr	r1, .L131+20
 867 0094 0C48     		ldr	r0, .L131+24
 868 0096 C7F80080 		str	r8, [r7]
 869 009a FFF7FEFF 		bl	xTaskCreateStatic
 870 009e 0B4B     		ldr	r3, .L131+28
 871 00a0 C8F80090 		str	r9, [r8]
 872 00a4 1A68     		ldr	r2, [r3]
 873 00a6 C8F80420 		str	r2, [r8, #4]
 874 00aa C3F80080 		str	r8, [r3]
 875 00ae BAE7     		b	.L126
 876              	.L132:
 877              		.align	2
 878              	.L131:
 879 00b0 00000000 		.word	.LANCHOR4
 880 00b4 00000000 		.word	.LANCHOR3
 881 00b8 00000000 		.word	.LANCHOR6
 882 00bc 00000000 		.word	.LANCHOR5
 883 00c0 0000FA44 		.word	1157234688
 884 00c4 00000000 		.word	.LC4
 885 00c8 00000000 		.word	DhtTask
 886 00cc 00000000 		.word	_ZN8TaskBase8taskListE
 887              		.size	_ZN26DhtSensorHardwareInterface6CreateEj, .-_ZN26DhtSensorHardwareInterface6CreateEj
 888              		.section	.text._ZN20DhtTemperatureSensor4InitEv,"ax",%progbits
 889              		.align	1
 890              		.p2align 2,,3
 891              		.global	_ZN20DhtTemperatureSensor4InitEv
 892              		.syntax unified
 893              		.thumb
 894              		.thumb_func
 895              		.fpu fpv4-sp-d16
 896              		.type	_ZN20DhtTemperatureSensor4InitEv, %function
 897              	_ZN20DhtTemperatureSensor4InitEv:
 898              		@ args = 0, pretend = 0, frame = 0
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900              		@ link register save eliminated.
 901 0000 4068     		ldr	r0, [r0, #4]
 902 0002 A0F5C870 		sub	r0, r0, #400
 903 0006 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface6CreateEj
 904              		.size	_ZN20DhtTemperatureSensor4InitEv, .-_ZN20DhtTemperatureSensor4InitEv
 905 000a 00BF     		.section	.text._ZN17DhtHumiditySensor4InitEv,"ax",%progbits
 906              		.align	1
 907              		.p2align 2,,3
 908              		.global	_ZN17DhtHumiditySensor4InitEv
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 17


 913              		.type	_ZN17DhtHumiditySensor4InitEv, %function
 914              	_ZN17DhtHumiditySensor4InitEv:
 915              		@ args = 0, pretend = 0, frame = 0
 916              		@ frame_needed = 0, uses_anonymous_args = 0
 917              		@ link register save eliminated.
 918 0000 4068     		ldr	r0, [r0, #4]
 919 0002 A0F5E170 		sub	r0, r0, #450
 920 0006 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface6CreateEj
 921              		.size	_ZN17DhtHumiditySensor4InitEv, .-_ZN17DhtHumiditySensor4InitEv
 922 000a 00BF     		.section	.text._ZN26DhtSensorHardwareInterface10InitStaticEv,"ax",%progbits
 923              		.align	1
 924              		.p2align 2,,3
 925              		.global	_ZN26DhtSensorHardwareInterface10InitStaticEv
 926              		.syntax unified
 927              		.thumb
 928              		.thumb_func
 929              		.fpu fpv4-sp-d16
 930              		.type	_ZN26DhtSensorHardwareInterface10InitStaticEv, %function
 931              	_ZN26DhtSensorHardwareInterface10InitStaticEv:
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934              		@ link register save eliminated.
 935 0000 0149     		ldr	r1, .L136
 936 0002 0248     		ldr	r0, .L136+4
 937 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 938              	.L137:
 939              		.align	2
 940              	.L136:
 941 0008 00000000 		.word	.LC5
 942 000c 00000000 		.word	.LANCHOR3
 943              		.size	_ZN26DhtSensorHardwareInterface10InitStaticEv, .-_ZN26DhtSensorHardwareInterface10InitStatic
 944              		.section	.text._ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb,"ax",%progbits
 945              		.align	1
 946              		.p2align 2,,3
 947              		.global	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb
 948              		.syntax unified
 949              		.thumb
 950              		.thumb_func
 951              		.fpu fpv4-sp-d16
 952              		.type	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb, %function
 953              	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb:
 954              		@ args = 0, pretend = 0, frame = 0
 955              		@ frame_needed = 0, uses_anonymous_args = 0
 956              		@ link register save eliminated.
 957 0000 0728     		cmp	r0, #7
 958 0002 01D8     		bhi	.L142
 959 0004 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb.part.2
 960              	.L142:
 961 0008 014A     		ldr	r2, .L143
 962 000a 0A60     		str	r2, [r1]	@ float
 963 000c 0A20     		movs	r0, #10
 964 000e 7047     		bx	lr
 965              	.L144:
 966              		.align	2
 967              	.L143:
 968 0010 0000FA44 		.word	1157234688
 969              		.size	_ZN26DhtSensorHardwareInterface24GetTemperatureOrHumidityEjRfb, .-_ZN26DhtSensorHardwareInte
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 18


 970              		.section	.text._ZN26DhtSensorHardwareInterface9InterruptEv,"ax",%progbits
 971              		.align	1
 972              		.p2align 2,,3
 973              		.global	_ZN26DhtSensorHardwareInterface9InterruptEv
 974              		.syntax unified
 975              		.thumb
 976              		.thumb_func
 977              		.fpu fpv4-sp-d16
 978              		.type	_ZN26DhtSensorHardwareInterface9InterruptEv, %function
 979              	_ZN26DhtSensorHardwareInterface9InterruptEv:
 980              		@ args = 0, pretend = 0, frame = 0
 981              		@ frame_needed = 0, uses_anonymous_args = 0
 982              		@ link register save eliminated.
 983 0000 C369     		ldr	r3, [r0, #28]
 984 0002 282B     		cmp	r3, #40
 985 0004 00D9     		bls	.L147
 986 0006 7047     		bx	lr
 987              	.L147:
 988 0008 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface9InterruptEv.part.3
 989              		.size	_ZN26DhtSensorHardwareInterface9InterruptEv, .-_ZN26DhtSensorHardwareInterface9InterruptEv
 990              		.section	.text._ZN26DhtSensorHardwareInterface11TakeReadingEv,"ax",%progbits
 991              		.align	1
 992              		.p2align 2,,3
 993              		.global	_ZN26DhtSensorHardwareInterface11TakeReadingEv
 994              		.syntax unified
 995              		.thumb
 996              		.thumb_func
 997              		.fpu fpv4-sp-d16
 998              		.type	_ZN26DhtSensorHardwareInterface11TakeReadingEv, %function
 999              	_ZN26DhtSensorHardwareInterface11TakeReadingEv:
 1000              		@ args = 0, pretend = 0, frame = 0
 1001              		@ frame_needed = 0, uses_anonymous_args = 0
 1002              		@ link register save eliminated.
 1003 0000 4368     		ldr	r3, [r0, #4]
 1004 0002 03B9     		cbnz	r3, .L150
 1005 0004 7047     		bx	lr
 1006              	.L150:
 1007 0006 FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5
 1008              		.size	_ZN26DhtSensorHardwareInterface11TakeReadingEv, .-_ZN26DhtSensorHardwareInterface11TakeReadi
 1009 000a 00BF     		.section	.text._ZN26DhtSensorHardwareInterface10SensorTaskEv,"ax",%progbits
 1010              		.align	1
 1011              		.p2align 2,,3
 1012              		.global	_ZN26DhtSensorHardwareInterface10SensorTaskEv
 1013              		.syntax unified
 1014              		.thumb
 1015              		.thumb_func
 1016              		.fpu fpv4-sp-d16
 1017              		.type	_ZN26DhtSensorHardwareInterface10SensorTaskEv, %function
 1018              	_ZN26DhtSensorHardwareInterface10SensorTaskEv:
 1019              		@ args = 0, pretend = 0, frame = 8
 1020              		@ frame_needed = 0, uses_anonymous_args = 0
 1021 0000 70B5     		push	{r4, r5, r6, lr}
 1022 0002 0E4E     		ldr	r6, .L163
 1023 0004 0E4D     		ldr	r5, .L163+4
 1024 0006 82B0     		sub	sp, sp, #8
 1025              	.L153:
 1026 0008 0E4C     		ldr	r4, .L163+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 19


 1027 000a 07E0     		b	.L154
 1028              	.L152:
 1029 000c 6846     		mov	r0, sp
 1030 000e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1031 0012 FA20     		movs	r0, #250
 1032 0014 FFF7FEFF 		bl	_Z5delaym
 1033 0018 B442     		cmp	r4, r6
 1034 001a F5D0     		beq	.L153
 1035              	.L154:
 1036 001c 4FF0FF32 		mov	r2, #-1
 1037 0020 2946     		mov	r1, r5
 1038 0022 6846     		mov	r0, sp
 1039 0024 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1040 0028 54F8040F 		ldr	r0, [r4, #4]!
 1041 002c 0028     		cmp	r0, #0
 1042 002e EDD0     		beq	.L152
 1043 0030 4368     		ldr	r3, [r0, #4]
 1044 0032 002B     		cmp	r3, #0
 1045 0034 EAD0     		beq	.L152
 1046 0036 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface11TakeReadingEv.part.5
 1047 003a E7E7     		b	.L152
 1048              	.L164:
 1049              		.align	2
 1050              	.L163:
 1051 003c 1C000000 		.word	.LANCHOR4+28
 1052 0040 00000000 		.word	.LANCHOR3
 1053 0044 FCFFFFFF 		.word	.LANCHOR4-4
 1054              		.size	_ZN26DhtSensorHardwareInterface10SensorTaskEv, .-_ZN26DhtSensorHardwareInterface10SensorTask
 1055              		.section	.text.DhtTask,"ax",%progbits
 1056              		.align	1
 1057              		.p2align 2,,3
 1058              		.global	DhtTask
 1059              		.syntax unified
 1060              		.thumb
 1061              		.thumb_func
 1062              		.fpu fpv4-sp-d16
 1063              		.type	DhtTask, %function
 1064              	DhtTask:
 1065              		@ Volatile: function does not return.
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068 0000 08B5     		push	{r3, lr}
 1069 0002 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface10SensorTaskEv
 1070              		.size	DhtTask, .-DhtTask
 1071 0006 00BF     		.section	.text._ZN26DhtSensorHardwareInterface15ProcessReadingsEv,"ax",%progbits
 1072              		.align	1
 1073              		.p2align 2,,3
 1074              		.global	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv
 1075              		.syntax unified
 1076              		.thumb
 1077              		.thumb_func
 1078              		.fpu fpv4-sp-d16
 1079              		.type	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv, %function
 1080              	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv:
 1081              		@ args = 0, pretend = 0, frame = 0
 1082              		@ frame_needed = 0, uses_anonymous_args = 0
 1083              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 20


 1084 0000 C269     		ldr	r2, [r0, #28]
 1085 0002 292A     		cmp	r2, #41
 1086 0004 04D1     		bne	.L168
 1087 0006 038C     		ldrh	r3, [r0, #32]
 1088 0008 2D2B     		cmp	r3, #45
 1089 000a 01D9     		bls	.L168
 1090 000c FFF7FEBF 		b	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv.part.4
 1091              	.L168:
 1092 0010 0620     		movs	r0, #6
 1093 0012 7047     		bx	lr
 1094              		.size	_ZN26DhtSensorHardwareInterface15ProcessReadingsEv, .-_ZN26DhtSensorHardwareInterface15Proce
 1095              		.section	.text._ZN20DhtTemperatureSensorC2Ej,"ax",%progbits
 1096              		.align	1
 1097              		.p2align 2,,3
 1098              		.global	_ZN20DhtTemperatureSensorC2Ej
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv4-sp-d16
 1103              		.type	_ZN20DhtTemperatureSensorC2Ej, %function
 1104              	_ZN20DhtTemperatureSensorC2Ej:
 1105              		@ args = 0, pretend = 0, frame = 0
 1106              		@ frame_needed = 0, uses_anonymous_args = 0
 1107 0000 10B5     		push	{r4, lr}
 1108 0002 044A     		ldr	r2, .L173
 1109 0004 0446     		mov	r4, r0
 1110 0006 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 1111 000a 034B     		ldr	r3, .L173+4
 1112 000c 2360     		str	r3, [r4]
 1113 000e 2046     		mov	r0, r4
 1114 0010 10BD     		pop	{r4, pc}
 1115              	.L174:
 1116 0012 00BF     		.align	2
 1117              	.L173:
 1118 0014 00000000 		.word	.LC6
 1119 0018 08000000 		.word	.LANCHOR0+8
 1120              		.size	_ZN20DhtTemperatureSensorC2Ej, .-_ZN20DhtTemperatureSensorC2Ej
 1121              		.global	_ZN20DhtTemperatureSensorC1Ej
 1122              		.thumb_set _ZN20DhtTemperatureSensorC1Ej,_ZN20DhtTemperatureSensorC2Ej
 1123              		.section	.text._ZN17DhtHumiditySensorC2Ej,"ax",%progbits
 1124              		.align	1
 1125              		.p2align 2,,3
 1126              		.global	_ZN17DhtHumiditySensorC2Ej
 1127              		.syntax unified
 1128              		.thumb
 1129              		.thumb_func
 1130              		.fpu fpv4-sp-d16
 1131              		.type	_ZN17DhtHumiditySensorC2Ej, %function
 1132              	_ZN17DhtHumiditySensorC2Ej:
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135 0000 10B5     		push	{r4, lr}
 1136 0002 044A     		ldr	r2, .L177
 1137 0004 0446     		mov	r4, r0
 1138 0006 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 1139 000a 034B     		ldr	r3, .L177+4
 1140 000c 2360     		str	r3, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 21


 1141 000e 2046     		mov	r0, r4
 1142 0010 10BD     		pop	{r4, pc}
 1143              	.L178:
 1144 0012 00BF     		.align	2
 1145              	.L177:
 1146 0014 00000000 		.word	.LC7
 1147 0018 08000000 		.word	.LANCHOR1+8
 1148              		.size	_ZN17DhtHumiditySensorC2Ej, .-_ZN17DhtHumiditySensorC2Ej
 1149              		.global	_ZN17DhtHumiditySensorC1Ej
 1150              		.thumb_set _ZN17DhtHumiditySensorC1Ej,_ZN17DhtHumiditySensorC2Ej
 1151              		.section	.text.startup._GLOBAL__sub_I__ZN26DhtSensorHardwareInterface8dhtMutexE,"ax",%progbits
 1152              		.align	1
 1153              		.p2align 2,,3
 1154              		.syntax unified
 1155              		.thumb
 1156              		.thumb_func
 1157              		.fpu fpv4-sp-d16
 1158              		.type	_GLOBAL__sub_I__ZN26DhtSensorHardwareInterface8dhtMutexE, %function
 1159              	_GLOBAL__sub_I__ZN26DhtSensorHardwareInterface8dhtMutexE:
 1160              		@ args = 0, pretend = 0, frame = 0
 1161              		@ frame_needed = 0, uses_anonymous_args = 0
 1162              		@ link register save eliminated.
 1163 0000 014B     		ldr	r3, .L180
 1164 0002 0022     		movs	r2, #0
 1165 0004 1A60     		str	r2, [r3]
 1166 0006 7047     		bx	lr
 1167              	.L181:
 1168              		.align	2
 1169              	.L180:
 1170 0008 00000000 		.word	.LANCHOR3
 1171              		.size	_GLOBAL__sub_I__ZN26DhtSensorHardwareInterface8dhtMutexE, .-_GLOBAL__sub_I__ZN26DhtSensorHar
 1172              		.section	.init_array,"aw",%init_array
 1173              		.align	2
 1174 0000 00000000 		.word	_GLOBAL__sub_I__ZN26DhtSensorHardwareInterface8dhtMutexE(target1)
 1175              		.global	_ZTV20DhtTemperatureSensor
 1176              		.global	_ZTV17DhtHumiditySensor
 1177              		.global	_ZN26DhtSensorHardwareInterface13activeSensorsE
 1178              		.global	_ZN26DhtSensorHardwareInterface7dhtTaskE
 1179              		.global	_ZN26DhtSensorHardwareInterface8dhtMutexE
 1180              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1181              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1182              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1183              	_ZL28cpu_irq_prev_interrupt_state:
 1184 0000 00       		.space	1
 1185              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1186              		.align	2
 1187              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1188              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1189              	_ZL32cpu_irq_critical_section_counter:
 1190 0000 00000000 		.space	4
 1191              		.section	.bss._ZN26DhtSensorHardwareInterface13activeSensorsE,"aw",%nobits
 1192              		.align	2
 1193              		.set	.LANCHOR4,. + 0
 1194              		.type	_ZN26DhtSensorHardwareInterface13activeSensorsE, %object
 1195              		.size	_ZN26DhtSensorHardwareInterface13activeSensorsE, 32
 1196              	_ZN26DhtSensorHardwareInterface13activeSensorsE:
 1197 0000 00000000 		.space	32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 22


 1197      00000000 
 1197      00000000 
 1197      00000000 
 1197      00000000 
 1198              		.section	.bss._ZN26DhtSensorHardwareInterface7dhtTaskE,"aw",%nobits
 1199              		.align	2
 1200              		.set	.LANCHOR6,. + 0
 1201              		.type	_ZN26DhtSensorHardwareInterface7dhtTaskE, %object
 1202              		.size	_ZN26DhtSensorHardwareInterface7dhtTaskE, 4
 1203              	_ZN26DhtSensorHardwareInterface7dhtTaskE:
 1204 0000 00000000 		.space	4
 1205              		.section	.bss._ZN26DhtSensorHardwareInterface8dhtMutexE,"aw",%nobits
 1206              		.align	2
 1207              		.set	.LANCHOR3,. + 0
 1208              		.type	_ZN26DhtSensorHardwareInterface8dhtMutexE, %object
 1209              		.size	_ZN26DhtSensorHardwareInterface8dhtMutexE, 96
 1210              	_ZN26DhtSensorHardwareInterface8dhtMutexE:
 1211 0000 00000000 		.space	96
 1211      00000000 
 1211      00000000 
 1211      00000000 
 1211      00000000 
 1212              		.section	.rodata.CSWTCH.34,"a",%progbits
 1213              		.align	2
 1214              		.set	.LANCHOR2,. + 0
 1215              		.type	CSWTCH.34, %object
 1216              		.size	CSWTCH.34, 12
 1217              	CSWTCH.34:
 1218 0000 00000000 		.word	.LC8
 1219 0004 08000000 		.word	.LC9
 1220 0008 10000000 		.word	.LC10
 1221              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 1222              		.align	2
 1223              		.set	.LANCHOR5,. + 0
 1224              		.type	_ZL19SpiTempSensorCsPins, %object
 1225              		.size	_ZL19SpiTempSensorCsPins, 8
 1226              	_ZL19SpiTempSensorCsPins:
 1227 0000 1C       		.byte	28
 1228 0001 32       		.byte	50
 1229 0002 33       		.byte	51
 1230 0003 34       		.byte	52
 1231 0004 18       		.byte	24
 1232 0005 61       		.byte	97
 1233 0006 62       		.byte	98
 1234 0007 63       		.byte	99
 1235              		.section	.rodata._ZN17DhtHumiditySensorC2Ej.str1.4,"aMS",%progbits,1
 1236              		.align	2
 1237              	.LC7:
 1238 0000 4448542D 		.ascii	"DHT-humidity\000"
 1238      68756D69 
 1238      64697479 
 1238      00
 1239              		.section	.rodata._ZN20DhtTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 1240              		.align	2
 1241              	.LC6:
 1242 0000 4448542D 		.ascii	"DHT-temperature\000"
 1242      74656D70 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 23


 1242      65726174 
 1242      75726500 
 1243              		.section	.rodata._ZN26DhtSensorHardwareInterface10InitStaticEv.str1.4,"aMS",%progbits,1
 1244              		.align	2
 1245              	.LC5:
 1246 0000 44485400 		.ascii	"DHT\000"
 1247              		.section	.rodata._ZN26DhtSensorHardwareInterface6CreateEj.str1.4,"aMS",%progbits,1
 1248              		.align	2
 1249              	.LC4:
 1250 0000 44485453 		.ascii	"DHTSENSOR\000"
 1250      454E534F 
 1250      5200
 1251              		.section	.rodata._ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjR11GCodeBufferRK9
 1252              		.align	2
 1253              	.LC0:
 1254 0000 756E6B6E 		.ascii	"unknown\000"
 1254      6F776E00 
 1255              	.LC1:
 1256 0008 496E7661 		.ascii	"Invalid DHT sensor type\000"
 1256      6C696420 
 1256      44485420 
 1256      73656E73 
 1256      6F722074 
 1257              	.LC2:
 1258 0020 2C207365 		.ascii	", sensor type %s\000"
 1258      6E736F72 
 1258      20747970 
 1258      65202573 
 1258      00
 1259              		.section	.rodata._ZN26DhtSensorHardwareInterface9ConfigureEP17TemperatureSensorjjjR11GCodeBufferRK
 1260              		.align	2
 1261              	.LC3:
 1262 0000 696E7661 		.ascii	"invalid channel\000"
 1262      6C696420 
 1262      6368616E 
 1262      6E656C00 
 1263              		.section	.rodata._ZTV17DhtHumiditySensor,"a",%progbits
 1264              		.align	2
 1265              		.set	.LANCHOR1,. + 0
 1266              		.type	_ZTV17DhtHumiditySensor, %object
 1267              		.size	_ZTV17DhtHumiditySensor, 28
 1268              	_ZTV17DhtHumiditySensor:
 1269 0000 00000000 		.word	0
 1270 0004 00000000 		.word	0
 1271 0008 00000000 		.word	_ZN17DhtHumiditySensor9ConfigureEjjR11GCodeBufferRK9StringRef
 1272 000c 00000000 		.word	_ZN17DhtHumiditySensor4InitEv
 1273 0010 00000000 		.word	_ZN17DhtHumiditySensor14GetTemperatureERf
 1274 0014 00000000 		.word	_ZN17DhtHumiditySensorD1Ev
 1275 0018 00000000 		.word	_ZN17DhtHumiditySensorD0Ev
 1276              		.section	.rodata._ZTV20DhtTemperatureSensor,"a",%progbits
 1277              		.align	2
 1278              		.set	.LANCHOR0,. + 0
 1279              		.type	_ZTV20DhtTemperatureSensor, %object
 1280              		.size	_ZTV20DhtTemperatureSensor, 28
 1281              	_ZTV20DhtTemperatureSensor:
 1282 0000 00000000 		.word	0
 1283 0004 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccie0jla.s 			page 24


 1284 0008 00000000 		.word	_ZN20DhtTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 1285 000c 00000000 		.word	_ZN20DhtTemperatureSensor4InitEv
 1286 0010 00000000 		.word	_ZN20DhtTemperatureSensor14GetTemperatureERf
 1287 0014 00000000 		.word	_ZN20DhtTemperatureSensorD1Ev
 1288 0018 00000000 		.word	_ZN20DhtTemperatureSensorD0Ev
 1289              		.section	.rodata.str1.4,"aMS",%progbits,1
 1290              		.align	2
 1291              	.LC8:
 1292 0000 44485431 		.ascii	"DHT11\000"
 1292      3100
 1293 0006 0000     		.space	2
 1294              	.LC9:
 1295 0008 44485432 		.ascii	"DHT21\000"
 1295      3100
 1296 000e 0000     		.space	2
 1297              	.LC10:
 1298 0010 44485432 		.ascii	"DHT22\000"
 1298      3200
 1299              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
