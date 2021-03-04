ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 1


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
  13              		.file	"USBSerial.cpp"
  14              		.text
  15              		.section	.text._ZN9SerialCDC4peekEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9SerialCDC4peekEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9SerialCDC4peekEv, %function
  24              	_ZN9SerialCDC4peekEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 4FF0FF30 		mov	r0, #-1
  29 0004 7047     		bx	lr
  30              		.size	_ZN9SerialCDC4peekEv, .-_ZN9SerialCDC4peekEv
  31 0006 00BF     		.section	.text._Z13core_vbus_off17CallbackParameter,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_Z13core_vbus_off17CallbackParameter
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_Z13core_vbus_off17CallbackParameter, %function
  40              	_Z13core_vbus_off17CallbackParameter:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 014B     		ldr	r3, .L4
  45 0002 0022     		movs	r2, #0
  46 0004 1A75     		strb	r2, [r3, #20]
  47 0006 7047     		bx	lr
  48              	.L5:
  49              		.align	2
  50              	.L4:
  51 0008 00000000 		.word	.LANCHOR0
  52              		.size	_Z13core_vbus_off17CallbackParameter, .-_Z13core_vbus_off17CallbackParameter
  53              		.section	.text._ZN9SerialCDCD2Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
  54              		.align	1
  55              		.p2align 2,,3
  56              		.weak	_ZN9SerialCDCD2Ev
  57              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu fpv4-sp-d16
  61              		.type	_ZN9SerialCDCD2Ev, %function
  62              	_ZN9SerialCDCD2Ev:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66 0000 7047     		bx	lr
  67              		.size	_ZN9SerialCDCD2Ev, .-_ZN9SerialCDCD2Ev
  68              		.weak	_ZN9SerialCDCD1Ev
  69              		.thumb_set _ZN9SerialCDCD1Ev,_ZN9SerialCDCD2Ev
  70 0002 00BF     		.section	.text._ZN9SerialCDC9availableEv,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	_ZN9SerialCDC9availableEv
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	_ZN9SerialCDC9availableEv, %function
  79              	_ZN9SerialCDC9availableEv:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  84 0002 00B9     		cbnz	r0, .L9
  85 0004 7047     		bx	lr
  86              	.L9:
  87 0006 FFF7FEBF 		b	udi_cdc_get_nb_received_data
  88              		.size	_ZN9SerialCDC9availableEv, .-_ZN9SerialCDC9availableEv
  89 000a 00BF     		.section	.text._ZN9SerialCDC4readEv,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	_ZN9SerialCDC4readEv
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	_ZN9SerialCDC4readEv, %function
  98              	_ZN9SerialCDC4readEv:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101 0000 08B5     		push	{r3, lr}
 102 0002 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 103 0006 18B1     		cbz	r0, .L11
 104 0008 BDE80840 		pop	{r3, lr}
 105 000c FFF7FEBF 		b	udi_cdc_getc
 106              	.L11:
 107 0010 4FF0FF30 		mov	r0, #-1
 108 0014 08BD     		pop	{r3, pc}
 109              		.size	_ZN9SerialCDC4readEv, .-_ZN9SerialCDC4readEv
 110 0016 00BF     		.section	.text._ZN9SerialCDC9readBytesEPcj,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN9SerialCDC9readBytesEPcj
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN9SerialCDC9readBytesEPcj, %function
 119              	_ZN9SerialCDC9readBytesEPcj:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 38B5     		push	{r3, r4, r5, lr}
 123 0002 0C46     		mov	r4, r1
 124 0004 1546     		mov	r5, r2
 125 0006 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 126 000a 00B9     		cbnz	r0, .L16
 127 000c 38BD     		pop	{r3, r4, r5, pc}
 128              	.L16:
 129 000e 2946     		mov	r1, r5
 130 0010 2046     		mov	r0, r4
 131 0012 BDE83840 		pop	{r3, r4, r5, lr}
 132 0016 FFF7FEBF 		b	udi_cdc_read_buf
 133              		.size	_ZN9SerialCDC9readBytesEPcj, .-_ZN9SerialCDC9readBytesEPcj
 134 001a 00BF     		.section	.text._ZN9SerialCDC5flushEv,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN9SerialCDC5flushEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZN9SerialCDC5flushEv, %function
 143              	_ZN9SerialCDC5flushEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146 0000 10B5     		push	{r4, lr}
 147 0002 0446     		mov	r4, r0
 148 0004 04E0     		b	.L19
 149              	.L25:
 150 0006 FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 151 000a 2369     		ldr	r3, [r4, #16]
 152 000c 9842     		cmp	r0, r3
 153 000e 02D2     		bcs	.L17
 154              	.L19:
 155 0010 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 156 0012 002B     		cmp	r3, #0
 157 0014 F7D1     		bne	.L25
 158              	.L17:
 159 0016 10BD     		pop	{r4, pc}
 160              		.size	_ZN9SerialCDC5flushEv, .-_ZN9SerialCDC5flushEv
 161              		.section	.text._ZNK9SerialCDC8canWriteEv,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	_ZNK9SerialCDC8canWriteEv
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	_ZNK9SerialCDC8canWriteEv, %function
 170              	_ZNK9SerialCDC8canWriteEv:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 175 0002 00B9     		cbnz	r0, .L28
 176 0004 7047     		bx	lr
 177              	.L28:
 178 0006 FFF7FEBF 		b	udi_cdc_get_free_tx_buffer
 179              		.size	_ZNK9SerialCDC8canWriteEv, .-_ZNK9SerialCDC8canWriteEv
 180 000a 00BF     		.section	.text._ZN9SerialCDC5writeEh,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZN9SerialCDC5writeEh
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	_ZN9SerialCDC5writeEh, %function
 189              	_ZN9SerialCDC5writeEh:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 08B5     		push	{r3, lr}
 193 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 194 0004 13B1     		cbz	r3, .L30
 195 0006 0846     		mov	r0, r1
 196 0008 FFF7FEFF 		bl	udi_cdc_putc
 197              	.L30:
 198 000c 0120     		movs	r0, #1
 199 000e 08BD     		pop	{r3, pc}
 200              		.size	_ZN9SerialCDC5writeEh, .-_ZN9SerialCDC5writeEh
 201              		.section	.text._ZN9SerialCDCD0Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
 202              		.align	1
 203              		.p2align 2,,3
 204              		.weak	_ZN9SerialCDCD0Ev
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv4-sp-d16
 209              		.type	_ZN9SerialCDCD0Ev, %function
 210              	_ZN9SerialCDCD0Ev:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213 0000 10B5     		push	{r4, lr}
 214 0002 1821     		movs	r1, #24
 215 0004 0446     		mov	r4, r0
 216 0006 FFF7FEFF 		bl	_ZdlPvj
 217 000a 2046     		mov	r0, r4
 218 000c 10BD     		pop	{r4, pc}
 219              		.size	_ZN9SerialCDCD0Ev, .-_ZN9SerialCDCD0Ev
 220 000e 00BF     		.section	.text._ZN9SerialCDC5writeEPKhj,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZN9SerialCDC5writeEPKhj
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZN9SerialCDC5writeEPKhj, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 5


 229              	_ZN9SerialCDC5writeEPKhj:
 230              		@ args = 0, pretend = 0, frame = 8
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 233 0002 03B1     		cbz	r3, .L46
 234 0004 0AB9     		cbnz	r2, .L49
 235              	.L46:
 236 0006 1046     		mov	r0, r2
 237 0008 7047     		bx	lr
 238              	.L49:
 239 000a 00B5     		push	{lr}
 240 000c 83B0     		sub	sp, sp, #12
 241 000e 0846     		mov	r0, r1
 242 0010 1146     		mov	r1, r2
 243 0012 0192     		str	r2, [sp, #4]
 244 0014 FFF7FEFF 		bl	udi_cdc_write_buf
 245 0018 019A     		ldr	r2, [sp, #4]
 246 001a 121A     		subs	r2, r2, r0
 247 001c 1046     		mov	r0, r2
 248 001e 03B0     		add	sp, sp, #12
 249              		@ sp needed
 250 0020 5DF804FB 		ldr	pc, [sp], #4
 251              		.size	_ZN9SerialCDC5writeEPKhj, .-_ZN9SerialCDC5writeEPKhj
 252              		.section	.text._ZN9SerialCDCC2Ev,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	_ZN9SerialCDCC2Ev
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu fpv4-sp-d16
 260              		.type	_ZN9SerialCDCC2Ev, %function
 261              	_ZN9SerialCDCC2Ev:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 4FF47A72 		mov	r2, #1000
 266 0004 10B4     		push	{r4}
 267 0006 064C     		ldr	r4, .L52
 268 0008 8260     		str	r2, [r0, #8]
 269 000a 0121     		movs	r1, #1
 270 000c 0022     		movs	r2, #0
 271 000e 0460     		str	r4, [r0]
 272 0010 0161     		str	r1, [r0, #16]
 273 0012 4260     		str	r2, [r0, #4]
 274 0014 C260     		str	r2, [r0, #12]
 275 0016 0275     		strb	r2, [r0, #20]
 276 0018 5DF8044B 		ldr	r4, [sp], #4
 277 001c 7047     		bx	lr
 278              	.L53:
 279 001e 00BF     		.align	2
 280              	.L52:
 281 0020 08000000 		.word	.LANCHOR1+8
 282              		.size	_ZN9SerialCDCC2Ev, .-_ZN9SerialCDCC2Ev
 283              		.global	_ZN9SerialCDCC1Ev
 284              		.thumb_set _ZN9SerialCDCC1Ev,_ZN9SerialCDCC2Ev
 285              		.section	.text._ZN9SerialCDC5StartEh,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	_ZN9SerialCDC5StartEh
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	_ZN9SerialCDC5StartEh, %function
 294              	_ZN9SerialCDC5StartEh:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 70B5     		push	{r4, r5, r6, lr}
 298 0002 0C46     		mov	r4, r1
 299 0004 FFF7FEFF 		bl	udc_start
 300 0008 FF2C     		cmp	r4, #255
 301 000a 02D0     		beq	.L54
 302 000c 094B     		ldr	r3, .L61
 303 000e 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 304 0010 05B1     		cbz	r5, .L60
 305              	.L54:
 306 0012 70BD     		pop	{r4, r5, r6, pc}
 307              	.L60:
 308 0014 0120     		movs	r0, #1
 309 0016 2A46     		mov	r2, r5
 310 0018 2946     		mov	r1, r5
 311 001a 1870     		strb	r0, [r3]
 312 001c 2046     		mov	r0, r4
 313 001e FFF7FEFF 		bl	pinModeDuet
 314 0022 2B46     		mov	r3, r5
 315 0024 2046     		mov	r0, r4
 316 0026 0422     		movs	r2, #4
 317 0028 0349     		ldr	r1, .L61+4
 318 002a BDE87040 		pop	{r4, r5, r6, lr}
 319 002e FFF7FEBF 		b	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 320              	.L62:
 321 0032 00BF     		.align	2
 322              	.L61:
 323 0034 00000000 		.word	.LANCHOR2
 324 0038 00000000 		.word	_Z13core_vbus_off17CallbackParameter
 325              		.size	_ZN9SerialCDC5StartEh, .-_ZN9SerialCDC5StartEh
 326              		.section	.text._ZN9SerialCDC3endEv,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.global	_ZN9SerialCDC3endEv
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu fpv4-sp-d16
 334              		.type	_ZN9SerialCDC3endEv, %function
 335              	_ZN9SerialCDC3endEv:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338              		@ link register save eliminated.
 339 0000 0023     		movs	r3, #0
 340 0002 0375     		strb	r3, [r0, #20]
 341 0004 FFF7FEBF 		b	udc_stop
 342              		.size	_ZN9SerialCDC3endEv, .-_ZN9SerialCDC3endEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 7


 343              		.section	.text._ZNK9SerialCDCcvbEv,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	_ZNK9SerialCDCcvbEv
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZNK9SerialCDCcvbEv, %function
 352              	_ZNK9SerialCDCcvbEv:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 357 0002 7047     		bx	lr
 358              		.size	_ZNK9SerialCDCcvbEv, .-_ZNK9SerialCDCcvbEv
 359              		.section	.text._ZN9SerialCDC15cdcSetConnectedEb,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	_ZN9SerialCDC15cdcSetConnectedEb
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv4-sp-d16
 367              		.type	_ZN9SerialCDC15cdcSetConnectedEb, %function
 368              	_ZN9SerialCDC15cdcSetConnectedEb:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371              		@ link register save eliminated.
 372 0000 0175     		strb	r1, [r0, #20]
 373 0002 7047     		bx	lr
 374              		.size	_ZN9SerialCDC15cdcSetConnectedEb, .-_ZN9SerialCDC15cdcSetConnectedEb
 375              		.section	.text._ZN9SerialCDC11cdcRxNotifyEv,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	_ZN9SerialCDC11cdcRxNotifyEv
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu fpv4-sp-d16
 383              		.type	_ZN9SerialCDC11cdcRxNotifyEv, %function
 384              	_ZN9SerialCDC11cdcRxNotifyEv:
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388 0000 7047     		bx	lr
 389              		.size	_ZN9SerialCDC11cdcRxNotifyEv, .-_ZN9SerialCDC11cdcRxNotifyEv
 390 0002 00BF     		.section	.text._ZN9SerialCDC16cdcTxEmptyNotifyEv,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	_ZN9SerialCDC16cdcTxEmptyNotifyEv
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu fpv4-sp-d16
 398              		.type	_ZN9SerialCDC16cdcTxEmptyNotifyEv, %function
 399              	_ZN9SerialCDC16cdcTxEmptyNotifyEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 0369     		ldr	r3, [r0, #16]
 403 0002 012B     		cmp	r3, #1
 404 0004 00D0     		beq	.L73
 405 0006 7047     		bx	lr
 406              	.L73:
 407 0008 10B5     		push	{r4, lr}
 408 000a 0446     		mov	r4, r0
 409 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 410 0010 2061     		str	r0, [r4, #16]
 411 0012 10BD     		pop	{r4, pc}
 412              		.size	_ZN9SerialCDC16cdcTxEmptyNotifyEv, .-_ZN9SerialCDC16cdcTxEmptyNotifyEv
 413              		.section	.text.core_cdc_enable,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	core_cdc_enable
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu fpv4-sp-d16
 421              		.type	core_cdc_enable, %function
 422              	core_cdc_enable:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426 0000 014B     		ldr	r3, .L75
 427 0002 0120     		movs	r0, #1
 428 0004 1875     		strb	r0, [r3, #20]
 429 0006 7047     		bx	lr
 430              	.L76:
 431              		.align	2
 432              	.L75:
 433 0008 00000000 		.word	.LANCHOR0
 434              		.size	core_cdc_enable, .-core_cdc_enable
 435              		.section	.text.core_cdc_disable,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.global	core_cdc_disable
 439              		.syntax unified
 440              		.thumb
 441              		.thumb_func
 442              		.fpu fpv4-sp-d16
 443              		.type	core_cdc_disable, %function
 444              	core_cdc_disable:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447              		@ link register save eliminated.
 448 0000 014B     		ldr	r3, .L78
 449 0002 0022     		movs	r2, #0
 450 0004 1A75     		strb	r2, [r3, #20]
 451 0006 7047     		bx	lr
 452              	.L79:
 453              		.align	2
 454              	.L78:
 455 0008 00000000 		.word	.LANCHOR0
 456              		.size	core_cdc_disable, .-core_cdc_disable
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 9


 457              		.section	.text.core_cdc_rx_notify,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	core_cdc_rx_notify
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	core_cdc_rx_notify, %function
 466              	core_cdc_rx_notify:
 467              		@ args = 0, pretend = 0, frame = 0
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469              		@ link register save eliminated.
 470 0000 7047     		bx	lr
 471              		.size	core_cdc_rx_notify, .-core_cdc_rx_notify
 472 0002 00BF     		.section	.text.core_cdc_tx_empty_notify,"ax",%progbits
 473              		.align	1
 474              		.p2align 2,,3
 475              		.global	core_cdc_tx_empty_notify
 476              		.syntax unified
 477              		.thumb
 478              		.thumb_func
 479              		.fpu fpv4-sp-d16
 480              		.type	core_cdc_tx_empty_notify, %function
 481              	core_cdc_tx_empty_notify:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484 0000 10B5     		push	{r4, lr}
 485 0002 044C     		ldr	r4, .L85
 486 0004 2369     		ldr	r3, [r4, #16]
 487 0006 012B     		cmp	r3, #1
 488 0008 00D0     		beq	.L84
 489 000a 10BD     		pop	{r4, pc}
 490              	.L84:
 491 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 492 0010 2061     		str	r0, [r4, #16]
 493 0012 10BD     		pop	{r4, pc}
 494              	.L86:
 495              		.align	2
 496              	.L85:
 497 0014 00000000 		.word	.LANCHOR0
 498              		.size	core_cdc_tx_empty_notify, .-core_cdc_tx_empty_notify
 499              		.section	.text.startup._GLOBAL__sub_I__ZN9SerialCDCC2Ev,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.syntax unified
 503              		.thumb
 504              		.thumb_func
 505              		.fpu fpv4-sp-d16
 506              		.type	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, %function
 507              	_GLOBAL__sub_I__ZN9SerialCDCC2Ev:
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 511 0000 30B4     		push	{r4, r5}
 512 0002 094B     		ldr	r3, .L89
 513 0004 0948     		ldr	r0, .L89+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 10


 514 0006 1860     		str	r0, [r3]
 515 0008 4FF47A74 		mov	r4, #1000
 516 000c 0125     		movs	r5, #1
 517 000e 9C60     		str	r4, [r3, #8]
 518 0010 0024     		movs	r4, #0
 519 0012 1D61     		str	r5, [r3, #16]
 520 0014 5C60     		str	r4, [r3, #4]
 521 0016 DC60     		str	r4, [r3, #12]
 522 0018 1C75     		strb	r4, [r3, #20]
 523 001a 054A     		ldr	r2, .L89+8
 524 001c 0549     		ldr	r1, .L89+12
 525 001e 1846     		mov	r0, r3
 526 0020 30BC     		pop	{r4, r5}
 527 0022 FFF7FEBF 		b	__aeabi_atexit
 528              	.L90:
 529 0026 00BF     		.align	2
 530              	.L89:
 531 0028 00000000 		.word	.LANCHOR0
 532 002c 08000000 		.word	.LANCHOR1+8
 533 0030 00000000 		.word	__dso_handle
 534 0034 00000000 		.word	_ZN9SerialCDCD1Ev
 535              		.size	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, .-_GLOBAL__sub_I__ZN9SerialCDCC2Ev
 536              		.section	.init_array,"aw",%init_array
 537              		.align	2
 538 0000 00000000 		.word	_GLOBAL__sub_I__ZN9SerialCDCC2Ev(target1)
 539              		.global	_ZTV9SerialCDC
 540              		.global	SerialUSB
 541              		.section	.bss.SerialUSB,"aw",%nobits
 542              		.align	2
 543              		.set	.LANCHOR0,. + 0
 544              		.type	SerialUSB, %object
 545              		.size	SerialUSB, 24
 546              	SerialUSB:
 547 0000 00000000 		.space	24
 547      00000000 
 547      00000000 
 547      00000000 
 547      00000000 
 548              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 549              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 550              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 551              	_ZL28cpu_irq_prev_interrupt_state:
 552 0000 00       		.space	1
 553              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 554              		.align	2
 555              		.type	_ZL32cpu_irq_critical_section_counter, %object
 556              		.size	_ZL32cpu_irq_critical_section_counter, 4
 557              	_ZL32cpu_irq_critical_section_counter:
 558 0000 00000000 		.space	4
 559              		.section	.bss._ZZN9SerialCDC5StartEhE19isInterruptAttached,"aw",%nobits
 560              		.set	.LANCHOR2,. + 0
 561              		.type	_ZZN9SerialCDC5StartEhE19isInterruptAttached, %object
 562              		.size	_ZZN9SerialCDC5StartEhE19isInterruptAttached, 1
 563              	_ZZN9SerialCDC5StartEhE19isInterruptAttached:
 564 0000 00       		.space	1
 565              		.section	.rodata._ZTV9SerialCDC,"a",%progbits
 566              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmJnXfg.s 			page 11


 567              		.set	.LANCHOR1,. + 0
 568              		.type	_ZTV9SerialCDC, %object
 569              		.size	_ZTV9SerialCDC, 48
 570              	_ZTV9SerialCDC:
 571 0000 00000000 		.word	0
 572 0004 00000000 		.word	0
 573 0008 00000000 		.word	_ZN9SerialCDCD1Ev
 574 000c 00000000 		.word	_ZN9SerialCDCD0Ev
 575 0010 00000000 		.word	_ZN9SerialCDC5writeEh
 576 0014 00000000 		.word	_ZN9SerialCDC5writeEPKhj
 577 0018 00000000 		.word	_ZN9SerialCDC9availableEv
 578 001c 00000000 		.word	_ZN9SerialCDC4readEv
 579 0020 00000000 		.word	_ZN9SerialCDC4peekEv
 580 0024 00000000 		.word	_ZN9SerialCDC5flushEv
 581 0028 00000000 		.word	_ZNK9SerialCDC8canWriteEv
 582 002c 00000000 		.word	_ZN9SerialCDC9readBytesEPcj
 583              		.hidden	__dso_handle
 584              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
