ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 1


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
  14              		.text
  15              		.section	.text.udi_cdc_comm_disable,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	udi_cdc_comm_disable
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	udi_cdc_comm_disable, %function
  24              	udi_cdc_comm_disable:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 024A     		ldr	r2, .L3
  29 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  30 0004 013B     		subs	r3, r3, #1
  31 0006 DBB2     		uxtb	r3, r3
  32 0008 1370     		strb	r3, [r2]
  33 000a 7047     		bx	lr
  34              	.L4:
  35              		.align	2
  36              	.L3:
  37 000c 00000000 		.word	.LANCHOR0
  38              		.size	udi_cdc_comm_disable, .-udi_cdc_comm_disable
  39              		.section	.text.udi_cdc_data_setup,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	udi_cdc_data_setup
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	udi_cdc_data_setup, %function
  48              	udi_cdc_data_setup:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 0020     		movs	r0, #0
  53 0002 7047     		bx	lr
  54              		.size	udi_cdc_data_setup, .-udi_cdc_data_setup
  55              		.section	.text.udi_cdc_getsetting,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 2


  58              		.global	udi_cdc_getsetting
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	udi_cdc_getsetting, %function
  64              	udi_cdc_getsetting:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0020     		movs	r0, #0
  69 0002 7047     		bx	lr
  70              		.size	udi_cdc_getsetting, .-udi_cdc_getsetting
  71              		.section	.text.udi_cdc_line_coding_received,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	udi_cdc_line_coding_received, %function
  79              	udi_cdc_line_coding_received:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 7047     		bx	lr
  84              		.size	udi_cdc_line_coding_received, .-udi_cdc_line_coding_received
  85 0002 00BF     		.section	.text.udi_cdc_data_disable,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	udi_cdc_data_disable
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu fpv4-sp-d16
  93              		.type	udi_cdc_data_disable, %function
  94              	udi_cdc_data_disable:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 08B5     		push	{r3, lr}
  98 0002 064A     		ldr	r2, .L10
  99 0004 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 100 0006 013B     		subs	r3, r3, #1
 101 0008 DBB2     		uxtb	r3, r3
 102 000a 1370     		strb	r3, [r2]
 103 000c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 104 000e FFF7FEFF 		bl	core_cdc_disable
 105 0012 034B     		ldr	r3, .L10+4
 106 0014 0022     		movs	r2, #0
 107 0016 1A70     		strb	r2, [r3]
 108 0018 08BD     		pop	{r3, pc}
 109              	.L11:
 110 001a 00BF     		.align	2
 111              	.L10:
 112 001c 00000000 		.word	.LANCHOR1
 113 0020 00000000 		.word	.LANCHOR2
 114              		.size	udi_cdc_data_disable, .-udi_cdc_data_disable
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 3


 115              		.section	.text.udi_cdc_comm_setup,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	udi_cdc_comm_setup
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	udi_cdc_comm_setup, %function
 124              	udi_cdc_comm_setup:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 144A     		ldr	r2, .L27
 129 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 130 0004 03F06001 		and	r1, r3, #96
 131 0008 1B06     		lsls	r3, r3, #24
 132 000a 0CD4     		bmi	.L25
 133 000c 2029     		cmp	r1, #32
 134 000e 01D0     		beq	.L26
 135              	.L23:
 136 0010 0020     		movs	r0, #0
 137 0012 7047     		bx	lr
 138              	.L26:
 139 0014 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 140 0016 2028     		cmp	r0, #32
 141 0018 12D0     		beq	.L17
 142 001a A0F12200 		sub	r0, #34
 143 001e B0FA80F0 		clz	r0, r0
 144 0022 4009     		lsrs	r0, r0, #5
 145 0024 7047     		bx	lr
 146              	.L25:
 147 0026 2029     		cmp	r1, #32
 148 0028 F2D1     		bne	.L23
 149 002a 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 150 002c 212B     		cmp	r3, #33
 151 002e EFD1     		bne	.L23
 152 0030 D388     		ldrh	r3, [r2, #6]
 153 0032 072B     		cmp	r3, #7
 154 0034 ECD1     		bne	.L23
 155 0036 0849     		ldr	r1, .L27+4
 156 0038 9381     		strh	r3, [r2, #12]	@ movhi
 157 003a 9160     		str	r1, [r2, #8]
 158 003c 0120     		movs	r0, #1
 159 003e 7047     		bx	lr
 160              	.L17:
 161 0040 D388     		ldrh	r3, [r2, #6]
 162 0042 072B     		cmp	r3, #7
 163 0044 E4D1     		bne	.L23
 164 0046 0548     		ldr	r0, .L27+8
 165 0048 0349     		ldr	r1, .L27+4
 166 004a 1061     		str	r0, [r2, #16]
 167 004c 9381     		strh	r3, [r2, #12]	@ movhi
 168 004e 9160     		str	r1, [r2, #8]
 169 0050 0120     		movs	r0, #1
 170 0052 7047     		bx	lr
 171              	.L28:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 4


 172              		.align	2
 173              	.L27:
 174 0054 00000000 		.word	udd_g_ctrlreq
 175 0058 00000000 		.word	.LANCHOR3
 176 005c 00000000 		.word	udi_cdc_line_coding_received
 177              		.size	udi_cdc_comm_setup, .-udi_cdc_comm_setup
 178              		.section	.text.udi_cdc_comm_enable,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	udi_cdc_comm_enable
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	udi_cdc_comm_enable, %function
 187              	udi_cdc_comm_enable:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 38B5     		push	{r3, r4, r5, lr}
 191 0002 0E4D     		ldr	r5, .L35
 192 0004 0E4C     		ldr	r4, .L35+4
 193 0006 0F49     		ldr	r1, .L35+8
 194 0008 0F4A     		ldr	r2, .L35+12
 195 000a 0023     		movs	r3, #0
 196 000c 2370     		strb	r3, [r4]
 197 000e 42F2A10C 		movw	ip, #8353
 198 0012 2B80     		strh	r3, [r5]	@ movhi
 199 0014 4FF40035 		mov	r5, #131072
 200 0018 C1E900C5 		strd	ip, r5, [r1]
 201 001c 0B81     		strh	r3, [r1, #8]	@ movhi
 202 001e 4FF4E135 		mov	r5, #115200
 203 0022 0821     		movs	r1, #8
 204 0024 1846     		mov	r0, r3
 205 0026 9380     		strh	r3, [r2, #4]	@ movhi
 206 0028 1560     		str	r5, [r2]
 207 002a 9171     		strb	r1, [r2, #6]
 208 002c FFF7FEFF 		bl	core_cdc_enable
 209 0030 18B1     		cbz	r0, .L30
 210 0032 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 211 0034 0133     		adds	r3, r3, #1
 212 0036 DBB2     		uxtb	r3, r3
 213 0038 2370     		strb	r3, [r4]
 214              	.L30:
 215 003a 38BD     		pop	{r3, r4, r5, pc}
 216              	.L36:
 217              		.align	2
 218              	.L35:
 219 003c 00000000 		.word	.LANCHOR4
 220 0040 00000000 		.word	.LANCHOR0
 221 0044 00000000 		.word	.LANCHOR5
 222 0048 00000000 		.word	.LANCHOR3
 223              		.size	udi_cdc_comm_enable, .-udi_cdc_comm_enable
 224              		.section	.text.udi_cdc_ctrl_state_notify.isra.8.part.9,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.syntax unified
 228              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	udi_cdc_ctrl_state_notify.isra.8.part.9, %function
 232              	udi_cdc_ctrl_state_notify.isra.8.part.9:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 30B5     		push	{r4, r5, lr}
 236 0002 084A     		ldr	r2, .L39
 237 0004 084C     		ldr	r4, .L39+4
 238 0006 094B     		ldr	r3, .L39+8
 239 0008 1588     		ldrh	r5, [r2]
 240 000a 2581     		strh	r5, [r4, #8]	@ movhi
 241 000c 83B0     		sub	sp, sp, #12
 242 000e 2246     		mov	r2, r4
 243 0010 0093     		str	r3, [sp]
 244 0012 0021     		movs	r1, #0
 245 0014 0A23     		movs	r3, #10
 246 0016 FFF7FEFF 		bl	udd_ep_run
 247 001a 054B     		ldr	r3, .L39+12
 248 001c 1870     		strb	r0, [r3]
 249 001e 03B0     		add	sp, sp, #12
 250              		@ sp needed
 251 0020 30BD     		pop	{r4, r5, pc}
 252              	.L40:
 253 0022 00BF     		.align	2
 254              	.L39:
 255 0024 00000000 		.word	.LANCHOR4
 256 0028 00000000 		.word	.LANCHOR5
 257 002c 00000000 		.word	udi_cdc_serial_state_msg_sent
 258 0030 00000000 		.word	.LANCHOR6
 259              		.size	udi_cdc_ctrl_state_notify.isra.8.part.9, .-udi_cdc_ctrl_state_notify.isra.8.part.9
 260              		.section	.text.udi_cdc_serial_state_msg_sent,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv4-sp-d16
 267              		.type	udi_cdc_serial_state_msg_sent, %function
 268              	udi_cdc_serial_state_msg_sent:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 0C48     		ldr	r0, .L44
 273 0002 0388     		ldrh	r3, [r0]
 274 0004 70B4     		push	{r4, r5, r6}
 275 0006 23F07C03 		bic	r3, r3, #124
 276 000a 0B4C     		ldr	r4, .L44+4
 277 000c 0B4E     		ldr	r6, .L44+8
 278 000e 2189     		ldrh	r1, [r4, #8]
 279 0010 1B04     		lsls	r3, r3, #16
 280 0012 1B0C     		lsrs	r3, r3, #16
 281 0014 0380     		strh	r3, [r0]	@ movhi
 282 0016 0588     		ldrh	r5, [r0]
 283 0018 21F07C03 		bic	r3, r1, #124
 284 001c 9BB2     		uxth	r3, r3
 285 001e 0021     		movs	r1, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 6


 286 0020 AB42     		cmp	r3, r5
 287 0022 2381     		strh	r3, [r4, #8]	@ movhi
 288 0024 3170     		strb	r1, [r6]
 289 0026 03D0     		beq	.L41
 290 0028 1046     		mov	r0, r2
 291 002a 70BC     		pop	{r4, r5, r6}
 292 002c FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.8.part.9
 293              	.L41:
 294 0030 70BC     		pop	{r4, r5, r6}
 295 0032 7047     		bx	lr
 296              	.L45:
 297              		.align	2
 298              	.L44:
 299 0034 00000000 		.word	.LANCHOR4
 300 0038 00000000 		.word	.LANCHOR5
 301 003c 00000000 		.word	.LANCHOR6
 302              		.size	udi_cdc_serial_state_msg_sent, .-udi_cdc_serial_state_msg_sent
 303              		.section	.text.udi_cdc_ctrl_state_change.isra.10,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 310              		.type	udi_cdc_ctrl_state_change.isra.10, %function
 311              	udi_cdc_ctrl_state_change.isra.10:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              		@ link register save eliminated.
 315 0000 10B4     		push	{r4}
 316              		.syntax unified
 317              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 318 0002 EFF31084 		MRS r4, primask
 319              	@ 0 "" 2
 320              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 321 0006 72B6     		cpsid i
 322              	@ 0 "" 2
 323              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 324 0008 BFF35F8F 		dmb
 325              	@ 0 "" 2
 326              		.thumb
 327              		.syntax unified
 328 000c 124A     		ldr	r2, .L53
 329 000e 0023     		movs	r3, #0
 330 0010 1370     		strb	r3, [r2]
 331 0012 124B     		ldr	r3, .L53+4
 332 0014 98B1     		cbz	r0, .L47
 333 0016 1888     		ldrh	r0, [r3]
 334 0018 0143     		orrs	r1, r1, r0
 335 001a 1980     		strh	r1, [r3]	@ movhi
 336 001c ACB1     		cbz	r4, .L52
 337              	.L49:
 338 001e 104A     		ldr	r2, .L53+8
 339 0020 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 340 0022 4AB9     		cbnz	r2, .L46
 341 0024 0F4A     		ldr	r2, .L53+12
 342 0026 1B88     		ldrh	r3, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 7


 343 0028 1289     		ldrh	r2, [r2, #8]
 344 002a 9A42     		cmp	r2, r3
 345 002c 04D0     		beq	.L46
 346 002e 8320     		movs	r0, #131
 347 0030 5DF8044B 		ldr	r4, [sp], #4
 348 0034 FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.8.part.9
 349              	.L46:
 350 0038 5DF8044B 		ldr	r4, [sp], #4
 351 003c 7047     		bx	lr
 352              	.L47:
 353 003e 1888     		ldrh	r0, [r3]
 354 0040 20EA0101 		bic	r1, r0, r1
 355 0044 1980     		strh	r1, [r3]	@ movhi
 356 0046 002C     		cmp	r4, #0
 357 0048 E9D1     		bne	.L49
 358              	.L52:
 359 004a 0121     		movs	r1, #1
 360 004c 1170     		strb	r1, [r2]
 361              		.syntax unified
 362              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 363 004e BFF35F8F 		dmb
 364              	@ 0 "" 2
 365              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 366 0052 62B6     		cpsie i
 367              	@ 0 "" 2
 368              		.thumb
 369              		.syntax unified
 370 0054 E3E7     		b	.L49
 371              	.L54:
 372 0056 00BF     		.align	2
 373              	.L53:
 374 0058 00000000 		.word	g_interrupt_enabled
 375 005c 00000000 		.word	.LANCHOR4
 376 0060 00000000 		.word	.LANCHOR6
 377 0064 00000000 		.word	.LANCHOR5
 378              		.size	udi_cdc_ctrl_state_change.isra.10, .-udi_cdc_ctrl_state_change.isra.10
 379              		.section	.text.udi_cdc_tx_send.isra.6,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv4-sp-d16
 386              		.type	udi_cdc_tx_send.isra.6, %function
 387              	udi_cdc_tx_send.isra.6:
 388              		@ args = 0, pretend = 0, frame = 8
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 391 0004 464D     		ldr	r5, .L79
 392 0006 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 393 0008 85B0     		sub	sp, sp, #20
 394 000a 13B1     		cbz	r3, .L76
 395              	.L55:
 396 000c 05B0     		add	sp, sp, #20
 397              		@ sp needed
 398 000e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 399              	.L76:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 8


 400 0012 FFF7FEFF 		bl	udd_is_high_speed
 401 0016 434F     		ldr	r7, .L79+4
 402 0018 3C88     		ldrh	r4, [r7]
 403 001a 0028     		cmp	r0, #0
 404 001c 48D1     		bne	.L77
 405 001e FFF7FEFF 		bl	udd_get_frame_number
 406 0022 8442     		cmp	r4, r0
 407 0024 F2D0     		beq	.L55
 408              	.L62:
 409              		.syntax unified
 410              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 411 0026 EFF3108B 		MRS fp, primask
 412              	@ 0 "" 2
 413              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 414 002a 72B6     		cpsid i
 415              	@ 0 "" 2
 416              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 417 002c BFF35F8F 		dmb
 418              	@ 0 "" 2
 419              		.thumb
 420              		.syntax unified
 421 0030 DFF804A1 		ldr	r10, .L79+24
 422 0034 DFF80491 		ldr	r9, .L79+28
 423 0038 DFF80481 		ldr	r8, .L79+32
 424 003c 0023     		movs	r3, #0
 425 003e 8AF80030 		strb	r3, [r10]
 426 0042 99F80040 		ldrb	r4, [r9]	@ zero_extendqisi2
 427 0046 E4B2     		uxtb	r4, r4
 428 0048 2646     		mov	r6, r4
 429 004a 38F81430 		ldrh	r3, [r8, r4, lsl #1]
 430 004e 002B     		cmp	r3, #0
 431 0050 38D0     		beq	.L60
 432 0052 354B     		ldr	r3, .L79+8
 433              	.L61:
 434 0054 354A     		ldr	r2, .L79+12
 435 0056 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 436 0058 B4FA84F4 		clz	r4, r4
 437 005c 0021     		movs	r1, #0
 438 005e 6409     		lsrs	r4, r4, #5
 439 0060 1980     		strh	r1, [r3]	@ movhi
 440 0062 6ABB     		cbnz	r2, .L66
 441 0064 89F80040 		strb	r4, [r9]
 442              	.L67:
 443 0068 0123     		movs	r3, #1
 444 006a 2B70     		strb	r3, [r5]
 445 006c BBF1000F 		cmp	fp, #0
 446 0070 49D0     		beq	.L78
 447              	.L68:
 448 0072 38F81630 		ldrh	r3, [r8, r6, lsl #1]
 449 0076 B3F5A07F 		cmp	r3, #320
 450 007a 14BF     		ite	ne
 451 007c 0124     		movne	r4, #1
 452 007e 0024     		moveq	r4, #0
 453 0080 1BD0     		beq	.L69
 454 0082 FFF7FEFF 		bl	udd_is_high_speed
 455 0086 0028     		cmp	r0, #0
 456 0088 43D0     		beq	.L70
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 9


 457 008a FFF7FEFF 		bl	udd_get_micro_frame_number
 458 008e 38F81630 		ldrh	r3, [r8, r6, lsl #1]
 459 0092 3880     		strh	r0, [r7]	@ movhi
 460              	.L71:
 461 0094 2648     		ldr	r0, .L79+16
 462 0096 274A     		ldr	r2, .L79+20
 463 0098 0092     		str	r2, [sp]
 464 009a 06EB8606 		add	r6, r6, r6, lsl #2
 465 009e 00EB8612 		add	r2, r0, r6, lsl #6
 466 00a2 2146     		mov	r1, r4
 467 00a4 8120     		movs	r0, #129
 468 00a6 FFF7FEFF 		bl	udd_ep_run
 469 00aa 05B0     		add	sp, sp, #20
 470              		@ sp needed
 471 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 472              	.L77:
 473 00b0 FFF7FEFF 		bl	udd_get_micro_frame_number
 474 00b4 8442     		cmp	r4, r0
 475 00b6 B6D1     		bne	.L62
 476 00b8 A8E7     		b	.L55
 477              	.L69:
 478 00ba 0022     		movs	r2, #0
 479 00bc 3A80     		strh	r2, [r7]	@ movhi
 480 00be E9E7     		b	.L71
 481              	.L66:
 482 00c0 2646     		mov	r6, r4
 483 00c2 D1E7     		b	.L67
 484              	.L60:
 485 00c4 184B     		ldr	r3, .L79+8
 486 00c6 0393     		str	r3, [sp, #12]
 487 00c8 1A88     		ldrh	r2, [r3]
 488 00ca 0132     		adds	r2, r2, #1
 489 00cc 1A80     		strh	r2, [r3]	@ movhi
 490 00ce FFF7FEFF 		bl	udd_is_high_speed
 491 00d2 039B     		ldr	r3, [sp, #12]
 492 00d4 60B9     		cbnz	r0, .L63
 493 00d6 1A88     		ldrh	r2, [r3]
 494 00d8 632A     		cmp	r2, #99
 495 00da 09D8     		bhi	.L63
 496              	.L65:
 497 00dc BBF1000F 		cmp	fp, #0
 498 00e0 94D1     		bne	.L55
 499 00e2 0123     		movs	r3, #1
 500 00e4 8AF80030 		strb	r3, [r10]
 501              		.syntax unified
 502              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 503 00e8 BFF35F8F 		dmb
 504              	@ 0 "" 2
 505              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 506 00ec 62B6     		cpsie i
 507              	@ 0 "" 2
 508              		.thumb
 509              		.syntax unified
 510 00ee 8DE7     		b	.L55
 511              	.L63:
 512 00f0 0393     		str	r3, [sp, #12]
 513 00f2 FFF7FEFF 		bl	udd_is_high_speed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 10


 514 00f6 039B     		ldr	r3, [sp, #12]
 515 00f8 0028     		cmp	r0, #0
 516 00fa ABD0     		beq	.L61
 517 00fc 1A88     		ldrh	r2, [r3]
 518 00fe B2F5487F 		cmp	r2, #800
 519 0102 EBD3     		bcc	.L65
 520 0104 A6E7     		b	.L61
 521              	.L78:
 522 0106 8AF80030 		strb	r3, [r10]
 523              		.syntax unified
 524              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 525 010a BFF35F8F 		dmb
 526              	@ 0 "" 2
 527              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 528 010e 62B6     		cpsie i
 529              	@ 0 "" 2
 530              		.thumb
 531              		.syntax unified
 532 0110 AFE7     		b	.L68
 533              	.L70:
 534 0112 FFF7FEFF 		bl	udd_get_frame_number
 535 0116 38F81630 		ldrh	r3, [r8, r6, lsl #1]
 536 011a 3880     		strh	r0, [r7]	@ movhi
 537 011c BAE7     		b	.L71
 538              	.L80:
 539 011e 00BF     		.align	2
 540              	.L79:
 541 0120 00000000 		.word	.LANCHOR7
 542 0124 00000000 		.word	.LANCHOR8
 543 0128 00000000 		.word	.LANCHOR11
 544 012c 00000000 		.word	.LANCHOR12
 545 0130 00000000 		.word	.LANCHOR13
 546 0134 00000000 		.word	udi_cdc_data_sent
 547 0138 00000000 		.word	g_interrupt_enabled
 548 013c 00000000 		.word	.LANCHOR9
 549 0140 00000000 		.word	.LANCHOR10
 550              		.size	udi_cdc_tx_send.isra.6, .-udi_cdc_tx_send.isra.6
 551              		.section	.text.udi_cdc_data_sof_notify,"ax",%progbits
 552              		.align	1
 553              		.p2align 2,,3
 554              		.global	udi_cdc_data_sof_notify
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 559              		.type	udi_cdc_data_sof_notify, %function
 560              	udi_cdc_data_sof_notify:
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563              		@ link register save eliminated.
 564 0000 FFF7FEBF 		b	udi_cdc_tx_send.isra.6
 565              		.size	udi_cdc_data_sof_notify, .-udi_cdc_data_sof_notify
 566              		.section	.text.udi_cdc_data_sent,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.syntax unified
 570              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 11


 571              		.thumb_func
 572              		.fpu fpv4-sp-d16
 573              		.type	udi_cdc_data_sent, %function
 574              	udi_cdc_data_sent:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577 0000 88B9     		cbnz	r0, .L82
 578 0002 38B5     		push	{r3, r4, r5, lr}
 579 0004 0B4B     		ldr	r3, .L92
 580 0006 0C4C     		ldr	r4, .L92+4
 581 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 582 000a 0C4D     		ldr	r5, .L92+8
 583 000c 2070     		strb	r0, [r4]
 584 000e B3FA83F3 		clz	r3, r3
 585 0012 5B09     		lsrs	r3, r3, #5
 586 0014 0A4C     		ldr	r4, .L92+12
 587 0016 25F81300 		strh	r0, [r5, r3, lsl #1]	@ movhi
 588 001a 2070     		strb	r0, [r4]
 589 001c 21B9     		cbnz	r1, .L91
 590 001e BDE83840 		pop	{r3, r4, r5, lr}
 591 0022 FFF7FEBF 		b	udi_cdc_tx_send.isra.6
 592              	.L82:
 593 0026 7047     		bx	lr
 594              	.L91:
 595 0028 FFF7FEFF 		bl	core_cdc_tx_empty_notify
 596 002c BDE83840 		pop	{r3, r4, r5, lr}
 597 0030 FFF7FEBF 		b	udi_cdc_tx_send.isra.6
 598              	.L93:
 599              		.align	2
 600              	.L92:
 601 0034 00000000 		.word	.LANCHOR9
 602 0038 00000000 		.word	.LANCHOR12
 603 003c 00000000 		.word	.LANCHOR10
 604 0040 00000000 		.word	.LANCHOR7
 605              		.size	udi_cdc_data_sent, .-udi_cdc_data_sent
 606              		.section	.text.udi_cdc_ctrl_signal_dcd,"ax",%progbits
 607              		.align	1
 608              		.p2align 2,,3
 609              		.global	udi_cdc_ctrl_signal_dcd
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu fpv4-sp-d16
 614              		.type	udi_cdc_ctrl_signal_dcd, %function
 615              	udi_cdc_ctrl_signal_dcd:
 616              		@ args = 0, pretend = 0, frame = 0
 617              		@ frame_needed = 0, uses_anonymous_args = 0
 618              		@ link register save eliminated.
 619 0000 0121     		movs	r1, #1
 620 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 621              		.size	udi_cdc_ctrl_signal_dcd, .-udi_cdc_ctrl_signal_dcd
 622 0006 00BF     		.section	.text.udi_cdc_ctrl_signal_dsr,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	udi_cdc_ctrl_signal_dsr
 626              		.syntax unified
 627              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	udi_cdc_ctrl_signal_dsr, %function
 631              	udi_cdc_ctrl_signal_dsr:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634              		@ link register save eliminated.
 635 0000 0221     		movs	r1, #2
 636 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 637              		.size	udi_cdc_ctrl_signal_dsr, .-udi_cdc_ctrl_signal_dsr
 638 0006 00BF     		.section	.text.udi_cdc_signal_framing_error,"ax",%progbits
 639              		.align	1
 640              		.p2align 2,,3
 641              		.global	udi_cdc_signal_framing_error
 642              		.syntax unified
 643              		.thumb
 644              		.thumb_func
 645              		.fpu fpv4-sp-d16
 646              		.type	udi_cdc_signal_framing_error, %function
 647              	udi_cdc_signal_framing_error:
 648              		@ args = 0, pretend = 0, frame = 0
 649              		@ frame_needed = 0, uses_anonymous_args = 0
 650              		@ link register save eliminated.
 651 0000 1021     		movs	r1, #16
 652 0002 0120     		movs	r0, #1
 653 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 654              		.size	udi_cdc_signal_framing_error, .-udi_cdc_signal_framing_error
 655              		.section	.text.udi_cdc_signal_parity_error,"ax",%progbits
 656              		.align	1
 657              		.p2align 2,,3
 658              		.global	udi_cdc_signal_parity_error
 659              		.syntax unified
 660              		.thumb
 661              		.thumb_func
 662              		.fpu fpv4-sp-d16
 663              		.type	udi_cdc_signal_parity_error, %function
 664              	udi_cdc_signal_parity_error:
 665              		@ args = 0, pretend = 0, frame = 0
 666              		@ frame_needed = 0, uses_anonymous_args = 0
 667              		@ link register save eliminated.
 668 0000 2021     		movs	r1, #32
 669 0002 0120     		movs	r0, #1
 670 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 671              		.size	udi_cdc_signal_parity_error, .-udi_cdc_signal_parity_error
 672              		.section	.text.udi_cdc_signal_overrun,"ax",%progbits
 673              		.align	1
 674              		.p2align 2,,3
 675              		.global	udi_cdc_signal_overrun
 676              		.syntax unified
 677              		.thumb
 678              		.thumb_func
 679              		.fpu fpv4-sp-d16
 680              		.type	udi_cdc_signal_overrun, %function
 681              	udi_cdc_signal_overrun:
 682              		@ args = 0, pretend = 0, frame = 0
 683              		@ frame_needed = 0, uses_anonymous_args = 0
 684              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 13


 685 0000 4021     		movs	r1, #64
 686 0002 0120     		movs	r0, #1
 687 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 688              		.size	udi_cdc_signal_overrun, .-udi_cdc_signal_overrun
 689              		.section	.text.udi_cdc_multi_ctrl_signal_dcd,"ax",%progbits
 690              		.align	1
 691              		.p2align 2,,3
 692              		.global	udi_cdc_multi_ctrl_signal_dcd
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu fpv4-sp-d16
 697              		.type	udi_cdc_multi_ctrl_signal_dcd, %function
 698              	udi_cdc_multi_ctrl_signal_dcd:
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701              		@ link register save eliminated.
 702 0000 0846     		mov	r0, r1
 703 0002 0121     		movs	r1, #1
 704 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 705              		.size	udi_cdc_multi_ctrl_signal_dcd, .-udi_cdc_multi_ctrl_signal_dcd
 706              		.section	.text.udi_cdc_multi_ctrl_signal_dsr,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	udi_cdc_multi_ctrl_signal_dsr
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu fpv4-sp-d16
 714              		.type	udi_cdc_multi_ctrl_signal_dsr, %function
 715              	udi_cdc_multi_ctrl_signal_dsr:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 0846     		mov	r0, r1
 720 0002 0221     		movs	r1, #2
 721 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 722              		.size	udi_cdc_multi_ctrl_signal_dsr, .-udi_cdc_multi_ctrl_signal_dsr
 723              		.section	.text.udi_cdc_multi_signal_framing_error,"ax",%progbits
 724              		.align	1
 725              		.p2align 2,,3
 726              		.global	udi_cdc_multi_signal_framing_error
 727              		.syntax unified
 728              		.thumb
 729              		.thumb_func
 730              		.fpu fpv4-sp-d16
 731              		.type	udi_cdc_multi_signal_framing_error, %function
 732              	udi_cdc_multi_signal_framing_error:
 733              		@ args = 0, pretend = 0, frame = 0
 734              		@ frame_needed = 0, uses_anonymous_args = 0
 735              		@ link register save eliminated.
 736 0000 1021     		movs	r1, #16
 737 0002 0120     		movs	r0, #1
 738 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 739              		.size	udi_cdc_multi_signal_framing_error, .-udi_cdc_multi_signal_framing_error
 740              		.section	.text.udi_cdc_multi_signal_parity_error,"ax",%progbits
 741              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 14


 742              		.p2align 2,,3
 743              		.global	udi_cdc_multi_signal_parity_error
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu fpv4-sp-d16
 748              		.type	udi_cdc_multi_signal_parity_error, %function
 749              	udi_cdc_multi_signal_parity_error:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 2021     		movs	r1, #32
 754 0002 0120     		movs	r0, #1
 755 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 756              		.size	udi_cdc_multi_signal_parity_error, .-udi_cdc_multi_signal_parity_error
 757              		.section	.text.udi_cdc_multi_signal_overrun,"ax",%progbits
 758              		.align	1
 759              		.p2align 2,,3
 760              		.global	udi_cdc_multi_signal_overrun
 761              		.syntax unified
 762              		.thumb
 763              		.thumb_func
 764              		.fpu fpv4-sp-d16
 765              		.type	udi_cdc_multi_signal_overrun, %function
 766              	udi_cdc_multi_signal_overrun:
 767              		@ args = 0, pretend = 0, frame = 0
 768              		@ frame_needed = 0, uses_anonymous_args = 0
 769              		@ link register save eliminated.
 770 0000 4021     		movs	r1, #64
 771 0002 0120     		movs	r0, #1
 772 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.10
 773              		.size	udi_cdc_multi_signal_overrun, .-udi_cdc_multi_signal_overrun
 774              		.section	.text.udi_cdc_multi_get_nb_received_data,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	udi_cdc_multi_get_nb_received_data
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	udi_cdc_multi_get_nb_received_data, %function
 783              	udi_cdc_multi_get_nb_received_data:
 784              		@ args = 0, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786              		@ link register save eliminated.
 787 0000 30B4     		push	{r4, r5}
 788              		.syntax unified
 789              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 790 0002 EFF31081 		MRS r1, primask
 791              	@ 0 "" 2
 792              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 793 0006 72B6     		cpsid i
 794              	@ 0 "" 2
 795              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 796 0008 BFF35F8F 		dmb
 797              	@ 0 "" 2
 798              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 15


 799              		.syntax unified
 800 000c 094A     		ldr	r2, .L107
 801 000e 0A4C     		ldr	r4, .L107+4
 802 0010 0A4B     		ldr	r3, .L107+8
 803 0012 0B48     		ldr	r0, .L107+12
 804 0014 0025     		movs	r5, #0
 805 0016 1570     		strb	r5, [r2]
 806 0018 2488     		ldrh	r4, [r4]
 807 001a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 808 001c DBB2     		uxtb	r3, r3
 809 001e 30F81300 		ldrh	r0, [r0, r3, lsl #1]
 810 0022 001B     		subs	r0, r0, r4
 811 0024 21B9     		cbnz	r1, .L104
 812 0026 0123     		movs	r3, #1
 813 0028 1370     		strb	r3, [r2]
 814              		.syntax unified
 815              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 816 002a BFF35F8F 		dmb
 817              	@ 0 "" 2
 818              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 819 002e 62B6     		cpsie i
 820              	@ 0 "" 2
 821              		.thumb
 822              		.syntax unified
 823              	.L104:
 824 0030 30BC     		pop	{r4, r5}
 825 0032 7047     		bx	lr
 826              	.L108:
 827              		.align	2
 828              	.L107:
 829 0034 00000000 		.word	g_interrupt_enabled
 830 0038 00000000 		.word	.LANCHOR14
 831 003c 00000000 		.word	.LANCHOR15
 832 0040 00000000 		.word	.LANCHOR16
 833              		.size	udi_cdc_multi_get_nb_received_data, .-udi_cdc_multi_get_nb_received_data
 834              		.section	.text.udi_cdc_rx_start.isra.13,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.syntax unified
 838              		.thumb
 839              		.thumb_func
 840              		.fpu fpv4-sp-d16
 841              		.type	udi_cdc_rx_start.isra.13, %function
 842              	udi_cdc_rx_start.isra.13:
 843              		@ args = 0, pretend = 0, frame = 0
 844              		@ frame_needed = 0, uses_anonymous_args = 0
 845 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 846 0002 83B0     		sub	sp, sp, #12
 847              		.syntax unified
 848              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 849 0004 EFF31080 		MRS r0, primask
 850              	@ 0 "" 2
 851              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 852 0008 72B6     		cpsid i
 853              	@ 0 "" 2
 854              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 855 000a BFF35F8F 		dmb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 16


 856              	@ 0 "" 2
 857              		.thumb
 858              		.syntax unified
 859 000e 2149     		ldr	r1, .L123
 860 0010 214E     		ldr	r6, .L123+4
 861 0012 224D     		ldr	r5, .L123+8
 862 0014 0023     		movs	r3, #0
 863 0016 0B70     		strb	r3, [r1]
 864 0018 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 865 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 866 001c 53B9     		cbnz	r3, .L110
 867 001e E4B2     		uxtb	r4, r4
 868 0020 03F0FF02 		and	r2, r3, #255
 869 0024 DFF884C0 		ldr	ip, .L123+24
 870 0028 1D4B     		ldr	r3, .L123+12
 871 002a 1F88     		ldrh	r7, [r3]
 872 002c 3CF814C0 		ldrh	ip, [ip, r4, lsl #1]
 873 0030 BC45     		cmp	ip, r7
 874 0032 03D9     		bls	.L111
 875              	.L110:
 876 0034 E8B1     		cbz	r0, .L120
 877 0036 0020     		movs	r0, #0
 878 0038 03B0     		add	sp, sp, #12
 879              		@ sp needed
 880 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 881              	.L111:
 882 003c B4FA84F7 		clz	r7, r4
 883 0040 1A80     		strh	r2, [r3]	@ movhi
 884 0042 7F09     		lsrs	r7, r7, #5
 885 0044 0123     		movs	r3, #1
 886 0046 3770     		strb	r7, [r6]
 887 0048 2B70     		strb	r3, [r5]
 888 004a E8B1     		cbz	r0, .L121
 889              	.L113:
 890 004c 0020     		movs	r0, #0
 891 004e FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 892 0052 A8B9     		cbnz	r0, .L122
 893              	.L114:
 894 0054 134A     		ldr	r2, .L123+16
 895 0056 144B     		ldr	r3, .L123+20
 896 0058 0093     		str	r3, [sp]
 897 005a 04EB8404 		add	r4, r4, r4, lsl #2
 898 005e 02EB8412 		add	r2, r2, r4, lsl #6
 899 0062 4FF4A073 		mov	r3, #320
 900 0066 0121     		movs	r1, #1
 901 0068 0220     		movs	r0, #2
 902 006a FFF7FEFF 		bl	udd_ep_run
 903 006e 03B0     		add	sp, sp, #12
 904              		@ sp needed
 905 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 906              	.L120:
 907 0072 0123     		movs	r3, #1
 908 0074 0B70     		strb	r3, [r1]
 909              		.syntax unified
 910              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 911 0076 BFF35F8F 		dmb
 912              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 17


 913              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 914 007a 62B6     		cpsie i
 915              	@ 0 "" 2
 916              		.thumb
 917              		.syntax unified
 918 007c 03B0     		add	sp, sp, #12
 919              		@ sp needed
 920 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 921              	.L122:
 922 0080 0020     		movs	r0, #0
 923 0082 FFF7FEFF 		bl	core_cdc_rx_notify
 924 0086 E5E7     		b	.L114
 925              	.L121:
 926 0088 0B70     		strb	r3, [r1]
 927              		.syntax unified
 928              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 929 008a BFF35F8F 		dmb
 930              	@ 0 "" 2
 931              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 932 008e 62B6     		cpsie i
 933              	@ 0 "" 2
 934              		.thumb
 935              		.syntax unified
 936 0090 DCE7     		b	.L113
 937              	.L124:
 938 0092 00BF     		.align	2
 939              	.L123:
 940 0094 00000000 		.word	g_interrupt_enabled
 941 0098 00000000 		.word	.LANCHOR15
 942 009c 00000000 		.word	.LANCHOR17
 943 00a0 00000000 		.word	.LANCHOR14
 944 00a4 00000000 		.word	.LANCHOR18
 945 00a8 00000000 		.word	udi_cdc_data_received
 946 00ac 00000000 		.word	.LANCHOR16
 947              		.size	udi_cdc_rx_start.isra.13, .-udi_cdc_rx_start.isra.13
 948              		.section	.text.udi_cdc_data_enable,"ax",%progbits
 949              		.align	1
 950              		.p2align 2,,3
 951              		.global	udi_cdc_data_enable
 952              		.syntax unified
 953              		.thumb
 954              		.thumb_func
 955              		.fpu fpv4-sp-d16
 956              		.type	udi_cdc_data_enable, %function
 957              	udi_cdc_data_enable:
 958              		@ args = 0, pretend = 0, frame = 0
 959              		@ frame_needed = 0, uses_anonymous_args = 0
 960 0000 70B5     		push	{r4, r5, r6, lr}
 961 0002 1348     		ldr	r0, .L131
 962 0004 134A     		ldr	r2, .L131+4
 963 0006 144B     		ldr	r3, .L131+8
 964 0008 1449     		ldr	r1, .L131+12
 965 000a 154D     		ldr	r5, .L131+16
 966 000c 154E     		ldr	r6, .L131+20
 967 000e 0024     		movs	r4, #0
 968 0010 2C70     		strb	r4, [r5]
 969 0012 0C80     		strh	r4, [r1]	@ movhi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 18


 970 0014 0470     		strb	r4, [r0]
 971 0016 3460     		str	r4, [r6]
 972 0018 1470     		strb	r4, [r2]
 973 001a 1C70     		strb	r4, [r3]
 974 001c FFF7FEFF 		bl	udi_cdc_tx_send.isra.6
 975 0020 114B     		ldr	r3, .L131+24
 976 0022 1248     		ldr	r0, .L131+28
 977 0024 1249     		ldr	r1, .L131+32
 978 0026 134A     		ldr	r2, .L131+36
 979 0028 0470     		strb	r4, [r0]
 980 002a 0C70     		strb	r4, [r1]
 981 002c 1C80     		strh	r4, [r3]	@ movhi
 982 002e 5C80     		strh	r4, [r3, #2]	@ movhi
 983 0030 1480     		strh	r4, [r2]	@ movhi
 984 0032 FFF7FEFF 		bl	udi_cdc_rx_start.isra.13
 985 0036 48B1     		cbz	r0, .L126
 986 0038 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 987 003a 0133     		adds	r3, r3, #1
 988 003c DBB2     		uxtb	r3, r3
 989 003e 2B70     		strb	r3, [r5]
 990 0040 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 991 0042 DBB2     		uxtb	r3, r3
 992 0044 012B     		cmp	r3, #1
 993 0046 04BF     		itt	eq
 994 0048 0B4A     		ldreq	r2, .L131+40
 995 004a 1370     		strbeq	r3, [r2]
 996              	.L126:
 997 004c 70BD     		pop	{r4, r5, r6, pc}
 998              	.L132:
 999 004e 00BF     		.align	2
 1000              	.L131:
 1001 0050 00000000 		.word	.LANCHOR7
 1002 0054 00000000 		.word	.LANCHOR12
 1003 0058 00000000 		.word	.LANCHOR9
 1004 005c 00000000 		.word	.LANCHOR8
 1005 0060 00000000 		.word	.LANCHOR1
 1006 0064 00000000 		.word	.LANCHOR10
 1007 0068 00000000 		.word	.LANCHOR16
 1008 006c 00000000 		.word	.LANCHOR17
 1009 0070 00000000 		.word	.LANCHOR15
 1010 0074 00000000 		.word	.LANCHOR14
 1011 0078 00000000 		.word	.LANCHOR2
 1012              		.size	udi_cdc_data_enable, .-udi_cdc_data_enable
 1013              		.section	.text.udi_cdc_data_received,"ax",%progbits
 1014              		.align	1
 1015              		.p2align 2,,3
 1016              		.syntax unified
 1017              		.thumb
 1018              		.thumb_func
 1019              		.fpu fpv4-sp-d16
 1020              		.type	udi_cdc_data_received, %function
 1021              	udi_cdc_data_received:
 1022              		@ args = 0, pretend = 0, frame = 0
 1023              		@ frame_needed = 0, uses_anonymous_args = 0
 1024 0000 08BB     		cbnz	r0, .L137
 1025 0002 10B5     		push	{r4, lr}
 1026 0004 104B     		ldr	r3, .L141
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 19


 1027 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1028 0008 B3FA83F3 		clz	r3, r3
 1029 000c 82B0     		sub	sp, sp, #8
 1030 000e 5B09     		lsrs	r3, r3, #5
 1031 0010 51B1     		cbz	r1, .L140
 1032 0012 0E4C     		ldr	r4, .L141+4
 1033 0014 0E4A     		ldr	r2, .L141+8
 1034 0016 89B2     		uxth	r1, r1
 1035 0018 24F81310 		strh	r1, [r4, r3, lsl #1]	@ movhi
 1036 001c 1070     		strb	r0, [r2]
 1037 001e 02B0     		add	sp, sp, #8
 1038              		@ sp needed
 1039 0020 BDE81040 		pop	{r4, lr}
 1040 0024 FFF7FEBF 		b	udi_cdc_rx_start.isra.13
 1041              	.L140:
 1042 0028 1046     		mov	r0, r2
 1043 002a 9900     		lsls	r1, r3, #2
 1044 002c 094A     		ldr	r2, .L141+12
 1045 002e 0A4C     		ldr	r4, .L141+16
 1046 0030 0094     		str	r4, [sp]
 1047 0032 0B44     		add	r3, r3, r1
 1048 0034 02EB8312 		add	r2, r2, r3, lsl #6
 1049 0038 0121     		movs	r1, #1
 1050 003a 4FF4A073 		mov	r3, #320
 1051 003e FFF7FEFF 		bl	udd_ep_run
 1052 0042 02B0     		add	sp, sp, #8
 1053              		@ sp needed
 1054 0044 10BD     		pop	{r4, pc}
 1055              	.L137:
 1056 0046 7047     		bx	lr
 1057              	.L142:
 1058              		.align	2
 1059              	.L141:
 1060 0048 00000000 		.word	.LANCHOR15
 1061 004c 00000000 		.word	.LANCHOR16
 1062 0050 00000000 		.word	.LANCHOR17
 1063 0054 00000000 		.word	.LANCHOR18
 1064 0058 00000000 		.word	udi_cdc_data_received
 1065              		.size	udi_cdc_data_received, .-udi_cdc_data_received
 1066              		.section	.text.udi_cdc_get_nb_received_data,"ax",%progbits
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.global	udi_cdc_get_nb_received_data
 1070              		.syntax unified
 1071              		.thumb
 1072              		.thumb_func
 1073              		.fpu fpv4-sp-d16
 1074              		.type	udi_cdc_get_nb_received_data, %function
 1075              	udi_cdc_get_nb_received_data:
 1076              		@ args = 0, pretend = 0, frame = 0
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078              		@ link register save eliminated.
 1079 0000 0020     		movs	r0, #0
 1080 0002 FFF7FEBF 		b	udi_cdc_multi_get_nb_received_data
 1081              		.size	udi_cdc_get_nb_received_data, .-udi_cdc_get_nb_received_data
 1082 0006 00BF     		.section	.text.udi_cdc_multi_is_rx_ready,"ax",%progbits
 1083              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 20


 1084              		.p2align 2,,3
 1085              		.global	udi_cdc_multi_is_rx_ready
 1086              		.syntax unified
 1087              		.thumb
 1088              		.thumb_func
 1089              		.fpu fpv4-sp-d16
 1090              		.type	udi_cdc_multi_is_rx_ready, %function
 1091              	udi_cdc_multi_is_rx_ready:
 1092              		@ args = 0, pretend = 0, frame = 0
 1093              		@ frame_needed = 0, uses_anonymous_args = 0
 1094 0000 08B5     		push	{r3, lr}
 1095 0002 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1096 0006 0030     		adds	r0, r0, #0
 1097 0008 18BF     		it	ne
 1098 000a 0120     		movne	r0, #1
 1099 000c 08BD     		pop	{r3, pc}
 1100              		.size	udi_cdc_multi_is_rx_ready, .-udi_cdc_multi_is_rx_ready
 1101 000e 00BF     		.section	.text.udi_cdc_is_rx_ready,"ax",%progbits
 1102              		.align	1
 1103              		.p2align 2,,3
 1104              		.global	udi_cdc_is_rx_ready
 1105              		.syntax unified
 1106              		.thumb
 1107              		.thumb_func
 1108              		.fpu fpv4-sp-d16
 1109              		.type	udi_cdc_is_rx_ready, %function
 1110              	udi_cdc_is_rx_ready:
 1111              		@ args = 0, pretend = 0, frame = 0
 1112              		@ frame_needed = 0, uses_anonymous_args = 0
 1113 0000 08B5     		push	{r3, lr}
 1114 0002 0020     		movs	r0, #0
 1115 0004 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1116 0008 0030     		adds	r0, r0, #0
 1117 000a 18BF     		it	ne
 1118 000c 0120     		movne	r0, #1
 1119 000e 08BD     		pop	{r3, pc}
 1120              		.size	udi_cdc_is_rx_ready, .-udi_cdc_is_rx_ready
 1121              		.section	.text.udi_cdc_multi_getc,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	udi_cdc_multi_getc
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu fpv4-sp-d16
 1129              		.type	udi_cdc_multi_getc, %function
 1130              	udi_cdc_multi_getc:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1134 0004 244B     		ldr	r3, .L159
 1135 0006 254D     		ldr	r5, .L159+4
 1136 0008 93F806A0 		ldrb	r10, [r3, #6]	@ zero_extendqisi2
 1137 000c 244C     		ldr	r4, .L159+8
 1138 000e DFF89C90 		ldr	r9, .L159+20
 1139 0012 244F     		ldr	r7, .L159+12
 1140 0014 DFF898B0 		ldr	fp, .L159+24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 21


 1141 0018 AAF1090A 		sub	r10, r10, #9
 1142 001c 4FF0000C 		mov	ip, #0
 1143 0020 BAFA8AFA 		clz	r10, r10
 1144 0024 4FEA5A1A 		lsr	r10, r10, #5
 1145 0028 6646     		mov	r6, ip
 1146              	.L149:
 1147              		.syntax unified
 1148              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1149 002a EFF31080 		MRS r0, primask
 1150              	@ 0 "" 2
 1151              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1152 002e 72B6     		cpsid i
 1153              	@ 0 "" 2
 1154              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1155 0030 BFF35F8F 		dmb
 1156              	@ 0 "" 2
 1157              		.thumb
 1158              		.syntax unified
 1159 0034 2E70     		strb	r6, [r5]
 1160 0036 2188     		ldrh	r1, [r4]
 1161 0038 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 1162 003c DBB2     		uxtb	r3, r3
 1163 003e 89B2     		uxth	r1, r1
 1164 0040 37F81320 		ldrh	r2, [r7, r3, lsl #1]
 1165 0044 92B2     		uxth	r2, r2
 1166 0046 00B3     		cbz	r0, .L158
 1167              	.L150:
 1168 0048 8A42     		cmp	r2, r1
 1169 004a 09D8     		bhi	.L151
 1170 004c 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1171 0050 03F0FF02 		and	r2, r3, #255
 1172 0054 002B     		cmp	r3, #0
 1173 0056 E8D1     		bne	.L149
 1174 0058 9046     		mov	r8, r2
 1175              	.L148:
 1176 005a 4046     		mov	r0, r8
 1177 005c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1178              	.L151:
 1179 0060 114A     		ldr	r2, .L159+16
 1180 0062 03EB8303 		add	r3, r3, r3, lsl #2
 1181 0066 02EB8313 		add	r3, r2, r3, lsl #6
 1182 006a 4A1C     		adds	r2, r1, #1
 1183 006c 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 1184 006e 92B2     		uxth	r2, r2
 1185 0070 43EA0C08 		orr	r8, r3, ip
 1186 0074 2280     		strh	r2, [r4]	@ movhi
 1187 0076 FFF7FEFF 		bl	udi_cdc_rx_start.isra.13
 1188 007a BAF1000F 		cmp	r10, #0
 1189 007e ECD0     		beq	.L148
 1190 0080 4FEA082C 		lsl	ip, r8, #8
 1191 0084 4FF0000A 		mov	r10, #0
 1192 0088 CFE7     		b	.L149
 1193              	.L158:
 1194 008a 0120     		movs	r0, #1
 1195 008c 2870     		strb	r0, [r5]
 1196              		.syntax unified
 1197              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 22


 1198 008e BFF35F8F 		dmb
 1199              	@ 0 "" 2
 1200              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1201 0092 62B6     		cpsie i
 1202              	@ 0 "" 2
 1203              		.thumb
 1204              		.syntax unified
 1205 0094 D8E7     		b	.L150
 1206              	.L160:
 1207 0096 00BF     		.align	2
 1208              	.L159:
 1209 0098 00000000 		.word	.LANCHOR3
 1210 009c 00000000 		.word	g_interrupt_enabled
 1211 00a0 00000000 		.word	.LANCHOR14
 1212 00a4 00000000 		.word	.LANCHOR16
 1213 00a8 00000000 		.word	.LANCHOR18
 1214 00ac 00000000 		.word	.LANCHOR15
 1215 00b0 00000000 		.word	.LANCHOR2
 1216              		.size	udi_cdc_multi_getc, .-udi_cdc_multi_getc
 1217              		.section	.text.udi_cdc_getc,"ax",%progbits
 1218              		.align	1
 1219              		.p2align 2,,3
 1220              		.global	udi_cdc_getc
 1221              		.syntax unified
 1222              		.thumb
 1223              		.thumb_func
 1224              		.fpu fpv4-sp-d16
 1225              		.type	udi_cdc_getc, %function
 1226              	udi_cdc_getc:
 1227              		@ args = 0, pretend = 0, frame = 0
 1228              		@ frame_needed = 0, uses_anonymous_args = 0
 1229              		@ link register save eliminated.
 1230 0000 0020     		movs	r0, #0
 1231 0002 FFF7FEBF 		b	udi_cdc_multi_getc
 1232              		.size	udi_cdc_getc, .-udi_cdc_getc
 1233 0006 00BF     		.section	.text.udi_cdc_multi_read_buf,"ax",%progbits
 1234              		.align	1
 1235              		.p2align 2,,3
 1236              		.global	udi_cdc_multi_read_buf
 1237              		.syntax unified
 1238              		.thumb
 1239              		.thumb_func
 1240              		.fpu fpv4-sp-d16
 1241              		.type	udi_cdc_multi_read_buf, %function
 1242              	udi_cdc_multi_read_buf:
 1243              		@ args = 0, pretend = 0, frame = 8
 1244              		@ frame_needed = 0, uses_anonymous_args = 0
 1245 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1246 0004 2D4B     		ldr	r3, .L172
 1247 0006 DFF8C4A0 		ldr	r10, .L172+16
 1248 000a 2D4F     		ldr	r7, .L172+4
 1249 000c DFF8C090 		ldr	r9, .L172+20
 1250 0010 83B0     		sub	sp, sp, #12
 1251 0012 8B46     		mov	fp, r1
 1252 0014 1646     		mov	r6, r2
 1253              	.L163:
 1254              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 23


 1255              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1256 0016 EFF31081 		MRS r1, primask
 1257              	@ 0 "" 2
 1258              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1259 001a 72B6     		cpsid i
 1260              	@ 0 "" 2
 1261              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1262 001c BFF35F8F 		dmb
 1263              	@ 0 "" 2
 1264              		.thumb
 1265              		.syntax unified
 1266 0020 4FF00002 		mov	r2, #0
 1267 0024 8AF80020 		strb	r2, [r10]
 1268 0028 3C88     		ldrh	r4, [r7]
 1269 002a 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1270 002c D2B2     		uxtb	r2, r2
 1271 002e A4B2     		uxth	r4, r4
 1272 0030 39F81200 		ldrh	r0, [r9, r2, lsl #1]
 1273 0034 80B2     		uxth	r0, r0
 1274 0036 59B3     		cbz	r1, .L171
 1275              	.L164:
 1276 0038 02EB8201 		add	r1, r2, r2, lsl #2
 1277 003c A042     		cmp	r0, r4
 1278 003e 2148     		ldr	r0, .L172+8
 1279 0040 04EB8111 		add	r1, r4, r1, lsl #6
 1280 0044 00EB010C 		add	ip, r0, r1
 1281 0048 07D8     		bhi	.L165
 1282 004a 1F4A     		ldr	r2, .L172+12
 1283 004c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1284 004e 002A     		cmp	r2, #0
 1285 0050 E1D1     		bne	.L163
 1286              	.L169:
 1287 0052 3046     		mov	r0, r6
 1288 0054 03B0     		add	sp, sp, #12
 1289              		@ sp needed
 1290 0056 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1291              	.L165:
 1292 005a 39F81250 		ldrh	r5, [r9, r2, lsl #1]
 1293 005e 0193     		str	r3, [sp, #4]
 1294 0060 ADB2     		uxth	r5, r5
 1295 0062 A5EB0408 		sub	r8, r5, r4
 1296 0066 4645     		cmp	r6, r8
 1297 0068 5846     		mov	r0, fp
 1298 006a 6146     		mov	r1, ip
 1299 006c 4246     		mov	r2, r8
 1300 006e 16D3     		bcc	.L168
 1301 0070 FFF7FEFF 		bl	memcpy
 1302 0074 3A88     		ldrh	r2, [r7]
 1303 0076 141B     		subs	r4, r2, r4
 1304 0078 2544     		add	r5, r5, r4
 1305 007a ADB2     		uxth	r5, r5
 1306 007c A6EB0806 		sub	r6, r6, r8
 1307 0080 3D80     		strh	r5, [r7]	@ movhi
 1308 0082 C344     		add	fp, fp, r8
 1309 0084 FFF7FEFF 		bl	udi_cdc_rx_start.isra.13
 1310 0088 019B     		ldr	r3, [sp, #4]
 1311 008a 002E     		cmp	r6, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 24


 1312 008c C3D1     		bne	.L163
 1313 008e E0E7     		b	.L169
 1314              	.L171:
 1315 0090 0121     		movs	r1, #1
 1316 0092 8AF80010 		strb	r1, [r10]
 1317              		.syntax unified
 1318              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1319 0096 BFF35F8F 		dmb
 1320              	@ 0 "" 2
 1321              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1322 009a 62B6     		cpsie i
 1323              	@ 0 "" 2
 1324              		.thumb
 1325              		.syntax unified
 1326 009c CCE7     		b	.L164
 1327              	.L168:
 1328 009e 3246     		mov	r2, r6
 1329 00a0 FFF7FEFF 		bl	memcpy
 1330 00a4 3B88     		ldrh	r3, [r7]
 1331 00a6 1E44     		add	r6, r6, r3
 1332 00a8 B6B2     		uxth	r6, r6
 1333 00aa 3E80     		strh	r6, [r7]	@ movhi
 1334 00ac FFF7FEFF 		bl	udi_cdc_rx_start.isra.13
 1335 00b0 0026     		movs	r6, #0
 1336 00b2 3046     		mov	r0, r6
 1337 00b4 03B0     		add	sp, sp, #12
 1338              		@ sp needed
 1339 00b6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1340              	.L173:
 1341 00ba 00BF     		.align	2
 1342              	.L172:
 1343 00bc 00000000 		.word	.LANCHOR15
 1344 00c0 00000000 		.word	.LANCHOR14
 1345 00c4 00000000 		.word	.LANCHOR18
 1346 00c8 00000000 		.word	.LANCHOR2
 1347 00cc 00000000 		.word	g_interrupt_enabled
 1348 00d0 00000000 		.word	.LANCHOR16
 1349              		.size	udi_cdc_multi_read_buf, .-udi_cdc_multi_read_buf
 1350              		.section	.text.udi_cdc_read_no_polling,"ax",%progbits
 1351              		.align	1
 1352              		.p2align 2,,3
 1353              		.global	udi_cdc_read_no_polling
 1354              		.syntax unified
 1355              		.thumb
 1356              		.thumb_func
 1357              		.fpu fpv4-sp-d16
 1358              		.type	udi_cdc_read_no_polling, %function
 1359              	udi_cdc_read_no_polling:
 1360              		@ args = 0, pretend = 0, frame = 0
 1361              		@ frame_needed = 0, uses_anonymous_args = 0
 1362 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1363 0002 254B     		ldr	r3, .L186
 1364 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1365 0006 03F0FF04 		and	r4, r3, #255
 1366 000a BBB1     		cbz	r3, .L174
 1367              		.syntax unified
 1368              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 25


 1369 000c EFF31085 		MRS r5, primask
 1370              	@ 0 "" 2
 1371              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1372 0010 72B6     		cpsid i
 1373              	@ 0 "" 2
 1374              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1375 0012 BFF35F8F 		dmb
 1376              	@ 0 "" 2
 1377              		.thumb
 1378              		.syntax unified
 1379 0016 214E     		ldr	r6, .L186+4
 1380 0018 214F     		ldr	r7, .L186+8
 1381 001a 224B     		ldr	r3, .L186+12
 1382 001c 224C     		ldr	r4, .L186+16
 1383 001e 0022     		movs	r2, #0
 1384 0020 3270     		strb	r2, [r6]
 1385 0022 3A88     		ldrh	r2, [r7]
 1386 0024 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1387 0026 DBB2     		uxtb	r3, r3
 1388 0028 92B2     		uxth	r2, r2
 1389 002a 34F81340 		ldrh	r4, [r4, r3, lsl #1]
 1390 002e A41A     		subs	r4, r4, r2
 1391 0030 FDB1     		cbz	r5, .L183
 1392 0032 A142     		cmp	r1, r4
 1393 0034 28BF     		it	cs
 1394 0036 2146     		movcs	r1, r4
 1395 0038 0D46     		mov	r5, r1
 1396 003a 09B9     		cbnz	r1, .L184
 1397              	.L174:
 1398 003c 2046     		mov	r0, r4
 1399 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1400              	.L184:
 1401 0040 03EB8303 		add	r3, r3, r3, lsl #2
 1402 0044 1949     		ldr	r1, .L186+20
 1403 0046 02EB8313 		add	r3, r2, r3, lsl #6
 1404 004a 1944     		add	r1, r1, r3
 1405 004c 2A46     		mov	r2, r5
 1406 004e FFF7FEFF 		bl	memcpy
 1407              		.syntax unified
 1408              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1409 0052 EFF31083 		MRS r3, primask
 1410              	@ 0 "" 2
 1411              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1412 0056 72B6     		cpsid i
 1413              	@ 0 "" 2
 1414              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1415 0058 BFF35F8F 		dmb
 1416              	@ 0 "" 2
 1417              		.thumb
 1418              		.syntax unified
 1419 005c 0022     		movs	r2, #0
 1420 005e 3270     		strb	r2, [r6]
 1421 0060 3988     		ldrh	r1, [r7]
 1422 0062 0D44     		add	r5, r5, r1
 1423 0064 ADB2     		uxth	r5, r5
 1424 0066 3D80     		strh	r5, [r7]	@ movhi
 1425 0068 7BB1     		cbz	r3, .L185
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 26


 1426              	.L177:
 1427 006a FFF7FEFF 		bl	udi_cdc_rx_start.isra.13
 1428 006e 2046     		mov	r0, r4
 1429 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1430              	.L183:
 1431 0072 0125     		movs	r5, #1
 1432 0074 3570     		strb	r5, [r6]
 1433              		.syntax unified
 1434              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1435 0076 BFF35F8F 		dmb
 1436              	@ 0 "" 2
 1437              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1438 007a 62B6     		cpsie i
 1439              	@ 0 "" 2
 1440              		.thumb
 1441              		.syntax unified
 1442 007c A142     		cmp	r1, r4
 1443 007e 28BF     		it	cs
 1444 0080 2146     		movcs	r1, r4
 1445 0082 0D46     		mov	r5, r1
 1446 0084 0029     		cmp	r1, #0
 1447 0086 D9D0     		beq	.L174
 1448 0088 DAE7     		b	.L184
 1449              	.L185:
 1450 008a 0123     		movs	r3, #1
 1451 008c 3370     		strb	r3, [r6]
 1452              		.syntax unified
 1453              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1454 008e BFF35F8F 		dmb
 1455              	@ 0 "" 2
 1456              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1457 0092 62B6     		cpsie i
 1458              	@ 0 "" 2
 1459              		.thumb
 1460              		.syntax unified
 1461 0094 E9E7     		b	.L177
 1462              	.L187:
 1463 0096 00BF     		.align	2
 1464              	.L186:
 1465 0098 00000000 		.word	.LANCHOR2
 1466 009c 00000000 		.word	g_interrupt_enabled
 1467 00a0 00000000 		.word	.LANCHOR14
 1468 00a4 00000000 		.word	.LANCHOR15
 1469 00a8 00000000 		.word	.LANCHOR16
 1470 00ac 00000000 		.word	.LANCHOR18
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 27


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
 1505              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1506 0002 EFF31085 		MRS r5, primask
 1507              	@ 0 "" 2
 1508              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1509 0006 72B6     		cpsid i
 1510              	@ 0 "" 2
 1511              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1512 0008 BFF35F8F 		dmb
 1513              	@ 0 "" 2
 1514              		.thumb
 1515              		.syntax unified
 1516 000c 1449     		ldr	r1, .L196
 1517 000e 154C     		ldr	r4, .L196+4
 1518 0010 154A     		ldr	r2, .L196+8
 1519 0012 0020     		movs	r0, #0
 1520 0014 0870     		strb	r0, [r1]
 1521 0016 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1522 0018 DBB2     		uxtb	r3, r3
 1523 001a 32F81320 		ldrh	r2, [r2, r3, lsl #1]
 1524 001e B2F5A07F 		cmp	r2, #320
 1525 0022 09D0     		beq	.L190
 1526 0024 C2F5A070 		rsb	r0, r2, #320
 1527              	.L191:
 1528 0028 25B9     		cbnz	r5, .L189
 1529 002a 0123     		movs	r3, #1
 1530 002c 0B70     		strb	r3, [r1]
 1531              		.syntax unified
 1532              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1533 002e BFF35F8F 		dmb
 1534              	@ 0 "" 2
 1535              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1536 0032 62B6     		cpsie i
 1537              	@ 0 "" 2
 1538              		.thumb
 1539              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 28


 1540              	.L189:
 1541 0034 F0BC     		pop	{r4, r5, r6, r7}
 1542 0036 7047     		bx	lr
 1543              	.L190:
 1544 0038 0C4E     		ldr	r6, .L196+12
 1545 003a 3678     		ldrb	r6, [r6]	@ zero_extendqisi2
 1546 003c 06F0FF07 		and	r7, r6, #255
 1547 0040 002E     		cmp	r6, #0
 1548 0042 F1D1     		bne	.L191
 1549 0044 0A4E     		ldr	r6, .L196+16
 1550 0046 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 1551 0048 38B9     		cbnz	r0, .L194
 1552 004a B3FA83F3 		clz	r3, r3
 1553 004e 5B09     		lsrs	r3, r3, #5
 1554 0050 0127     		movs	r7, #1
 1555 0052 3770     		strb	r7, [r6]
 1556 0054 1046     		mov	r0, r2
 1557 0056 2370     		strb	r3, [r4]
 1558 0058 E6E7     		b	.L191
 1559              	.L194:
 1560 005a 3846     		mov	r0, r7
 1561 005c E4E7     		b	.L191
 1562              	.L197:
 1563 005e 00BF     		.align	2
 1564              	.L196:
 1565 0060 00000000 		.word	g_interrupt_enabled
 1566 0064 00000000 		.word	.LANCHOR9
 1567 0068 00000000 		.word	.LANCHOR10
 1568 006c 00000000 		.word	.LANCHOR7
 1569 0070 00000000 		.word	.LANCHOR12
 1570              		.size	udi_cdc_multi_get_free_tx_buffer, .-udi_cdc_multi_get_free_tx_buffer
 1571              		.section	.text.udi_cdc_get_free_tx_buffer,"ax",%progbits
 1572              		.align	1
 1573              		.p2align 2,,3
 1574              		.global	udi_cdc_get_free_tx_buffer
 1575              		.syntax unified
 1576              		.thumb
 1577              		.thumb_func
 1578              		.fpu fpv4-sp-d16
 1579              		.type	udi_cdc_get_free_tx_buffer, %function
 1580              	udi_cdc_get_free_tx_buffer:
 1581              		@ args = 0, pretend = 0, frame = 0
 1582              		@ frame_needed = 0, uses_anonymous_args = 0
 1583              		@ link register save eliminated.
 1584 0000 0020     		movs	r0, #0
 1585 0002 FFF7FEBF 		b	udi_cdc_multi_get_free_tx_buffer
 1586              		.size	udi_cdc_get_free_tx_buffer, .-udi_cdc_get_free_tx_buffer
 1587 0006 00BF     		.section	.text.udi_cdc_multi_is_tx_ready,"ax",%progbits
 1588              		.align	1
 1589              		.p2align 2,,3
 1590              		.global	udi_cdc_multi_is_tx_ready
 1591              		.syntax unified
 1592              		.thumb
 1593              		.thumb_func
 1594              		.fpu fpv4-sp-d16
 1595              		.type	udi_cdc_multi_is_tx_ready, %function
 1596              	udi_cdc_multi_is_tx_ready:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 29


 1597              		@ args = 0, pretend = 0, frame = 0
 1598              		@ frame_needed = 0, uses_anonymous_args = 0
 1599 0000 08B5     		push	{r3, lr}
 1600 0002 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1601 0006 0030     		adds	r0, r0, #0
 1602 0008 18BF     		it	ne
 1603 000a 0120     		movne	r0, #1
 1604 000c 08BD     		pop	{r3, pc}
 1605              		.size	udi_cdc_multi_is_tx_ready, .-udi_cdc_multi_is_tx_ready
 1606 000e 00BF     		.section	.text.udi_cdc_is_tx_ready,"ax",%progbits
 1607              		.align	1
 1608              		.p2align 2,,3
 1609              		.global	udi_cdc_is_tx_ready
 1610              		.syntax unified
 1611              		.thumb
 1612              		.thumb_func
 1613              		.fpu fpv4-sp-d16
 1614              		.type	udi_cdc_is_tx_ready, %function
 1615              	udi_cdc_is_tx_ready:
 1616              		@ args = 0, pretend = 0, frame = 0
 1617              		@ frame_needed = 0, uses_anonymous_args = 0
 1618 0000 08B5     		push	{r3, lr}
 1619 0002 0020     		movs	r0, #0
 1620 0004 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1621 0008 0030     		adds	r0, r0, #0
 1622 000a 18BF     		it	ne
 1623 000c 0120     		movne	r0, #1
 1624 000e 08BD     		pop	{r3, pc}
 1625              		.size	udi_cdc_is_tx_ready, .-udi_cdc_is_tx_ready
 1626              		.section	.text.udi_cdc_multi_putc,"ax",%progbits
 1627              		.align	1
 1628              		.p2align 2,,3
 1629              		.global	udi_cdc_multi_putc
 1630              		.syntax unified
 1631              		.thumb
 1632              		.thumb_func
 1633              		.fpu fpv4-sp-d16
 1634              		.type	udi_cdc_multi_putc, %function
 1635              	udi_cdc_multi_putc:
 1636              		@ args = 0, pretend = 0, frame = 0
 1637              		@ frame_needed = 0, uses_anonymous_args = 0
 1638 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1639 0004 1E4B     		ldr	r3, .L213
 1640 0006 1F4F     		ldr	r7, .L213+4
 1641 0008 9D79     		ldrb	r5, [r3, #6]	@ zero_extendqisi2
 1642 000a DFF88880 		ldr	r8, .L213+20
 1643 000e 1E4E     		ldr	r6, .L213+8
 1644 0010 A5F10905 		sub	r5, #9
 1645 0014 B5FA85F5 		clz	r5, r5
 1646 0018 0C46     		mov	r4, r1
 1647 001a 6D09     		lsrs	r5, r5, #5
 1648              	.L204:
 1649 001c 0020     		movs	r0, #0
 1650 001e FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1651 0022 1A4B     		ldr	r3, .L213+12
 1652 0024 30B9     		cbnz	r0, .L205
 1653 0026 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 30


 1654 0028 03F0FF00 		and	r0, r3, #255
 1655 002c 002B     		cmp	r3, #0
 1656 002e F5D1     		bne	.L204
 1657 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1658              	.L205:
 1659              		.syntax unified
 1660              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1661 0034 EFF31080 		MRS r0, primask
 1662              	@ 0 "" 2
 1663              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1664 0038 72B6     		cpsid i
 1665              	@ 0 "" 2
 1666              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1667 003a BFF35F8F 		dmb
 1668              	@ 0 "" 2
 1669              		.thumb
 1670              		.syntax unified
 1671 003e 0023     		movs	r3, #0
 1672 0040 3B70     		strb	r3, [r7]
 1673 0042 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1674 0046 124A     		ldr	r2, .L213+16
 1675 0048 DBB2     		uxtb	r3, r3
 1676 004a 03EB830C 		add	ip, r3, r3, lsl #2
 1677 004e 36F81310 		ldrh	r1, [r6, r3, lsl #1]
 1678 0052 02EB8C12 		add	r2, r2, ip, lsl #6
 1679 0056 01F1010C 		add	ip, r1, #1
 1680 005a 26F813C0 		strh	ip, [r6, r3, lsl #1]	@ movhi
 1681 005e 5454     		strb	r4, [r2, r1]
 1682 0060 18B1     		cbz	r0, .L211
 1683 0062 4DB1     		cbz	r5, .L209
 1684              	.L212:
 1685 0064 2412     		asrs	r4, r4, #8
 1686 0066 0025     		movs	r5, #0
 1687 0068 D8E7     		b	.L204
 1688              	.L211:
 1689 006a 0123     		movs	r3, #1
 1690 006c 3B70     		strb	r3, [r7]
 1691              		.syntax unified
 1692              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1693 006e BFF35F8F 		dmb
 1694              	@ 0 "" 2
 1695              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1696 0072 62B6     		cpsie i
 1697              	@ 0 "" 2
 1698              		.thumb
 1699              		.syntax unified
 1700 0074 002D     		cmp	r5, #0
 1701 0076 F5D1     		bne	.L212
 1702              	.L209:
 1703 0078 0120     		movs	r0, #1
 1704 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1705              	.L214:
 1706 007e 00BF     		.align	2
 1707              	.L213:
 1708 0080 00000000 		.word	.LANCHOR3
 1709 0084 00000000 		.word	g_interrupt_enabled
 1710 0088 00000000 		.word	.LANCHOR10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 31


 1711 008c 00000000 		.word	.LANCHOR2
 1712 0090 00000000 		.word	.LANCHOR13
 1713 0094 00000000 		.word	.LANCHOR9
 1714              		.size	udi_cdc_multi_putc, .-udi_cdc_multi_putc
 1715              		.section	.text.udi_cdc_putc,"ax",%progbits
 1716              		.align	1
 1717              		.p2align 2,,3
 1718              		.global	udi_cdc_putc
 1719              		.syntax unified
 1720              		.thumb
 1721              		.thumb_func
 1722              		.fpu fpv4-sp-d16
 1723              		.type	udi_cdc_putc, %function
 1724              	udi_cdc_putc:
 1725              		@ args = 0, pretend = 0, frame = 0
 1726              		@ frame_needed = 0, uses_anonymous_args = 0
 1727              		@ link register save eliminated.
 1728 0000 0146     		mov	r1, r0
 1729 0002 0020     		movs	r0, #0
 1730 0004 FFF7FEBF 		b	udi_cdc_multi_putc
 1731              		.size	udi_cdc_putc, .-udi_cdc_putc
 1732              		.section	.text.udi_cdc_multi_write_buf,"ax",%progbits
 1733              		.align	1
 1734              		.p2align 2,,3
 1735              		.global	udi_cdc_multi_write_buf
 1736              		.syntax unified
 1737              		.thumb
 1738              		.thumb_func
 1739              		.fpu fpv4-sp-d16
 1740              		.type	udi_cdc_multi_write_buf, %function
 1741              	udi_cdc_multi_write_buf:
 1742              		@ args = 0, pretend = 0, frame = 0
 1743              		@ frame_needed = 0, uses_anonymous_args = 0
 1744 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1745 0004 2B4B     		ldr	r3, .L232
 1746 0006 DFF8B8A0 		ldr	r10, .L232+12
 1747 000a 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 1748 000c DFF8B490 		ldr	r9, .L232+16
 1749 0010 092B     		cmp	r3, #9
 1750 0012 4FF00000 		mov	r0, #0
 1751 0016 1746     		mov	r7, r2
 1752 0018 8846     		mov	r8, r1
 1753 001a 08BF     		it	eq
 1754 001c 5700     		lsleq	r7, r2, #1
 1755 001e FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1756 0022 50B3     		cbz	r0, .L224
 1757              	.L231:
 1758              		.syntax unified
 1759              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1760 0024 EFF3108B 		MRS fp, primask
 1761              	@ 0 "" 2
 1762              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1763 0028 72B6     		cpsid i
 1764              	@ 0 "" 2
 1765              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1766 002a BFF35F8F 		dmb
 1767              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 32


 1768              		.thumb
 1769              		.syntax unified
 1770 002e 0022     		movs	r2, #0
 1771 0030 214B     		ldr	r3, .L232+4
 1772 0032 8AF80020 		strb	r2, [r10]
 1773 0036 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1774 0038 2048     		ldr	r0, .L232+8
 1775 003a E4B2     		uxtb	r4, r4
 1776 003c 04EB840C 		add	ip, r4, r4, lsl #2
 1777 0040 39F81450 		ldrh	r5, [r9, r4, lsl #1]
 1778 0044 C5F5A076 		rsb	r6, r5, #320
 1779 0048 05EB8C1C 		add	ip, r5, ip, lsl #6
 1780 004c 8444     		add	ip, ip, r0
 1781 004e B742     		cmp	r7, r6
 1782 0050 4146     		mov	r1, r8
 1783 0052 3246     		mov	r2, r6
 1784 0054 6046     		mov	r0, ip
 1785 0056 13D3     		bcc	.L219
 1786 0058 FFF7FEFF 		bl	memcpy
 1787 005c 4FF4A072 		mov	r2, #320
 1788 0060 BF1B     		subs	r7, r7, r6
 1789 0062 29F81420 		strh	r2, [r9, r4, lsl #1]	@ movhi
 1790 0066 BBF1000F 		cmp	fp, #0
 1791 006a 1CD0     		beq	.L230
 1792              	.L220:
 1793 006c B044     		add	r8, r8, r6
 1794 006e B7B1     		cbz	r7, .L222
 1795 0070 0020     		movs	r0, #0
 1796 0072 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1797 0076 0028     		cmp	r0, #0
 1798 0078 D4D1     		bne	.L231
 1799              	.L224:
 1800 007a 3846     		mov	r0, r7
 1801 007c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1802              	.L219:
 1803 0080 3A46     		mov	r2, r7
 1804 0082 3D44     		add	r5, r5, r7
 1805 0084 FFF7FEFF 		bl	memcpy
 1806 0088 29F81450 		strh	r5, [r9, r4, lsl #1]	@ movhi
 1807 008c BBF1000F 		cmp	fp, #0
 1808 0090 05D1     		bne	.L222
 1809 0092 0123     		movs	r3, #1
 1810 0094 8AF80030 		strb	r3, [r10]
 1811              		.syntax unified
 1812              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1813 0098 BFF35F8F 		dmb
 1814              	@ 0 "" 2
 1815              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1816 009c 62B6     		cpsie i
 1817              	@ 0 "" 2
 1818              		.thumb
 1819              		.syntax unified
 1820              	.L222:
 1821 009e 0027     		movs	r7, #0
 1822 00a0 3846     		mov	r0, r7
 1823 00a2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1824              	.L230:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 33


 1825 00a6 0123     		movs	r3, #1
 1826 00a8 8AF80030 		strb	r3, [r10]
 1827              		.syntax unified
 1828              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1829 00ac BFF35F8F 		dmb
 1830              	@ 0 "" 2
 1831              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1832 00b0 62B6     		cpsie i
 1833              	@ 0 "" 2
 1834              		.thumb
 1835              		.syntax unified
 1836 00b2 DBE7     		b	.L220
 1837              	.L233:
 1838              		.align	2
 1839              	.L232:
 1840 00b4 00000000 		.word	.LANCHOR3
 1841 00b8 00000000 		.word	.LANCHOR9
 1842 00bc 00000000 		.word	.LANCHOR13
 1843 00c0 00000000 		.word	g_interrupt_enabled
 1844 00c4 00000000 		.word	.LANCHOR10
 1845              		.size	udi_cdc_multi_write_buf, .-udi_cdc_multi_write_buf
 1846              		.section	.text.udi_cdc_write_buf,"ax",%progbits
 1847              		.align	1
 1848              		.p2align 2,,3
 1849              		.global	udi_cdc_write_buf
 1850              		.syntax unified
 1851              		.thumb
 1852              		.thumb_func
 1853              		.fpu fpv4-sp-d16
 1854              		.type	udi_cdc_write_buf, %function
 1855              	udi_cdc_write_buf:
 1856              		@ args = 0, pretend = 0, frame = 0
 1857              		@ frame_needed = 0, uses_anonymous_args = 0
 1858              		@ link register save eliminated.
 1859 0000 0A46     		mov	r2, r1
 1860 0002 0146     		mov	r1, r0
 1861 0004 0020     		movs	r0, #0
 1862 0006 FFF7FEBF 		b	udi_cdc_multi_write_buf
 1863              		.size	udi_cdc_write_buf, .-udi_cdc_write_buf
 1864              		.global	udi_api_cdc_data
 1865              		.global	udi_api_cdc_comm
 1866 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1867              		.align	2
 1868              		.type	cpu_irq_critical_section_counter, %object
 1869              		.size	cpu_irq_critical_section_counter, 4
 1870              	cpu_irq_critical_section_counter:
 1871 0000 00000000 		.space	4
 1872              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1873              		.type	cpu_irq_prev_interrupt_state, %object
 1874              		.size	cpu_irq_prev_interrupt_state, 1
 1875              	cpu_irq_prev_interrupt_state:
 1876 0000 00       		.space	1
 1877              		.section	.bss.sof_zlp_counter.9614,"aw",%nobits
 1878              		.align	1
 1879              		.set	.LANCHOR11,. + 0
 1880              		.type	sof_zlp_counter.9614, %object
 1881              		.size	sof_zlp_counter.9614, 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 34


 1882              	sof_zlp_counter.9614:
 1883 0000 0000     		.space	2
 1884              		.section	.bss.udi_cdc_data_running,"aw",%nobits
 1885              		.set	.LANCHOR2,. + 0
 1886              		.type	udi_cdc_data_running, %object
 1887              		.size	udi_cdc_data_running, 1
 1888              	udi_cdc_data_running:
 1889 0000 00       		.space	1
 1890              		.section	.bss.udi_cdc_line_coding,"aw",%nobits
 1891              		.align	2
 1892              		.set	.LANCHOR3,. + 0
 1893              		.type	udi_cdc_line_coding, %object
 1894              		.size	udi_cdc_line_coding, 7
 1895              	udi_cdc_line_coding:
 1896 0000 00000000 		.space	7
 1896      000000
 1897              		.section	.bss.udi_cdc_nb_comm_enabled,"aw",%nobits
 1898              		.set	.LANCHOR0,. + 0
 1899              		.type	udi_cdc_nb_comm_enabled, %object
 1900              		.size	udi_cdc_nb_comm_enabled, 1
 1901              	udi_cdc_nb_comm_enabled:
 1902 0000 00       		.space	1
 1903              		.section	.bss.udi_cdc_nb_data_enabled,"aw",%nobits
 1904              		.set	.LANCHOR1,. + 0
 1905              		.type	udi_cdc_nb_data_enabled, %object
 1906              		.size	udi_cdc_nb_data_enabled, 1
 1907              	udi_cdc_nb_data_enabled:
 1908 0000 00       		.space	1
 1909              		.section	.bss.udi_cdc_rx_buf,"aw",%nobits
 1910              		.align	2
 1911              		.set	.LANCHOR18,. + 0
 1912              		.type	udi_cdc_rx_buf, %object
 1913              		.size	udi_cdc_rx_buf, 640
 1914              	udi_cdc_rx_buf:
 1915 0000 00000000 		.space	640
 1915      00000000 
 1915      00000000 
 1915      00000000 
 1915      00000000 
 1916              		.section	.bss.udi_cdc_rx_buf_nb,"aw",%nobits
 1917              		.align	2
 1918              		.set	.LANCHOR16,. + 0
 1919              		.type	udi_cdc_rx_buf_nb, %object
 1920              		.size	udi_cdc_rx_buf_nb, 4
 1921              	udi_cdc_rx_buf_nb:
 1922 0000 00000000 		.space	4
 1923              		.section	.bss.udi_cdc_rx_buf_sel,"aw",%nobits
 1924              		.align	2
 1925              		.set	.LANCHOR15,. + 0
 1926              		.type	udi_cdc_rx_buf_sel, %object
 1927              		.size	udi_cdc_rx_buf_sel, 1
 1928              	udi_cdc_rx_buf_sel:
 1929 0000 00       		.space	1
 1930              		.section	.bss.udi_cdc_rx_pos,"aw",%nobits
 1931              		.align	2
 1932              		.set	.LANCHOR14,. + 0
 1933              		.type	udi_cdc_rx_pos, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 35


 1934              		.size	udi_cdc_rx_pos, 2
 1935              	udi_cdc_rx_pos:
 1936 0000 0000     		.space	2
 1937              		.section	.bss.udi_cdc_rx_trans_ongoing,"aw",%nobits
 1938              		.align	2
 1939              		.set	.LANCHOR17,. + 0
 1940              		.type	udi_cdc_rx_trans_ongoing, %object
 1941              		.size	udi_cdc_rx_trans_ongoing, 1
 1942              	udi_cdc_rx_trans_ongoing:
 1943 0000 00       		.space	1
 1944              		.section	.bss.udi_cdc_serial_state_msg_ongoing,"aw",%nobits
 1945              		.align	2
 1946              		.set	.LANCHOR6,. + 0
 1947              		.type	udi_cdc_serial_state_msg_ongoing, %object
 1948              		.size	udi_cdc_serial_state_msg_ongoing, 1
 1949              	udi_cdc_serial_state_msg_ongoing:
 1950 0000 00       		.space	1
 1951              		.section	.bss.udi_cdc_state,"aw",%nobits
 1952              		.align	2
 1953              		.set	.LANCHOR4,. + 0
 1954              		.type	udi_cdc_state, %object
 1955              		.size	udi_cdc_state, 2
 1956              	udi_cdc_state:
 1957 0000 0000     		.space	2
 1958              		.section	.bss.udi_cdc_tx_both_buf_to_send,"aw",%nobits
 1959              		.align	2
 1960              		.set	.LANCHOR12,. + 0
 1961              		.type	udi_cdc_tx_both_buf_to_send, %object
 1962              		.size	udi_cdc_tx_both_buf_to_send, 1
 1963              	udi_cdc_tx_both_buf_to_send:
 1964 0000 00       		.space	1
 1965              		.section	.bss.udi_cdc_tx_buf,"aw",%nobits
 1966              		.align	2
 1967              		.set	.LANCHOR13,. + 0
 1968              		.type	udi_cdc_tx_buf, %object
 1969              		.size	udi_cdc_tx_buf, 640
 1970              	udi_cdc_tx_buf:
 1971 0000 00000000 		.space	640
 1971      00000000 
 1971      00000000 
 1971      00000000 
 1971      00000000 
 1972              		.section	.bss.udi_cdc_tx_buf_nb,"aw",%nobits
 1973              		.align	2
 1974              		.set	.LANCHOR10,. + 0
 1975              		.type	udi_cdc_tx_buf_nb, %object
 1976              		.size	udi_cdc_tx_buf_nb, 4
 1977              	udi_cdc_tx_buf_nb:
 1978 0000 00000000 		.space	4
 1979              		.section	.bss.udi_cdc_tx_buf_sel,"aw",%nobits
 1980              		.align	2
 1981              		.set	.LANCHOR9,. + 0
 1982              		.type	udi_cdc_tx_buf_sel, %object
 1983              		.size	udi_cdc_tx_buf_sel, 1
 1984              	udi_cdc_tx_buf_sel:
 1985 0000 00       		.space	1
 1986              		.section	.bss.udi_cdc_tx_sof_num,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrwqWXb.s 			page 36


 1987              		.align	2
 1988              		.set	.LANCHOR8,. + 0
 1989              		.type	udi_cdc_tx_sof_num, %object
 1990              		.size	udi_cdc_tx_sof_num, 2
 1991              	udi_cdc_tx_sof_num:
 1992 0000 0000     		.space	2
 1993              		.section	.bss.udi_cdc_tx_trans_ongoing,"aw",%nobits
 1994              		.align	2
 1995              		.set	.LANCHOR7,. + 0
 1996              		.type	udi_cdc_tx_trans_ongoing, %object
 1997              		.size	udi_cdc_tx_trans_ongoing, 1
 1998              	udi_cdc_tx_trans_ongoing:
 1999 0000 00       		.space	1
 2000              		.section	.bss.uid_cdc_state_msg,"aw",%nobits
 2001              		.align	2
 2002              		.set	.LANCHOR5,. + 0
 2003              		.type	uid_cdc_state_msg, %object
 2004              		.size	uid_cdc_state_msg, 10
 2005              	uid_cdc_state_msg:
 2006 0000 00000000 		.space	10
 2006      00000000 
 2006      0000
 2007              		.section	.data.udi_api_cdc_comm,"aw",%progbits
 2008              		.align	2
 2009              		.type	udi_api_cdc_comm, %object
 2010              		.size	udi_api_cdc_comm, 20
 2011              	udi_api_cdc_comm:
 2012 0000 00000000 		.word	udi_cdc_comm_enable
 2013 0004 00000000 		.word	udi_cdc_comm_disable
 2014 0008 00000000 		.word	udi_cdc_comm_setup
 2015 000c 00000000 		.word	udi_cdc_getsetting
 2016 0010 00000000 		.space	4
 2017              		.section	.data.udi_api_cdc_data,"aw",%progbits
 2018              		.align	2
 2019              		.type	udi_api_cdc_data, %object
 2020              		.size	udi_api_cdc_data, 20
 2021              	udi_api_cdc_data:
 2022 0000 00000000 		.word	udi_cdc_data_enable
 2023 0004 00000000 		.word	udi_cdc_data_disable
 2024 0008 00000000 		.word	udi_cdc_data_setup
 2025 000c 00000000 		.word	udi_cdc_getsetting
 2026 0010 00000000 		.word	udi_cdc_data_sof_notify
 2027              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
