ARM GAS  /tmp/ccJzy6Gw.s 			page 1


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
  13              		.file	"udi_cdc.c"
  14              		.section	.text.udi_cdc_comm_disable,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	udi_cdc_comm_disable
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	udi_cdc_comm_disable, %function
  23              	udi_cdc_comm_disable:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 024A     		ldr	r2, .L2
  28 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  29 0004 013B     		subs	r3, r3, #1
  30 0006 DBB2     		uxtb	r3, r3
  31 0008 1370     		strb	r3, [r2]
  32 000a 7047     		bx	lr
  33              	.L3:
  34              		.align	2
  35              	.L2:
  36 000c 00000000 		.word	.LANCHOR0
  37              		.size	udi_cdc_comm_disable, .-udi_cdc_comm_disable
  38              		.section	.text.udi_cdc_data_setup,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	udi_cdc_data_setup
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	udi_cdc_data_setup, %function
  47              	udi_cdc_data_setup:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 0020     		movs	r0, #0
  52 0002 7047     		bx	lr
  53              		.size	udi_cdc_data_setup, .-udi_cdc_data_setup
  54              		.section	.text.udi_cdc_getsetting,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	udi_cdc_getsetting
ARM GAS  /tmp/ccJzy6Gw.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	udi_cdc_getsetting, %function
  63              	udi_cdc_getsetting:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0020     		movs	r0, #0
  68 0002 7047     		bx	lr
  69              		.size	udi_cdc_getsetting, .-udi_cdc_getsetting
  70              		.section	.text.udi_cdc_line_coding_received,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	udi_cdc_line_coding_received, %function
  78              	udi_cdc_line_coding_received:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 7047     		bx	lr
  83              		.size	udi_cdc_line_coding_received, .-udi_cdc_line_coding_received
  84 0002 00BF     		.section	.text.udi_cdc_data_disable,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	udi_cdc_data_disable
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	udi_cdc_data_disable, %function
  93              	udi_cdc_data_disable:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 08B5     		push	{r3, lr}
  97 0002 064A     		ldr	r2, .L9
  98 0004 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  99 0006 013B     		subs	r3, r3, #1
 100 0008 DBB2     		uxtb	r3, r3
 101 000a 1370     		strb	r3, [r2]
 102 000c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 103 000e FFF7FEFF 		bl	core_cdc_disable
 104 0012 034B     		ldr	r3, .L9+4
 105 0014 0022     		movs	r2, #0
 106 0016 1A70     		strb	r2, [r3]
 107 0018 08BD     		pop	{r3, pc}
 108              	.L10:
 109 001a 00BF     		.align	2
 110              	.L9:
 111 001c 00000000 		.word	.LANCHOR1
 112 0020 00000000 		.word	.LANCHOR2
 113              		.size	udi_cdc_data_disable, .-udi_cdc_data_disable
 114              		.section	.text.udi_cdc_comm_setup,"ax",%progbits
ARM GAS  /tmp/ccJzy6Gw.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	udi_cdc_comm_setup
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	udi_cdc_comm_setup, %function
 123              	udi_cdc_comm_setup:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 154A     		ldr	r2, .L27
 128 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 129 0004 13F0800F 		tst	r3, #128
 130 0008 03F06003 		and	r3, r3, #96
 131 000c 0CD1     		bne	.L25
 132 000e 202B     		cmp	r3, #32
 133 0010 01D0     		beq	.L26
 134              	.L22:
 135 0012 0020     		movs	r0, #0
 136 0014 7047     		bx	lr
 137              	.L26:
 138 0016 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 139 0018 2028     		cmp	r0, #32
 140 001a 12D0     		beq	.L15
 141 001c A0F12200 		sub	r0, #34
 142 0020 B0FA80F0 		clz	r0, r0
 143 0024 4009     		lsrs	r0, r0, #5
 144 0026 7047     		bx	lr
 145              	.L25:
 146 0028 202B     		cmp	r3, #32
 147 002a F2D1     		bne	.L22
 148 002c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 149 002e 212B     		cmp	r3, #33
 150 0030 EFD1     		bne	.L22
 151 0032 D388     		ldrh	r3, [r2, #6]
 152 0034 072B     		cmp	r3, #7
 153 0036 ECD1     		bne	.L22
 154 0038 0849     		ldr	r1, .L27+4
 155 003a 9381     		strh	r3, [r2, #12]	@ movhi
 156 003c 9160     		str	r1, [r2, #8]
 157 003e 0120     		movs	r0, #1
 158 0040 7047     		bx	lr
 159              	.L15:
 160 0042 D388     		ldrh	r3, [r2, #6]
 161 0044 072B     		cmp	r3, #7
 162 0046 E4D1     		bne	.L22
 163 0048 0548     		ldr	r0, .L27+8
 164 004a 0449     		ldr	r1, .L27+4
 165 004c 1061     		str	r0, [r2, #16]
 166 004e 9381     		strh	r3, [r2, #12]	@ movhi
 167 0050 9160     		str	r1, [r2, #8]
 168 0052 0120     		movs	r0, #1
 169 0054 7047     		bx	lr
 170              	.L28:
 171 0056 00BF     		.align	2
ARM GAS  /tmp/ccJzy6Gw.s 			page 4


 172              	.L27:
 173 0058 00000000 		.word	udd_g_ctrlreq
 174 005c 00000000 		.word	.LANCHOR3
 175 0060 00000000 		.word	udi_cdc_line_coding_received
 176              		.size	udi_cdc_comm_setup, .-udi_cdc_comm_setup
 177              		.section	.text.udi_cdc_comm_enable,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	udi_cdc_comm_enable
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	udi_cdc_comm_enable, %function
 186              	udi_cdc_comm_enable:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 190 0002 104A     		ldr	r2, .L35
 191 0004 104F     		ldr	r7, .L35+4
 192 0006 114C     		ldr	r4, .L35+8
 193 0008 1149     		ldr	r1, .L35+12
 194 000a 0023     		movs	r3, #0
 195 000c A126     		movs	r6, #161
 196 000e 2025     		movs	r5, #32
 197 0010 2370     		strb	r3, [r4]
 198 0012 1670     		strb	r6, [r2]
 199 0014 3B80     		strh	r3, [r7]	@ movhi
 200 0016 4FF4E136 		mov	r6, #115200
 201 001a 0227     		movs	r7, #2
 202 001c 5570     		strb	r5, [r2, #1]
 203 001e 0825     		movs	r5, #8
 204 0020 1846     		mov	r0, r3
 205 0022 5380     		strh	r3, [r2, #2]	@ movhi
 206 0024 9380     		strh	r3, [r2, #4]	@ movhi
 207 0026 1381     		strh	r3, [r2, #8]	@ movhi
 208 0028 D780     		strh	r7, [r2, #6]	@ movhi
 209 002a 0B71     		strb	r3, [r1, #4]
 210 002c 4B71     		strb	r3, [r1, #5]
 211 002e 0E60     		str	r6, [r1]
 212 0030 8D71     		strb	r5, [r1, #6]
 213 0032 FFF7FEFF 		bl	core_cdc_enable
 214 0036 18B1     		cbz	r0, .L30
 215 0038 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 216 003a 0133     		adds	r3, r3, #1
 217 003c DBB2     		uxtb	r3, r3
 218 003e 2370     		strb	r3, [r4]
 219              	.L30:
 220 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 221              	.L36:
 222 0042 00BF     		.align	2
 223              	.L35:
 224 0044 00000000 		.word	.LANCHOR5
 225 0048 00000000 		.word	.LANCHOR4
 226 004c 00000000 		.word	.LANCHOR0
 227 0050 00000000 		.word	.LANCHOR3
 228              		.size	udi_cdc_comm_enable, .-udi_cdc_comm_enable
ARM GAS  /tmp/ccJzy6Gw.s 			page 5


 229              		.section	.text.udi_cdc_ctrl_state_notify.isra.5.part.6,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv4-sp-d16
 236              		.type	udi_cdc_ctrl_state_notify.isra.5.part.6, %function
 237              	udi_cdc_ctrl_state_notify.isra.5.part.6:
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240 0000 30B5     		push	{r4, r5, lr}
 241 0002 084A     		ldr	r2, .L39
 242 0004 084C     		ldr	r4, .L39+4
 243 0006 094B     		ldr	r3, .L39+8
 244 0008 1588     		ldrh	r5, [r2]
 245 000a 2581     		strh	r5, [r4, #8]	@ movhi
 246 000c 83B0     		sub	sp, sp, #12
 247 000e 2246     		mov	r2, r4
 248 0010 0093     		str	r3, [sp]
 249 0012 0021     		movs	r1, #0
 250 0014 0A23     		movs	r3, #10
 251 0016 FFF7FEFF 		bl	udd_ep_run
 252 001a 054B     		ldr	r3, .L39+12
 253 001c 1870     		strb	r0, [r3]
 254 001e 03B0     		add	sp, sp, #12
 255              		@ sp needed
 256 0020 30BD     		pop	{r4, r5, pc}
 257              	.L40:
 258 0022 00BF     		.align	2
 259              	.L39:
 260 0024 00000000 		.word	.LANCHOR4
 261 0028 00000000 		.word	.LANCHOR5
 262 002c 00000000 		.word	udi_cdc_serial_state_msg_sent
 263 0030 00000000 		.word	.LANCHOR6
 264              		.size	udi_cdc_ctrl_state_notify.isra.5.part.6, .-udi_cdc_ctrl_state_notify.isra.5.part.6
 265              		.section	.text.udi_cdc_serial_state_msg_sent,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	udi_cdc_serial_state_msg_sent, %function
 273              	udi_cdc_serial_state_msg_sent:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 0D48     		ldr	r0, .L44
 278 0002 0388     		ldrh	r3, [r0]
 279 0004 23F07C03 		bic	r3, r3, #124
 280 0008 70B4     		push	{r4, r5, r6}
 281 000a 1B04     		lsls	r3, r3, #16
 282 000c 0B4C     		ldr	r4, .L44+4
 283 000e 0C4D     		ldr	r5, .L44+8
 284 0010 2189     		ldrh	r1, [r4, #8]
 285 0012 1B0C     		lsrs	r3, r3, #16
ARM GAS  /tmp/ccJzy6Gw.s 			page 6


 286 0014 0380     		strh	r3, [r0]	@ movhi
 287 0016 0088     		ldrh	r0, [r0]
 288 0018 21F07C03 		bic	r3, r1, #124
 289 001c 9BB2     		uxth	r3, r3
 290 001e 81B2     		uxth	r1, r0
 291 0020 0026     		movs	r6, #0
 292 0022 8B42     		cmp	r3, r1
 293 0024 2381     		strh	r3, [r4, #8]	@ movhi
 294 0026 2E70     		strb	r6, [r5]
 295 0028 03D0     		beq	.L41
 296 002a 1046     		mov	r0, r2
 297 002c 70BC     		pop	{r4, r5, r6}
 298 002e FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 299              	.L41:
 300 0032 70BC     		pop	{r4, r5, r6}
 301 0034 7047     		bx	lr
 302              	.L45:
 303 0036 00BF     		.align	2
 304              	.L44:
 305 0038 00000000 		.word	.LANCHOR4
 306 003c 00000000 		.word	.LANCHOR5
 307 0040 00000000 		.word	.LANCHOR6
 308              		.size	udi_cdc_serial_state_msg_sent, .-udi_cdc_serial_state_msg_sent
 309              		.section	.text.udi_cdc_ctrl_state_change.isra.7,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	udi_cdc_ctrl_state_change.isra.7, %function
 317              	udi_cdc_ctrl_state_change.isra.7:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		@ link register save eliminated.
 321 0000 30B4     		push	{r4, r5}
 322              		.syntax unified
 323              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 324 0002 EFF31085 		MRS r5, primask
 325              	@ 0 "" 2
 326              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 327 0006 72B6     		cpsid i
 328              	@ 0 "" 2
 329              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 330 0008 BFF35F8F 		dmb
 331              	@ 0 "" 2
 332              		.thumb
 333              		.syntax unified
 334 000c 114C     		ldr	r4, .L53
 335 000e 0023     		movs	r3, #0
 336 0010 2370     		strb	r3, [r4]
 337 0012 114B     		ldr	r3, .L53+4
 338 0014 1A88     		ldrh	r2, [r3]
 339 0016 92B2     		uxth	r2, r2
 340 0018 88B1     		cbz	r0, .L47
 341 001a 1143     		orrs	r1, r1, r2
 342 001c 1980     		strh	r1, [r3]	@ movhi
ARM GAS  /tmp/ccJzy6Gw.s 			page 7


 343 001e 9DB1     		cbz	r5, .L52
 344              	.L49:
 345 0020 0E4A     		ldr	r2, .L53+8
 346 0022 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 347 0024 4AB9     		cbnz	r2, .L46
 348 0026 0E4A     		ldr	r2, .L53+12
 349 0028 1B88     		ldrh	r3, [r3]
 350 002a 1289     		ldrh	r2, [r2, #8]
 351 002c 9BB2     		uxth	r3, r3
 352 002e 9A42     		cmp	r2, r3
 353 0030 03D0     		beq	.L46
 354 0032 8320     		movs	r0, #131
 355 0034 30BC     		pop	{r4, r5}
 356 0036 FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 357              	.L46:
 358 003a 30BC     		pop	{r4, r5}
 359 003c 7047     		bx	lr
 360              	.L47:
 361 003e 22EA0101 		bic	r1, r2, r1
 362 0042 1980     		strh	r1, [r3]	@ movhi
 363 0044 002D     		cmp	r5, #0
 364 0046 EBD1     		bne	.L49
 365              	.L52:
 366 0048 0122     		movs	r2, #1
 367 004a 2270     		strb	r2, [r4]
 368              		.syntax unified
 369              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 370 004c BFF35F8F 		dmb
 371              	@ 0 "" 2
 372              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 373 0050 62B6     		cpsie i
 374              	@ 0 "" 2
 375              		.thumb
 376              		.syntax unified
 377 0052 E5E7     		b	.L49
 378              	.L54:
 379              		.align	2
 380              	.L53:
 381 0054 00000000 		.word	g_interrupt_enabled
 382 0058 00000000 		.word	.LANCHOR4
 383 005c 00000000 		.word	.LANCHOR6
 384 0060 00000000 		.word	.LANCHOR5
 385              		.size	udi_cdc_ctrl_state_change.isra.7, .-udi_cdc_ctrl_state_change.isra.7
 386              		.section	.text.udi_cdc_tx_send.isra.3,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	udi_cdc_tx_send.isra.3, %function
 394              	udi_cdc_tx_send.isra.3:
 395              		@ args = 0, pretend = 0, frame = 8
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 398 0004 484E     		ldr	r6, .L80
 399 0006 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
ARM GAS  /tmp/ccJzy6Gw.s 			page 8


 400 0008 85B0     		sub	sp, sp, #20
 401 000a 13B1     		cbz	r3, .L77
 402              	.L55:
 403 000c 05B0     		add	sp, sp, #20
 404              		@ sp needed
 405 000e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 406              	.L77:
 407 0012 FFF7FEFF 		bl	udd_is_high_speed
 408 0016 DFF82481 		ldr	r8, .L80+20
 409 001a B8F80040 		ldrh	r4, [r8]
 410 001e 0028     		cmp	r0, #0
 411 0020 48D1     		bne	.L78
 412 0022 FFF7FEFF 		bl	udd_get_frame_number
 413 0026 8442     		cmp	r4, r0
 414 0028 F0D0     		beq	.L55
 415              	.L62:
 416              		.syntax unified
 417              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 418 002a EFF31082 		MRS r2, primask
 419              	@ 0 "" 2
 420              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 421 002e 72B6     		cpsid i
 422              	@ 0 "" 2
 423              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 424 0030 BFF35F8F 		dmb
 425              	@ 0 "" 2
 426              		.thumb
 427              		.syntax unified
 428 0034 DFF808B1 		ldr	fp, .L80+24
 429 0038 DFF808A1 		ldr	r10, .L80+28
 430 003c DFF80891 		ldr	r9, .L80+32
 431 0040 0023     		movs	r3, #0
 432 0042 8BF80030 		strb	r3, [fp]
 433 0046 9AF80040 		ldrb	r4, [r10]	@ zero_extendqisi2
 434 004a E4B2     		uxtb	r4, r4
 435 004c 2746     		mov	r7, r4
 436 004e 39F81430 		ldrh	r3, [r9, r4, lsl #1]
 437 0052 002B     		cmp	r3, #0
 438 0054 3BD0     		beq	.L60
 439 0056 354D     		ldr	r5, .L80+4
 440              	.L61:
 441 0058 354B     		ldr	r3, .L80+8
 442 005a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 443 005c 0021     		movs	r1, #0
 444 005e 2980     		strh	r1, [r5]	@ movhi
 445 0060 6BBB     		cbnz	r3, .L66
 446 0062 B4FA84F4 		clz	r4, r4
 447 0066 6409     		lsrs	r4, r4, #5
 448 0068 8AF80040 		strb	r4, [r10]
 449              	.L67:
 450 006c 0123     		movs	r3, #1
 451 006e 3370     		strb	r3, [r6]
 452 0070 002A     		cmp	r2, #0
 453 0072 4CD0     		beq	.L79
 454              	.L68:
 455 0074 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 456 0078 B3F5A07F 		cmp	r3, #320
ARM GAS  /tmp/ccJzy6Gw.s 			page 9


 457 007c 14BF     		ite	ne
 458 007e 0124     		movne	r4, #1
 459 0080 0024     		moveq	r4, #0
 460 0082 20D0     		beq	.L69
 461 0084 FFF7FEFF 		bl	udd_is_high_speed
 462 0088 0028     		cmp	r0, #0
 463 008a 46D0     		beq	.L70
 464 008c FFF7FEFF 		bl	udd_get_micro_frame_number
 465 0090 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 466 0094 A8F80000 		strh	r0, [r8]	@ movhi
 467              	.L71:
 468 0098 2648     		ldr	r0, .L80+12
 469 009a 274A     		ldr	r2, .L80+16
 470 009c 0092     		str	r2, [sp]
 471 009e 07EB8707 		add	r7, r7, r7, lsl #2
 472 00a2 00EB8712 		add	r2, r0, r7, lsl #6
 473 00a6 2146     		mov	r1, r4
 474 00a8 8120     		movs	r0, #129
 475 00aa FFF7FEFF 		bl	udd_ep_run
 476 00ae 05B0     		add	sp, sp, #20
 477              		@ sp needed
 478 00b0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 479              	.L78:
 480 00b4 FFF7FEFF 		bl	udd_get_micro_frame_number
 481 00b8 8442     		cmp	r4, r0
 482 00ba B6D1     		bne	.L62
 483 00bc A6E7     		b	.L55
 484              	.L66:
 485 00be B4FA84F7 		clz	r7, r4
 486 00c2 7F09     		lsrs	r7, r7, #5
 487 00c4 D2E7     		b	.L67
 488              	.L69:
 489 00c6 0022     		movs	r2, #0
 490 00c8 A8F80020 		strh	r2, [r8]	@ movhi
 491 00cc E4E7     		b	.L71
 492              	.L60:
 493 00ce 174D     		ldr	r5, .L80+4
 494 00d0 0392     		str	r2, [sp, #12]
 495 00d2 2B88     		ldrh	r3, [r5]
 496 00d4 0133     		adds	r3, r3, #1
 497 00d6 2B80     		strh	r3, [r5]	@ movhi
 498 00d8 FFF7FEFF 		bl	udd_is_high_speed
 499 00dc 039A     		ldr	r2, [sp, #12]
 500 00de 58B9     		cbnz	r0, .L63
 501 00e0 2B88     		ldrh	r3, [r5]
 502 00e2 632B     		cmp	r3, #99
 503 00e4 08D8     		bhi	.L63
 504              	.L65:
 505 00e6 002A     		cmp	r2, #0
 506 00e8 90D1     		bne	.L55
 507 00ea 0123     		movs	r3, #1
 508 00ec 8BF80030 		strb	r3, [fp]
 509              		.syntax unified
 510              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 511 00f0 BFF35F8F 		dmb
 512              	@ 0 "" 2
 513              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccJzy6Gw.s 			page 10


 514 00f4 62B6     		cpsie i
 515              	@ 0 "" 2
 516              		.thumb
 517              		.syntax unified
 518 00f6 89E7     		b	.L55
 519              	.L63:
 520 00f8 0392     		str	r2, [sp, #12]
 521 00fa FFF7FEFF 		bl	udd_is_high_speed
 522 00fe 039A     		ldr	r2, [sp, #12]
 523 0100 0028     		cmp	r0, #0
 524 0102 A9D0     		beq	.L61
 525 0104 2B88     		ldrh	r3, [r5]
 526 0106 B3F5487F 		cmp	r3, #800
 527 010a ECD3     		bcc	.L65
 528 010c A4E7     		b	.L61
 529              	.L79:
 530 010e 8BF80030 		strb	r3, [fp]
 531              		.syntax unified
 532              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 533 0112 BFF35F8F 		dmb
 534              	@ 0 "" 2
 535              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 536 0116 62B6     		cpsie i
 537              	@ 0 "" 2
 538              		.thumb
 539              		.syntax unified
 540 0118 ACE7     		b	.L68
 541              	.L70:
 542 011a FFF7FEFF 		bl	udd_get_frame_number
 543 011e 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 544 0122 A8F80000 		strh	r0, [r8]	@ movhi
 545 0126 B7E7     		b	.L71
 546              	.L81:
 547              		.align	2
 548              	.L80:
 549 0128 00000000 		.word	.LANCHOR7
 550 012c 00000000 		.word	.LANCHOR11
 551 0130 00000000 		.word	.LANCHOR12
 552 0134 00000000 		.word	.LANCHOR13
 553 0138 00000000 		.word	udi_cdc_data_sent
 554 013c 00000000 		.word	.LANCHOR8
 555 0140 00000000 		.word	g_interrupt_enabled
 556 0144 00000000 		.word	.LANCHOR9
 557 0148 00000000 		.word	.LANCHOR10
 558              		.size	udi_cdc_tx_send.isra.3, .-udi_cdc_tx_send.isra.3
 559              		.section	.text.udi_cdc_data_sof_notify,"ax",%progbits
 560              		.align	1
 561              		.p2align 2,,3
 562              		.global	udi_cdc_data_sof_notify
 563              		.syntax unified
 564              		.thumb
 565              		.thumb_func
 566              		.fpu fpv4-sp-d16
 567              		.type	udi_cdc_data_sof_notify, %function
 568              	udi_cdc_data_sof_notify:
 569              		@ args = 0, pretend = 0, frame = 0
 570              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJzy6Gw.s 			page 11


 571              		@ link register save eliminated.
 572 0000 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 573              		.size	udi_cdc_data_sof_notify, .-udi_cdc_data_sof_notify
 574              		.section	.text.udi_cdc_data_sent,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.syntax unified
 578              		.thumb
 579              		.thumb_func
 580              		.fpu fpv4-sp-d16
 581              		.type	udi_cdc_data_sent, %function
 582              	udi_cdc_data_sent:
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585 0000 88B9     		cbnz	r0, .L83
 586 0002 70B5     		push	{r4, r5, r6, lr}
 587 0004 0B4B     		ldr	r3, .L93
 588 0006 0C4C     		ldr	r4, .L93+4
 589 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 590 000a 0C4E     		ldr	r6, .L93+8
 591 000c 0C4D     		ldr	r5, .L93+12
 592 000e 3070     		strb	r0, [r6]
 593 0010 B3FA83F3 		clz	r3, r3
 594 0014 5B09     		lsrs	r3, r3, #5
 595 0016 2870     		strb	r0, [r5]
 596 0018 24F81300 		strh	r0, [r4, r3, lsl #1]	@ movhi
 597 001c 21B9     		cbnz	r1, .L92
 598 001e BDE87040 		pop	{r4, r5, r6, lr}
 599 0022 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 600              	.L83:
 601 0026 7047     		bx	lr
 602              	.L92:
 603 0028 FFF7FEFF 		bl	core_cdc_tx_empty_notify
 604 002c BDE87040 		pop	{r4, r5, r6, lr}
 605 0030 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 606              	.L94:
 607              		.align	2
 608              	.L93:
 609 0034 00000000 		.word	.LANCHOR9
 610 0038 00000000 		.word	.LANCHOR10
 611 003c 00000000 		.word	.LANCHOR12
 612 0040 00000000 		.word	.LANCHOR7
 613              		.size	udi_cdc_data_sent, .-udi_cdc_data_sent
 614              		.section	.text.udi_cdc_ctrl_signal_dcd,"ax",%progbits
 615              		.align	1
 616              		.p2align 2,,3
 617              		.global	udi_cdc_ctrl_signal_dcd
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
 621              		.fpu fpv4-sp-d16
 622              		.type	udi_cdc_ctrl_signal_dcd, %function
 623              	udi_cdc_ctrl_signal_dcd:
 624              		@ args = 0, pretend = 0, frame = 0
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 626              		@ link register save eliminated.
 627 0000 0121     		movs	r1, #1
ARM GAS  /tmp/ccJzy6Gw.s 			page 12


 628 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 629              		.size	udi_cdc_ctrl_signal_dcd, .-udi_cdc_ctrl_signal_dcd
 630 0006 00BF     		.section	.text.udi_cdc_ctrl_signal_dsr,"ax",%progbits
 631              		.align	1
 632              		.p2align 2,,3
 633              		.global	udi_cdc_ctrl_signal_dsr
 634              		.syntax unified
 635              		.thumb
 636              		.thumb_func
 637              		.fpu fpv4-sp-d16
 638              		.type	udi_cdc_ctrl_signal_dsr, %function
 639              	udi_cdc_ctrl_signal_dsr:
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642              		@ link register save eliminated.
 643 0000 0221     		movs	r1, #2
 644 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 645              		.size	udi_cdc_ctrl_signal_dsr, .-udi_cdc_ctrl_signal_dsr
 646 0006 00BF     		.section	.text.udi_cdc_signal_framing_error,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	udi_cdc_signal_framing_error
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu fpv4-sp-d16
 654              		.type	udi_cdc_signal_framing_error, %function
 655              	udi_cdc_signal_framing_error:
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658              		@ link register save eliminated.
 659 0000 1021     		movs	r1, #16
 660 0002 0120     		movs	r0, #1
 661 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 662              		.size	udi_cdc_signal_framing_error, .-udi_cdc_signal_framing_error
 663              		.section	.text.udi_cdc_signal_parity_error,"ax",%progbits
 664              		.align	1
 665              		.p2align 2,,3
 666              		.global	udi_cdc_signal_parity_error
 667              		.syntax unified
 668              		.thumb
 669              		.thumb_func
 670              		.fpu fpv4-sp-d16
 671              		.type	udi_cdc_signal_parity_error, %function
 672              	udi_cdc_signal_parity_error:
 673              		@ args = 0, pretend = 0, frame = 0
 674              		@ frame_needed = 0, uses_anonymous_args = 0
 675              		@ link register save eliminated.
 676 0000 2021     		movs	r1, #32
 677 0002 0120     		movs	r0, #1
 678 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 679              		.size	udi_cdc_signal_parity_error, .-udi_cdc_signal_parity_error
 680              		.section	.text.udi_cdc_signal_overrun,"ax",%progbits
 681              		.align	1
 682              		.p2align 2,,3
 683              		.global	udi_cdc_signal_overrun
 684              		.syntax unified
ARM GAS  /tmp/ccJzy6Gw.s 			page 13


 685              		.thumb
 686              		.thumb_func
 687              		.fpu fpv4-sp-d16
 688              		.type	udi_cdc_signal_overrun, %function
 689              	udi_cdc_signal_overrun:
 690              		@ args = 0, pretend = 0, frame = 0
 691              		@ frame_needed = 0, uses_anonymous_args = 0
 692              		@ link register save eliminated.
 693 0000 4021     		movs	r1, #64
 694 0002 0120     		movs	r0, #1
 695 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 696              		.size	udi_cdc_signal_overrun, .-udi_cdc_signal_overrun
 697              		.section	.text.udi_cdc_multi_ctrl_signal_dcd,"ax",%progbits
 698              		.align	1
 699              		.p2align 2,,3
 700              		.global	udi_cdc_multi_ctrl_signal_dcd
 701              		.syntax unified
 702              		.thumb
 703              		.thumb_func
 704              		.fpu fpv4-sp-d16
 705              		.type	udi_cdc_multi_ctrl_signal_dcd, %function
 706              	udi_cdc_multi_ctrl_signal_dcd:
 707              		@ args = 0, pretend = 0, frame = 0
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709              		@ link register save eliminated.
 710 0000 0846     		mov	r0, r1
 711 0002 0121     		movs	r1, #1
 712 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 713              		.size	udi_cdc_multi_ctrl_signal_dcd, .-udi_cdc_multi_ctrl_signal_dcd
 714              		.section	.text.udi_cdc_multi_ctrl_signal_dsr,"ax",%progbits
 715              		.align	1
 716              		.p2align 2,,3
 717              		.global	udi_cdc_multi_ctrl_signal_dsr
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu fpv4-sp-d16
 722              		.type	udi_cdc_multi_ctrl_signal_dsr, %function
 723              	udi_cdc_multi_ctrl_signal_dsr:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 727 0000 0846     		mov	r0, r1
 728 0002 0221     		movs	r1, #2
 729 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 730              		.size	udi_cdc_multi_ctrl_signal_dsr, .-udi_cdc_multi_ctrl_signal_dsr
 731              		.section	.text.udi_cdc_multi_signal_framing_error,"ax",%progbits
 732              		.align	1
 733              		.p2align 2,,3
 734              		.global	udi_cdc_multi_signal_framing_error
 735              		.syntax unified
 736              		.thumb
 737              		.thumb_func
 738              		.fpu fpv4-sp-d16
 739              		.type	udi_cdc_multi_signal_framing_error, %function
 740              	udi_cdc_multi_signal_framing_error:
 741              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJzy6Gw.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743              		@ link register save eliminated.
 744 0000 1021     		movs	r1, #16
 745 0002 0120     		movs	r0, #1
 746 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 747              		.size	udi_cdc_multi_signal_framing_error, .-udi_cdc_multi_signal_framing_error
 748              		.section	.text.udi_cdc_multi_signal_parity_error,"ax",%progbits
 749              		.align	1
 750              		.p2align 2,,3
 751              		.global	udi_cdc_multi_signal_parity_error
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu fpv4-sp-d16
 756              		.type	udi_cdc_multi_signal_parity_error, %function
 757              	udi_cdc_multi_signal_parity_error:
 758              		@ args = 0, pretend = 0, frame = 0
 759              		@ frame_needed = 0, uses_anonymous_args = 0
 760              		@ link register save eliminated.
 761 0000 2021     		movs	r1, #32
 762 0002 0120     		movs	r0, #1
 763 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 764              		.size	udi_cdc_multi_signal_parity_error, .-udi_cdc_multi_signal_parity_error
 765              		.section	.text.udi_cdc_multi_signal_overrun,"ax",%progbits
 766              		.align	1
 767              		.p2align 2,,3
 768              		.global	udi_cdc_multi_signal_overrun
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv4-sp-d16
 773              		.type	udi_cdc_multi_signal_overrun, %function
 774              	udi_cdc_multi_signal_overrun:
 775              		@ args = 0, pretend = 0, frame = 0
 776              		@ frame_needed = 0, uses_anonymous_args = 0
 777              		@ link register save eliminated.
 778 0000 4021     		movs	r1, #64
 779 0002 0120     		movs	r0, #1
 780 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 781              		.size	udi_cdc_multi_signal_overrun, .-udi_cdc_multi_signal_overrun
 782              		.section	.text.udi_cdc_multi_get_nb_received_data,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	udi_cdc_multi_get_nb_received_data
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	udi_cdc_multi_get_nb_received_data, %function
 791              	udi_cdc_multi_get_nb_received_data:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 30B4     		push	{r4, r5}
 796              		.syntax unified
 797              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 798 0002 EFF31083 		MRS r3, primask
ARM GAS  /tmp/ccJzy6Gw.s 			page 15


 799              	@ 0 "" 2
 800              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 801 0006 72B6     		cpsid i
 802              	@ 0 "" 2
 803              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 804 0008 BFF35F8F 		dmb
 805              	@ 0 "" 2
 806              		.thumb
 807              		.syntax unified
 808 000c 0A4C     		ldr	r4, .L108
 809 000e 0B49     		ldr	r1, .L108+4
 810 0010 0B4A     		ldr	r2, .L108+8
 811 0012 0C4D     		ldr	r5, .L108+12
 812 0014 0020     		movs	r0, #0
 813 0016 2070     		strb	r0, [r4]
 814 0018 0888     		ldrh	r0, [r1]
 815 001a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 816 001c C9B2     		uxtb	r1, r1
 817 001e 82B2     		uxth	r2, r0
 818 0020 35F81100 		ldrh	r0, [r5, r1, lsl #1]
 819 0024 80B2     		uxth	r0, r0
 820 0026 801A     		subs	r0, r0, r2
 821 0028 23B9     		cbnz	r3, .L105
 822 002a 0123     		movs	r3, #1
 823 002c 2370     		strb	r3, [r4]
 824              		.syntax unified
 825              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 826 002e BFF35F8F 		dmb
 827              	@ 0 "" 2
 828              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 829 0032 62B6     		cpsie i
 830              	@ 0 "" 2
 831              		.thumb
 832              		.syntax unified
 833              	.L105:
 834 0034 30BC     		pop	{r4, r5}
 835 0036 7047     		bx	lr
 836              	.L109:
 837              		.align	2
 838              	.L108:
 839 0038 00000000 		.word	g_interrupt_enabled
 840 003c 00000000 		.word	.LANCHOR14
 841 0040 00000000 		.word	.LANCHOR15
 842 0044 00000000 		.word	.LANCHOR16
 843              		.size	udi_cdc_multi_get_nb_received_data, .-udi_cdc_multi_get_nb_received_data
 844              		.section	.text.udi_cdc_rx_start.isra.10,"ax",%progbits
 845              		.align	1
 846              		.p2align 2,,3
 847              		.syntax unified
 848              		.thumb
 849              		.thumb_func
 850              		.fpu fpv4-sp-d16
 851              		.type	udi_cdc_rx_start.isra.10, %function
 852              	udi_cdc_rx_start.isra.10:
 853              		@ args = 0, pretend = 0, frame = 0
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855 0000 F0B5     		push	{r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccJzy6Gw.s 			page 16


 856 0002 83B0     		sub	sp, sp, #12
 857              		.syntax unified
 858              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 859 0004 EFF31080 		MRS r0, primask
 860              	@ 0 "" 2
 861              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 862 0008 72B6     		cpsid i
 863              	@ 0 "" 2
 864              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 865 000a BFF35F8F 		dmb
 866              	@ 0 "" 2
 867              		.thumb
 868              		.syntax unified
 869 000e 2249     		ldr	r1, .L124
 870 0010 224E     		ldr	r6, .L124+4
 871 0012 234D     		ldr	r5, .L124+8
 872 0014 0023     		movs	r3, #0
 873 0016 0B70     		strb	r3, [r1]
 874 0018 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 875 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 876 001c 5BB9     		cbnz	r3, .L111
 877 001e E4B2     		uxtb	r4, r4
 878 0020 03F0FF0E 		and	lr, r3, #255
 879 0024 1F4F     		ldr	r7, .L124+12
 880 0026 204B     		ldr	r3, .L124+16
 881 0028 3A88     		ldrh	r2, [r7]
 882 002a 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 883 002e 92B2     		uxth	r2, r2
 884 0030 9BB2     		uxth	r3, r3
 885 0032 9A42     		cmp	r2, r3
 886 0034 03D2     		bcs	.L112
 887              	.L111:
 888 0036 F0B1     		cbz	r0, .L121
 889 0038 0020     		movs	r0, #0
 890 003a 03B0     		add	sp, sp, #12
 891              		@ sp needed
 892 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 893              	.L112:
 894 003e B4FA84F3 		clz	r3, r4
 895 0042 5B09     		lsrs	r3, r3, #5
 896 0044 0122     		movs	r2, #1
 897 0046 A7F800E0 		strh	lr, [r7]	@ movhi
 898 004a 3370     		strb	r3, [r6]
 899 004c 2A70     		strb	r2, [r5]
 900 004e E8B1     		cbz	r0, .L122
 901              	.L114:
 902 0050 0020     		movs	r0, #0
 903 0052 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 904 0056 A8B9     		cbnz	r0, .L123
 905              	.L115:
 906 0058 144A     		ldr	r2, .L124+20
 907 005a 154B     		ldr	r3, .L124+24
 908 005c 0093     		str	r3, [sp]
 909 005e 04EB8404 		add	r4, r4, r4, lsl #2
 910 0062 02EB8412 		add	r2, r2, r4, lsl #6
 911 0066 4FF4A073 		mov	r3, #320
 912 006a 0121     		movs	r1, #1
ARM GAS  /tmp/ccJzy6Gw.s 			page 17


 913 006c 0220     		movs	r0, #2
 914 006e FFF7FEFF 		bl	udd_ep_run
 915 0072 03B0     		add	sp, sp, #12
 916              		@ sp needed
 917 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 918              	.L121:
 919 0076 0123     		movs	r3, #1
 920 0078 0B70     		strb	r3, [r1]
 921              		.syntax unified
 922              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 923 007a BFF35F8F 		dmb
 924              	@ 0 "" 2
 925              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 926 007e 62B6     		cpsie i
 927              	@ 0 "" 2
 928              		.thumb
 929              		.syntax unified
 930 0080 03B0     		add	sp, sp, #12
 931              		@ sp needed
 932 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 933              	.L123:
 934 0084 0020     		movs	r0, #0
 935 0086 FFF7FEFF 		bl	core_cdc_rx_notify
 936 008a E5E7     		b	.L115
 937              	.L122:
 938 008c 0A70     		strb	r2, [r1]
 939              		.syntax unified
 940              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 941 008e BFF35F8F 		dmb
 942              	@ 0 "" 2
 943              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 944 0092 62B6     		cpsie i
 945              	@ 0 "" 2
 946              		.thumb
 947              		.syntax unified
 948 0094 DCE7     		b	.L114
 949              	.L125:
 950 0096 00BF     		.align	2
 951              	.L124:
 952 0098 00000000 		.word	g_interrupt_enabled
 953 009c 00000000 		.word	.LANCHOR15
 954 00a0 00000000 		.word	.LANCHOR17
 955 00a4 00000000 		.word	.LANCHOR14
 956 00a8 00000000 		.word	.LANCHOR16
 957 00ac 00000000 		.word	.LANCHOR18
 958 00b0 00000000 		.word	udi_cdc_data_received
 959              		.size	udi_cdc_rx_start.isra.10, .-udi_cdc_rx_start.isra.10
 960              		.section	.text.udi_cdc_data_enable,"ax",%progbits
 961              		.align	1
 962              		.p2align 2,,3
 963              		.global	udi_cdc_data_enable
 964              		.syntax unified
 965              		.thumb
 966              		.thumb_func
 967              		.fpu fpv4-sp-d16
 968              		.type	udi_cdc_data_enable, %function
 969              	udi_cdc_data_enable:
ARM GAS  /tmp/ccJzy6Gw.s 			page 18


 970              		@ args = 0, pretend = 0, frame = 0
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 972 0000 70B5     		push	{r4, r5, r6, lr}
 973 0002 134B     		ldr	r3, .L132
 974 0004 1348     		ldr	r0, .L132+4
 975 0006 1449     		ldr	r1, .L132+8
 976 0008 144A     		ldr	r2, .L132+12
 977 000a 154D     		ldr	r5, .L132+16
 978 000c 154E     		ldr	r6, .L132+20
 979 000e 0024     		movs	r4, #0
 980 0010 2C70     		strb	r4, [r5]
 981 0012 1C80     		strh	r4, [r3]	@ movhi
 982 0014 0470     		strb	r4, [r0]
 983 0016 5C80     		strh	r4, [r3, #2]	@ movhi
 984 0018 0C70     		strb	r4, [r1]
 985 001a 3480     		strh	r4, [r6]	@ movhi
 986 001c 1470     		strb	r4, [r2]
 987 001e FFF7FEFF 		bl	udi_cdc_tx_send.isra.3
 988 0022 114B     		ldr	r3, .L132+24
 989 0024 1148     		ldr	r0, .L132+28
 990 0026 1249     		ldr	r1, .L132+32
 991 0028 124A     		ldr	r2, .L132+36
 992 002a 0470     		strb	r4, [r0]
 993 002c 0C70     		strb	r4, [r1]
 994 002e 1C80     		strh	r4, [r3]	@ movhi
 995 0030 5C80     		strh	r4, [r3, #2]	@ movhi
 996 0032 1480     		strh	r4, [r2]	@ movhi
 997 0034 FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 998 0038 48B1     		cbz	r0, .L127
 999 003a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1000 003c 0133     		adds	r3, r3, #1
 1001 003e DBB2     		uxtb	r3, r3
 1002 0040 2B70     		strb	r3, [r5]
 1003 0042 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1004 0044 DBB2     		uxtb	r3, r3
 1005 0046 012B     		cmp	r3, #1
 1006 0048 04BF     		itt	eq
 1007 004a 0B4A     		ldreq	r2, .L132+40
 1008 004c 1370     		strbeq	r3, [r2]
 1009              	.L127:
 1010 004e 70BD     		pop	{r4, r5, r6, pc}
 1011              	.L133:
 1012              		.align	2
 1013              	.L132:
 1014 0050 00000000 		.word	.LANCHOR10
 1015 0054 00000000 		.word	.LANCHOR7
 1016 0058 00000000 		.word	.LANCHOR12
 1017 005c 00000000 		.word	.LANCHOR9
 1018 0060 00000000 		.word	.LANCHOR1
 1019 0064 00000000 		.word	.LANCHOR8
 1020 0068 00000000 		.word	.LANCHOR16
 1021 006c 00000000 		.word	.LANCHOR17
 1022 0070 00000000 		.word	.LANCHOR15
 1023 0074 00000000 		.word	.LANCHOR14
 1024 0078 00000000 		.word	.LANCHOR2
 1025              		.size	udi_cdc_data_enable, .-udi_cdc_data_enable
 1026              		.section	.text.udi_cdc_data_received,"ax",%progbits
ARM GAS  /tmp/ccJzy6Gw.s 			page 19


 1027              		.align	1
 1028              		.p2align 2,,3
 1029              		.syntax unified
 1030              		.thumb
 1031              		.thumb_func
 1032              		.fpu fpv4-sp-d16
 1033              		.type	udi_cdc_data_received, %function
 1034              	udi_cdc_data_received:
 1035              		@ args = 0, pretend = 0, frame = 0
 1036              		@ frame_needed = 0, uses_anonymous_args = 0
 1037 0000 08BB     		cbnz	r0, .L138
 1038 0002 10B5     		push	{r4, lr}
 1039 0004 104B     		ldr	r3, .L142
 1040 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1041 0008 B3FA83F3 		clz	r3, r3
 1042 000c 82B0     		sub	sp, sp, #8
 1043 000e 5B09     		lsrs	r3, r3, #5
 1044 0010 51B1     		cbz	r1, .L141
 1045 0012 0E4C     		ldr	r4, .L142+4
 1046 0014 0E4A     		ldr	r2, .L142+8
 1047 0016 89B2     		uxth	r1, r1
 1048 0018 24F81310 		strh	r1, [r4, r3, lsl #1]	@ movhi
 1049 001c 1070     		strb	r0, [r2]
 1050 001e 02B0     		add	sp, sp, #8
 1051              		@ sp needed
 1052 0020 BDE81040 		pop	{r4, lr}
 1053 0024 FFF7FEBF 		b	udi_cdc_rx_start.isra.10
 1054              	.L141:
 1055 0028 1046     		mov	r0, r2
 1056 002a 9900     		lsls	r1, r3, #2
 1057 002c 094A     		ldr	r2, .L142+12
 1058 002e 0A4C     		ldr	r4, .L142+16
 1059 0030 0094     		str	r4, [sp]
 1060 0032 0B44     		add	r3, r3, r1
 1061 0034 02EB8312 		add	r2, r2, r3, lsl #6
 1062 0038 0121     		movs	r1, #1
 1063 003a 4FF4A073 		mov	r3, #320
 1064 003e FFF7FEFF 		bl	udd_ep_run
 1065 0042 02B0     		add	sp, sp, #8
 1066              		@ sp needed
 1067 0044 10BD     		pop	{r4, pc}
 1068              	.L138:
 1069 0046 7047     		bx	lr
 1070              	.L143:
 1071              		.align	2
 1072              	.L142:
 1073 0048 00000000 		.word	.LANCHOR15
 1074 004c 00000000 		.word	.LANCHOR16
 1075 0050 00000000 		.word	.LANCHOR17
 1076 0054 00000000 		.word	.LANCHOR18
 1077 0058 00000000 		.word	udi_cdc_data_received
 1078              		.size	udi_cdc_data_received, .-udi_cdc_data_received
 1079              		.section	.text.udi_cdc_get_nb_received_data,"ax",%progbits
 1080              		.align	1
 1081              		.p2align 2,,3
 1082              		.global	udi_cdc_get_nb_received_data
 1083              		.syntax unified
ARM GAS  /tmp/ccJzy6Gw.s 			page 20


 1084              		.thumb
 1085              		.thumb_func
 1086              		.fpu fpv4-sp-d16
 1087              		.type	udi_cdc_get_nb_received_data, %function
 1088              	udi_cdc_get_nb_received_data:
 1089              		@ args = 0, pretend = 0, frame = 0
 1090              		@ frame_needed = 0, uses_anonymous_args = 0
 1091              		@ link register save eliminated.
 1092 0000 0020     		movs	r0, #0
 1093 0002 FFF7FEBF 		b	udi_cdc_multi_get_nb_received_data
 1094              		.size	udi_cdc_get_nb_received_data, .-udi_cdc_get_nb_received_data
 1095 0006 00BF     		.section	.text.udi_cdc_multi_is_rx_ready,"ax",%progbits
 1096              		.align	1
 1097              		.p2align 2,,3
 1098              		.global	udi_cdc_multi_is_rx_ready
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv4-sp-d16
 1103              		.type	udi_cdc_multi_is_rx_ready, %function
 1104              	udi_cdc_multi_is_rx_ready:
 1105              		@ args = 0, pretend = 0, frame = 0
 1106              		@ frame_needed = 0, uses_anonymous_args = 0
 1107 0000 08B5     		push	{r3, lr}
 1108 0002 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1109 0006 0030     		adds	r0, r0, #0
 1110 0008 18BF     		it	ne
 1111 000a 0120     		movne	r0, #1
 1112 000c 08BD     		pop	{r3, pc}
 1113              		.size	udi_cdc_multi_is_rx_ready, .-udi_cdc_multi_is_rx_ready
 1114 000e 00BF     		.section	.text.udi_cdc_is_rx_ready,"ax",%progbits
 1115              		.align	1
 1116              		.p2align 2,,3
 1117              		.global	udi_cdc_is_rx_ready
 1118              		.syntax unified
 1119              		.thumb
 1120              		.thumb_func
 1121              		.fpu fpv4-sp-d16
 1122              		.type	udi_cdc_is_rx_ready, %function
 1123              	udi_cdc_is_rx_ready:
 1124              		@ args = 0, pretend = 0, frame = 0
 1125              		@ frame_needed = 0, uses_anonymous_args = 0
 1126 0000 08B5     		push	{r3, lr}
 1127 0002 0020     		movs	r0, #0
 1128 0004 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1129 0008 0030     		adds	r0, r0, #0
 1130 000a 18BF     		it	ne
 1131 000c 0120     		movne	r0, #1
 1132 000e 08BD     		pop	{r3, pc}
 1133              		.size	udi_cdc_is_rx_ready, .-udi_cdc_is_rx_ready
 1134              		.section	.text.udi_cdc_multi_getc,"ax",%progbits
 1135              		.align	1
 1136              		.p2align 2,,3
 1137              		.global	udi_cdc_multi_getc
 1138              		.syntax unified
 1139              		.thumb
 1140              		.thumb_func
ARM GAS  /tmp/ccJzy6Gw.s 			page 21


 1141              		.fpu fpv4-sp-d16
 1142              		.type	udi_cdc_multi_getc, %function
 1143              	udi_cdc_multi_getc:
 1144              		@ args = 0, pretend = 0, frame = 0
 1145              		@ frame_needed = 0, uses_anonymous_args = 0
 1146 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1147 0004 254B     		ldr	r3, .L160
 1148 0006 264D     		ldr	r5, .L160+4
 1149 0008 93F806B0 		ldrb	fp, [r3, #6]	@ zero_extendqisi2
 1150 000c 254C     		ldr	r4, .L160+8
 1151 000e DFF8A090 		ldr	r9, .L160+20
 1152 0012 254F     		ldr	r7, .L160+12
 1153 0014 DFF89CA0 		ldr	r10, .L160+24
 1154 0018 ABF1090B 		sub	fp, fp, #9
 1155 001c 0020     		movs	r0, #0
 1156 001e BBFA8BFB 		clz	fp, fp
 1157 0022 4FEA5B1B 		lsr	fp, fp, #5
 1158 0026 0646     		mov	r6, r0
 1159              	.L150:
 1160              		.syntax unified
 1161              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1162 0028 EFF31081 		MRS r1, primask
 1163              	@ 0 "" 2
 1164              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1165 002c 72B6     		cpsid i
 1166              	@ 0 "" 2
 1167              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1168 002e BFF35F8F 		dmb
 1169              	@ 0 "" 2
 1170              		.thumb
 1171              		.syntax unified
 1172 0032 2E70     		strb	r6, [r5]
 1173 0034 B4F800E0 		ldrh	lr, [r4]
 1174 0038 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 1175 003c DBB2     		uxtb	r3, r3
 1176 003e 1FFA8EFE 		uxth	lr, lr
 1177 0042 37F81320 		ldrh	r2, [r7, r3, lsl #1]
 1178 0046 92B2     		uxth	r2, r2
 1179 0048 11B3     		cbz	r1, .L159
 1180              	.L151:
 1181 004a 9645     		cmp	lr, r2
 1182 004c 09D3     		bcc	.L152
 1183 004e 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 1184 0052 03F0FF02 		and	r2, r3, #255
 1185 0056 002B     		cmp	r3, #0
 1186 0058 E6D1     		bne	.L150
 1187 005a 9046     		mov	r8, r2
 1188              	.L149:
 1189 005c 4046     		mov	r0, r8
 1190 005e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1191              	.L152:
 1192 0062 124A     		ldr	r2, .L160+16
 1193 0064 03EB8303 		add	r3, r3, r3, lsl #2
 1194 0068 02EB8313 		add	r3, r2, r3, lsl #6
 1195 006c 0EF10102 		add	r2, lr, #1
 1196 0070 13F80E30 		ldrb	r3, [r3, lr]	@ zero_extendqisi2
 1197 0074 92B2     		uxth	r2, r2
ARM GAS  /tmp/ccJzy6Gw.s 			page 22


 1198 0076 43EA0008 		orr	r8, r3, r0
 1199 007a 2280     		strh	r2, [r4]	@ movhi
 1200 007c FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1201 0080 BBF1000F 		cmp	fp, #0
 1202 0084 EAD0     		beq	.L149
 1203 0086 4FEA0820 		lsl	r0, r8, #8
 1204 008a 4FF0000B 		mov	fp, #0
 1205 008e CBE7     		b	.L150
 1206              	.L159:
 1207 0090 0121     		movs	r1, #1
 1208 0092 2970     		strb	r1, [r5]
 1209              		.syntax unified
 1210              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1211 0094 BFF35F8F 		dmb
 1212              	@ 0 "" 2
 1213              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1214 0098 62B6     		cpsie i
 1215              	@ 0 "" 2
 1216              		.thumb
 1217              		.syntax unified
 1218 009a D6E7     		b	.L151
 1219              	.L161:
 1220              		.align	2
 1221              	.L160:
 1222 009c 00000000 		.word	.LANCHOR3
 1223 00a0 00000000 		.word	g_interrupt_enabled
 1224 00a4 00000000 		.word	.LANCHOR14
 1225 00a8 00000000 		.word	.LANCHOR16
 1226 00ac 00000000 		.word	.LANCHOR18
 1227 00b0 00000000 		.word	.LANCHOR15
 1228 00b4 00000000 		.word	.LANCHOR2
 1229              		.size	udi_cdc_multi_getc, .-udi_cdc_multi_getc
 1230              		.section	.text.udi_cdc_getc,"ax",%progbits
 1231              		.align	1
 1232              		.p2align 2,,3
 1233              		.global	udi_cdc_getc
 1234              		.syntax unified
 1235              		.thumb
 1236              		.thumb_func
 1237              		.fpu fpv4-sp-d16
 1238              		.type	udi_cdc_getc, %function
 1239              	udi_cdc_getc:
 1240              		@ args = 0, pretend = 0, frame = 0
 1241              		@ frame_needed = 0, uses_anonymous_args = 0
 1242              		@ link register save eliminated.
 1243 0000 0020     		movs	r0, #0
 1244 0002 FFF7FEBF 		b	udi_cdc_multi_getc
 1245              		.size	udi_cdc_getc, .-udi_cdc_getc
 1246 0006 00BF     		.section	.text.udi_cdc_multi_read_buf,"ax",%progbits
 1247              		.align	1
 1248              		.p2align 2,,3
 1249              		.global	udi_cdc_multi_read_buf
 1250              		.syntax unified
 1251              		.thumb
 1252              		.thumb_func
 1253              		.fpu fpv4-sp-d16
 1254              		.type	udi_cdc_multi_read_buf, %function
ARM GAS  /tmp/ccJzy6Gw.s 			page 23


 1255              	udi_cdc_multi_read_buf:
 1256              		@ args = 0, pretend = 0, frame = 8
 1257              		@ frame_needed = 0, uses_anonymous_args = 0
 1258 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1259 0004 254B     		ldr	r3, .L171
 1260 0006 DFF8A090 		ldr	r9, .L171+12
 1261 000a 254F     		ldr	r7, .L171+4
 1262 000c DFF89C80 		ldr	r8, .L171+16
 1263 0010 DFF89CB0 		ldr	fp, .L171+20
 1264 0014 83B0     		sub	sp, sp, #12
 1265 0016 1546     		mov	r5, r2
 1266 0018 0E46     		mov	r6, r1
 1267 001a 4FF0000A 		mov	r10, #0
 1268              	.L164:
 1269              		.syntax unified
 1270              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1271 001e EFF31081 		MRS r1, primask
 1272              	@ 0 "" 2
 1273              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1274 0022 72B6     		cpsid i
 1275              	@ 0 "" 2
 1276              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1277 0024 BFF35F8F 		dmb
 1278              	@ 0 "" 2
 1279              		.thumb
 1280              		.syntax unified
 1281 0028 89F800A0 		strb	r10, [r9]
 1282 002c 3A88     		ldrh	r2, [r7]
 1283 002e 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1284 0030 E4B2     		uxtb	r4, r4
 1285 0032 92B2     		uxth	r2, r2
 1286 0034 38F814E0 		ldrh	lr, [r8, r4, lsl #1]
 1287 0038 1FFA8EFE 		uxth	lr, lr
 1288 003c 39B3     		cbz	r1, .L170
 1289              	.L165:
 1290 003e 04EB8401 		add	r1, r4, r4, lsl #2
 1291 0042 02EB8111 		add	r1, r2, r1, lsl #6
 1292 0046 7245     		cmp	r2, lr
 1293 0048 3046     		mov	r0, r6
 1294 004a 5944     		add	r1, r1, fp
 1295 004c 07D3     		bcc	.L166
 1296 004e 154A     		ldr	r2, .L171+8
 1297 0050 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1298 0052 002A     		cmp	r2, #0
 1299 0054 E3D1     		bne	.L164
 1300              	.L168:
 1301 0056 2846     		mov	r0, r5
 1302 0058 03B0     		add	sp, sp, #12
 1303              		@ sp needed
 1304 005a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1305              	.L166:
 1306 005e 38F81440 		ldrh	r4, [r8, r4, lsl #1]
 1307 0062 0193     		str	r3, [sp, #4]
 1308 0064 A4B2     		uxth	r4, r4
 1309 0066 A41A     		subs	r4, r4, r2
 1310 0068 AC42     		cmp	r4, r5
 1311 006a 28BF     		it	cs
ARM GAS  /tmp/ccJzy6Gw.s 			page 24


 1312 006c 2C46     		movcs	r4, r5
 1313 006e 2246     		mov	r2, r4
 1314 0070 FFF7FEFF 		bl	memcpy
 1315 0074 3A88     		ldrh	r2, [r7]
 1316 0076 14FA82F2 		uxtah	r2, r4, r2
 1317 007a 92B2     		uxth	r2, r2
 1318 007c 2D1B     		subs	r5, r5, r4
 1319 007e 3A80     		strh	r2, [r7]	@ movhi
 1320 0080 2644     		add	r6, r6, r4
 1321 0082 FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1322 0086 019B     		ldr	r3, [sp, #4]
 1323 0088 002D     		cmp	r5, #0
 1324 008a C8D1     		bne	.L164
 1325 008c E3E7     		b	.L168
 1326              	.L170:
 1327 008e 0121     		movs	r1, #1
 1328 0090 89F80010 		strb	r1, [r9]
 1329              		.syntax unified
 1330              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1331 0094 BFF35F8F 		dmb
 1332              	@ 0 "" 2
 1333              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1334 0098 62B6     		cpsie i
 1335              	@ 0 "" 2
 1336              		.thumb
 1337              		.syntax unified
 1338 009a D0E7     		b	.L165
 1339              	.L172:
 1340              		.align	2
 1341              	.L171:
 1342 009c 00000000 		.word	.LANCHOR15
 1343 00a0 00000000 		.word	.LANCHOR14
 1344 00a4 00000000 		.word	.LANCHOR2
 1345 00a8 00000000 		.word	g_interrupt_enabled
 1346 00ac 00000000 		.word	.LANCHOR16
 1347 00b0 00000000 		.word	.LANCHOR18
 1348              		.size	udi_cdc_multi_read_buf, .-udi_cdc_multi_read_buf
 1349              		.section	.text.udi_cdc_read_no_polling,"ax",%progbits
 1350              		.align	1
 1351              		.p2align 2,,3
 1352              		.global	udi_cdc_read_no_polling
 1353              		.syntax unified
 1354              		.thumb
 1355              		.thumb_func
 1356              		.fpu fpv4-sp-d16
 1357              		.type	udi_cdc_read_no_polling, %function
 1358              	udi_cdc_read_no_polling:
 1359              		@ args = 0, pretend = 0, frame = 0
 1360              		@ frame_needed = 0, uses_anonymous_args = 0
 1361 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1362 0002 264B     		ldr	r3, .L185
 1363 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1364 0006 03F0FF04 		and	r4, r3, #255
 1365 000a C3B1     		cbz	r3, .L173
 1366              		.syntax unified
 1367              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1368 000c EFF31085 		MRS r5, primask
ARM GAS  /tmp/ccJzy6Gw.s 			page 25


 1369              	@ 0 "" 2
 1370              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1371 0010 72B6     		cpsid i
 1372              	@ 0 "" 2
 1373              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1374 0012 BFF35F8F 		dmb
 1375              	@ 0 "" 2
 1376              		.thumb
 1377              		.syntax unified
 1378 0016 224E     		ldr	r6, .L185+4
 1379 0018 224F     		ldr	r7, .L185+8
 1380 001a 234B     		ldr	r3, .L185+12
 1381 001c 234C     		ldr	r4, .L185+16
 1382 001e 0022     		movs	r2, #0
 1383 0020 3270     		strb	r2, [r6]
 1384 0022 3A88     		ldrh	r2, [r7]
 1385 0024 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1386 0026 DBB2     		uxtb	r3, r3
 1387 0028 92B2     		uxth	r2, r2
 1388 002a 34F81340 		ldrh	r4, [r4, r3, lsl #1]
 1389 002e A4B2     		uxth	r4, r4
 1390 0030 A41A     		subs	r4, r4, r2
 1391 0032 05B3     		cbz	r5, .L182
 1392 0034 A142     		cmp	r1, r4
 1393 0036 28BF     		it	cs
 1394 0038 2146     		movcs	r1, r4
 1395 003a 0D46     		mov	r5, r1
 1396 003c 09B9     		cbnz	r1, .L183
 1397              	.L173:
 1398 003e 2046     		mov	r0, r4
 1399 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1400              	.L183:
 1401 0042 03EB8303 		add	r3, r3, r3, lsl #2
 1402 0046 1A49     		ldr	r1, .L185+20
 1403 0048 02EB8313 		add	r3, r2, r3, lsl #6
 1404 004c 1944     		add	r1, r1, r3
 1405 004e 2A46     		mov	r2, r5
 1406 0050 FFF7FEFF 		bl	memcpy
 1407              		.syntax unified
 1408              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1409 0054 EFF31083 		MRS r3, primask
 1410              	@ 0 "" 2
 1411              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1412 0058 72B6     		cpsid i
 1413              	@ 0 "" 2
 1414              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1415 005a BFF35F8F 		dmb
 1416              	@ 0 "" 2
 1417              		.thumb
 1418              		.syntax unified
 1419 005e 0022     		movs	r2, #0
 1420 0060 3270     		strb	r2, [r6]
 1421 0062 3988     		ldrh	r1, [r7]
 1422 0064 15FA81F5 		uxtah	r5, r5, r1
 1423 0068 ADB2     		uxth	r5, r5
 1424 006a 3D80     		strh	r5, [r7]	@ movhi
 1425 006c 7BB1     		cbz	r3, .L184
ARM GAS  /tmp/ccJzy6Gw.s 			page 26


 1426              	.L176:
 1427 006e FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1428 0072 2046     		mov	r0, r4
 1429 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1430              	.L182:
 1431 0076 0125     		movs	r5, #1
 1432 0078 3570     		strb	r5, [r6]
 1433              		.syntax unified
 1434              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1435 007a BFF35F8F 		dmb
 1436              	@ 0 "" 2
 1437              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1438 007e 62B6     		cpsie i
 1439              	@ 0 "" 2
 1440              		.thumb
 1441              		.syntax unified
 1442 0080 A142     		cmp	r1, r4
 1443 0082 28BF     		it	cs
 1444 0084 2146     		movcs	r1, r4
 1445 0086 0D46     		mov	r5, r1
 1446 0088 0029     		cmp	r1, #0
 1447 008a D8D0     		beq	.L173
 1448 008c D9E7     		b	.L183
 1449              	.L184:
 1450 008e 0123     		movs	r3, #1
 1451 0090 3370     		strb	r3, [r6]
 1452              		.syntax unified
 1453              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1454 0092 BFF35F8F 		dmb
 1455              	@ 0 "" 2
 1456              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1457 0096 62B6     		cpsie i
 1458              	@ 0 "" 2
 1459              		.thumb
 1460              		.syntax unified
 1461 0098 E9E7     		b	.L176
 1462              	.L186:
 1463 009a 00BF     		.align	2
 1464              	.L185:
 1465 009c 00000000 		.word	.LANCHOR2
 1466 00a0 00000000 		.word	g_interrupt_enabled
 1467 00a4 00000000 		.word	.LANCHOR14
 1468 00a8 00000000 		.word	.LANCHOR15
 1469 00ac 00000000 		.word	.LANCHOR16
 1470 00b0 00000000 		.word	.LANCHOR18
 1471              		.size	udi_cdc_read_no_polling, .-udi_cdc_read_no_polling
 1472              		.section	.text.udi_cdc_read_buf,"ax",%progbits
 1473              		.align	1
 1474              		.p2align 2,,3
 1475              		.global	udi_cdc_read_buf
 1476              		.syntax unified
 1477              		.thumb
 1478              		.thumb_func
 1479              		.fpu fpv4-sp-d16
 1480              		.type	udi_cdc_read_buf, %function
 1481              	udi_cdc_read_buf:
 1482              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJzy6Gw.s 			page 27


 1483              		@ frame_needed = 0, uses_anonymous_args = 0
 1484              		@ link register save eliminated.
 1485 0000 0A46     		mov	r2, r1
 1486 0002 0146     		mov	r1, r0
 1487 0004 0020     		movs	r0, #0
 1488 0006 FFF7FEBF 		b	udi_cdc_multi_read_buf
 1489              		.size	udi_cdc_read_buf, .-udi_cdc_read_buf
 1490 000a 00BF     		.section	.text.udi_cdc_multi_get_free_tx_buffer,"ax",%progbits
 1491              		.align	1
 1492              		.p2align 2,,3
 1493              		.global	udi_cdc_multi_get_free_tx_buffer
 1494              		.syntax unified
 1495              		.thumb
 1496              		.thumb_func
 1497              		.fpu fpv4-sp-d16
 1498              		.type	udi_cdc_multi_get_free_tx_buffer, %function
 1499              	udi_cdc_multi_get_free_tx_buffer:
 1500              		@ args = 0, pretend = 0, frame = 0
 1501              		@ frame_needed = 0, uses_anonymous_args = 0
 1502              		@ link register save eliminated.
 1503 0000 F0B4     		push	{r4, r5, r6, r7}
 1504              		.syntax unified
 1505              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1506 0002 EFF31085 		MRS r5, primask
 1507              	@ 0 "" 2
 1508              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1509 0006 72B6     		cpsid i
 1510              	@ 0 "" 2
 1511              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1512 0008 BFF35F8F 		dmb
 1513              	@ 0 "" 2
 1514              		.thumb
 1515              		.syntax unified
 1516 000c 144A     		ldr	r2, .L195
 1517 000e 154C     		ldr	r4, .L195+4
 1518 0010 1548     		ldr	r0, .L195+8
 1519 0012 0021     		movs	r1, #0
 1520 0014 1170     		strb	r1, [r2]
 1521 0016 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1522 0018 DBB2     		uxtb	r3, r3
 1523 001a 30F81300 		ldrh	r0, [r0, r3, lsl #1]
 1524 001e B0F5A07F 		cmp	r0, #320
 1525 0022 09D0     		beq	.L189
 1526 0024 C0F5A070 		rsb	r0, r0, #320
 1527              	.L190:
 1528 0028 25B9     		cbnz	r5, .L188
 1529 002a 0123     		movs	r3, #1
 1530 002c 1370     		strb	r3, [r2]
 1531              		.syntax unified
 1532              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1533 002e BFF35F8F 		dmb
 1534              	@ 0 "" 2
 1535              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1536 0032 62B6     		cpsie i
 1537              	@ 0 "" 2
 1538              		.thumb
 1539              		.syntax unified
ARM GAS  /tmp/ccJzy6Gw.s 			page 28


 1540              	.L188:
 1541 0034 F0BC     		pop	{r4, r5, r6, r7}
 1542 0036 7047     		bx	lr
 1543              	.L189:
 1544 0038 0C4E     		ldr	r6, .L195+12
 1545 003a 3678     		ldrb	r6, [r6]	@ zero_extendqisi2
 1546 003c 06F0FF07 		and	r7, r6, #255
 1547 0040 4EB9     		cbnz	r6, .L192
 1548 0042 0B49     		ldr	r1, .L195+16
 1549 0044 0E78     		ldrb	r6, [r1]	@ zero_extendqisi2
 1550 0046 46B9     		cbnz	r6, .L193
 1551 0048 B3FA83F3 		clz	r3, r3
 1552 004c 5B09     		lsrs	r3, r3, #5
 1553 004e 0126     		movs	r6, #1
 1554 0050 0E70     		strb	r6, [r1]
 1555 0052 2370     		strb	r3, [r4]
 1556 0054 E8E7     		b	.L190
 1557              	.L192:
 1558 0056 0846     		mov	r0, r1
 1559 0058 E6E7     		b	.L190
 1560              	.L193:
 1561 005a 3846     		mov	r0, r7
 1562 005c E4E7     		b	.L190
 1563              	.L196:
 1564 005e 00BF     		.align	2
 1565              	.L195:
 1566 0060 00000000 		.word	g_interrupt_enabled
 1567 0064 00000000 		.word	.LANCHOR9
 1568 0068 00000000 		.word	.LANCHOR10
 1569 006c 00000000 		.word	.LANCHOR7
 1570 0070 00000000 		.word	.LANCHOR12
 1571              		.size	udi_cdc_multi_get_free_tx_buffer, .-udi_cdc_multi_get_free_tx_buffer
 1572              		.section	.text.udi_cdc_get_free_tx_buffer,"ax",%progbits
 1573              		.align	1
 1574              		.p2align 2,,3
 1575              		.global	udi_cdc_get_free_tx_buffer
 1576              		.syntax unified
 1577              		.thumb
 1578              		.thumb_func
 1579              		.fpu fpv4-sp-d16
 1580              		.type	udi_cdc_get_free_tx_buffer, %function
 1581              	udi_cdc_get_free_tx_buffer:
 1582              		@ args = 0, pretend = 0, frame = 0
 1583              		@ frame_needed = 0, uses_anonymous_args = 0
 1584              		@ link register save eliminated.
 1585 0000 0020     		movs	r0, #0
 1586 0002 FFF7FEBF 		b	udi_cdc_multi_get_free_tx_buffer
 1587              		.size	udi_cdc_get_free_tx_buffer, .-udi_cdc_get_free_tx_buffer
 1588 0006 00BF     		.section	.text.udi_cdc_multi_is_tx_ready,"ax",%progbits
 1589              		.align	1
 1590              		.p2align 2,,3
 1591              		.global	udi_cdc_multi_is_tx_ready
 1592              		.syntax unified
 1593              		.thumb
 1594              		.thumb_func
 1595              		.fpu fpv4-sp-d16
 1596              		.type	udi_cdc_multi_is_tx_ready, %function
ARM GAS  /tmp/ccJzy6Gw.s 			page 29


 1597              	udi_cdc_multi_is_tx_ready:
 1598              		@ args = 0, pretend = 0, frame = 0
 1599              		@ frame_needed = 0, uses_anonymous_args = 0
 1600 0000 08B5     		push	{r3, lr}
 1601 0002 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1602 0006 0030     		adds	r0, r0, #0
 1603 0008 18BF     		it	ne
 1604 000a 0120     		movne	r0, #1
 1605 000c 08BD     		pop	{r3, pc}
 1606              		.size	udi_cdc_multi_is_tx_ready, .-udi_cdc_multi_is_tx_ready
 1607 000e 00BF     		.section	.text.udi_cdc_is_tx_ready,"ax",%progbits
 1608              		.align	1
 1609              		.p2align 2,,3
 1610              		.global	udi_cdc_is_tx_ready
 1611              		.syntax unified
 1612              		.thumb
 1613              		.thumb_func
 1614              		.fpu fpv4-sp-d16
 1615              		.type	udi_cdc_is_tx_ready, %function
 1616              	udi_cdc_is_tx_ready:
 1617              		@ args = 0, pretend = 0, frame = 0
 1618              		@ frame_needed = 0, uses_anonymous_args = 0
 1619 0000 08B5     		push	{r3, lr}
 1620 0002 0020     		movs	r0, #0
 1621 0004 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1622 0008 0030     		adds	r0, r0, #0
 1623 000a 18BF     		it	ne
 1624 000c 0120     		movne	r0, #1
 1625 000e 08BD     		pop	{r3, pc}
 1626              		.size	udi_cdc_is_tx_ready, .-udi_cdc_is_tx_ready
 1627              		.section	.text.udi_cdc_multi_putc,"ax",%progbits
 1628              		.align	1
 1629              		.p2align 2,,3
 1630              		.global	udi_cdc_multi_putc
 1631              		.syntax unified
 1632              		.thumb
 1633              		.thumb_func
 1634              		.fpu fpv4-sp-d16
 1635              		.type	udi_cdc_multi_putc, %function
 1636              	udi_cdc_multi_putc:
 1637              		@ args = 0, pretend = 0, frame = 0
 1638              		@ frame_needed = 0, uses_anonymous_args = 0
 1639 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1640 0004 1E4B     		ldr	r3, .L212
 1641 0006 1F4F     		ldr	r7, .L212+4
 1642 0008 9D79     		ldrb	r5, [r3, #6]	@ zero_extendqisi2
 1643 000a DFF88880 		ldr	r8, .L212+20
 1644 000e 1E4E     		ldr	r6, .L212+8
 1645 0010 A5F10905 		sub	r5, #9
 1646 0014 B5FA85F5 		clz	r5, r5
 1647 0018 0C46     		mov	r4, r1
 1648 001a 6D09     		lsrs	r5, r5, #5
 1649              	.L203:
 1650 001c 0020     		movs	r0, #0
 1651 001e FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1652 0022 1A4B     		ldr	r3, .L212+12
 1653 0024 30B9     		cbnz	r0, .L204
ARM GAS  /tmp/ccJzy6Gw.s 			page 30


 1654 0026 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1655 0028 03F0FF00 		and	r0, r3, #255
 1656 002c 002B     		cmp	r3, #0
 1657 002e F5D1     		bne	.L203
 1658 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1659              	.L204:
 1660              		.syntax unified
 1661              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1662 0034 EFF31082 		MRS r2, primask
 1663              	@ 0 "" 2
 1664              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1665 0038 72B6     		cpsid i
 1666              	@ 0 "" 2
 1667              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1668 003a BFF35F8F 		dmb
 1669              	@ 0 "" 2
 1670              		.thumb
 1671              		.syntax unified
 1672 003e 0023     		movs	r3, #0
 1673 0040 3B70     		strb	r3, [r7]
 1674 0042 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1675 0046 1249     		ldr	r1, .L212+16
 1676 0048 DBB2     		uxtb	r3, r3
 1677 004a 03EB830E 		add	lr, r3, r3, lsl #2
 1678 004e 36F81300 		ldrh	r0, [r6, r3, lsl #1]
 1679 0052 01EB8E11 		add	r1, r1, lr, lsl #6
 1680 0056 00F1010E 		add	lr, r0, #1
 1681 005a 26F813E0 		strh	lr, [r6, r3, lsl #1]	@ movhi
 1682 005e 0C54     		strb	r4, [r1, r0]
 1683 0060 1AB1     		cbz	r2, .L210
 1684 0062 4DB1     		cbz	r5, .L208
 1685              	.L211:
 1686 0064 2412     		asrs	r4, r4, #8
 1687 0066 0025     		movs	r5, #0
 1688 0068 D8E7     		b	.L203
 1689              	.L210:
 1690 006a 0123     		movs	r3, #1
 1691 006c 3B70     		strb	r3, [r7]
 1692              		.syntax unified
 1693              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1694 006e BFF35F8F 		dmb
 1695              	@ 0 "" 2
 1696              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1697 0072 62B6     		cpsie i
 1698              	@ 0 "" 2
 1699              		.thumb
 1700              		.syntax unified
 1701 0074 002D     		cmp	r5, #0
 1702 0076 F5D1     		bne	.L211
 1703              	.L208:
 1704 0078 0120     		movs	r0, #1
 1705 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1706              	.L213:
 1707 007e 00BF     		.align	2
 1708              	.L212:
 1709 0080 00000000 		.word	.LANCHOR3
 1710 0084 00000000 		.word	g_interrupt_enabled
ARM GAS  /tmp/ccJzy6Gw.s 			page 31


 1711 0088 00000000 		.word	.LANCHOR10
 1712 008c 00000000 		.word	.LANCHOR2
 1713 0090 00000000 		.word	.LANCHOR13
 1714 0094 00000000 		.word	.LANCHOR9
 1715              		.size	udi_cdc_multi_putc, .-udi_cdc_multi_putc
 1716              		.section	.text.udi_cdc_putc,"ax",%progbits
 1717              		.align	1
 1718              		.p2align 2,,3
 1719              		.global	udi_cdc_putc
 1720              		.syntax unified
 1721              		.thumb
 1722              		.thumb_func
 1723              		.fpu fpv4-sp-d16
 1724              		.type	udi_cdc_putc, %function
 1725              	udi_cdc_putc:
 1726              		@ args = 0, pretend = 0, frame = 0
 1727              		@ frame_needed = 0, uses_anonymous_args = 0
 1728              		@ link register save eliminated.
 1729 0000 0146     		mov	r1, r0
 1730 0002 0020     		movs	r0, #0
 1731 0004 FFF7FEBF 		b	udi_cdc_multi_putc
 1732              		.size	udi_cdc_putc, .-udi_cdc_putc
 1733              		.section	.text.udi_cdc_multi_write_buf,"ax",%progbits
 1734              		.align	1
 1735              		.p2align 2,,3
 1736              		.global	udi_cdc_multi_write_buf
 1737              		.syntax unified
 1738              		.thumb
 1739              		.thumb_func
 1740              		.fpu fpv4-sp-d16
 1741              		.type	udi_cdc_multi_write_buf, %function
 1742              	udi_cdc_multi_write_buf:
 1743              		@ args = 0, pretend = 0, frame = 0
 1744              		@ frame_needed = 0, uses_anonymous_args = 0
 1745 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1746 0004 204B     		ldr	r3, .L225
 1747 0006 DFF88CA0 		ldr	r10, .L225+12
 1748 000a 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 1749 000c DFF88890 		ldr	r9, .L225+16
 1750 0010 092B     		cmp	r3, #9
 1751 0012 1746     		mov	r7, r2
 1752 0014 8846     		mov	r8, r1
 1753 0016 08BF     		it	eq
 1754 0018 5700     		lsleq	r7, r2, #1
 1755 001a 02E0     		b	.L219
 1756              	.L218:
 1757 001c 3F1B     		subs	r7, r7, r4
 1758 001e A044     		add	r8, r8, r4
 1759 0020 2ED0     		beq	.L217
 1760              	.L219:
 1761 0022 0020     		movs	r0, #0
 1762 0024 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1763 0028 50B3     		cbz	r0, .L217
 1764              		.syntax unified
 1765              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1766 002a EFF3108B 		MRS fp, primask
 1767              	@ 0 "" 2
ARM GAS  /tmp/ccJzy6Gw.s 			page 32


 1768              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1769 002e 72B6     		cpsid i
 1770              	@ 0 "" 2
 1771              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1772 0030 BFF35F8F 		dmb
 1773              	@ 0 "" 2
 1774              		.thumb
 1775              		.syntax unified
 1776 0034 154B     		ldr	r3, .L225+4
 1777 0036 1648     		ldr	r0, .L225+8
 1778 0038 0022     		movs	r2, #0
 1779 003a 8AF80020 		strb	r2, [r10]
 1780 003e 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 1781 0040 EDB2     		uxtb	r5, r5
 1782 0042 05EB8502 		add	r2, r5, r5, lsl #2
 1783 0046 39F81560 		ldrh	r6, [r9, r5, lsl #1]
 1784 004a C6F5A074 		rsb	r4, r6, #320
 1785 004e BC42     		cmp	r4, r7
 1786 0050 06EB8212 		add	r2, r6, r2, lsl #6
 1787 0054 28BF     		it	cs
 1788 0056 3C46     		movcs	r4, r7
 1789 0058 1044     		add	r0, r0, r2
 1790 005a 4146     		mov	r1, r8
 1791 005c 2246     		mov	r2, r4
 1792 005e FFF7FEFF 		bl	memcpy
 1793 0062 2644     		add	r6, r6, r4
 1794 0064 5B46     		mov	r3, fp
 1795 0066 29F81560 		strh	r6, [r9, r5, lsl #1]	@ movhi
 1796 006a 002B     		cmp	r3, #0
 1797 006c D6D1     		bne	.L218
 1798 006e 0123     		movs	r3, #1
 1799 0070 8AF80030 		strb	r3, [r10]
 1800              		.syntax unified
 1801              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1802 0074 BFF35F8F 		dmb
 1803              	@ 0 "" 2
 1804              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1805 0078 62B6     		cpsie i
 1806              	@ 0 "" 2
 1807              		.thumb
 1808              		.syntax unified
 1809 007a 3F1B     		subs	r7, r7, r4
 1810 007c A044     		add	r8, r8, r4
 1811 007e D0D1     		bne	.L219
 1812              	.L217:
 1813 0080 3846     		mov	r0, r7
 1814 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1815              	.L226:
 1816 0086 00BF     		.align	2
 1817              	.L225:
 1818 0088 00000000 		.word	.LANCHOR3
 1819 008c 00000000 		.word	.LANCHOR9
 1820 0090 00000000 		.word	.LANCHOR13
 1821 0094 00000000 		.word	g_interrupt_enabled
 1822 0098 00000000 		.word	.LANCHOR10
 1823              		.size	udi_cdc_multi_write_buf, .-udi_cdc_multi_write_buf
 1824              		.section	.text.udi_cdc_write_buf,"ax",%progbits
ARM GAS  /tmp/ccJzy6Gw.s 			page 33


 1825              		.align	1
 1826              		.p2align 2,,3
 1827              		.global	udi_cdc_write_buf
 1828              		.syntax unified
 1829              		.thumb
 1830              		.thumb_func
 1831              		.fpu fpv4-sp-d16
 1832              		.type	udi_cdc_write_buf, %function
 1833              	udi_cdc_write_buf:
 1834              		@ args = 0, pretend = 0, frame = 0
 1835              		@ frame_needed = 0, uses_anonymous_args = 0
 1836              		@ link register save eliminated.
 1837 0000 0A46     		mov	r2, r1
 1838 0002 0146     		mov	r1, r0
 1839 0004 0020     		movs	r0, #0
 1840 0006 FFF7FEBF 		b	udi_cdc_multi_write_buf
 1841              		.size	udi_cdc_write_buf, .-udi_cdc_write_buf
 1842              		.global	udi_api_cdc_data
 1843              		.global	udi_api_cdc_comm
 1844 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1845              		.align	2
 1846              		.type	cpu_irq_critical_section_counter, %object
 1847              		.size	cpu_irq_critical_section_counter, 4
 1848              	cpu_irq_critical_section_counter:
 1849 0000 00000000 		.space	4
 1850              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1851              		.type	cpu_irq_prev_interrupt_state, %object
 1852              		.size	cpu_irq_prev_interrupt_state, 1
 1853              	cpu_irq_prev_interrupt_state:
 1854 0000 00       		.space	1
 1855              		.section	.bss.sof_zlp_counter.9376,"aw",%nobits
 1856              		.align	1
 1857              		.set	.LANCHOR11,. + 0
 1858              		.type	sof_zlp_counter.9376, %object
 1859              		.size	sof_zlp_counter.9376, 2
 1860              	sof_zlp_counter.9376:
 1861 0000 0000     		.space	2
 1862              		.section	.bss.udi_cdc_data_running,"aw",%nobits
 1863              		.set	.LANCHOR2,. + 0
 1864              		.type	udi_cdc_data_running, %object
 1865              		.size	udi_cdc_data_running, 1
 1866              	udi_cdc_data_running:
 1867 0000 00       		.space	1
 1868              		.section	.bss.udi_cdc_line_coding,"aw",%nobits
 1869              		.align	2
 1870              		.set	.LANCHOR3,. + 0
 1871              		.type	udi_cdc_line_coding, %object
 1872              		.size	udi_cdc_line_coding, 7
 1873              	udi_cdc_line_coding:
 1874 0000 00000000 		.space	7
 1874      000000
 1875              		.section	.bss.udi_cdc_nb_comm_enabled,"aw",%nobits
 1876              		.set	.LANCHOR0,. + 0
 1877              		.type	udi_cdc_nb_comm_enabled, %object
 1878              		.size	udi_cdc_nb_comm_enabled, 1
 1879              	udi_cdc_nb_comm_enabled:
 1880 0000 00       		.space	1
ARM GAS  /tmp/ccJzy6Gw.s 			page 34


 1881              		.section	.bss.udi_cdc_nb_data_enabled,"aw",%nobits
 1882              		.set	.LANCHOR1,. + 0
 1883              		.type	udi_cdc_nb_data_enabled, %object
 1884              		.size	udi_cdc_nb_data_enabled, 1
 1885              	udi_cdc_nb_data_enabled:
 1886 0000 00       		.space	1
 1887              		.section	.bss.udi_cdc_rx_buf,"aw",%nobits
 1888              		.align	2
 1889              		.set	.LANCHOR18,. + 0
 1890              		.type	udi_cdc_rx_buf, %object
 1891              		.size	udi_cdc_rx_buf, 640
 1892              	udi_cdc_rx_buf:
 1893 0000 00000000 		.space	640
 1893      00000000 
 1893      00000000 
 1893      00000000 
 1893      00000000 
 1894              		.section	.bss.udi_cdc_rx_buf_nb,"aw",%nobits
 1895              		.align	2
 1896              		.set	.LANCHOR16,. + 0
 1897              		.type	udi_cdc_rx_buf_nb, %object
 1898              		.size	udi_cdc_rx_buf_nb, 4
 1899              	udi_cdc_rx_buf_nb:
 1900 0000 00000000 		.space	4
 1901              		.section	.bss.udi_cdc_rx_buf_sel,"aw",%nobits
 1902              		.align	2
 1903              		.set	.LANCHOR15,. + 0
 1904              		.type	udi_cdc_rx_buf_sel, %object
 1905              		.size	udi_cdc_rx_buf_sel, 1
 1906              	udi_cdc_rx_buf_sel:
 1907 0000 00       		.space	1
 1908              		.section	.bss.udi_cdc_rx_pos,"aw",%nobits
 1909              		.align	2
 1910              		.set	.LANCHOR14,. + 0
 1911              		.type	udi_cdc_rx_pos, %object
 1912              		.size	udi_cdc_rx_pos, 2
 1913              	udi_cdc_rx_pos:
 1914 0000 0000     		.space	2
 1915              		.section	.bss.udi_cdc_rx_trans_ongoing,"aw",%nobits
 1916              		.align	2
 1917              		.set	.LANCHOR17,. + 0
 1918              		.type	udi_cdc_rx_trans_ongoing, %object
 1919              		.size	udi_cdc_rx_trans_ongoing, 1
 1920              	udi_cdc_rx_trans_ongoing:
 1921 0000 00       		.space	1
 1922              		.section	.bss.udi_cdc_serial_state_msg_ongoing,"aw",%nobits
 1923              		.align	2
 1924              		.set	.LANCHOR6,. + 0
 1925              		.type	udi_cdc_serial_state_msg_ongoing, %object
 1926              		.size	udi_cdc_serial_state_msg_ongoing, 1
 1927              	udi_cdc_serial_state_msg_ongoing:
 1928 0000 00       		.space	1
 1929              		.section	.bss.udi_cdc_state,"aw",%nobits
 1930              		.align	2
 1931              		.set	.LANCHOR4,. + 0
 1932              		.type	udi_cdc_state, %object
 1933              		.size	udi_cdc_state, 2
ARM GAS  /tmp/ccJzy6Gw.s 			page 35


 1934              	udi_cdc_state:
 1935 0000 0000     		.space	2
 1936              		.section	.bss.udi_cdc_tx_both_buf_to_send,"aw",%nobits
 1937              		.align	2
 1938              		.set	.LANCHOR12,. + 0
 1939              		.type	udi_cdc_tx_both_buf_to_send, %object
 1940              		.size	udi_cdc_tx_both_buf_to_send, 1
 1941              	udi_cdc_tx_both_buf_to_send:
 1942 0000 00       		.space	1
 1943              		.section	.bss.udi_cdc_tx_buf,"aw",%nobits
 1944              		.align	2
 1945              		.set	.LANCHOR13,. + 0
 1946              		.type	udi_cdc_tx_buf, %object
 1947              		.size	udi_cdc_tx_buf, 640
 1948              	udi_cdc_tx_buf:
 1949 0000 00000000 		.space	640
 1949      00000000 
 1949      00000000 
 1949      00000000 
 1949      00000000 
 1950              		.section	.bss.udi_cdc_tx_buf_nb,"aw",%nobits
 1951              		.align	2
 1952              		.set	.LANCHOR10,. + 0
 1953              		.type	udi_cdc_tx_buf_nb, %object
 1954              		.size	udi_cdc_tx_buf_nb, 4
 1955              	udi_cdc_tx_buf_nb:
 1956 0000 00000000 		.space	4
 1957              		.section	.bss.udi_cdc_tx_buf_sel,"aw",%nobits
 1958              		.align	2
 1959              		.set	.LANCHOR9,. + 0
 1960              		.type	udi_cdc_tx_buf_sel, %object
 1961              		.size	udi_cdc_tx_buf_sel, 1
 1962              	udi_cdc_tx_buf_sel:
 1963 0000 00       		.space	1
 1964              		.section	.bss.udi_cdc_tx_sof_num,"aw",%nobits
 1965              		.align	2
 1966              		.set	.LANCHOR8,. + 0
 1967              		.type	udi_cdc_tx_sof_num, %object
 1968              		.size	udi_cdc_tx_sof_num, 2
 1969              	udi_cdc_tx_sof_num:
 1970 0000 0000     		.space	2
 1971              		.section	.bss.udi_cdc_tx_trans_ongoing,"aw",%nobits
 1972              		.align	2
 1973              		.set	.LANCHOR7,. + 0
 1974              		.type	udi_cdc_tx_trans_ongoing, %object
 1975              		.size	udi_cdc_tx_trans_ongoing, 1
 1976              	udi_cdc_tx_trans_ongoing:
 1977 0000 00       		.space	1
 1978              		.section	.bss.uid_cdc_state_msg,"aw",%nobits
 1979              		.align	2
 1980              		.set	.LANCHOR5,. + 0
 1981              		.type	uid_cdc_state_msg, %object
 1982              		.size	uid_cdc_state_msg, 10
 1983              	uid_cdc_state_msg:
 1984 0000 00000000 		.space	10
 1984      00000000 
 1984      0000
ARM GAS  /tmp/ccJzy6Gw.s 			page 36


 1985              		.section	.data.udi_api_cdc_comm,"aw",%progbits
 1986              		.align	2
 1987              		.type	udi_api_cdc_comm, %object
 1988              		.size	udi_api_cdc_comm, 20
 1989              	udi_api_cdc_comm:
 1990 0000 00000000 		.word	udi_cdc_comm_enable
 1991 0004 00000000 		.word	udi_cdc_comm_disable
 1992 0008 00000000 		.word	udi_cdc_comm_setup
 1993 000c 00000000 		.word	udi_cdc_getsetting
 1994 0010 00000000 		.space	4
 1995              		.section	.data.udi_api_cdc_data,"aw",%progbits
 1996              		.align	2
 1997              		.type	udi_api_cdc_data, %object
 1998              		.size	udi_api_cdc_data, 20
 1999              	udi_api_cdc_data:
 2000 0000 00000000 		.word	udi_cdc_data_enable
 2001 0004 00000000 		.word	udi_cdc_data_disable
 2002 0008 00000000 		.word	udi_cdc_data_setup
 2003 000c 00000000 		.word	udi_cdc_getsetting
 2004 0010 00000000 		.word	udi_cdc_data_sof_notify
 2005              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
