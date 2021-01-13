ARM GAS  /tmp/ccCH8FJq.s 			page 1


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
  14              		.section	.text._ZN9SerialCDC4peekEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN9SerialCDC4peekEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9SerialCDC4peekEv, %function
  23              	_ZN9SerialCDC4peekEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 4FF0FF30 		mov	r0, #-1
  28 0004 7047     		bx	lr
  29              		.size	_ZN9SerialCDC4peekEv, .-_ZN9SerialCDC4peekEv
  30 0006 00BF     		.section	.text._Z13core_vbus_off17CallbackParameter,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_Z13core_vbus_off17CallbackParameter
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_Z13core_vbus_off17CallbackParameter, %function
  39              	_Z13core_vbus_off17CallbackParameter:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 014B     		ldr	r3, .L3
  44 0002 0022     		movs	r2, #0
  45 0004 1A75     		strb	r2, [r3, #20]
  46 0006 7047     		bx	lr
  47              	.L4:
  48              		.align	2
  49              	.L3:
  50 0008 00000000 		.word	.LANCHOR0
  51              		.size	_Z13core_vbus_off17CallbackParameter, .-_Z13core_vbus_off17CallbackParameter
  52              		.section	.text._ZN9SerialCDCD2Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
  53              		.align	1
  54              		.p2align 2,,3
  55              		.weak	_ZN9SerialCDCD2Ev
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccCH8FJq.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN9SerialCDCD2Ev, %function
  61              	_ZN9SerialCDCD2Ev:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 7047     		bx	lr
  66              		.size	_ZN9SerialCDCD2Ev, .-_ZN9SerialCDCD2Ev
  67              		.weak	_ZN9SerialCDCD1Ev
  68              		.thumb_set _ZN9SerialCDCD1Ev,_ZN9SerialCDCD2Ev
  69 0002 00BF     		.section	.text._ZN9SerialCDC9availableEv,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_ZN9SerialCDC9availableEv
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_ZN9SerialCDC9availableEv, %function
  78              	_ZN9SerialCDC9availableEv:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  83 0002 00B9     		cbnz	r0, .L9
  84 0004 7047     		bx	lr
  85              	.L9:
  86 0006 FFF7FEBF 		b	udi_cdc_get_nb_received_data
  87              		.size	_ZN9SerialCDC9availableEv, .-_ZN9SerialCDC9availableEv
  88 000a 00BF     		.section	.text._ZN9SerialCDC4readEv,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZN9SerialCDC4readEv
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	_ZN9SerialCDC4readEv, %function
  97              	_ZN9SerialCDC4readEv:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 08B5     		push	{r3, lr}
 101 0002 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 102 0006 18B1     		cbz	r0, .L11
 103 0008 BDE80840 		pop	{r3, lr}
 104 000c FFF7FEBF 		b	udi_cdc_getc
 105              	.L11:
 106 0010 4FF0FF30 		mov	r0, #-1
 107 0014 08BD     		pop	{r3, pc}
 108              		.size	_ZN9SerialCDC4readEv, .-_ZN9SerialCDC4readEv
 109 0016 00BF     		.section	.text._ZN9SerialCDC9readBytesEPcj,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZN9SerialCDC9readBytesEPcj
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccCH8FJq.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	_ZN9SerialCDC9readBytesEPcj, %function
 118              	_ZN9SerialCDC9readBytesEPcj:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 38B5     		push	{r3, r4, r5, lr}
 122 0002 0C46     		mov	r4, r1
 123 0004 1546     		mov	r5, r2
 124 0006 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 125 000a 00B9     		cbnz	r0, .L16
 126 000c 38BD     		pop	{r3, r4, r5, pc}
 127              	.L16:
 128 000e 2946     		mov	r1, r5
 129 0010 2046     		mov	r0, r4
 130 0012 BDE83840 		pop	{r3, r4, r5, lr}
 131 0016 FFF7FEBF 		b	udi_cdc_read_buf
 132              		.size	_ZN9SerialCDC9readBytesEPcj, .-_ZN9SerialCDC9readBytesEPcj
 133 001a 00BF     		.section	.text._ZN9SerialCDC5flushEv,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	_ZN9SerialCDC5flushEv
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZN9SerialCDC5flushEv, %function
 142              	_ZN9SerialCDC5flushEv:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145 0000 10B5     		push	{r4, lr}
 146 0002 0446     		mov	r4, r0
 147              	.L19:
 148 0004 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 149 0006 03B9     		cbnz	r3, .L23
 150 0008 10BD     		pop	{r4, pc}
 151              	.L23:
 152 000a FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 153 000e 2369     		ldr	r3, [r4, #16]
 154 0010 9842     		cmp	r0, r3
 155 0012 F7D3     		bcc	.L19
 156 0014 10BD     		pop	{r4, pc}
 157              		.size	_ZN9SerialCDC5flushEv, .-_ZN9SerialCDC5flushEv
 158 0016 00BF     		.section	.text._ZNK9SerialCDC8canWriteEv,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_ZNK9SerialCDC8canWriteEv
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_ZNK9SerialCDC8canWriteEv, %function
 167              	_ZNK9SerialCDC8canWriteEv:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
ARM GAS  /tmp/ccCH8FJq.s 			page 4


 172 0002 00B9     		cbnz	r0, .L26
 173 0004 7047     		bx	lr
 174              	.L26:
 175 0006 FFF7FEBF 		b	udi_cdc_get_free_tx_buffer
 176              		.size	_ZNK9SerialCDC8canWriteEv, .-_ZNK9SerialCDC8canWriteEv
 177 000a 00BF     		.section	.text._ZN9SerialCDC5writeEh,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	_ZN9SerialCDC5writeEh
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	_ZN9SerialCDC5writeEh, %function
 186              	_ZN9SerialCDC5writeEh:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189 0000 08B5     		push	{r3, lr}
 190 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 191 0004 13B1     		cbz	r3, .L28
 192 0006 0846     		mov	r0, r1
 193 0008 FFF7FEFF 		bl	udi_cdc_putc
 194              	.L28:
 195 000c 0120     		movs	r0, #1
 196 000e 08BD     		pop	{r3, pc}
 197              		.size	_ZN9SerialCDC5writeEh, .-_ZN9SerialCDC5writeEh
 198              		.section	.text._ZN9SerialCDCD0Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
 199              		.align	1
 200              		.p2align 2,,3
 201              		.weak	_ZN9SerialCDCD0Ev
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 206              		.type	_ZN9SerialCDCD0Ev, %function
 207              	_ZN9SerialCDCD0Ev:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210 0000 10B5     		push	{r4, lr}
 211 0002 1821     		movs	r1, #24
 212 0004 0446     		mov	r4, r0
 213 0006 FFF7FEFF 		bl	_ZdlPvj
 214 000a 2046     		mov	r0, r4
 215 000c 10BD     		pop	{r4, pc}
 216              		.size	_ZN9SerialCDCD0Ev, .-_ZN9SerialCDCD0Ev
 217 000e 00BF     		.section	.text._ZN9SerialCDC5writeEPKhj,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	_ZN9SerialCDC5writeEPKhj
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	_ZN9SerialCDC5writeEPKhj, %function
 226              	_ZN9SerialCDC5writeEPKhj:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccCH8FJq.s 			page 5


 229 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 230 0002 10B5     		push	{r4, lr}
 231 0004 1446     		mov	r4, r2
 232 0006 03B1     		cbz	r3, .L36
 233 0008 0AB9     		cbnz	r2, .L44
 234              	.L36:
 235 000a 2046     		mov	r0, r4
 236 000c 10BD     		pop	{r4, pc}
 237              	.L44:
 238 000e 0846     		mov	r0, r1
 239 0010 1146     		mov	r1, r2
 240 0012 FFF7FEFF 		bl	udi_cdc_write_buf
 241 0016 241A     		subs	r4, r4, r0
 242 0018 2046     		mov	r0, r4
 243 001a 10BD     		pop	{r4, pc}
 244              		.size	_ZN9SerialCDC5writeEPKhj, .-_ZN9SerialCDC5writeEPKhj
 245              		.section	.text._ZN9SerialCDCC2Ev,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZN9SerialCDCC2Ev
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZN9SerialCDCC2Ev, %function
 254              	_ZN9SerialCDCC2Ev:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 4FF47A72 		mov	r2, #1000
 259 0004 10B4     		push	{r4}
 260 0006 064C     		ldr	r4, .L47
 261 0008 8260     		str	r2, [r0, #8]
 262 000a 0121     		movs	r1, #1
 263 000c 0022     		movs	r2, #0
 264 000e 0460     		str	r4, [r0]
 265 0010 0161     		str	r1, [r0, #16]
 266 0012 4260     		str	r2, [r0, #4]
 267 0014 C260     		str	r2, [r0, #12]
 268 0016 0275     		strb	r2, [r0, #20]
 269 0018 5DF8044B 		ldr	r4, [sp], #4
 270 001c 7047     		bx	lr
 271              	.L48:
 272 001e 00BF     		.align	2
 273              	.L47:
 274 0020 08000000 		.word	.LANCHOR1+8
 275              		.size	_ZN9SerialCDCC2Ev, .-_ZN9SerialCDCC2Ev
 276              		.global	_ZN9SerialCDCC1Ev
 277              		.thumb_set _ZN9SerialCDCC1Ev,_ZN9SerialCDCC2Ev
 278              		.section	.text._ZN9SerialCDC5StartEh,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.global	_ZN9SerialCDC5StartEh
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccCH8FJq.s 			page 6


 286              		.type	_ZN9SerialCDC5StartEh, %function
 287              	_ZN9SerialCDC5StartEh:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290 0000 70B5     		push	{r4, r5, r6, lr}
 291 0002 0C46     		mov	r4, r1
 292 0004 FFF7FEFF 		bl	udc_start
 293 0008 FF2C     		cmp	r4, #255
 294 000a 02D0     		beq	.L49
 295 000c 084B     		ldr	r3, .L56
 296 000e 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 297 0010 05B1     		cbz	r5, .L55
 298              	.L49:
 299 0012 70BD     		pop	{r4, r5, r6, pc}
 300              	.L55:
 301 0014 2A46     		mov	r2, r5
 302 0016 2946     		mov	r1, r5
 303 0018 2046     		mov	r0, r4
 304 001a 0126     		movs	r6, #1
 305 001c 1E70     		strb	r6, [r3]
 306 001e FFF7FEFF 		bl	pinModeDuet
 307 0022 2B46     		mov	r3, r5
 308 0024 2046     		mov	r0, r4
 309 0026 0422     		movs	r2, #4
 310 0028 0249     		ldr	r1, .L56+4
 311 002a FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 312 002e 70BD     		pop	{r4, r5, r6, pc}
 313              	.L57:
 314              		.align	2
 315              	.L56:
 316 0030 00000000 		.word	.LANCHOR2
 317 0034 00000000 		.word	_Z13core_vbus_off17CallbackParameter
 318              		.size	_ZN9SerialCDC5StartEh, .-_ZN9SerialCDC5StartEh
 319              		.section	.text._ZN9SerialCDC3endEv,"ax",%progbits
 320              		.align	1
 321              		.p2align 2,,3
 322              		.global	_ZN9SerialCDC3endEv
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu fpv4-sp-d16
 327              		.type	_ZN9SerialCDC3endEv, %function
 328              	_ZN9SerialCDC3endEv:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 332 0000 0023     		movs	r3, #0
 333 0002 0375     		strb	r3, [r0, #20]
 334 0004 FFF7FEBF 		b	udc_stop
 335              		.size	_ZN9SerialCDC3endEv, .-_ZN9SerialCDC3endEv
 336              		.section	.text._ZNK9SerialCDCcvbEv,"ax",%progbits
 337              		.align	1
 338              		.p2align 2,,3
 339              		.global	_ZNK9SerialCDCcvbEv
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
ARM GAS  /tmp/ccCH8FJq.s 			page 7


 343              		.fpu fpv4-sp-d16
 344              		.type	_ZNK9SerialCDCcvbEv, %function
 345              	_ZNK9SerialCDCcvbEv:
 346              		@ args = 0, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348              		@ link register save eliminated.
 349 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 350 0002 7047     		bx	lr
 351              		.size	_ZNK9SerialCDCcvbEv, .-_ZNK9SerialCDCcvbEv
 352              		.section	.text._ZN9SerialCDC15cdcSetConnectedEb,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	_ZN9SerialCDC15cdcSetConnectedEb
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZN9SerialCDC15cdcSetConnectedEb, %function
 361              	_ZN9SerialCDC15cdcSetConnectedEb:
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364              		@ link register save eliminated.
 365 0000 0175     		strb	r1, [r0, #20]
 366 0002 7047     		bx	lr
 367              		.size	_ZN9SerialCDC15cdcSetConnectedEb, .-_ZN9SerialCDC15cdcSetConnectedEb
 368              		.section	.text._ZN9SerialCDC11cdcRxNotifyEv,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	_ZN9SerialCDC11cdcRxNotifyEv
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	_ZN9SerialCDC11cdcRxNotifyEv, %function
 377              	_ZN9SerialCDC11cdcRxNotifyEv:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 7047     		bx	lr
 382              		.size	_ZN9SerialCDC11cdcRxNotifyEv, .-_ZN9SerialCDC11cdcRxNotifyEv
 383 0002 00BF     		.section	.text._ZN9SerialCDC16cdcTxEmptyNotifyEv,"ax",%progbits
 384              		.align	1
 385              		.p2align 2,,3
 386              		.global	_ZN9SerialCDC16cdcTxEmptyNotifyEv
 387              		.syntax unified
 388              		.thumb
 389              		.thumb_func
 390              		.fpu fpv4-sp-d16
 391              		.type	_ZN9SerialCDC16cdcTxEmptyNotifyEv, %function
 392              	_ZN9SerialCDC16cdcTxEmptyNotifyEv:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 0369     		ldr	r3, [r0, #16]
 396 0002 012B     		cmp	r3, #1
 397 0004 00D0     		beq	.L68
 398 0006 7047     		bx	lr
 399              	.L68:
ARM GAS  /tmp/ccCH8FJq.s 			page 8


 400 0008 10B5     		push	{r4, lr}
 401 000a 0446     		mov	r4, r0
 402 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 403 0010 2061     		str	r0, [r4, #16]
 404 0012 10BD     		pop	{r4, pc}
 405              		.size	_ZN9SerialCDC16cdcTxEmptyNotifyEv, .-_ZN9SerialCDC16cdcTxEmptyNotifyEv
 406              		.section	.text.core_cdc_enable,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	core_cdc_enable
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	core_cdc_enable, %function
 415              	core_cdc_enable:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 014B     		ldr	r3, .L70
 420 0002 0120     		movs	r0, #1
 421 0004 1875     		strb	r0, [r3, #20]
 422 0006 7047     		bx	lr
 423              	.L71:
 424              		.align	2
 425              	.L70:
 426 0008 00000000 		.word	.LANCHOR0
 427              		.size	core_cdc_enable, .-core_cdc_enable
 428              		.section	.text.core_cdc_disable,"ax",%progbits
 429              		.align	1
 430              		.p2align 2,,3
 431              		.global	core_cdc_disable
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu fpv4-sp-d16
 436              		.type	core_cdc_disable, %function
 437              	core_cdc_disable:
 438              		@ args = 0, pretend = 0, frame = 0
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 440              		@ link register save eliminated.
 441 0000 014B     		ldr	r3, .L73
 442 0002 0022     		movs	r2, #0
 443 0004 1A75     		strb	r2, [r3, #20]
 444 0006 7047     		bx	lr
 445              	.L74:
 446              		.align	2
 447              	.L73:
 448 0008 00000000 		.word	.LANCHOR0
 449              		.size	core_cdc_disable, .-core_cdc_disable
 450              		.section	.text.core_cdc_rx_notify,"ax",%progbits
 451              		.align	1
 452              		.p2align 2,,3
 453              		.global	core_cdc_rx_notify
 454              		.syntax unified
 455              		.thumb
 456              		.thumb_func
ARM GAS  /tmp/ccCH8FJq.s 			page 9


 457              		.fpu fpv4-sp-d16
 458              		.type	core_cdc_rx_notify, %function
 459              	core_cdc_rx_notify:
 460              		@ args = 0, pretend = 0, frame = 0
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 462              		@ link register save eliminated.
 463 0000 7047     		bx	lr
 464              		.size	core_cdc_rx_notify, .-core_cdc_rx_notify
 465 0002 00BF     		.section	.text.core_cdc_tx_empty_notify,"ax",%progbits
 466              		.align	1
 467              		.p2align 2,,3
 468              		.global	core_cdc_tx_empty_notify
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu fpv4-sp-d16
 473              		.type	core_cdc_tx_empty_notify, %function
 474              	core_cdc_tx_empty_notify:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477 0000 10B5     		push	{r4, lr}
 478 0002 044C     		ldr	r4, .L80
 479 0004 2369     		ldr	r3, [r4, #16]
 480 0006 012B     		cmp	r3, #1
 481 0008 00D0     		beq	.L79
 482 000a 10BD     		pop	{r4, pc}
 483              	.L79:
 484 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 485 0010 2061     		str	r0, [r4, #16]
 486 0012 10BD     		pop	{r4, pc}
 487              	.L81:
 488              		.align	2
 489              	.L80:
 490 0014 00000000 		.word	.LANCHOR0
 491              		.size	core_cdc_tx_empty_notify, .-core_cdc_tx_empty_notify
 492              		.section	.text.startup._GLOBAL__sub_I__ZN9SerialCDCC2Ev,"ax",%progbits
 493              		.align	1
 494              		.p2align 2,,3
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, %function
 500              	_GLOBAL__sub_I__ZN9SerialCDCC2Ev:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 70B4     		push	{r4, r5, r6}
 505 0002 094B     		ldr	r3, .L84
 506 0004 0948     		ldr	r0, .L84+4
 507 0006 1860     		str	r0, [r3]
 508 0008 0024     		movs	r4, #0
 509 000a 4FF47A76 		mov	r6, #1000
 510 000e 0125     		movs	r5, #1
 511 0010 9E60     		str	r6, [r3, #8]
 512 0012 1D61     		str	r5, [r3, #16]
 513 0014 5C60     		str	r4, [r3, #4]
ARM GAS  /tmp/ccCH8FJq.s 			page 10


 514 0016 DC60     		str	r4, [r3, #12]
 515 0018 1C75     		strb	r4, [r3, #20]
 516 001a 054A     		ldr	r2, .L84+8
 517 001c 0549     		ldr	r1, .L84+12
 518 001e 1846     		mov	r0, r3
 519 0020 70BC     		pop	{r4, r5, r6}
 520 0022 FFF7FEBF 		b	__aeabi_atexit
 521              	.L85:
 522 0026 00BF     		.align	2
 523              	.L84:
 524 0028 00000000 		.word	.LANCHOR0
 525 002c 08000000 		.word	.LANCHOR1+8
 526 0030 00000000 		.word	__dso_handle
 527 0034 00000000 		.word	_ZN9SerialCDCD1Ev
 528              		.size	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, .-_GLOBAL__sub_I__ZN9SerialCDCC2Ev
 529              		.section	.init_array,"aw",%init_array
 530              		.align	2
 531 0000 00000000 		.word	_GLOBAL__sub_I__ZN9SerialCDCC2Ev(target1)
 532              		.global	_ZTV9SerialCDC
 533              		.global	SerialUSB
 534              		.section	.bss.SerialUSB,"aw",%nobits
 535              		.align	2
 536              		.set	.LANCHOR0,. + 0
 537              		.type	SerialUSB, %object
 538              		.size	SerialUSB, 24
 539              	SerialUSB:
 540 0000 00000000 		.space	24
 540      00000000 
 540      00000000 
 540      00000000 
 540      00000000 
 541              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 542              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 543              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 544              	_ZL28cpu_irq_prev_interrupt_state:
 545 0000 00       		.space	1
 546              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 547              		.align	2
 548              		.type	_ZL32cpu_irq_critical_section_counter, %object
 549              		.size	_ZL32cpu_irq_critical_section_counter, 4
 550              	_ZL32cpu_irq_critical_section_counter:
 551 0000 00000000 		.space	4
 552              		.section	.bss._ZZN9SerialCDC5StartEhE19isInterruptAttached,"aw",%nobits
 553              		.set	.LANCHOR2,. + 0
 554              		.type	_ZZN9SerialCDC5StartEhE19isInterruptAttached, %object
 555              		.size	_ZZN9SerialCDC5StartEhE19isInterruptAttached, 1
 556              	_ZZN9SerialCDC5StartEhE19isInterruptAttached:
 557 0000 00       		.space	1
 558              		.section	.rodata._ZTV9SerialCDC,"a",%progbits
 559              		.align	2
 560              		.set	.LANCHOR1,. + 0
 561              		.type	_ZTV9SerialCDC, %object
 562              		.size	_ZTV9SerialCDC, 48
 563              	_ZTV9SerialCDC:
 564 0000 00000000 		.word	0
 565 0004 00000000 		.word	0
 566 0008 00000000 		.word	_ZN9SerialCDCD1Ev
ARM GAS  /tmp/ccCH8FJq.s 			page 11


 567 000c 00000000 		.word	_ZN9SerialCDCD0Ev
 568 0010 00000000 		.word	_ZN9SerialCDC5writeEh
 569 0014 00000000 		.word	_ZN9SerialCDC5writeEPKhj
 570 0018 00000000 		.word	_ZN9SerialCDC9availableEv
 571 001c 00000000 		.word	_ZN9SerialCDC4readEv
 572 0020 00000000 		.word	_ZN9SerialCDC4peekEv
 573 0024 00000000 		.word	_ZN9SerialCDC5flushEv
 574 0028 00000000 		.word	_ZNK9SerialCDC8canWriteEv
 575 002c 00000000 		.word	_ZN9SerialCDC9readBytesEPcj
 576              		.hidden	__dso_handle
 577              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
