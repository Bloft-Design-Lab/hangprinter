ARM GAS  /tmp/ccVPU2kc.s 			page 1


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
  28 0006 00BF     		.section	.text._ZN9SerialCDCD2Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
  29              		.align	1
  30              		.p2align 2,,3
  31              		.weak	_ZN9SerialCDCD2Ev
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN9SerialCDCD2Ev, %function
  37              	_ZN9SerialCDCD2Ev:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 7047     		bx	lr
  42              		.size	_ZN9SerialCDCD2Ev, .-_ZN9SerialCDCD2Ev
  43              		.weak	_ZN9SerialCDCD1Ev
  44              		.thumb_set _ZN9SerialCDCD1Ev,_ZN9SerialCDCD2Ev
  45 0002 00BF     		.section	.text._ZN9SerialCDC9availableEv,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN9SerialCDC9availableEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu softvfp
  53              		.type	_ZN9SerialCDC9availableEv, %function
  54              	_ZN9SerialCDC9availableEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccVPU2kc.s 			page 2


  58 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  59 0002 00B9     		cbnz	r0, .L6
  60 0004 7047     		bx	lr
  61              	.L6:
  62 0006 FFF7FEBF 		b	udi_cdc_get_nb_received_data
  63              		.size	_ZN9SerialCDC9availableEv, .-_ZN9SerialCDC9availableEv
  64 000a 00BF     		.section	.text._ZN9SerialCDC4readEv,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZN9SerialCDC4readEv
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu softvfp
  72              		.type	_ZN9SerialCDC4readEv, %function
  73              	_ZN9SerialCDC4readEv:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 08B5     		push	{r3, lr}
  77 0002 FFF7FEFF 		bl	udi_cdc_is_rx_ready
  78 0006 18B1     		cbz	r0, .L8
  79 0008 BDE80840 		pop	{r3, lr}
  80 000c FFF7FEBF 		b	udi_cdc_getc
  81              	.L8:
  82 0010 4FF0FF30 		mov	r0, #-1
  83 0014 08BD     		pop	{r3, pc}
  84              		.size	_ZN9SerialCDC4readEv, .-_ZN9SerialCDC4readEv
  85 0016 00BF     		.section	.text._ZN9SerialCDC9readBytesEPcj,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	_ZN9SerialCDC9readBytesEPcj
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu softvfp
  93              		.type	_ZN9SerialCDC9readBytesEPcj, %function
  94              	_ZN9SerialCDC9readBytesEPcj:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 38B5     		push	{r3, r4, r5, lr}
  98 0002 0C46     		mov	r4, r1
  99 0004 1546     		mov	r5, r2
 100 0006 FFF7FEFF 		bl	udi_cdc_is_rx_ready
 101 000a 00B9     		cbnz	r0, .L13
 102 000c 38BD     		pop	{r3, r4, r5, pc}
 103              	.L13:
 104 000e 2946     		mov	r1, r5
 105 0010 2046     		mov	r0, r4
 106 0012 BDE83840 		pop	{r3, r4, r5, lr}
 107 0016 FFF7FEBF 		b	udi_cdc_read_buf
 108              		.size	_ZN9SerialCDC9readBytesEPcj, .-_ZN9SerialCDC9readBytesEPcj
 109 001a 00BF     		.section	.text._ZN9SerialCDC5flushEv,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZN9SerialCDC5flushEv
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccVPU2kc.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	_ZN9SerialCDC5flushEv, %function
 118              	_ZN9SerialCDC5flushEv:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 10B5     		push	{r4, lr}
 122 0002 0446     		mov	r4, r0
 123              	.L16:
 124 0004 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 125 0006 03B9     		cbnz	r3, .L20
 126 0008 10BD     		pop	{r4, pc}
 127              	.L20:
 128 000a FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 129 000e 2369     		ldr	r3, [r4, #16]
 130 0010 9842     		cmp	r0, r3
 131 0012 F7D3     		bcc	.L16
 132 0014 10BD     		pop	{r4, pc}
 133              		.size	_ZN9SerialCDC5flushEv, .-_ZN9SerialCDC5flushEv
 134 0016 00BF     		.section	.text._ZNK9SerialCDC8canWriteEv,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZNK9SerialCDC8canWriteEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu softvfp
 142              		.type	_ZNK9SerialCDC8canWriteEv, %function
 143              	_ZNK9SerialCDC8canWriteEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 148 0002 00B9     		cbnz	r0, .L23
 149 0004 7047     		bx	lr
 150              	.L23:
 151 0006 FFF7FEBF 		b	udi_cdc_get_free_tx_buffer
 152              		.size	_ZNK9SerialCDC8canWriteEv, .-_ZNK9SerialCDC8canWriteEv
 153 000a 00BF     		.section	.text._ZN9SerialCDC5writeEh,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	_ZN9SerialCDC5writeEh
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 161              		.type	_ZN9SerialCDC5writeEh, %function
 162              	_ZN9SerialCDC5writeEh:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165 0000 08B5     		push	{r3, lr}
 166 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 167 0004 13B1     		cbz	r3, .L25
 168 0006 0846     		mov	r0, r1
 169 0008 FFF7FEFF 		bl	udi_cdc_putc
 170              	.L25:
 171 000c 0120     		movs	r0, #1
ARM GAS  /tmp/ccVPU2kc.s 			page 4


 172 000e 08BD     		pop	{r3, pc}
 173              		.size	_ZN9SerialCDC5writeEh, .-_ZN9SerialCDC5writeEh
 174              		.section	.text._ZN9SerialCDCD0Ev,"axG",%progbits,_ZN9SerialCDCD5Ev,comdat
 175              		.align	1
 176              		.p2align 2,,3
 177              		.weak	_ZN9SerialCDCD0Ev
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu softvfp
 182              		.type	_ZN9SerialCDCD0Ev, %function
 183              	_ZN9SerialCDCD0Ev:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186 0000 10B5     		push	{r4, lr}
 187 0002 0446     		mov	r4, r0
 188 0004 1821     		movs	r1, #24
 189 0006 FFF7FEFF 		bl	_ZdlPvj
 190 000a 2046     		mov	r0, r4
 191 000c 10BD     		pop	{r4, pc}
 192              		.size	_ZN9SerialCDCD0Ev, .-_ZN9SerialCDCD0Ev
 193 000e 00BF     		.section	.text._ZN9SerialCDC5writeEPKhj,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.global	_ZN9SerialCDC5writeEPKhj
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu softvfp
 201              		.type	_ZN9SerialCDC5writeEPKhj, %function
 202              	_ZN9SerialCDC5writeEPKhj:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 206 0002 10B5     		push	{r4, lr}
 207 0004 1446     		mov	r4, r2
 208 0006 03B1     		cbz	r3, .L33
 209 0008 0AB9     		cbnz	r2, .L41
 210              	.L33:
 211 000a 2046     		mov	r0, r4
 212 000c 10BD     		pop	{r4, pc}
 213              	.L41:
 214 000e 0846     		mov	r0, r1
 215 0010 1146     		mov	r1, r2
 216 0012 FFF7FEFF 		bl	udi_cdc_write_buf
 217 0016 241A     		subs	r4, r4, r0
 218 0018 2046     		mov	r0, r4
 219 001a 10BD     		pop	{r4, pc}
 220              		.size	_ZN9SerialCDC5writeEPKhj, .-_ZN9SerialCDC5writeEPKhj
 221              		.section	.text._ZN9SerialCDCC2Ev,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZN9SerialCDCC2Ev
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/ccVPU2kc.s 			page 5


 229              		.type	_ZN9SerialCDCC2Ev, %function
 230              	_ZN9SerialCDCC2Ev:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 30B4     		push	{r4, r5}
 235 0002 0022     		movs	r2, #0
 236 0004 4FF47A75 		mov	r5, #1000
 237 0008 0121     		movs	r1, #1
 238 000a 044C     		ldr	r4, .L44
 239 000c 8560     		str	r5, [r0, #8]
 240 000e 0460     		str	r4, [r0]
 241 0010 0161     		str	r1, [r0, #16]
 242 0012 4260     		str	r2, [r0, #4]
 243 0014 C260     		str	r2, [r0, #12]
 244 0016 0275     		strb	r2, [r0, #20]
 245 0018 30BC     		pop	{r4, r5}
 246 001a 7047     		bx	lr
 247              	.L45:
 248              		.align	2
 249              	.L44:
 250 001c 08000000 		.word	.LANCHOR0+8
 251              		.size	_ZN9SerialCDCC2Ev, .-_ZN9SerialCDCC2Ev
 252              		.global	_ZN9SerialCDCC1Ev
 253              		.thumb_set _ZN9SerialCDCC1Ev,_ZN9SerialCDCC2Ev
 254              		.section	.text._ZN9SerialCDC5beginEm,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_ZN9SerialCDC5beginEm
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu softvfp
 262              		.type	_ZN9SerialCDC5beginEm, %function
 263              	_ZN9SerialCDC5beginEm:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266              		@ link register save eliminated.
 267 0000 FFF7FEBF 		b	udc_start
 268              		.size	_ZN9SerialCDC5beginEm, .-_ZN9SerialCDC5beginEm
 269              		.section	.text._ZN9SerialCDC5beginEmh,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	_ZN9SerialCDC5beginEmh
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu softvfp
 277              		.type	_ZN9SerialCDC5beginEmh, %function
 278              	_ZN9SerialCDC5beginEmh:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 FFF7FEBF 		b	udc_start
 283              		.size	_ZN9SerialCDC5beginEmh, .-_ZN9SerialCDC5beginEmh
 284              		.section	.text._ZN9SerialCDC3endEv,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccVPU2kc.s 			page 6


 286              		.p2align 2,,3
 287              		.global	_ZN9SerialCDC3endEv
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu softvfp
 292              		.type	_ZN9SerialCDC3endEv, %function
 293              	_ZN9SerialCDC3endEv:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 0023     		movs	r3, #0
 298 0002 0375     		strb	r3, [r0, #20]
 299 0004 FFF7FEBF 		b	udc_stop
 300              		.size	_ZN9SerialCDC3endEv, .-_ZN9SerialCDC3endEv
 301              		.section	.text._ZNK9SerialCDCcvbEv,"ax",%progbits
 302              		.align	1
 303              		.p2align 2,,3
 304              		.global	_ZNK9SerialCDCcvbEv
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu softvfp
 309              		.type	_ZNK9SerialCDCcvbEv, %function
 310              	_ZNK9SerialCDCcvbEv:
 311              		@ args = 0, pretend = 0, frame = 0
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313              		@ link register save eliminated.
 314 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 315 0002 7047     		bx	lr
 316              		.size	_ZNK9SerialCDCcvbEv, .-_ZNK9SerialCDCcvbEv
 317              		.section	.text._ZN9SerialCDC15cdcSetConnectedEb,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZN9SerialCDC15cdcSetConnectedEb
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu softvfp
 325              		.type	_ZN9SerialCDC15cdcSetConnectedEb, %function
 326              	_ZN9SerialCDC15cdcSetConnectedEb:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329              		@ link register save eliminated.
 330 0000 0175     		strb	r1, [r0, #20]
 331 0002 7047     		bx	lr
 332              		.size	_ZN9SerialCDC15cdcSetConnectedEb, .-_ZN9SerialCDC15cdcSetConnectedEb
 333              		.section	.text._ZN9SerialCDC11cdcRxNotifyEv,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	_ZN9SerialCDC11cdcRxNotifyEv
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu softvfp
 341              		.type	_ZN9SerialCDC11cdcRxNotifyEv, %function
 342              	_ZN9SerialCDC11cdcRxNotifyEv:
ARM GAS  /tmp/ccVPU2kc.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 7047     		bx	lr
 347              		.size	_ZN9SerialCDC11cdcRxNotifyEv, .-_ZN9SerialCDC11cdcRxNotifyEv
 348 0002 00BF     		.section	.text._ZN9SerialCDC16cdcTxEmptyNotifyEv,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	_ZN9SerialCDC16cdcTxEmptyNotifyEv
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	_ZN9SerialCDC16cdcTxEmptyNotifyEv, %function
 357              	_ZN9SerialCDC16cdcTxEmptyNotifyEv:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 0369     		ldr	r3, [r0, #16]
 361 0002 012B     		cmp	r3, #1
 362 0004 00D0     		beq	.L58
 363 0006 7047     		bx	lr
 364              	.L58:
 365 0008 10B5     		push	{r4, lr}
 366 000a 0446     		mov	r4, r0
 367 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 368 0010 2061     		str	r0, [r4, #16]
 369 0012 10BD     		pop	{r4, pc}
 370              		.size	_ZN9SerialCDC16cdcTxEmptyNotifyEv, .-_ZN9SerialCDC16cdcTxEmptyNotifyEv
 371              		.section	.text.core_cdc_enable,"ax",%progbits
 372              		.align	1
 373              		.p2align 2,,3
 374              		.global	core_cdc_enable
 375              		.syntax unified
 376              		.thumb
 377              		.thumb_func
 378              		.fpu softvfp
 379              		.type	core_cdc_enable, %function
 380              	core_cdc_enable:
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383              		@ link register save eliminated.
 384 0000 0123     		movs	r3, #1
 385 0002 024A     		ldr	r2, .L60
 386 0004 1846     		mov	r0, r3
 387 0006 1375     		strb	r3, [r2, #20]
 388 0008 7047     		bx	lr
 389              	.L61:
 390 000a 00BF     		.align	2
 391              	.L60:
 392 000c 00000000 		.word	.LANCHOR1
 393              		.size	core_cdc_enable, .-core_cdc_enable
 394              		.section	.text.core_cdc_disable,"ax",%progbits
 395              		.align	1
 396              		.p2align 2,,3
 397              		.global	core_cdc_disable
 398              		.syntax unified
 399              		.thumb
ARM GAS  /tmp/ccVPU2kc.s 			page 8


 400              		.thumb_func
 401              		.fpu softvfp
 402              		.type	core_cdc_disable, %function
 403              	core_cdc_disable:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407 0000 0022     		movs	r2, #0
 408 0002 014B     		ldr	r3, .L63
 409 0004 1A75     		strb	r2, [r3, #20]
 410 0006 7047     		bx	lr
 411              	.L64:
 412              		.align	2
 413              	.L63:
 414 0008 00000000 		.word	.LANCHOR1
 415              		.size	core_cdc_disable, .-core_cdc_disable
 416              		.section	.text.core_cdc_rx_notify,"ax",%progbits
 417              		.align	1
 418              		.p2align 2,,3
 419              		.global	core_cdc_rx_notify
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu softvfp
 424              		.type	core_cdc_rx_notify, %function
 425              	core_cdc_rx_notify:
 426              		@ args = 0, pretend = 0, frame = 0
 427              		@ frame_needed = 0, uses_anonymous_args = 0
 428              		@ link register save eliminated.
 429 0000 7047     		bx	lr
 430              		.size	core_cdc_rx_notify, .-core_cdc_rx_notify
 431 0002 00BF     		.section	.text.core_cdc_tx_empty_notify,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	core_cdc_tx_empty_notify
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	core_cdc_tx_empty_notify, %function
 440              	core_cdc_tx_empty_notify:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 10B5     		push	{r4, lr}
 444 0002 044C     		ldr	r4, .L70
 445 0004 2369     		ldr	r3, [r4, #16]
 446 0006 012B     		cmp	r3, #1
 447 0008 00D0     		beq	.L69
 448 000a 10BD     		pop	{r4, pc}
 449              	.L69:
 450 000c FFF7FEFF 		bl	udi_cdc_get_free_tx_buffer
 451 0010 2061     		str	r0, [r4, #16]
 452 0012 10BD     		pop	{r4, pc}
 453              	.L71:
 454              		.align	2
 455              	.L70:
 456 0014 00000000 		.word	.LANCHOR1
ARM GAS  /tmp/ccVPU2kc.s 			page 9


 457              		.size	core_cdc_tx_empty_notify, .-core_cdc_tx_empty_notify
 458              		.section	.text.startup._GLOBAL__sub_I__ZN9SerialCDCC2Ev,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu softvfp
 465              		.type	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, %function
 466              	_GLOBAL__sub_I__ZN9SerialCDCC2Ev:
 467              		@ args = 0, pretend = 0, frame = 0
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469              		@ link register save eliminated.
 470 0000 F0B4     		push	{r4, r5, r6, r7}
 471 0002 0024     		movs	r4, #0
 472 0004 4FF47A77 		mov	r7, #1000
 473 0008 0125     		movs	r5, #1
 474 000a 074B     		ldr	r3, .L74
 475 000c 074E     		ldr	r6, .L74+4
 476 000e 5C60     		str	r4, [r3, #4]
 477 0010 DC60     		str	r4, [r3, #12]
 478 0012 1C75     		strb	r4, [r3, #20]
 479 0014 9F60     		str	r7, [r3, #8]
 480 0016 1E60     		str	r6, [r3]
 481 0018 1D61     		str	r5, [r3, #16]
 482 001a 1846     		mov	r0, r3
 483 001c F0BC     		pop	{r4, r5, r6, r7}
 484 001e 044A     		ldr	r2, .L74+8
 485 0020 0449     		ldr	r1, .L74+12
 486 0022 FFF7FEBF 		b	__aeabi_atexit
 487              	.L75:
 488 0026 00BF     		.align	2
 489              	.L74:
 490 0028 00000000 		.word	.LANCHOR1
 491 002c 08000000 		.word	.LANCHOR0+8
 492 0030 00000000 		.word	__dso_handle
 493 0034 00000000 		.word	_ZN9SerialCDCD1Ev
 494              		.size	_GLOBAL__sub_I__ZN9SerialCDCC2Ev, .-_GLOBAL__sub_I__ZN9SerialCDCC2Ev
 495              		.section	.init_array,"aw",%init_array
 496              		.align	2
 497 0000 00000000 		.word	_GLOBAL__sub_I__ZN9SerialCDCC2Ev(target1)
 498              		.global	_ZTV9SerialCDC
 499              		.global	SerialUSB
 500              		.section	.bss.SerialUSB,"aw",%nobits
 501              		.align	2
 502              		.set	.LANCHOR1,. + 0
 503              		.type	SerialUSB, %object
 504              		.size	SerialUSB, 24
 505              	SerialUSB:
 506 0000 00000000 		.space	24
 506      00000000 
 506      00000000 
 506      00000000 
 506      00000000 
 507              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 508              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 509              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccVPU2kc.s 			page 10


 510              	_ZL28cpu_irq_prev_interrupt_state:
 511 0000 00       		.space	1
 512              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 513              		.align	2
 514              		.type	_ZL32cpu_irq_critical_section_counter, %object
 515              		.size	_ZL32cpu_irq_critical_section_counter, 4
 516              	_ZL32cpu_irq_critical_section_counter:
 517 0000 00000000 		.space	4
 518              		.section	.rodata._ZTV9SerialCDC,"a",%progbits
 519              		.align	2
 520              		.set	.LANCHOR0,. + 0
 521              		.type	_ZTV9SerialCDC, %object
 522              		.size	_ZTV9SerialCDC, 48
 523              	_ZTV9SerialCDC:
 524 0000 00000000 		.word	0
 525 0004 00000000 		.word	0
 526 0008 00000000 		.word	_ZN9SerialCDCD1Ev
 527 000c 00000000 		.word	_ZN9SerialCDCD0Ev
 528 0010 00000000 		.word	_ZN9SerialCDC5writeEh
 529 0014 00000000 		.word	_ZN9SerialCDC5writeEPKhj
 530 0018 00000000 		.word	_ZN9SerialCDC9availableEv
 531 001c 00000000 		.word	_ZN9SerialCDC4readEv
 532 0020 00000000 		.word	_ZN9SerialCDC4peekEv
 533 0024 00000000 		.word	_ZN9SerialCDC5flushEv
 534 0028 00000000 		.word	_ZNK9SerialCDC8canWriteEv
 535 002c 00000000 		.word	_ZN9SerialCDC9readBytesEPcj
 536              		.hidden	__dso_handle
 537              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
