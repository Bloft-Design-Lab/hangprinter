ARM GAS  /tmp/ccKU2OK1.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"USBSerial.cpp"
  12              		.section	.text._ZN9SerialCDC4peekEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN9SerialCDC4peekEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9SerialCDC4peekEv, %function
  21              	_ZN9SerialCDC4peekEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 4FF0FF30 		mov	r0, #-1
  26 0004 7047     		bx	lr
  27              		.size	_ZN9SerialCDC4peekEv, .-_ZN9SerialCDC4peekEv
  28 0006 00BF     		.section	.text._Z13core_vbus_off17CallbackParameter,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	_Z13core_vbus_off17CallbackParameter
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_Z13core_vbus_off17CallbackParameter, %function
  37              	_Z13core_vbus_off17CallbackParameter:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 014B     		ldr	r3, .L3
  42 0002 0022     		movs	r2, #0
  43 0004 1A75     		strb	r2, [r3, #20]
  44 0006 7047     		bx	lr
  45              	.L4:
  46              		.align	2
  47              	.L3:
  48 0008 00000000 		.word	.LANCHOR0
  49              		.size	_Z13core_vbus_off17CallbackParameter, .-_Z13core_vbus_off17CallbackParameter
  50              		.section	.text._ZN9SerialCDCD2Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
  51              		.align	1
  52              		.p2align 2,,3
  53              		.weak	_ZN9SerialCDCD2Ev
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu softvfp
ARM GAS  /tmp/ccKU2OK1.s 			page 2


  58              		.type	_ZN9SerialCDCD2Ev, %function
  59              	_ZN9SerialCDCD2Ev:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 7047     		bx	lr
  64              		.size	_ZN9SerialCDCD2Ev, .-_ZN9SerialCDCD2Ev
  65              		.weak	_ZN9SerialCDCD1Ev
  66              		.thumb_set _ZN9SerialCDCD1Ev,_ZN9SerialCDCD2Ev
  67 0002 00BF     		.section	.text._ZN9SerialCDC9availableEv,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN9SerialCDC9availableEv
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu softvfp
  75              		.type	_ZN9SerialCDC9availableEv, %function
  76              	_ZN9SerialCDC9availableEv:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  81 0002 00B9     		cbnz	r0, .L9
  82 0004 7047     		bx	lr
  83              	.L9:
  84 0006 FFF7FEBF 		b	udi_cdc_get_nb_received_data
  85              		.size	_ZN9SerialCDC9availableEv, .-_ZN9SerialCDC9availableEv
  86 000a 00BF     		.section	.text._ZN9SerialCDC4readEv,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	_ZN9SerialCDC4readEv
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu softvfp
  94              		.type	_ZN9SerialCDC4readEv, %function
  95              	_ZN9SerialCDC4readEv:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98 0000 08B5     		push	{r3, lr}
  99 0002 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 100 0006 18B1     		cbz	r0, .L11
 101 0008 BDE80840 		pop	{r3, lr}
 102 000c FFF7FEBF 		b	udi_cdc_getc
 103              	.L11:
 104 0010 4FF0FF30 		mov	r0, #-1
 105 0014 08BD     		pop	{r3, pc}
 106              		.size	_ZN9SerialCDC4readEv, .-_ZN9SerialCDC4readEv
 107 0016 00BF     		.section	.text._ZN9SerialCDC9readBytesEPcj,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_ZN9SerialCDC9readBytesEPcj
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu softvfp
ARM GAS  /tmp/ccKU2OK1.s 			page 3


 115              		.type	_ZN9SerialCDC9readBytesEPcj, %function
 116              	_ZN9SerialCDC9readBytesEPcj:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119 0000 38B5     		push	{r3, r4, r5, lr}
 120 0002 0C46     		mov	r4, r1
 121 0004 1546     		mov	r5, r2
 122 0006 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 123 000a 00B9     		cbnz	r0, .L16
 124 000c 38BD     		pop	{r3, r4, r5, pc}
 125              	.L16:
 126 000e 2946     		mov	r1, r5
 127 0010 2046     		mov	r0, r4
 128 0012 BDE83840 		pop	{r3, r4, r5, lr}
 129 0016 FFF7FEBF 		b	udi_cdc_read_buf
 130              		.size	_ZN9SerialCDC9readBytesEPcj, .-_ZN9SerialCDC9readBytesEPcj
 131 001a 00BF     		.section	.text._ZN9SerialCDC5flushEv,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	_ZN9SerialCDC5flushEv
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu softvfp
 139              		.type	_ZN9SerialCDC5flushEv, %function
 140              	_ZN9SerialCDC5flushEv:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 0446     		mov	r4, r0
 145              	.L19:
 146 0004 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 147 0006 03B9     		cbnz	r3, .L23
 148 0008 10BD     		pop	{r4, pc}
 149              	.L23:
 150 000a FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 151 000e 2369     		ldr	r3, [r4, #16]
 152 0010 9842     		cmp	r0, r3
 153 0012 F7D3     		bcc	.L19
 154 0014 10BD     		pop	{r4, pc}
 155              		.size	_ZN9SerialCDC5flushEv, .-_ZN9SerialCDC5flushEv
 156 0016 00BF     		.section	.text._ZNK9SerialCDC8canWriteEv,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	_ZNK9SerialCDC8canWriteEv
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu softvfp
 164              		.type	_ZNK9SerialCDC8canWriteEv, %function
 165              	_ZNK9SerialCDC8canWriteEv:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 170 0002 00B9     		cbnz	r0, .L26
 171 0004 7047     		bx	lr
ARM GAS  /tmp/ccKU2OK1.s 			page 4


 172              	.L26:
 173 0006 FFF7FEBF 		b	udi_cdc_get_free_tx_buffer
 174              		.size	_ZNK9SerialCDC8canWriteEv, .-_ZNK9SerialCDC8canWriteEv
 175 000a 00BF     		.section	.text._ZN9SerialCDC5writeEh,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	_ZN9SerialCDC5writeEh
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	_ZN9SerialCDC5writeEh, %function
 184              	_ZN9SerialCDC5writeEh:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187 0000 08B5     		push	{r3, lr}
 188 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 189 0004 13B1     		cbz	r3, .L28
 190 0006 0846     		mov	r0, r1
 191 0008 FFF7FEFF 		bl	udi_cdc_putc
 192              	.L28:
 193 000c 0120     		movs	r0, #1
 194 000e 08BD     		pop	{r3, pc}
 195              		.size	_ZN9SerialCDC5writeEh, .-_ZN9SerialCDC5writeEh
 196              		.section	.text._ZN9SerialCDCD0Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
 197              		.align	1
 198              		.p2align 2,,3
 199              		.weak	_ZN9SerialCDCD0Ev
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu softvfp
 204              		.type	_ZN9SerialCDCD0Ev, %function
 205              	_ZN9SerialCDCD0Ev:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208 0000 10B5     		push	{r4, lr}
 209 0002 1821     		movs	r1, #24
 210 0004 0446     		mov	r4, r0
 211 0006 FFF7FEFF 		bl	_ZdlPvj
 212 000a 2046     		mov	r0, r4
 213 000c 10BD     		pop	{r4, pc}
 214              		.size	_ZN9SerialCDCD0Ev, .-_ZN9SerialCDCD0Ev
 215 000e 00BF     		.section	.text._ZN9SerialCDC5writeEPKhj,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.global	_ZN9SerialCDC5writeEPKhj
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu softvfp
 223              		.type	_ZN9SerialCDC5writeEPKhj, %function
 224              	_ZN9SerialCDC5writeEPKhj:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 228 0002 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccKU2OK1.s 			page 5


 229 0004 1446     		mov	r4, r2
 230 0006 03B1     		cbz	r3, .L36
 231 0008 0AB9     		cbnz	r2, .L44
 232              	.L36:
 233 000a 2046     		mov	r0, r4
 234 000c 10BD     		pop	{r4, pc}
 235              	.L44:
 236 000e 0846     		mov	r0, r1
 237 0010 1146     		mov	r1, r2
 238 0012 FFF7FEFF 		bl	udi_cdc_write_buf
 239 0016 241A     		subs	r4, r4, r0
 240 0018 2046     		mov	r0, r4
 241 001a 10BD     		pop	{r4, pc}
 242              		.size	_ZN9SerialCDC5writeEPKhj, .-_ZN9SerialCDC5writeEPKhj
 243              		.section	.text._ZN9SerialCDCC2Ev,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZN9SerialCDCC2Ev
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 251              		.type	_ZN9SerialCDCC2Ev, %function
 252              	_ZN9SerialCDCC2Ev:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 4FF47A72 		mov	r2, #1000
 257 0004 10B4     		push	{r4}
 258 0006 054C     		ldr	r4, .L47
 259 0008 8260     		str	r2, [r0, #8]
 260 000a 0121     		movs	r1, #1
 261 000c 0022     		movs	r2, #0
 262 000e 0460     		str	r4, [r0]
 263 0010 0161     		str	r1, [r0, #16]
 264 0012 4260     		str	r2, [r0, #4]
 265 0014 C260     		str	r2, [r0, #12]
 266 0016 0275     		strb	r2, [r0, #20]
 267 0018 10BC     		pop	{r4}
 268 001a 7047     		bx	lr
 269              	.L48:
 270              		.align	2
 271              	.L47:
 272 001c 08000000 		.word	.LANCHOR1+8
 273              		.size	_ZN9SerialCDCC2Ev, .-_ZN9SerialCDCC2Ev
 274              		.global	_ZN9SerialCDCC1Ev
 275              		.thumb_set _ZN9SerialCDCC1Ev,_ZN9SerialCDCC2Ev
 276              		.section	.text._ZN9SerialCDC5beginEm,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	_ZN9SerialCDC5beginEm
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu softvfp
 284              		.type	_ZN9SerialCDC5beginEm, %function
 285              	_ZN9SerialCDC5beginEm:
ARM GAS  /tmp/ccKU2OK1.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 10B5     		push	{r4, lr}
 289 0002 FFF7FEFF 		bl	udc_start
 290 0006 0548     		ldr	r0, .L52
 291 0008 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 292 000a 33B9     		cbnz	r3, .L49
 293 000c 0124     		movs	r4, #1
 294 000e 0470     		strb	r4, [r0]
 295 0010 0422     		movs	r2, #4
 296 0012 0349     		ldr	r1, .L52+4
 297 0014 2F20     		movs	r0, #47
 298 0016 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 299              	.L49:
 300 001a 10BD     		pop	{r4, pc}
 301              	.L53:
 302              		.align	2
 303              	.L52:
 304 001c 00000000 		.word	.LANCHOR2
 305 0020 00000000 		.word	_Z13core_vbus_off17CallbackParameter
 306              		.size	_ZN9SerialCDC5beginEm, .-_ZN9SerialCDC5beginEm
 307              		.section	.text._ZN9SerialCDC5beginEmh,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.global	_ZN9SerialCDC5beginEmh
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu softvfp
 315              		.type	_ZN9SerialCDC5beginEmh, %function
 316              	_ZN9SerialCDC5beginEmh:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 FFF7FEBF 		b	udc_start
 321              		.size	_ZN9SerialCDC5beginEmh, .-_ZN9SerialCDC5beginEmh
 322              		.section	.text._ZN9SerialCDC3endEv,"ax",%progbits
 323              		.align	1
 324              		.p2align 2,,3
 325              		.global	_ZN9SerialCDC3endEv
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu softvfp
 330              		.type	_ZN9SerialCDC3endEv, %function
 331              	_ZN9SerialCDC3endEv:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 0023     		movs	r3, #0
 336 0002 0375     		strb	r3, [r0, #20]
 337 0004 FFF7FEBF 		b	udc_stop
 338              		.size	_ZN9SerialCDC3endEv, .-_ZN9SerialCDC3endEv
 339              		.section	.text._ZNK9SerialCDCcvbEv,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZNK9SerialCDCcvbEv
ARM GAS  /tmp/ccKU2OK1.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu softvfp
 347              		.type	_ZNK9SerialCDCcvbEv, %function
 348              	_ZNK9SerialCDCcvbEv:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351              		@ link register save eliminated.
 352 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 353 0002 7047     		bx	lr
 354              		.size	_ZNK9SerialCDCcvbEv, .-_ZNK9SerialCDCcvbEv
 355              		.section	.text._ZN9SerialCDC15cdcSetConnectedEb,"ax",%progbits
 356              		.align	1
 357              		.p2align 2,,3
 358              		.global	_ZN9SerialCDC15cdcSetConnectedEb
 359              		.syntax unified
 360              		.thumb
 361              		.thumb_func
 362              		.fpu softvfp
 363              		.type	_ZN9SerialCDC15cdcSetConnectedEb, %function
 364              	_ZN9SerialCDC15cdcSetConnectedEb:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367              		@ link register save eliminated.
 368 0000 0175     		strb	r1, [r0, #20]
 369 0002 7047     		bx	lr
 370              		.size	_ZN9SerialCDC15cdcSetConnectedEb, .-_ZN9SerialCDC15cdcSetConnectedEb
 371              		.section	.text._ZN9SerialCDC11cdcRxNotifyEv,"ax",%progbits
 372              		.align	1
 373              		.p2align 2,,3
 374              		.global	_ZN9SerialCDC11cdcRxNotifyEv
 375              		.syntax unified
 376              		.thumb
 377              		.thumb_func
 378              		.fpu softvfp
 379              		.type	_ZN9SerialCDC11cdcRxNotifyEv, %function
 380              	_ZN9SerialCDC11cdcRxNotifyEv:
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383              		@ link register save eliminated.
 384 0000 7047     		bx	lr
 385              		.size	_ZN9SerialCDC11cdcRxNotifyEv, .-_ZN9SerialCDC11cdcRxNotifyEv
 386 0002 00BF     		.section	.text._ZN9SerialCDC16cdcTxEmptyNotifyEv,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	_ZN9SerialCDC16cdcTxEmptyNotifyEv
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu softvfp
 394              		.type	_ZN9SerialCDC16cdcTxEmptyNotifyEv, %function
 395              	_ZN9SerialCDC16cdcTxEmptyNotifyEv:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398 0000 0369     		ldr	r3, [r0, #16]
 399 0002 012B     		cmp	r3, #1
ARM GAS  /tmp/ccKU2OK1.s 			page 8


 400 0004 00D0     		beq	.L65
 401 0006 7047     		bx	lr
 402              	.L65:
 403 0008 10B5     		push	{r4, lr}
 404 000a 0446     		mov	r4, r0
 405 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 406 0010 2061     		str	r0, [r4, #16]
 407 0012 10BD     		pop	{r4, pc}
 408              		.size	_ZN9SerialCDC16cdcTxEmptyNotifyEv, .-_ZN9SerialCDC16cdcTxEmptyNotifyEv
 409              		.section	.text.core_cdc_enable,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	core_cdc_enable
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu softvfp
 417              		.type	core_cdc_enable, %function
 418              	core_cdc_enable:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421              		@ link register save eliminated.
 422 0000 014B     		ldr	r3, .L67
 423 0002 0120     		movs	r0, #1
 424 0004 1875     		strb	r0, [r3, #20]
 425 0006 7047     		bx	lr
 426              	.L68:
 427              		.align	2
 428              	.L67:
 429 0008 00000000 		.word	.LANCHOR0
 430              		.size	core_cdc_enable, .-core_cdc_enable
 431              		.section	.text.core_cdc_disable,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	core_cdc_disable
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	core_cdc_disable, %function
 440              	core_cdc_disable:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443              		@ link register save eliminated.
 444 0000 014B     		ldr	r3, .L70
 445 0002 0022     		movs	r2, #0
 446 0004 1A75     		strb	r2, [r3, #20]
 447 0006 7047     		bx	lr
 448              	.L71:
 449              		.align	2
 450              	.L70:
 451 0008 00000000 		.word	.LANCHOR0
 452              		.size	core_cdc_disable, .-core_cdc_disable
 453              		.section	.text.core_cdc_rx_notify,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	core_cdc_rx_notify
ARM GAS  /tmp/ccKU2OK1.s 			page 9


 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu softvfp
 461              		.type	core_cdc_rx_notify, %function
 462              	core_cdc_rx_notify:
 463              		@ args = 0, pretend = 0, frame = 0
 464              		@ frame_needed = 0, uses_anonymous_args = 0
 465              		@ link register save eliminated.
 466 0000 7047     		bx	lr
 467              		.size	core_cdc_rx_notify, .-core_cdc_rx_notify
 468 0002 00BF     		.section	.text.core_cdc_tx_empty_notify,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	core_cdc_tx_empty_notify
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu softvfp
 476              		.type	core_cdc_tx_empty_notify, %function
 477              	core_cdc_tx_empty_notify:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480 0000 10B5     		push	{r4, lr}
 481 0002 044C     		ldr	r4, .L77
 482 0004 2369     		ldr	r3, [r4, #16]
 483 0006 012B     		cmp	r3, #1
 484 0008 00D0     		beq	.L76
 485 000a 10BD     		pop	{r4, pc}
 486              	.L76:
 487 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 488 0010 2061     		str	r0, [r4, #16]
 489 0012 10BD     		pop	{r4, pc}
 490              	.L78:
 491              		.align	2
 492              	.L77:
 493 0014 00000000 		.word	.LANCHOR0
 494              		.size	core_cdc_tx_empty_notify, .-core_cdc_tx_empty_notify
 495              		.section	.text.startup._GLOBAL__sub_I__ZN9SerialCDCC2Ev,"ax",%progbits
 496              		.align	1
 497              		.p2align 2,,3
 498              		.syntax unified
 499              		.thumb
 500              		.thumb_func
 501              		.fpu softvfp
 502              		.type	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, %function
 503              	_GLOBAL__sub_I__ZN9SerialCDCC2Ev:
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507 0000 70B4     		push	{r4, r5, r6}
 508 0002 094B     		ldr	r3, .L81
 509 0004 0948     		ldr	r0, .L81+4
 510 0006 1860     		str	r0, [r3]
 511 0008 0024     		movs	r4, #0
 512 000a 4FF47A76 		mov	r6, #1000
 513 000e 0125     		movs	r5, #1
ARM GAS  /tmp/ccKU2OK1.s 			page 10


 514 0010 9E60     		str	r6, [r3, #8]
 515 0012 1D61     		str	r5, [r3, #16]
 516 0014 5C60     		str	r4, [r3, #4]
 517 0016 DC60     		str	r4, [r3, #12]
 518 0018 1C75     		strb	r4, [r3, #20]
 519 001a 054A     		ldr	r2, .L81+8
 520 001c 0549     		ldr	r1, .L81+12
 521 001e 1846     		mov	r0, r3
 522 0020 70BC     		pop	{r4, r5, r6}
 523 0022 FFF7FEBF 		b	__aeabi_atexit
 524              	.L82:
 525 0026 00BF     		.align	2
 526              	.L81:
 527 0028 00000000 		.word	.LANCHOR0
 528 002c 08000000 		.word	.LANCHOR1+8
 529 0030 00000000 		.word	__dso_handle
 530 0034 00000000 		.word	_ZN9SerialCDCD1Ev
 531              		.size	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, .-_GLOBAL__sub_I__ZN9SerialCDCC2Ev
 532              		.section	.init_array,"aw",%init_array
 533              		.align	2
 534 0000 00000000 		.word	_GLOBAL__sub_I__ZN9SerialCDCC2Ev(target1)
 535              		.global	_ZTV9SerialCDC
 536              		.global	SerialUSB
 537              		.section	.bss.SerialUSB,"aw",%nobits
 538              		.align	2
 539              		.set	.LANCHOR0,. + 0
 540              		.type	SerialUSB, %object
 541              		.size	SerialUSB, 24
 542              	SerialUSB:
 543 0000 00000000 		.space	24
 543      00000000 
 543      00000000 
 543      00000000 
 543      00000000 
 544              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 545              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 546              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 547              	_ZL28cpu_irq_prev_interrupt_state:
 548 0000 00       		.space	1
 549              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 550              		.align	2
 551              		.type	_ZL32cpu_irq_critical_section_counter, %object
 552              		.size	_ZL32cpu_irq_critical_section_counter, 4
 553              	_ZL32cpu_irq_critical_section_counter:
 554 0000 00000000 		.space	4
 555              		.section	.bss._ZZN9SerialCDC5beginEmE19isInterruptAttached,"aw",%nobits
 556              		.set	.LANCHOR2,. + 0
 557              		.type	_ZZN9SerialCDC5beginEmE19isInterruptAttached, %object
 558              		.size	_ZZN9SerialCDC5beginEmE19isInterruptAttached, 1
 559              	_ZZN9SerialCDC5beginEmE19isInterruptAttached:
 560 0000 00       		.space	1
 561              		.section	.rodata._ZTV9SerialCDC,"a",%progbits
 562              		.align	2
 563              		.set	.LANCHOR1,. + 0
 564              		.type	_ZTV9SerialCDC, %object
 565              		.size	_ZTV9SerialCDC, 48
 566              	_ZTV9SerialCDC:
ARM GAS  /tmp/ccKU2OK1.s 			page 11


 567 0000 00000000 		.word	0
 568 0004 00000000 		.word	0
 569 0008 00000000 		.word	_ZN9SerialCDCD1Ev
 570 000c 00000000 		.word	_ZN9SerialCDCD0Ev
 571 0010 00000000 		.word	_ZN9SerialCDC5writeEh
 572 0014 00000000 		.word	_ZN9SerialCDC5writeEPKhj
 573 0018 00000000 		.word	_ZN9SerialCDC9availableEv
 574 001c 00000000 		.word	_ZN9SerialCDC4readEv
 575 0020 00000000 		.word	_ZN9SerialCDC4peekEv
 576 0024 00000000 		.word	_ZN9SerialCDC5flushEv
 577 0028 00000000 		.word	_ZNK9SerialCDC8canWriteEv
 578 002c 00000000 		.word	_ZN9SerialCDC9readBytesEPcj
 579              		.hidden	__dso_handle
 580              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
