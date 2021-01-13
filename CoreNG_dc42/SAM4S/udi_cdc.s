ARM GAS  /tmp/ccvxl7Q5.s 			page 1


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
  11              		.file	"udi_cdc.c"
  12              		.section	.text.udi_cdc_comm_disable,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	udi_cdc_comm_disable
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	udi_cdc_comm_disable, %function
  21              	udi_cdc_comm_disable:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 024A     		ldr	r2, .L2
  26 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  27 0004 013B     		subs	r3, r3, #1
  28 0006 DBB2     		uxtb	r3, r3
  29 0008 1370     		strb	r3, [r2]
  30 000a 7047     		bx	lr
  31              	.L3:
  32              		.align	2
  33              	.L2:
  34 000c 00000000 		.word	.LANCHOR0
  35              		.size	udi_cdc_comm_disable, .-udi_cdc_comm_disable
  36              		.section	.text.udi_cdc_data_setup,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	udi_cdc_data_setup
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu softvfp
  44              		.type	udi_cdc_data_setup, %function
  45              	udi_cdc_data_setup:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48              		@ link register save eliminated.
  49 0000 0020     		movs	r0, #0
  50 0002 7047     		bx	lr
  51              		.size	udi_cdc_data_setup, .-udi_cdc_data_setup
  52              		.section	.text.udi_cdc_getsetting,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	udi_cdc_getsetting
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccvxl7Q5.s 			page 2


  58              		.thumb_func
  59              		.fpu softvfp
  60              		.type	udi_cdc_getsetting, %function
  61              	udi_cdc_getsetting:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 0020     		movs	r0, #0
  66 0002 7047     		bx	lr
  67              		.size	udi_cdc_getsetting, .-udi_cdc_getsetting
  68              		.section	.text.udi_cdc_line_coding_received,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu softvfp
  75              		.type	udi_cdc_line_coding_received, %function
  76              	udi_cdc_line_coding_received:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 7047     		bx	lr
  81              		.size	udi_cdc_line_coding_received, .-udi_cdc_line_coding_received
  82 0002 00BF     		.section	.text.udi_cdc_data_disable,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	udi_cdc_data_disable
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu softvfp
  90              		.type	udi_cdc_data_disable, %function
  91              	udi_cdc_data_disable:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94 0000 08B5     		push	{r3, lr}
  95 0002 064A     		ldr	r2, .L9
  96 0004 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  97 0006 013B     		subs	r3, r3, #1
  98 0008 DBB2     		uxtb	r3, r3
  99 000a 1370     		strb	r3, [r2]
 100 000c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 101 000e FFF7FEFF 		bl	core_cdc_disable
 102 0012 034B     		ldr	r3, .L9+4
 103 0014 0022     		movs	r2, #0
 104 0016 1A70     		strb	r2, [r3]
 105 0018 08BD     		pop	{r3, pc}
 106              	.L10:
 107 001a 00BF     		.align	2
 108              	.L9:
 109 001c 00000000 		.word	.LANCHOR1
 110 0020 00000000 		.word	.LANCHOR2
 111              		.size	udi_cdc_data_disable, .-udi_cdc_data_disable
 112              		.section	.text.udi_cdc_comm_setup,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccvxl7Q5.s 			page 3


 115              		.global	udi_cdc_comm_setup
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	udi_cdc_comm_setup, %function
 121              	udi_cdc_comm_setup:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125 0000 154A     		ldr	r2, .L27
 126 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 127 0004 13F0800F 		tst	r3, #128
 128 0008 03F06003 		and	r3, r3, #96
 129 000c 0CD1     		bne	.L25
 130 000e 202B     		cmp	r3, #32
 131 0010 01D0     		beq	.L26
 132              	.L22:
 133 0012 0020     		movs	r0, #0
 134 0014 7047     		bx	lr
 135              	.L26:
 136 0016 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 137 0018 2028     		cmp	r0, #32
 138 001a 12D0     		beq	.L15
 139 001c A0F12200 		sub	r0, #34
 140 0020 B0FA80F0 		clz	r0, r0
 141 0024 4009     		lsrs	r0, r0, #5
 142 0026 7047     		bx	lr
 143              	.L25:
 144 0028 202B     		cmp	r3, #32
 145 002a F2D1     		bne	.L22
 146 002c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 147 002e 212B     		cmp	r3, #33
 148 0030 EFD1     		bne	.L22
 149 0032 D388     		ldrh	r3, [r2, #6]
 150 0034 072B     		cmp	r3, #7
 151 0036 ECD1     		bne	.L22
 152 0038 0849     		ldr	r1, .L27+4
 153 003a 9381     		strh	r3, [r2, #12]	@ movhi
 154 003c 9160     		str	r1, [r2, #8]
 155 003e 0120     		movs	r0, #1
 156 0040 7047     		bx	lr
 157              	.L15:
 158 0042 D388     		ldrh	r3, [r2, #6]
 159 0044 072B     		cmp	r3, #7
 160 0046 E4D1     		bne	.L22
 161 0048 0548     		ldr	r0, .L27+8
 162 004a 0449     		ldr	r1, .L27+4
 163 004c 1061     		str	r0, [r2, #16]
 164 004e 9381     		strh	r3, [r2, #12]	@ movhi
 165 0050 9160     		str	r1, [r2, #8]
 166 0052 0120     		movs	r0, #1
 167 0054 7047     		bx	lr
 168              	.L28:
 169 0056 00BF     		.align	2
 170              	.L27:
 171 0058 00000000 		.word	udd_g_ctrlreq
ARM GAS  /tmp/ccvxl7Q5.s 			page 4


 172 005c 00000000 		.word	.LANCHOR3
 173 0060 00000000 		.word	udi_cdc_line_coding_received
 174              		.size	udi_cdc_comm_setup, .-udi_cdc_comm_setup
 175              		.section	.text.udi_cdc_comm_enable,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	udi_cdc_comm_enable
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	udi_cdc_comm_enable, %function
 184              	udi_cdc_comm_enable:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 188 0002 104A     		ldr	r2, .L35
 189 0004 104F     		ldr	r7, .L35+4
 190 0006 114C     		ldr	r4, .L35+8
 191 0008 1149     		ldr	r1, .L35+12
 192 000a 0023     		movs	r3, #0
 193 000c A126     		movs	r6, #161
 194 000e 2025     		movs	r5, #32
 195 0010 2370     		strb	r3, [r4]
 196 0012 1670     		strb	r6, [r2]
 197 0014 3B80     		strh	r3, [r7]	@ movhi
 198 0016 4FF4E136 		mov	r6, #115200
 199 001a 0227     		movs	r7, #2
 200 001c 5570     		strb	r5, [r2, #1]
 201 001e 0825     		movs	r5, #8
 202 0020 1846     		mov	r0, r3
 203 0022 5380     		strh	r3, [r2, #2]	@ movhi
 204 0024 9380     		strh	r3, [r2, #4]	@ movhi
 205 0026 1381     		strh	r3, [r2, #8]	@ movhi
 206 0028 D780     		strh	r7, [r2, #6]	@ movhi
 207 002a 0B71     		strb	r3, [r1, #4]
 208 002c 4B71     		strb	r3, [r1, #5]
 209 002e 0E60     		str	r6, [r1]
 210 0030 8D71     		strb	r5, [r1, #6]
 211 0032 FFF7FEFF 		bl	core_cdc_enable
 212 0036 18B1     		cbz	r0, .L30
 213 0038 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 214 003a 0133     		adds	r3, r3, #1
 215 003c DBB2     		uxtb	r3, r3
 216 003e 2370     		strb	r3, [r4]
 217              	.L30:
 218 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 219              	.L36:
 220 0042 00BF     		.align	2
 221              	.L35:
 222 0044 00000000 		.word	.LANCHOR5
 223 0048 00000000 		.word	.LANCHOR4
 224 004c 00000000 		.word	.LANCHOR0
 225 0050 00000000 		.word	.LANCHOR3
 226              		.size	udi_cdc_comm_enable, .-udi_cdc_comm_enable
 227              		.section	.text.udi_cdc_ctrl_state_notify.isra.5.part.6,"ax",%progbits
 228              		.align	1
ARM GAS  /tmp/ccvxl7Q5.s 			page 5


 229              		.p2align 2,,3
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu softvfp
 234              		.type	udi_cdc_ctrl_state_notify.isra.5.part.6, %function
 235              	udi_cdc_ctrl_state_notify.isra.5.part.6:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238 0000 30B5     		push	{r4, r5, lr}
 239 0002 084A     		ldr	r2, .L39
 240 0004 084C     		ldr	r4, .L39+4
 241 0006 094B     		ldr	r3, .L39+8
 242 0008 1588     		ldrh	r5, [r2]
 243 000a 2581     		strh	r5, [r4, #8]	@ movhi
 244 000c 83B0     		sub	sp, sp, #12
 245 000e 2246     		mov	r2, r4
 246 0010 0093     		str	r3, [sp]
 247 0012 0021     		movs	r1, #0
 248 0014 0A23     		movs	r3, #10
 249 0016 FFF7FEFF 		bl	udd_ep_run
 250 001a 054B     		ldr	r3, .L39+12
 251 001c 1870     		strb	r0, [r3]
 252 001e 03B0     		add	sp, sp, #12
 253              		@ sp needed
 254 0020 30BD     		pop	{r4, r5, pc}
 255              	.L40:
 256 0022 00BF     		.align	2
 257              	.L39:
 258 0024 00000000 		.word	.LANCHOR4
 259 0028 00000000 		.word	.LANCHOR5
 260 002c 00000000 		.word	udi_cdc_serial_state_msg_sent
 261 0030 00000000 		.word	.LANCHOR6
 262              		.size	udi_cdc_ctrl_state_notify.isra.5.part.6, .-udi_cdc_ctrl_state_notify.isra.5.part.6
 263              		.section	.text.udi_cdc_serial_state_msg_sent,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu softvfp
 270              		.type	udi_cdc_serial_state_msg_sent, %function
 271              	udi_cdc_serial_state_msg_sent:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 0D48     		ldr	r0, .L44
 276 0002 0388     		ldrh	r3, [r0]
 277 0004 23F07C03 		bic	r3, r3, #124
 278 0008 70B4     		push	{r4, r5, r6}
 279 000a 1B04     		lsls	r3, r3, #16
 280 000c 0B4C     		ldr	r4, .L44+4
 281 000e 0C4D     		ldr	r5, .L44+8
 282 0010 2189     		ldrh	r1, [r4, #8]
 283 0012 1B0C     		lsrs	r3, r3, #16
 284 0014 0380     		strh	r3, [r0]	@ movhi
 285 0016 0088     		ldrh	r0, [r0]
ARM GAS  /tmp/ccvxl7Q5.s 			page 6


 286 0018 21F07C03 		bic	r3, r1, #124
 287 001c 9BB2     		uxth	r3, r3
 288 001e 81B2     		uxth	r1, r0
 289 0020 0026     		movs	r6, #0
 290 0022 8B42     		cmp	r3, r1
 291 0024 2381     		strh	r3, [r4, #8]	@ movhi
 292 0026 2E70     		strb	r6, [r5]
 293 0028 03D0     		beq	.L41
 294 002a 1046     		mov	r0, r2
 295 002c 70BC     		pop	{r4, r5, r6}
 296 002e FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 297              	.L41:
 298 0032 70BC     		pop	{r4, r5, r6}
 299 0034 7047     		bx	lr
 300              	.L45:
 301 0036 00BF     		.align	2
 302              	.L44:
 303 0038 00000000 		.word	.LANCHOR4
 304 003c 00000000 		.word	.LANCHOR5
 305 0040 00000000 		.word	.LANCHOR6
 306              		.size	udi_cdc_serial_state_msg_sent, .-udi_cdc_serial_state_msg_sent
 307              		.section	.text.udi_cdc_ctrl_state_change.isra.7,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu softvfp
 314              		.type	udi_cdc_ctrl_state_change.isra.7, %function
 315              	udi_cdc_ctrl_state_change.isra.7:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 30B4     		push	{r4, r5}
 320              		.syntax unified
 321              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 322 0002 EFF31085 		MRS r5, primask
 323              	@ 0 "" 2
 324              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 325 0006 72B6     		cpsid i
 326              	@ 0 "" 2
 327              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 328 0008 BFF35F8F 		dmb
 329              	@ 0 "" 2
 330              		.thumb
 331              		.syntax unified
 332 000c 114C     		ldr	r4, .L53
 333 000e 0023     		movs	r3, #0
 334 0010 2370     		strb	r3, [r4]
 335 0012 114B     		ldr	r3, .L53+4
 336 0014 1A88     		ldrh	r2, [r3]
 337 0016 92B2     		uxth	r2, r2
 338 0018 88B1     		cbz	r0, .L47
 339 001a 1143     		orrs	r1, r1, r2
 340 001c 1980     		strh	r1, [r3]	@ movhi
 341 001e 9DB1     		cbz	r5, .L52
 342              	.L49:
ARM GAS  /tmp/ccvxl7Q5.s 			page 7


 343 0020 0E4A     		ldr	r2, .L53+8
 344 0022 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 345 0024 4AB9     		cbnz	r2, .L46
 346 0026 0E4A     		ldr	r2, .L53+12
 347 0028 1B88     		ldrh	r3, [r3]
 348 002a 1289     		ldrh	r2, [r2, #8]
 349 002c 9BB2     		uxth	r3, r3
 350 002e 9A42     		cmp	r2, r3
 351 0030 03D0     		beq	.L46
 352 0032 8320     		movs	r0, #131
 353 0034 30BC     		pop	{r4, r5}
 354 0036 FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 355              	.L46:
 356 003a 30BC     		pop	{r4, r5}
 357 003c 7047     		bx	lr
 358              	.L47:
 359 003e 22EA0101 		bic	r1, r2, r1
 360 0042 1980     		strh	r1, [r3]	@ movhi
 361 0044 002D     		cmp	r5, #0
 362 0046 EBD1     		bne	.L49
 363              	.L52:
 364 0048 0122     		movs	r2, #1
 365 004a 2270     		strb	r2, [r4]
 366              		.syntax unified
 367              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 368 004c BFF35F8F 		dmb
 369              	@ 0 "" 2
 370              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 371 0050 62B6     		cpsie i
 372              	@ 0 "" 2
 373              		.thumb
 374              		.syntax unified
 375 0052 E5E7     		b	.L49
 376              	.L54:
 377              		.align	2
 378              	.L53:
 379 0054 00000000 		.word	g_interrupt_enabled
 380 0058 00000000 		.word	.LANCHOR4
 381 005c 00000000 		.word	.LANCHOR6
 382 0060 00000000 		.word	.LANCHOR5
 383              		.size	udi_cdc_ctrl_state_change.isra.7, .-udi_cdc_ctrl_state_change.isra.7
 384              		.section	.text.udi_cdc_tx_send.isra.3,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.syntax unified
 388              		.thumb
 389              		.thumb_func
 390              		.fpu softvfp
 391              		.type	udi_cdc_tx_send.isra.3, %function
 392              	udi_cdc_tx_send.isra.3:
 393              		@ args = 0, pretend = 0, frame = 8
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 396 0004 484E     		ldr	r6, .L80
 397 0006 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 398 0008 85B0     		sub	sp, sp, #20
 399 000a 13B1     		cbz	r3, .L77
ARM GAS  /tmp/ccvxl7Q5.s 			page 8


 400              	.L55:
 401 000c 05B0     		add	sp, sp, #20
 402              		@ sp needed
 403 000e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 404              	.L77:
 405 0012 FFF7FEFF 		bl	udd_is_high_speed
 406 0016 DFF82481 		ldr	r8, .L80+20
 407 001a B8F80040 		ldrh	r4, [r8]
 408 001e 0028     		cmp	r0, #0
 409 0020 48D1     		bne	.L78
 410 0022 FFF7FEFF 		bl	udd_get_frame_number
 411 0026 8442     		cmp	r4, r0
 412 0028 F0D0     		beq	.L55
 413              	.L62:
 414              		.syntax unified
 415              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 416 002a EFF31082 		MRS r2, primask
 417              	@ 0 "" 2
 418              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 419 002e 72B6     		cpsid i
 420              	@ 0 "" 2
 421              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 422 0030 BFF35F8F 		dmb
 423              	@ 0 "" 2
 424              		.thumb
 425              		.syntax unified
 426 0034 DFF808B1 		ldr	fp, .L80+24
 427 0038 DFF808A1 		ldr	r10, .L80+28
 428 003c DFF80891 		ldr	r9, .L80+32
 429 0040 0023     		movs	r3, #0
 430 0042 8BF80030 		strb	r3, [fp]
 431 0046 9AF80040 		ldrb	r4, [r10]	@ zero_extendqisi2
 432 004a E4B2     		uxtb	r4, r4
 433 004c 2746     		mov	r7, r4
 434 004e 39F81430 		ldrh	r3, [r9, r4, lsl #1]
 435 0052 002B     		cmp	r3, #0
 436 0054 3BD0     		beq	.L60
 437 0056 354D     		ldr	r5, .L80+4
 438              	.L61:
 439 0058 354B     		ldr	r3, .L80+8
 440 005a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 441 005c 0021     		movs	r1, #0
 442 005e 2980     		strh	r1, [r5]	@ movhi
 443 0060 6BBB     		cbnz	r3, .L66
 444 0062 B4FA84F4 		clz	r4, r4
 445 0066 6409     		lsrs	r4, r4, #5
 446 0068 8AF80040 		strb	r4, [r10]
 447              	.L67:
 448 006c 0123     		movs	r3, #1
 449 006e 3370     		strb	r3, [r6]
 450 0070 002A     		cmp	r2, #0
 451 0072 4CD0     		beq	.L79
 452              	.L68:
 453 0074 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 454 0078 B3F5A07F 		cmp	r3, #320
 455 007c 14BF     		ite	ne
 456 007e 0124     		movne	r4, #1
ARM GAS  /tmp/ccvxl7Q5.s 			page 9


 457 0080 0024     		moveq	r4, #0
 458 0082 20D0     		beq	.L69
 459 0084 FFF7FEFF 		bl	udd_is_high_speed
 460 0088 0028     		cmp	r0, #0
 461 008a 46D0     		beq	.L70
 462 008c FFF7FEFF 		bl	udd_get_micro_frame_number
 463 0090 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 464 0094 A8F80000 		strh	r0, [r8]	@ movhi
 465              	.L71:
 466 0098 2648     		ldr	r0, .L80+12
 467 009a 274A     		ldr	r2, .L80+16
 468 009c 0092     		str	r2, [sp]
 469 009e 07EB8707 		add	r7, r7, r7, lsl #2
 470 00a2 00EB8712 		add	r2, r0, r7, lsl #6
 471 00a6 2146     		mov	r1, r4
 472 00a8 8120     		movs	r0, #129
 473 00aa FFF7FEFF 		bl	udd_ep_run
 474 00ae 05B0     		add	sp, sp, #20
 475              		@ sp needed
 476 00b0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 477              	.L78:
 478 00b4 FFF7FEFF 		bl	udd_get_micro_frame_number
 479 00b8 8442     		cmp	r4, r0
 480 00ba B6D1     		bne	.L62
 481 00bc A6E7     		b	.L55
 482              	.L66:
 483 00be B4FA84F7 		clz	r7, r4
 484 00c2 7F09     		lsrs	r7, r7, #5
 485 00c4 D2E7     		b	.L67
 486              	.L69:
 487 00c6 0022     		movs	r2, #0
 488 00c8 A8F80020 		strh	r2, [r8]	@ movhi
 489 00cc E4E7     		b	.L71
 490              	.L60:
 491 00ce 174D     		ldr	r5, .L80+4
 492 00d0 0392     		str	r2, [sp, #12]
 493 00d2 2B88     		ldrh	r3, [r5]
 494 00d4 0133     		adds	r3, r3, #1
 495 00d6 2B80     		strh	r3, [r5]	@ movhi
 496 00d8 FFF7FEFF 		bl	udd_is_high_speed
 497 00dc 039A     		ldr	r2, [sp, #12]
 498 00de 58B9     		cbnz	r0, .L63
 499 00e0 2B88     		ldrh	r3, [r5]
 500 00e2 632B     		cmp	r3, #99
 501 00e4 08D8     		bhi	.L63
 502              	.L65:
 503 00e6 002A     		cmp	r2, #0
 504 00e8 90D1     		bne	.L55
 505 00ea 0123     		movs	r3, #1
 506 00ec 8BF80030 		strb	r3, [fp]
 507              		.syntax unified
 508              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 509 00f0 BFF35F8F 		dmb
 510              	@ 0 "" 2
 511              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 512 00f4 62B6     		cpsie i
 513              	@ 0 "" 2
ARM GAS  /tmp/ccvxl7Q5.s 			page 10


 514              		.thumb
 515              		.syntax unified
 516 00f6 89E7     		b	.L55
 517              	.L63:
 518 00f8 0392     		str	r2, [sp, #12]
 519 00fa FFF7FEFF 		bl	udd_is_high_speed
 520 00fe 039A     		ldr	r2, [sp, #12]
 521 0100 0028     		cmp	r0, #0
 522 0102 A9D0     		beq	.L61
 523 0104 2B88     		ldrh	r3, [r5]
 524 0106 B3F5487F 		cmp	r3, #800
 525 010a ECD3     		bcc	.L65
 526 010c A4E7     		b	.L61
 527              	.L79:
 528 010e 8BF80030 		strb	r3, [fp]
 529              		.syntax unified
 530              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 531 0112 BFF35F8F 		dmb
 532              	@ 0 "" 2
 533              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 534 0116 62B6     		cpsie i
 535              	@ 0 "" 2
 536              		.thumb
 537              		.syntax unified
 538 0118 ACE7     		b	.L68
 539              	.L70:
 540 011a FFF7FEFF 		bl	udd_get_frame_number
 541 011e 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 542 0122 A8F80000 		strh	r0, [r8]	@ movhi
 543 0126 B7E7     		b	.L71
 544              	.L81:
 545              		.align	2
 546              	.L80:
 547 0128 00000000 		.word	.LANCHOR7
 548 012c 00000000 		.word	.LANCHOR11
 549 0130 00000000 		.word	.LANCHOR12
 550 0134 00000000 		.word	.LANCHOR13
 551 0138 00000000 		.word	udi_cdc_data_sent
 552 013c 00000000 		.word	.LANCHOR8
 553 0140 00000000 		.word	g_interrupt_enabled
 554 0144 00000000 		.word	.LANCHOR9
 555 0148 00000000 		.word	.LANCHOR10
 556              		.size	udi_cdc_tx_send.isra.3, .-udi_cdc_tx_send.isra.3
 557              		.section	.text.udi_cdc_data_sof_notify,"ax",%progbits
 558              		.align	1
 559              		.p2align 2,,3
 560              		.global	udi_cdc_data_sof_notify
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu softvfp
 565              		.type	udi_cdc_data_sof_notify, %function
 566              	udi_cdc_data_sof_notify:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
ARM GAS  /tmp/ccvxl7Q5.s 			page 11


 571              		.size	udi_cdc_data_sof_notify, .-udi_cdc_data_sof_notify
 572              		.section	.text.udi_cdc_data_sent,"ax",%progbits
 573              		.align	1
 574              		.p2align 2,,3
 575              		.syntax unified
 576              		.thumb
 577              		.thumb_func
 578              		.fpu softvfp
 579              		.type	udi_cdc_data_sent, %function
 580              	udi_cdc_data_sent:
 581              		@ args = 0, pretend = 0, frame = 0
 582              		@ frame_needed = 0, uses_anonymous_args = 0
 583 0000 88B9     		cbnz	r0, .L83
 584 0002 70B5     		push	{r4, r5, r6, lr}
 585 0004 0B4B     		ldr	r3, .L93
 586 0006 0C4C     		ldr	r4, .L93+4
 587 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 588 000a 0C4E     		ldr	r6, .L93+8
 589 000c 0C4D     		ldr	r5, .L93+12
 590 000e 3070     		strb	r0, [r6]
 591 0010 B3FA83F3 		clz	r3, r3
 592 0014 5B09     		lsrs	r3, r3, #5
 593 0016 2870     		strb	r0, [r5]
 594 0018 24F81300 		strh	r0, [r4, r3, lsl #1]	@ movhi
 595 001c 21B9     		cbnz	r1, .L92
 596 001e BDE87040 		pop	{r4, r5, r6, lr}
 597 0022 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 598              	.L83:
 599 0026 7047     		bx	lr
 600              	.L92:
 601 0028 FFF7FEFF 		bl	core_cdc_tx_empty_notify
 602 002c BDE87040 		pop	{r4, r5, r6, lr}
 603 0030 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 604              	.L94:
 605              		.align	2
 606              	.L93:
 607 0034 00000000 		.word	.LANCHOR9
 608 0038 00000000 		.word	.LANCHOR10
 609 003c 00000000 		.word	.LANCHOR12
 610 0040 00000000 		.word	.LANCHOR7
 611              		.size	udi_cdc_data_sent, .-udi_cdc_data_sent
 612              		.section	.text.udi_cdc_ctrl_signal_dcd,"ax",%progbits
 613              		.align	1
 614              		.p2align 2,,3
 615              		.global	udi_cdc_ctrl_signal_dcd
 616              		.syntax unified
 617              		.thumb
 618              		.thumb_func
 619              		.fpu softvfp
 620              		.type	udi_cdc_ctrl_signal_dcd, %function
 621              	udi_cdc_ctrl_signal_dcd:
 622              		@ args = 0, pretend = 0, frame = 0
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624              		@ link register save eliminated.
 625 0000 0121     		movs	r1, #1
 626 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 627              		.size	udi_cdc_ctrl_signal_dcd, .-udi_cdc_ctrl_signal_dcd
ARM GAS  /tmp/ccvxl7Q5.s 			page 12


 628 0006 00BF     		.section	.text.udi_cdc_ctrl_signal_dsr,"ax",%progbits
 629              		.align	1
 630              		.p2align 2,,3
 631              		.global	udi_cdc_ctrl_signal_dsr
 632              		.syntax unified
 633              		.thumb
 634              		.thumb_func
 635              		.fpu softvfp
 636              		.type	udi_cdc_ctrl_signal_dsr, %function
 637              	udi_cdc_ctrl_signal_dsr:
 638              		@ args = 0, pretend = 0, frame = 0
 639              		@ frame_needed = 0, uses_anonymous_args = 0
 640              		@ link register save eliminated.
 641 0000 0221     		movs	r1, #2
 642 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 643              		.size	udi_cdc_ctrl_signal_dsr, .-udi_cdc_ctrl_signal_dsr
 644 0006 00BF     		.section	.text.udi_cdc_signal_framing_error,"ax",%progbits
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	udi_cdc_signal_framing_error
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu softvfp
 652              		.type	udi_cdc_signal_framing_error, %function
 653              	udi_cdc_signal_framing_error:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656              		@ link register save eliminated.
 657 0000 1021     		movs	r1, #16
 658 0002 0120     		movs	r0, #1
 659 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 660              		.size	udi_cdc_signal_framing_error, .-udi_cdc_signal_framing_error
 661              		.section	.text.udi_cdc_signal_parity_error,"ax",%progbits
 662              		.align	1
 663              		.p2align 2,,3
 664              		.global	udi_cdc_signal_parity_error
 665              		.syntax unified
 666              		.thumb
 667              		.thumb_func
 668              		.fpu softvfp
 669              		.type	udi_cdc_signal_parity_error, %function
 670              	udi_cdc_signal_parity_error:
 671              		@ args = 0, pretend = 0, frame = 0
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              		@ link register save eliminated.
 674 0000 2021     		movs	r1, #32
 675 0002 0120     		movs	r0, #1
 676 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 677              		.size	udi_cdc_signal_parity_error, .-udi_cdc_signal_parity_error
 678              		.section	.text.udi_cdc_signal_overrun,"ax",%progbits
 679              		.align	1
 680              		.p2align 2,,3
 681              		.global	udi_cdc_signal_overrun
 682              		.syntax unified
 683              		.thumb
 684              		.thumb_func
ARM GAS  /tmp/ccvxl7Q5.s 			page 13


 685              		.fpu softvfp
 686              		.type	udi_cdc_signal_overrun, %function
 687              	udi_cdc_signal_overrun:
 688              		@ args = 0, pretend = 0, frame = 0
 689              		@ frame_needed = 0, uses_anonymous_args = 0
 690              		@ link register save eliminated.
 691 0000 4021     		movs	r1, #64
 692 0002 0120     		movs	r0, #1
 693 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 694              		.size	udi_cdc_signal_overrun, .-udi_cdc_signal_overrun
 695              		.section	.text.udi_cdc_multi_ctrl_signal_dcd,"ax",%progbits
 696              		.align	1
 697              		.p2align 2,,3
 698              		.global	udi_cdc_multi_ctrl_signal_dcd
 699              		.syntax unified
 700              		.thumb
 701              		.thumb_func
 702              		.fpu softvfp
 703              		.type	udi_cdc_multi_ctrl_signal_dcd, %function
 704              	udi_cdc_multi_ctrl_signal_dcd:
 705              		@ args = 0, pretend = 0, frame = 0
 706              		@ frame_needed = 0, uses_anonymous_args = 0
 707              		@ link register save eliminated.
 708 0000 0846     		mov	r0, r1
 709 0002 0121     		movs	r1, #1
 710 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 711              		.size	udi_cdc_multi_ctrl_signal_dcd, .-udi_cdc_multi_ctrl_signal_dcd
 712              		.section	.text.udi_cdc_multi_ctrl_signal_dsr,"ax",%progbits
 713              		.align	1
 714              		.p2align 2,,3
 715              		.global	udi_cdc_multi_ctrl_signal_dsr
 716              		.syntax unified
 717              		.thumb
 718              		.thumb_func
 719              		.fpu softvfp
 720              		.type	udi_cdc_multi_ctrl_signal_dsr, %function
 721              	udi_cdc_multi_ctrl_signal_dsr:
 722              		@ args = 0, pretend = 0, frame = 0
 723              		@ frame_needed = 0, uses_anonymous_args = 0
 724              		@ link register save eliminated.
 725 0000 0846     		mov	r0, r1
 726 0002 0221     		movs	r1, #2
 727 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 728              		.size	udi_cdc_multi_ctrl_signal_dsr, .-udi_cdc_multi_ctrl_signal_dsr
 729              		.section	.text.udi_cdc_multi_signal_framing_error,"ax",%progbits
 730              		.align	1
 731              		.p2align 2,,3
 732              		.global	udi_cdc_multi_signal_framing_error
 733              		.syntax unified
 734              		.thumb
 735              		.thumb_func
 736              		.fpu softvfp
 737              		.type	udi_cdc_multi_signal_framing_error, %function
 738              	udi_cdc_multi_signal_framing_error:
 739              		@ args = 0, pretend = 0, frame = 0
 740              		@ frame_needed = 0, uses_anonymous_args = 0
 741              		@ link register save eliminated.
ARM GAS  /tmp/ccvxl7Q5.s 			page 14


 742 0000 1021     		movs	r1, #16
 743 0002 0120     		movs	r0, #1
 744 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 745              		.size	udi_cdc_multi_signal_framing_error, .-udi_cdc_multi_signal_framing_error
 746              		.section	.text.udi_cdc_multi_signal_parity_error,"ax",%progbits
 747              		.align	1
 748              		.p2align 2,,3
 749              		.global	udi_cdc_multi_signal_parity_error
 750              		.syntax unified
 751              		.thumb
 752              		.thumb_func
 753              		.fpu softvfp
 754              		.type	udi_cdc_multi_signal_parity_error, %function
 755              	udi_cdc_multi_signal_parity_error:
 756              		@ args = 0, pretend = 0, frame = 0
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758              		@ link register save eliminated.
 759 0000 2021     		movs	r1, #32
 760 0002 0120     		movs	r0, #1
 761 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 762              		.size	udi_cdc_multi_signal_parity_error, .-udi_cdc_multi_signal_parity_error
 763              		.section	.text.udi_cdc_multi_signal_overrun,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	udi_cdc_multi_signal_overrun
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	udi_cdc_multi_signal_overrun, %function
 772              	udi_cdc_multi_signal_overrun:
 773              		@ args = 0, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775              		@ link register save eliminated.
 776 0000 4021     		movs	r1, #64
 777 0002 0120     		movs	r0, #1
 778 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 779              		.size	udi_cdc_multi_signal_overrun, .-udi_cdc_multi_signal_overrun
 780              		.section	.text.udi_cdc_multi_get_nb_received_data,"ax",%progbits
 781              		.align	1
 782              		.p2align 2,,3
 783              		.global	udi_cdc_multi_get_nb_received_data
 784              		.syntax unified
 785              		.thumb
 786              		.thumb_func
 787              		.fpu softvfp
 788              		.type	udi_cdc_multi_get_nb_received_data, %function
 789              	udi_cdc_multi_get_nb_received_data:
 790              		@ args = 0, pretend = 0, frame = 0
 791              		@ frame_needed = 0, uses_anonymous_args = 0
 792              		@ link register save eliminated.
 793 0000 30B4     		push	{r4, r5}
 794              		.syntax unified
 795              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 796 0002 EFF31083 		MRS r3, primask
 797              	@ 0 "" 2
 798              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccvxl7Q5.s 			page 15


 799 0006 72B6     		cpsid i
 800              	@ 0 "" 2
 801              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 802 0008 BFF35F8F 		dmb
 803              	@ 0 "" 2
 804              		.thumb
 805              		.syntax unified
 806 000c 0A4C     		ldr	r4, .L108
 807 000e 0B49     		ldr	r1, .L108+4
 808 0010 0B4A     		ldr	r2, .L108+8
 809 0012 0C4D     		ldr	r5, .L108+12
 810 0014 0020     		movs	r0, #0
 811 0016 2070     		strb	r0, [r4]
 812 0018 0888     		ldrh	r0, [r1]
 813 001a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 814 001c C9B2     		uxtb	r1, r1
 815 001e 82B2     		uxth	r2, r0
 816 0020 35F81100 		ldrh	r0, [r5, r1, lsl #1]
 817 0024 80B2     		uxth	r0, r0
 818 0026 801A     		subs	r0, r0, r2
 819 0028 23B9     		cbnz	r3, .L105
 820 002a 0123     		movs	r3, #1
 821 002c 2370     		strb	r3, [r4]
 822              		.syntax unified
 823              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 824 002e BFF35F8F 		dmb
 825              	@ 0 "" 2
 826              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 827 0032 62B6     		cpsie i
 828              	@ 0 "" 2
 829              		.thumb
 830              		.syntax unified
 831              	.L105:
 832 0034 30BC     		pop	{r4, r5}
 833 0036 7047     		bx	lr
 834              	.L109:
 835              		.align	2
 836              	.L108:
 837 0038 00000000 		.word	g_interrupt_enabled
 838 003c 00000000 		.word	.LANCHOR14
 839 0040 00000000 		.word	.LANCHOR15
 840 0044 00000000 		.word	.LANCHOR16
 841              		.size	udi_cdc_multi_get_nb_received_data, .-udi_cdc_multi_get_nb_received_data
 842              		.section	.text.udi_cdc_rx_start.isra.10,"ax",%progbits
 843              		.align	1
 844              		.p2align 2,,3
 845              		.syntax unified
 846              		.thumb
 847              		.thumb_func
 848              		.fpu softvfp
 849              		.type	udi_cdc_rx_start.isra.10, %function
 850              	udi_cdc_rx_start.isra.10:
 851              		@ args = 0, pretend = 0, frame = 0
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 854 0002 83B0     		sub	sp, sp, #12
 855              		.syntax unified
ARM GAS  /tmp/ccvxl7Q5.s 			page 16


 856              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 857 0004 EFF31080 		MRS r0, primask
 858              	@ 0 "" 2
 859              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 860 0008 72B6     		cpsid i
 861              	@ 0 "" 2
 862              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 863 000a BFF35F8F 		dmb
 864              	@ 0 "" 2
 865              		.thumb
 866              		.syntax unified
 867 000e 2249     		ldr	r1, .L124
 868 0010 224E     		ldr	r6, .L124+4
 869 0012 234D     		ldr	r5, .L124+8
 870 0014 0023     		movs	r3, #0
 871 0016 0B70     		strb	r3, [r1]
 872 0018 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 873 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 874 001c 5BB9     		cbnz	r3, .L111
 875 001e E4B2     		uxtb	r4, r4
 876 0020 03F0FF0E 		and	lr, r3, #255
 877 0024 1F4F     		ldr	r7, .L124+12
 878 0026 204B     		ldr	r3, .L124+16
 879 0028 3A88     		ldrh	r2, [r7]
 880 002a 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 881 002e 92B2     		uxth	r2, r2
 882 0030 9BB2     		uxth	r3, r3
 883 0032 9A42     		cmp	r2, r3
 884 0034 03D2     		bcs	.L112
 885              	.L111:
 886 0036 F0B1     		cbz	r0, .L121
 887 0038 0020     		movs	r0, #0
 888 003a 03B0     		add	sp, sp, #12
 889              		@ sp needed
 890 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 891              	.L112:
 892 003e B4FA84F3 		clz	r3, r4
 893 0042 5B09     		lsrs	r3, r3, #5
 894 0044 0122     		movs	r2, #1
 895 0046 A7F800E0 		strh	lr, [r7]	@ movhi
 896 004a 3370     		strb	r3, [r6]
 897 004c 2A70     		strb	r2, [r5]
 898 004e E8B1     		cbz	r0, .L122
 899              	.L114:
 900 0050 0020     		movs	r0, #0
 901 0052 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 902 0056 A8B9     		cbnz	r0, .L123
 903              	.L115:
 904 0058 144A     		ldr	r2, .L124+20
 905 005a 154B     		ldr	r3, .L124+24
 906 005c 0093     		str	r3, [sp]
 907 005e 04EB8404 		add	r4, r4, r4, lsl #2
 908 0062 02EB8412 		add	r2, r2, r4, lsl #6
 909 0066 4FF4A073 		mov	r3, #320
 910 006a 0121     		movs	r1, #1
 911 006c 0220     		movs	r0, #2
 912 006e FFF7FEFF 		bl	udd_ep_run
ARM GAS  /tmp/ccvxl7Q5.s 			page 17


 913 0072 03B0     		add	sp, sp, #12
 914              		@ sp needed
 915 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 916              	.L121:
 917 0076 0123     		movs	r3, #1
 918 0078 0B70     		strb	r3, [r1]
 919              		.syntax unified
 920              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 921 007a BFF35F8F 		dmb
 922              	@ 0 "" 2
 923              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 924 007e 62B6     		cpsie i
 925              	@ 0 "" 2
 926              		.thumb
 927              		.syntax unified
 928 0080 03B0     		add	sp, sp, #12
 929              		@ sp needed
 930 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 931              	.L123:
 932 0084 0020     		movs	r0, #0
 933 0086 FFF7FEFF 		bl	core_cdc_rx_notify
 934 008a E5E7     		b	.L115
 935              	.L122:
 936 008c 0A70     		strb	r2, [r1]
 937              		.syntax unified
 938              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 939 008e BFF35F8F 		dmb
 940              	@ 0 "" 2
 941              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 942 0092 62B6     		cpsie i
 943              	@ 0 "" 2
 944              		.thumb
 945              		.syntax unified
 946 0094 DCE7     		b	.L114
 947              	.L125:
 948 0096 00BF     		.align	2
 949              	.L124:
 950 0098 00000000 		.word	g_interrupt_enabled
 951 009c 00000000 		.word	.LANCHOR15
 952 00a0 00000000 		.word	.LANCHOR17
 953 00a4 00000000 		.word	.LANCHOR14
 954 00a8 00000000 		.word	.LANCHOR16
 955 00ac 00000000 		.word	.LANCHOR18
 956 00b0 00000000 		.word	udi_cdc_data_received
 957              		.size	udi_cdc_rx_start.isra.10, .-udi_cdc_rx_start.isra.10
 958              		.section	.text.udi_cdc_data_enable,"ax",%progbits
 959              		.align	1
 960              		.p2align 2,,3
 961              		.global	udi_cdc_data_enable
 962              		.syntax unified
 963              		.thumb
 964              		.thumb_func
 965              		.fpu softvfp
 966              		.type	udi_cdc_data_enable, %function
 967              	udi_cdc_data_enable:
 968              		@ args = 0, pretend = 0, frame = 0
 969              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccvxl7Q5.s 			page 18


 970 0000 70B5     		push	{r4, r5, r6, lr}
 971 0002 134B     		ldr	r3, .L132
 972 0004 1348     		ldr	r0, .L132+4
 973 0006 1449     		ldr	r1, .L132+8
 974 0008 144A     		ldr	r2, .L132+12
 975 000a 154D     		ldr	r5, .L132+16
 976 000c 154E     		ldr	r6, .L132+20
 977 000e 0024     		movs	r4, #0
 978 0010 2C70     		strb	r4, [r5]
 979 0012 1C80     		strh	r4, [r3]	@ movhi
 980 0014 0470     		strb	r4, [r0]
 981 0016 5C80     		strh	r4, [r3, #2]	@ movhi
 982 0018 0C70     		strb	r4, [r1]
 983 001a 3480     		strh	r4, [r6]	@ movhi
 984 001c 1470     		strb	r4, [r2]
 985 001e FFF7FEFF 		bl	udi_cdc_tx_send.isra.3
 986 0022 114B     		ldr	r3, .L132+24
 987 0024 1148     		ldr	r0, .L132+28
 988 0026 1249     		ldr	r1, .L132+32
 989 0028 124A     		ldr	r2, .L132+36
 990 002a 0470     		strb	r4, [r0]
 991 002c 0C70     		strb	r4, [r1]
 992 002e 1C80     		strh	r4, [r3]	@ movhi
 993 0030 5C80     		strh	r4, [r3, #2]	@ movhi
 994 0032 1480     		strh	r4, [r2]	@ movhi
 995 0034 FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 996 0038 48B1     		cbz	r0, .L127
 997 003a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 998 003c 0133     		adds	r3, r3, #1
 999 003e DBB2     		uxtb	r3, r3
 1000 0040 2B70     		strb	r3, [r5]
 1001 0042 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1002 0044 DBB2     		uxtb	r3, r3
 1003 0046 012B     		cmp	r3, #1
 1004 0048 04BF     		itt	eq
 1005 004a 0B4A     		ldreq	r2, .L132+40
 1006 004c 1370     		strbeq	r3, [r2]
 1007              	.L127:
 1008 004e 70BD     		pop	{r4, r5, r6, pc}
 1009              	.L133:
 1010              		.align	2
 1011              	.L132:
 1012 0050 00000000 		.word	.LANCHOR10
 1013 0054 00000000 		.word	.LANCHOR7
 1014 0058 00000000 		.word	.LANCHOR12
 1015 005c 00000000 		.word	.LANCHOR9
 1016 0060 00000000 		.word	.LANCHOR1
 1017 0064 00000000 		.word	.LANCHOR8
 1018 0068 00000000 		.word	.LANCHOR16
 1019 006c 00000000 		.word	.LANCHOR17
 1020 0070 00000000 		.word	.LANCHOR15
 1021 0074 00000000 		.word	.LANCHOR14
 1022 0078 00000000 		.word	.LANCHOR2
 1023              		.size	udi_cdc_data_enable, .-udi_cdc_data_enable
 1024              		.section	.text.udi_cdc_data_received,"ax",%progbits
 1025              		.align	1
 1026              		.p2align 2,,3
ARM GAS  /tmp/ccvxl7Q5.s 			page 19


 1027              		.syntax unified
 1028              		.thumb
 1029              		.thumb_func
 1030              		.fpu softvfp
 1031              		.type	udi_cdc_data_received, %function
 1032              	udi_cdc_data_received:
 1033              		@ args = 0, pretend = 0, frame = 0
 1034              		@ frame_needed = 0, uses_anonymous_args = 0
 1035 0000 08BB     		cbnz	r0, .L138
 1036 0002 10B5     		push	{r4, lr}
 1037 0004 104B     		ldr	r3, .L142
 1038 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1039 0008 B3FA83F3 		clz	r3, r3
 1040 000c 82B0     		sub	sp, sp, #8
 1041 000e 5B09     		lsrs	r3, r3, #5
 1042 0010 51B1     		cbz	r1, .L141
 1043 0012 0E4C     		ldr	r4, .L142+4
 1044 0014 0E4A     		ldr	r2, .L142+8
 1045 0016 89B2     		uxth	r1, r1
 1046 0018 24F81310 		strh	r1, [r4, r3, lsl #1]	@ movhi
 1047 001c 1070     		strb	r0, [r2]
 1048 001e 02B0     		add	sp, sp, #8
 1049              		@ sp needed
 1050 0020 BDE81040 		pop	{r4, lr}
 1051 0024 FFF7FEBF 		b	udi_cdc_rx_start.isra.10
 1052              	.L141:
 1053 0028 1046     		mov	r0, r2
 1054 002a 9900     		lsls	r1, r3, #2
 1055 002c 094A     		ldr	r2, .L142+12
 1056 002e 0A4C     		ldr	r4, .L142+16
 1057 0030 0094     		str	r4, [sp]
 1058 0032 0B44     		add	r3, r3, r1
 1059 0034 02EB8312 		add	r2, r2, r3, lsl #6
 1060 0038 0121     		movs	r1, #1
 1061 003a 4FF4A073 		mov	r3, #320
 1062 003e FFF7FEFF 		bl	udd_ep_run
 1063 0042 02B0     		add	sp, sp, #8
 1064              		@ sp needed
 1065 0044 10BD     		pop	{r4, pc}
 1066              	.L138:
 1067 0046 7047     		bx	lr
 1068              	.L143:
 1069              		.align	2
 1070              	.L142:
 1071 0048 00000000 		.word	.LANCHOR15
 1072 004c 00000000 		.word	.LANCHOR16
 1073 0050 00000000 		.word	.LANCHOR17
 1074 0054 00000000 		.word	.LANCHOR18
 1075 0058 00000000 		.word	udi_cdc_data_received
 1076              		.size	udi_cdc_data_received, .-udi_cdc_data_received
 1077              		.section	.text.udi_cdc_get_nb_received_data,"ax",%progbits
 1078              		.align	1
 1079              		.p2align 2,,3
 1080              		.global	udi_cdc_get_nb_received_data
 1081              		.syntax unified
 1082              		.thumb
 1083              		.thumb_func
ARM GAS  /tmp/ccvxl7Q5.s 			page 20


 1084              		.fpu softvfp
 1085              		.type	udi_cdc_get_nb_received_data, %function
 1086              	udi_cdc_get_nb_received_data:
 1087              		@ args = 0, pretend = 0, frame = 0
 1088              		@ frame_needed = 0, uses_anonymous_args = 0
 1089              		@ link register save eliminated.
 1090 0000 0020     		movs	r0, #0
 1091 0002 FFF7FEBF 		b	udi_cdc_multi_get_nb_received_data
 1092              		.size	udi_cdc_get_nb_received_data, .-udi_cdc_get_nb_received_data
 1093 0006 00BF     		.section	.text.udi_cdc_multi_is_rx_ready,"ax",%progbits
 1094              		.align	1
 1095              		.p2align 2,,3
 1096              		.global	udi_cdc_multi_is_rx_ready
 1097              		.syntax unified
 1098              		.thumb
 1099              		.thumb_func
 1100              		.fpu softvfp
 1101              		.type	udi_cdc_multi_is_rx_ready, %function
 1102              	udi_cdc_multi_is_rx_ready:
 1103              		@ args = 0, pretend = 0, frame = 0
 1104              		@ frame_needed = 0, uses_anonymous_args = 0
 1105 0000 08B5     		push	{r3, lr}
 1106 0002 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1107 0006 0030     		adds	r0, r0, #0
 1108 0008 18BF     		it	ne
 1109 000a 0120     		movne	r0, #1
 1110 000c 08BD     		pop	{r3, pc}
 1111              		.size	udi_cdc_multi_is_rx_ready, .-udi_cdc_multi_is_rx_ready
 1112 000e 00BF     		.section	.text.udi_cdc_is_rx_ready,"ax",%progbits
 1113              		.align	1
 1114              		.p2align 2,,3
 1115              		.global	udi_cdc_is_rx_ready
 1116              		.syntax unified
 1117              		.thumb
 1118              		.thumb_func
 1119              		.fpu softvfp
 1120              		.type	udi_cdc_is_rx_ready, %function
 1121              	udi_cdc_is_rx_ready:
 1122              		@ args = 0, pretend = 0, frame = 0
 1123              		@ frame_needed = 0, uses_anonymous_args = 0
 1124 0000 08B5     		push	{r3, lr}
 1125 0002 0020     		movs	r0, #0
 1126 0004 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1127 0008 0030     		adds	r0, r0, #0
 1128 000a 18BF     		it	ne
 1129 000c 0120     		movne	r0, #1
 1130 000e 08BD     		pop	{r3, pc}
 1131              		.size	udi_cdc_is_rx_ready, .-udi_cdc_is_rx_ready
 1132              		.section	.text.udi_cdc_multi_getc,"ax",%progbits
 1133              		.align	1
 1134              		.p2align 2,,3
 1135              		.global	udi_cdc_multi_getc
 1136              		.syntax unified
 1137              		.thumb
 1138              		.thumb_func
 1139              		.fpu softvfp
 1140              		.type	udi_cdc_multi_getc, %function
ARM GAS  /tmp/ccvxl7Q5.s 			page 21


 1141              	udi_cdc_multi_getc:
 1142              		@ args = 0, pretend = 0, frame = 0
 1143              		@ frame_needed = 0, uses_anonymous_args = 0
 1144 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1145 0004 254B     		ldr	r3, .L160
 1146 0006 264D     		ldr	r5, .L160+4
 1147 0008 93F806B0 		ldrb	fp, [r3, #6]	@ zero_extendqisi2
 1148 000c 254C     		ldr	r4, .L160+8
 1149 000e DFF8A090 		ldr	r9, .L160+20
 1150 0012 254F     		ldr	r7, .L160+12
 1151 0014 DFF89CA0 		ldr	r10, .L160+24
 1152 0018 ABF1090B 		sub	fp, fp, #9
 1153 001c 0020     		movs	r0, #0
 1154 001e BBFA8BFB 		clz	fp, fp
 1155 0022 4FEA5B1B 		lsr	fp, fp, #5
 1156 0026 0646     		mov	r6, r0
 1157              	.L150:
 1158              		.syntax unified
 1159              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1160 0028 EFF31081 		MRS r1, primask
 1161              	@ 0 "" 2
 1162              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1163 002c 72B6     		cpsid i
 1164              	@ 0 "" 2
 1165              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1166 002e BFF35F8F 		dmb
 1167              	@ 0 "" 2
 1168              		.thumb
 1169              		.syntax unified
 1170 0032 2E70     		strb	r6, [r5]
 1171 0034 B4F800E0 		ldrh	lr, [r4]
 1172 0038 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 1173 003c DBB2     		uxtb	r3, r3
 1174 003e 1FFA8EFE 		uxth	lr, lr
 1175 0042 37F81320 		ldrh	r2, [r7, r3, lsl #1]
 1176 0046 92B2     		uxth	r2, r2
 1177 0048 11B3     		cbz	r1, .L159
 1178              	.L151:
 1179 004a 9645     		cmp	lr, r2
 1180 004c 09D3     		bcc	.L152
 1181 004e 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 1182 0052 03F0FF02 		and	r2, r3, #255
 1183 0056 002B     		cmp	r3, #0
 1184 0058 E6D1     		bne	.L150
 1185 005a 9046     		mov	r8, r2
 1186              	.L149:
 1187 005c 4046     		mov	r0, r8
 1188 005e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1189              	.L152:
 1190 0062 124A     		ldr	r2, .L160+16
 1191 0064 03EB8303 		add	r3, r3, r3, lsl #2
 1192 0068 02EB8313 		add	r3, r2, r3, lsl #6
 1193 006c 0EF10102 		add	r2, lr, #1
 1194 0070 13F80E30 		ldrb	r3, [r3, lr]	@ zero_extendqisi2
 1195 0074 92B2     		uxth	r2, r2
 1196 0076 43EA0008 		orr	r8, r3, r0
 1197 007a 2280     		strh	r2, [r4]	@ movhi
ARM GAS  /tmp/ccvxl7Q5.s 			page 22


 1198 007c FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1199 0080 BBF1000F 		cmp	fp, #0
 1200 0084 EAD0     		beq	.L149
 1201 0086 4FEA0820 		lsl	r0, r8, #8
 1202 008a 4FF0000B 		mov	fp, #0
 1203 008e CBE7     		b	.L150
 1204              	.L159:
 1205 0090 0121     		movs	r1, #1
 1206 0092 2970     		strb	r1, [r5]
 1207              		.syntax unified
 1208              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1209 0094 BFF35F8F 		dmb
 1210              	@ 0 "" 2
 1211              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1212 0098 62B6     		cpsie i
 1213              	@ 0 "" 2
 1214              		.thumb
 1215              		.syntax unified
 1216 009a D6E7     		b	.L151
 1217              	.L161:
 1218              		.align	2
 1219              	.L160:
 1220 009c 00000000 		.word	.LANCHOR3
 1221 00a0 00000000 		.word	g_interrupt_enabled
 1222 00a4 00000000 		.word	.LANCHOR14
 1223 00a8 00000000 		.word	.LANCHOR16
 1224 00ac 00000000 		.word	.LANCHOR18
 1225 00b0 00000000 		.word	.LANCHOR15
 1226 00b4 00000000 		.word	.LANCHOR2
 1227              		.size	udi_cdc_multi_getc, .-udi_cdc_multi_getc
 1228              		.section	.text.udi_cdc_getc,"ax",%progbits
 1229              		.align	1
 1230              		.p2align 2,,3
 1231              		.global	udi_cdc_getc
 1232              		.syntax unified
 1233              		.thumb
 1234              		.thumb_func
 1235              		.fpu softvfp
 1236              		.type	udi_cdc_getc, %function
 1237              	udi_cdc_getc:
 1238              		@ args = 0, pretend = 0, frame = 0
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
 1240              		@ link register save eliminated.
 1241 0000 0020     		movs	r0, #0
 1242 0002 FFF7FEBF 		b	udi_cdc_multi_getc
 1243              		.size	udi_cdc_getc, .-udi_cdc_getc
 1244 0006 00BF     		.section	.text.udi_cdc_multi_read_buf,"ax",%progbits
 1245              		.align	1
 1246              		.p2align 2,,3
 1247              		.global	udi_cdc_multi_read_buf
 1248              		.syntax unified
 1249              		.thumb
 1250              		.thumb_func
 1251              		.fpu softvfp
 1252              		.type	udi_cdc_multi_read_buf, %function
 1253              	udi_cdc_multi_read_buf:
 1254              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccvxl7Q5.s 			page 23


 1255              		@ frame_needed = 0, uses_anonymous_args = 0
 1256 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1257 0004 254B     		ldr	r3, .L171
 1258 0006 DFF8A090 		ldr	r9, .L171+12
 1259 000a 254F     		ldr	r7, .L171+4
 1260 000c DFF89C80 		ldr	r8, .L171+16
 1261 0010 DFF89CB0 		ldr	fp, .L171+20
 1262 0014 83B0     		sub	sp, sp, #12
 1263 0016 1546     		mov	r5, r2
 1264 0018 0E46     		mov	r6, r1
 1265 001a 4FF0000A 		mov	r10, #0
 1266              	.L164:
 1267              		.syntax unified
 1268              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1269 001e EFF31081 		MRS r1, primask
 1270              	@ 0 "" 2
 1271              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1272 0022 72B6     		cpsid i
 1273              	@ 0 "" 2
 1274              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1275 0024 BFF35F8F 		dmb
 1276              	@ 0 "" 2
 1277              		.thumb
 1278              		.syntax unified
 1279 0028 89F800A0 		strb	r10, [r9]
 1280 002c 3A88     		ldrh	r2, [r7]
 1281 002e 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1282 0030 E4B2     		uxtb	r4, r4
 1283 0032 92B2     		uxth	r2, r2
 1284 0034 38F814E0 		ldrh	lr, [r8, r4, lsl #1]
 1285 0038 1FFA8EFE 		uxth	lr, lr
 1286 003c 39B3     		cbz	r1, .L170
 1287              	.L165:
 1288 003e 04EB8401 		add	r1, r4, r4, lsl #2
 1289 0042 02EB8111 		add	r1, r2, r1, lsl #6
 1290 0046 7245     		cmp	r2, lr
 1291 0048 3046     		mov	r0, r6
 1292 004a 5944     		add	r1, r1, fp
 1293 004c 07D3     		bcc	.L166
 1294 004e 154A     		ldr	r2, .L171+8
 1295 0050 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1296 0052 002A     		cmp	r2, #0
 1297 0054 E3D1     		bne	.L164
 1298              	.L168:
 1299 0056 2846     		mov	r0, r5
 1300 0058 03B0     		add	sp, sp, #12
 1301              		@ sp needed
 1302 005a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1303              	.L166:
 1304 005e 38F81440 		ldrh	r4, [r8, r4, lsl #1]
 1305 0062 0193     		str	r3, [sp, #4]
 1306 0064 A4B2     		uxth	r4, r4
 1307 0066 A41A     		subs	r4, r4, r2
 1308 0068 AC42     		cmp	r4, r5
 1309 006a 28BF     		it	cs
 1310 006c 2C46     		movcs	r4, r5
 1311 006e 2246     		mov	r2, r4
ARM GAS  /tmp/ccvxl7Q5.s 			page 24


 1312 0070 FFF7FEFF 		bl	memcpy
 1313 0074 3A88     		ldrh	r2, [r7]
 1314 0076 14FA82F2 		uxtah	r2, r4, r2
 1315 007a 92B2     		uxth	r2, r2
 1316 007c 2D1B     		subs	r5, r5, r4
 1317 007e 3A80     		strh	r2, [r7]	@ movhi
 1318 0080 2644     		add	r6, r6, r4
 1319 0082 FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1320 0086 019B     		ldr	r3, [sp, #4]
 1321 0088 002D     		cmp	r5, #0
 1322 008a C8D1     		bne	.L164
 1323 008c E3E7     		b	.L168
 1324              	.L170:
 1325 008e 0121     		movs	r1, #1
 1326 0090 89F80010 		strb	r1, [r9]
 1327              		.syntax unified
 1328              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1329 0094 BFF35F8F 		dmb
 1330              	@ 0 "" 2
 1331              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1332 0098 62B6     		cpsie i
 1333              	@ 0 "" 2
 1334              		.thumb
 1335              		.syntax unified
 1336 009a D0E7     		b	.L165
 1337              	.L172:
 1338              		.align	2
 1339              	.L171:
 1340 009c 00000000 		.word	.LANCHOR15
 1341 00a0 00000000 		.word	.LANCHOR14
 1342 00a4 00000000 		.word	.LANCHOR2
 1343 00a8 00000000 		.word	g_interrupt_enabled
 1344 00ac 00000000 		.word	.LANCHOR16
 1345 00b0 00000000 		.word	.LANCHOR18
 1346              		.size	udi_cdc_multi_read_buf, .-udi_cdc_multi_read_buf
 1347              		.section	.text.udi_cdc_read_no_polling,"ax",%progbits
 1348              		.align	1
 1349              		.p2align 2,,3
 1350              		.global	udi_cdc_read_no_polling
 1351              		.syntax unified
 1352              		.thumb
 1353              		.thumb_func
 1354              		.fpu softvfp
 1355              		.type	udi_cdc_read_no_polling, %function
 1356              	udi_cdc_read_no_polling:
 1357              		@ args = 0, pretend = 0, frame = 0
 1358              		@ frame_needed = 0, uses_anonymous_args = 0
 1359 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1360 0002 264B     		ldr	r3, .L185
 1361 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1362 0006 03F0FF04 		and	r4, r3, #255
 1363 000a C3B1     		cbz	r3, .L173
 1364              		.syntax unified
 1365              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1366 000c EFF31085 		MRS r5, primask
 1367              	@ 0 "" 2
 1368              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccvxl7Q5.s 			page 25


 1369 0010 72B6     		cpsid i
 1370              	@ 0 "" 2
 1371              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1372 0012 BFF35F8F 		dmb
 1373              	@ 0 "" 2
 1374              		.thumb
 1375              		.syntax unified
 1376 0016 224E     		ldr	r6, .L185+4
 1377 0018 224F     		ldr	r7, .L185+8
 1378 001a 234B     		ldr	r3, .L185+12
 1379 001c 234C     		ldr	r4, .L185+16
 1380 001e 0022     		movs	r2, #0
 1381 0020 3270     		strb	r2, [r6]
 1382 0022 3A88     		ldrh	r2, [r7]
 1383 0024 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1384 0026 DBB2     		uxtb	r3, r3
 1385 0028 92B2     		uxth	r2, r2
 1386 002a 34F81340 		ldrh	r4, [r4, r3, lsl #1]
 1387 002e A4B2     		uxth	r4, r4
 1388 0030 A41A     		subs	r4, r4, r2
 1389 0032 05B3     		cbz	r5, .L182
 1390 0034 A142     		cmp	r1, r4
 1391 0036 28BF     		it	cs
 1392 0038 2146     		movcs	r1, r4
 1393 003a 0D46     		mov	r5, r1
 1394 003c 09B9     		cbnz	r1, .L183
 1395              	.L173:
 1396 003e 2046     		mov	r0, r4
 1397 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1398              	.L183:
 1399 0042 03EB8303 		add	r3, r3, r3, lsl #2
 1400 0046 1A49     		ldr	r1, .L185+20
 1401 0048 02EB8313 		add	r3, r2, r3, lsl #6
 1402 004c 1944     		add	r1, r1, r3
 1403 004e 2A46     		mov	r2, r5
 1404 0050 FFF7FEFF 		bl	memcpy
 1405              		.syntax unified
 1406              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1407 0054 EFF31083 		MRS r3, primask
 1408              	@ 0 "" 2
 1409              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1410 0058 72B6     		cpsid i
 1411              	@ 0 "" 2
 1412              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1413 005a BFF35F8F 		dmb
 1414              	@ 0 "" 2
 1415              		.thumb
 1416              		.syntax unified
 1417 005e 0022     		movs	r2, #0
 1418 0060 3270     		strb	r2, [r6]
 1419 0062 3988     		ldrh	r1, [r7]
 1420 0064 15FA81F5 		uxtah	r5, r5, r1
 1421 0068 ADB2     		uxth	r5, r5
 1422 006a 3D80     		strh	r5, [r7]	@ movhi
 1423 006c 7BB1     		cbz	r3, .L184
 1424              	.L176:
 1425 006e FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
ARM GAS  /tmp/ccvxl7Q5.s 			page 26


 1426 0072 2046     		mov	r0, r4
 1427 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1428              	.L182:
 1429 0076 0125     		movs	r5, #1
 1430 0078 3570     		strb	r5, [r6]
 1431              		.syntax unified
 1432              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1433 007a BFF35F8F 		dmb
 1434              	@ 0 "" 2
 1435              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1436 007e 62B6     		cpsie i
 1437              	@ 0 "" 2
 1438              		.thumb
 1439              		.syntax unified
 1440 0080 A142     		cmp	r1, r4
 1441 0082 28BF     		it	cs
 1442 0084 2146     		movcs	r1, r4
 1443 0086 0D46     		mov	r5, r1
 1444 0088 0029     		cmp	r1, #0
 1445 008a D8D0     		beq	.L173
 1446 008c D9E7     		b	.L183
 1447              	.L184:
 1448 008e 0123     		movs	r3, #1
 1449 0090 3370     		strb	r3, [r6]
 1450              		.syntax unified
 1451              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1452 0092 BFF35F8F 		dmb
 1453              	@ 0 "" 2
 1454              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1455 0096 62B6     		cpsie i
 1456              	@ 0 "" 2
 1457              		.thumb
 1458              		.syntax unified
 1459 0098 E9E7     		b	.L176
 1460              	.L186:
 1461 009a 00BF     		.align	2
 1462              	.L185:
 1463 009c 00000000 		.word	.LANCHOR2
 1464 00a0 00000000 		.word	g_interrupt_enabled
 1465 00a4 00000000 		.word	.LANCHOR14
 1466 00a8 00000000 		.word	.LANCHOR15
 1467 00ac 00000000 		.word	.LANCHOR16
 1468 00b0 00000000 		.word	.LANCHOR18
 1469              		.size	udi_cdc_read_no_polling, .-udi_cdc_read_no_polling
 1470              		.section	.text.udi_cdc_read_buf,"ax",%progbits
 1471              		.align	1
 1472              		.p2align 2,,3
 1473              		.global	udi_cdc_read_buf
 1474              		.syntax unified
 1475              		.thumb
 1476              		.thumb_func
 1477              		.fpu softvfp
 1478              		.type	udi_cdc_read_buf, %function
 1479              	udi_cdc_read_buf:
 1480              		@ args = 0, pretend = 0, frame = 0
 1481              		@ frame_needed = 0, uses_anonymous_args = 0
 1482              		@ link register save eliminated.
ARM GAS  /tmp/ccvxl7Q5.s 			page 27


 1483 0000 0A46     		mov	r2, r1
 1484 0002 0146     		mov	r1, r0
 1485 0004 0020     		movs	r0, #0
 1486 0006 FFF7FEBF 		b	udi_cdc_multi_read_buf
 1487              		.size	udi_cdc_read_buf, .-udi_cdc_read_buf
 1488 000a 00BF     		.section	.text.udi_cdc_multi_get_free_tx_buffer,"ax",%progbits
 1489              		.align	1
 1490              		.p2align 2,,3
 1491              		.global	udi_cdc_multi_get_free_tx_buffer
 1492              		.syntax unified
 1493              		.thumb
 1494              		.thumb_func
 1495              		.fpu softvfp
 1496              		.type	udi_cdc_multi_get_free_tx_buffer, %function
 1497              	udi_cdc_multi_get_free_tx_buffer:
 1498              		@ args = 0, pretend = 0, frame = 0
 1499              		@ frame_needed = 0, uses_anonymous_args = 0
 1500              		@ link register save eliminated.
 1501 0000 F0B4     		push	{r4, r5, r6, r7}
 1502              		.syntax unified
 1503              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1504 0002 EFF31085 		MRS r5, primask
 1505              	@ 0 "" 2
 1506              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1507 0006 72B6     		cpsid i
 1508              	@ 0 "" 2
 1509              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1510 0008 BFF35F8F 		dmb
 1511              	@ 0 "" 2
 1512              		.thumb
 1513              		.syntax unified
 1514 000c 144A     		ldr	r2, .L195
 1515 000e 154C     		ldr	r4, .L195+4
 1516 0010 1548     		ldr	r0, .L195+8
 1517 0012 0021     		movs	r1, #0
 1518 0014 1170     		strb	r1, [r2]
 1519 0016 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1520 0018 DBB2     		uxtb	r3, r3
 1521 001a 30F81300 		ldrh	r0, [r0, r3, lsl #1]
 1522 001e B0F5A07F 		cmp	r0, #320
 1523 0022 09D0     		beq	.L189
 1524 0024 C0F5A070 		rsb	r0, r0, #320
 1525              	.L190:
 1526 0028 25B9     		cbnz	r5, .L188
 1527 002a 0123     		movs	r3, #1
 1528 002c 1370     		strb	r3, [r2]
 1529              		.syntax unified
 1530              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1531 002e BFF35F8F 		dmb
 1532              	@ 0 "" 2
 1533              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1534 0032 62B6     		cpsie i
 1535              	@ 0 "" 2
 1536              		.thumb
 1537              		.syntax unified
 1538              	.L188:
 1539 0034 F0BC     		pop	{r4, r5, r6, r7}
ARM GAS  /tmp/ccvxl7Q5.s 			page 28


 1540 0036 7047     		bx	lr
 1541              	.L189:
 1542 0038 0C4E     		ldr	r6, .L195+12
 1543 003a 3678     		ldrb	r6, [r6]	@ zero_extendqisi2
 1544 003c 06F0FF07 		and	r7, r6, #255
 1545 0040 4EB9     		cbnz	r6, .L192
 1546 0042 0B49     		ldr	r1, .L195+16
 1547 0044 0E78     		ldrb	r6, [r1]	@ zero_extendqisi2
 1548 0046 46B9     		cbnz	r6, .L193
 1549 0048 B3FA83F3 		clz	r3, r3
 1550 004c 5B09     		lsrs	r3, r3, #5
 1551 004e 0126     		movs	r6, #1
 1552 0050 0E70     		strb	r6, [r1]
 1553 0052 2370     		strb	r3, [r4]
 1554 0054 E8E7     		b	.L190
 1555              	.L192:
 1556 0056 0846     		mov	r0, r1
 1557 0058 E6E7     		b	.L190
 1558              	.L193:
 1559 005a 3846     		mov	r0, r7
 1560 005c E4E7     		b	.L190
 1561              	.L196:
 1562 005e 00BF     		.align	2
 1563              	.L195:
 1564 0060 00000000 		.word	g_interrupt_enabled
 1565 0064 00000000 		.word	.LANCHOR9
 1566 0068 00000000 		.word	.LANCHOR10
 1567 006c 00000000 		.word	.LANCHOR7
 1568 0070 00000000 		.word	.LANCHOR12
 1569              		.size	udi_cdc_multi_get_free_tx_buffer, .-udi_cdc_multi_get_free_tx_buffer
 1570              		.section	.text.udi_cdc_get_free_tx_buffer,"ax",%progbits
 1571              		.align	1
 1572              		.p2align 2,,3
 1573              		.global	udi_cdc_get_free_tx_buffer
 1574              		.syntax unified
 1575              		.thumb
 1576              		.thumb_func
 1577              		.fpu softvfp
 1578              		.type	udi_cdc_get_free_tx_buffer, %function
 1579              	udi_cdc_get_free_tx_buffer:
 1580              		@ args = 0, pretend = 0, frame = 0
 1581              		@ frame_needed = 0, uses_anonymous_args = 0
 1582              		@ link register save eliminated.
 1583 0000 0020     		movs	r0, #0
 1584 0002 FFF7FEBF 		b	udi_cdc_multi_get_free_tx_buffer
 1585              		.size	udi_cdc_get_free_tx_buffer, .-udi_cdc_get_free_tx_buffer
 1586 0006 00BF     		.section	.text.udi_cdc_multi_is_tx_ready,"ax",%progbits
 1587              		.align	1
 1588              		.p2align 2,,3
 1589              		.global	udi_cdc_multi_is_tx_ready
 1590              		.syntax unified
 1591              		.thumb
 1592              		.thumb_func
 1593              		.fpu softvfp
 1594              		.type	udi_cdc_multi_is_tx_ready, %function
 1595              	udi_cdc_multi_is_tx_ready:
 1596              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccvxl7Q5.s 			page 29


 1597              		@ frame_needed = 0, uses_anonymous_args = 0
 1598 0000 08B5     		push	{r3, lr}
 1599 0002 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1600 0006 0030     		adds	r0, r0, #0
 1601 0008 18BF     		it	ne
 1602 000a 0120     		movne	r0, #1
 1603 000c 08BD     		pop	{r3, pc}
 1604              		.size	udi_cdc_multi_is_tx_ready, .-udi_cdc_multi_is_tx_ready
 1605 000e 00BF     		.section	.text.udi_cdc_is_tx_ready,"ax",%progbits
 1606              		.align	1
 1607              		.p2align 2,,3
 1608              		.global	udi_cdc_is_tx_ready
 1609              		.syntax unified
 1610              		.thumb
 1611              		.thumb_func
 1612              		.fpu softvfp
 1613              		.type	udi_cdc_is_tx_ready, %function
 1614              	udi_cdc_is_tx_ready:
 1615              		@ args = 0, pretend = 0, frame = 0
 1616              		@ frame_needed = 0, uses_anonymous_args = 0
 1617 0000 08B5     		push	{r3, lr}
 1618 0002 0020     		movs	r0, #0
 1619 0004 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1620 0008 0030     		adds	r0, r0, #0
 1621 000a 18BF     		it	ne
 1622 000c 0120     		movne	r0, #1
 1623 000e 08BD     		pop	{r3, pc}
 1624              		.size	udi_cdc_is_tx_ready, .-udi_cdc_is_tx_ready
 1625              		.section	.text.udi_cdc_multi_putc,"ax",%progbits
 1626              		.align	1
 1627              		.p2align 2,,3
 1628              		.global	udi_cdc_multi_putc
 1629              		.syntax unified
 1630              		.thumb
 1631              		.thumb_func
 1632              		.fpu softvfp
 1633              		.type	udi_cdc_multi_putc, %function
 1634              	udi_cdc_multi_putc:
 1635              		@ args = 0, pretend = 0, frame = 0
 1636              		@ frame_needed = 0, uses_anonymous_args = 0
 1637 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1638 0004 1E4B     		ldr	r3, .L212
 1639 0006 1F4F     		ldr	r7, .L212+4
 1640 0008 9D79     		ldrb	r5, [r3, #6]	@ zero_extendqisi2
 1641 000a DFF88880 		ldr	r8, .L212+20
 1642 000e 1E4E     		ldr	r6, .L212+8
 1643 0010 A5F10905 		sub	r5, #9
 1644 0014 B5FA85F5 		clz	r5, r5
 1645 0018 0C46     		mov	r4, r1
 1646 001a 6D09     		lsrs	r5, r5, #5
 1647              	.L203:
 1648 001c 0020     		movs	r0, #0
 1649 001e FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1650 0022 1A4B     		ldr	r3, .L212+12
 1651 0024 30B9     		cbnz	r0, .L204
 1652 0026 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1653 0028 03F0FF00 		and	r0, r3, #255
ARM GAS  /tmp/ccvxl7Q5.s 			page 30


 1654 002c 002B     		cmp	r3, #0
 1655 002e F5D1     		bne	.L203
 1656 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1657              	.L204:
 1658              		.syntax unified
 1659              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1660 0034 EFF31082 		MRS r2, primask
 1661              	@ 0 "" 2
 1662              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1663 0038 72B6     		cpsid i
 1664              	@ 0 "" 2
 1665              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1666 003a BFF35F8F 		dmb
 1667              	@ 0 "" 2
 1668              		.thumb
 1669              		.syntax unified
 1670 003e 0023     		movs	r3, #0
 1671 0040 3B70     		strb	r3, [r7]
 1672 0042 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1673 0046 1249     		ldr	r1, .L212+16
 1674 0048 DBB2     		uxtb	r3, r3
 1675 004a 03EB830E 		add	lr, r3, r3, lsl #2
 1676 004e 36F81300 		ldrh	r0, [r6, r3, lsl #1]
 1677 0052 01EB8E11 		add	r1, r1, lr, lsl #6
 1678 0056 00F1010E 		add	lr, r0, #1
 1679 005a 26F813E0 		strh	lr, [r6, r3, lsl #1]	@ movhi
 1680 005e 0C54     		strb	r4, [r1, r0]
 1681 0060 1AB1     		cbz	r2, .L210
 1682 0062 4DB1     		cbz	r5, .L208
 1683              	.L211:
 1684 0064 2412     		asrs	r4, r4, #8
 1685 0066 0025     		movs	r5, #0
 1686 0068 D8E7     		b	.L203
 1687              	.L210:
 1688 006a 0123     		movs	r3, #1
 1689 006c 3B70     		strb	r3, [r7]
 1690              		.syntax unified
 1691              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1692 006e BFF35F8F 		dmb
 1693              	@ 0 "" 2
 1694              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1695 0072 62B6     		cpsie i
 1696              	@ 0 "" 2
 1697              		.thumb
 1698              		.syntax unified
 1699 0074 002D     		cmp	r5, #0
 1700 0076 F5D1     		bne	.L211
 1701              	.L208:
 1702 0078 0120     		movs	r0, #1
 1703 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1704              	.L213:
 1705 007e 00BF     		.align	2
 1706              	.L212:
 1707 0080 00000000 		.word	.LANCHOR3
 1708 0084 00000000 		.word	g_interrupt_enabled
 1709 0088 00000000 		.word	.LANCHOR10
 1710 008c 00000000 		.word	.LANCHOR2
ARM GAS  /tmp/ccvxl7Q5.s 			page 31


 1711 0090 00000000 		.word	.LANCHOR13
 1712 0094 00000000 		.word	.LANCHOR9
 1713              		.size	udi_cdc_multi_putc, .-udi_cdc_multi_putc
 1714              		.section	.text.udi_cdc_putc,"ax",%progbits
 1715              		.align	1
 1716              		.p2align 2,,3
 1717              		.global	udi_cdc_putc
 1718              		.syntax unified
 1719              		.thumb
 1720              		.thumb_func
 1721              		.fpu softvfp
 1722              		.type	udi_cdc_putc, %function
 1723              	udi_cdc_putc:
 1724              		@ args = 0, pretend = 0, frame = 0
 1725              		@ frame_needed = 0, uses_anonymous_args = 0
 1726              		@ link register save eliminated.
 1727 0000 0146     		mov	r1, r0
 1728 0002 0020     		movs	r0, #0
 1729 0004 FFF7FEBF 		b	udi_cdc_multi_putc
 1730              		.size	udi_cdc_putc, .-udi_cdc_putc
 1731              		.section	.text.udi_cdc_multi_write_buf,"ax",%progbits
 1732              		.align	1
 1733              		.p2align 2,,3
 1734              		.global	udi_cdc_multi_write_buf
 1735              		.syntax unified
 1736              		.thumb
 1737              		.thumb_func
 1738              		.fpu softvfp
 1739              		.type	udi_cdc_multi_write_buf, %function
 1740              	udi_cdc_multi_write_buf:
 1741              		@ args = 0, pretend = 0, frame = 0
 1742              		@ frame_needed = 0, uses_anonymous_args = 0
 1743 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1744 0004 204B     		ldr	r3, .L225
 1745 0006 DFF88CA0 		ldr	r10, .L225+12
 1746 000a 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 1747 000c DFF88890 		ldr	r9, .L225+16
 1748 0010 092B     		cmp	r3, #9
 1749 0012 1746     		mov	r7, r2
 1750 0014 8846     		mov	r8, r1
 1751 0016 08BF     		it	eq
 1752 0018 5700     		lsleq	r7, r2, #1
 1753 001a 02E0     		b	.L219
 1754              	.L218:
 1755 001c 3F1B     		subs	r7, r7, r4
 1756 001e A044     		add	r8, r8, r4
 1757 0020 2ED0     		beq	.L217
 1758              	.L219:
 1759 0022 0020     		movs	r0, #0
 1760 0024 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 1761 0028 50B3     		cbz	r0, .L217
 1762              		.syntax unified
 1763              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1764 002a EFF3108B 		MRS fp, primask
 1765              	@ 0 "" 2
 1766              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1767 002e 72B6     		cpsid i
ARM GAS  /tmp/ccvxl7Q5.s 			page 32


 1768              	@ 0 "" 2
 1769              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1770 0030 BFF35F8F 		dmb
 1771              	@ 0 "" 2
 1772              		.thumb
 1773              		.syntax unified
 1774 0034 154B     		ldr	r3, .L225+4
 1775 0036 1648     		ldr	r0, .L225+8
 1776 0038 0022     		movs	r2, #0
 1777 003a 8AF80020 		strb	r2, [r10]
 1778 003e 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 1779 0040 EDB2     		uxtb	r5, r5
 1780 0042 05EB8502 		add	r2, r5, r5, lsl #2
 1781 0046 39F81560 		ldrh	r6, [r9, r5, lsl #1]
 1782 004a C6F5A074 		rsb	r4, r6, #320
 1783 004e BC42     		cmp	r4, r7
 1784 0050 06EB8212 		add	r2, r6, r2, lsl #6
 1785 0054 28BF     		it	cs
 1786 0056 3C46     		movcs	r4, r7
 1787 0058 1044     		add	r0, r0, r2
 1788 005a 4146     		mov	r1, r8
 1789 005c 2246     		mov	r2, r4
 1790 005e FFF7FEFF 		bl	memcpy
 1791 0062 2644     		add	r6, r6, r4
 1792 0064 5B46     		mov	r3, fp
 1793 0066 29F81560 		strh	r6, [r9, r5, lsl #1]	@ movhi
 1794 006a 002B     		cmp	r3, #0
 1795 006c D6D1     		bne	.L218
 1796 006e 0123     		movs	r3, #1
 1797 0070 8AF80030 		strb	r3, [r10]
 1798              		.syntax unified
 1799              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1800 0074 BFF35F8F 		dmb
 1801              	@ 0 "" 2
 1802              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1803 0078 62B6     		cpsie i
 1804              	@ 0 "" 2
 1805              		.thumb
 1806              		.syntax unified
 1807 007a 3F1B     		subs	r7, r7, r4
 1808 007c A044     		add	r8, r8, r4
 1809 007e D0D1     		bne	.L219
 1810              	.L217:
 1811 0080 3846     		mov	r0, r7
 1812 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1813              	.L226:
 1814 0086 00BF     		.align	2
 1815              	.L225:
 1816 0088 00000000 		.word	.LANCHOR3
 1817 008c 00000000 		.word	.LANCHOR9
 1818 0090 00000000 		.word	.LANCHOR13
 1819 0094 00000000 		.word	g_interrupt_enabled
 1820 0098 00000000 		.word	.LANCHOR10
 1821              		.size	udi_cdc_multi_write_buf, .-udi_cdc_multi_write_buf
 1822              		.section	.text.udi_cdc_write_buf,"ax",%progbits
 1823              		.align	1
 1824              		.p2align 2,,3
ARM GAS  /tmp/ccvxl7Q5.s 			page 33


 1825              		.global	udi_cdc_write_buf
 1826              		.syntax unified
 1827              		.thumb
 1828              		.thumb_func
 1829              		.fpu softvfp
 1830              		.type	udi_cdc_write_buf, %function
 1831              	udi_cdc_write_buf:
 1832              		@ args = 0, pretend = 0, frame = 0
 1833              		@ frame_needed = 0, uses_anonymous_args = 0
 1834              		@ link register save eliminated.
 1835 0000 0A46     		mov	r2, r1
 1836 0002 0146     		mov	r1, r0
 1837 0004 0020     		movs	r0, #0
 1838 0006 FFF7FEBF 		b	udi_cdc_multi_write_buf
 1839              		.size	udi_cdc_write_buf, .-udi_cdc_write_buf
 1840              		.global	udi_api_cdc_data
 1841              		.global	udi_api_cdc_comm
 1842 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1843              		.align	2
 1844              		.type	cpu_irq_critical_section_counter, %object
 1845              		.size	cpu_irq_critical_section_counter, 4
 1846              	cpu_irq_critical_section_counter:
 1847 0000 00000000 		.space	4
 1848              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1849              		.type	cpu_irq_prev_interrupt_state, %object
 1850              		.size	cpu_irq_prev_interrupt_state, 1
 1851              	cpu_irq_prev_interrupt_state:
 1852 0000 00       		.space	1
 1853              		.section	.bss.sof_zlp_counter.8028,"aw",%nobits
 1854              		.align	1
 1855              		.set	.LANCHOR11,. + 0
 1856              		.type	sof_zlp_counter.8028, %object
 1857              		.size	sof_zlp_counter.8028, 2
 1858              	sof_zlp_counter.8028:
 1859 0000 0000     		.space	2
 1860              		.section	.bss.udi_cdc_data_running,"aw",%nobits
 1861              		.set	.LANCHOR2,. + 0
 1862              		.type	udi_cdc_data_running, %object
 1863              		.size	udi_cdc_data_running, 1
 1864              	udi_cdc_data_running:
 1865 0000 00       		.space	1
 1866              		.section	.bss.udi_cdc_line_coding,"aw",%nobits
 1867              		.align	2
 1868              		.set	.LANCHOR3,. + 0
 1869              		.type	udi_cdc_line_coding, %object
 1870              		.size	udi_cdc_line_coding, 7
 1871              	udi_cdc_line_coding:
 1872 0000 00000000 		.space	7
 1872      000000
 1873              		.section	.bss.udi_cdc_nb_comm_enabled,"aw",%nobits
 1874              		.set	.LANCHOR0,. + 0
 1875              		.type	udi_cdc_nb_comm_enabled, %object
 1876              		.size	udi_cdc_nb_comm_enabled, 1
 1877              	udi_cdc_nb_comm_enabled:
 1878 0000 00       		.space	1
 1879              		.section	.bss.udi_cdc_nb_data_enabled,"aw",%nobits
 1880              		.set	.LANCHOR1,. + 0
ARM GAS  /tmp/ccvxl7Q5.s 			page 34


 1881              		.type	udi_cdc_nb_data_enabled, %object
 1882              		.size	udi_cdc_nb_data_enabled, 1
 1883              	udi_cdc_nb_data_enabled:
 1884 0000 00       		.space	1
 1885              		.section	.bss.udi_cdc_rx_buf,"aw",%nobits
 1886              		.align	2
 1887              		.set	.LANCHOR18,. + 0
 1888              		.type	udi_cdc_rx_buf, %object
 1889              		.size	udi_cdc_rx_buf, 640
 1890              	udi_cdc_rx_buf:
 1891 0000 00000000 		.space	640
 1891      00000000 
 1891      00000000 
 1891      00000000 
 1891      00000000 
 1892              		.section	.bss.udi_cdc_rx_buf_nb,"aw",%nobits
 1893              		.align	2
 1894              		.set	.LANCHOR16,. + 0
 1895              		.type	udi_cdc_rx_buf_nb, %object
 1896              		.size	udi_cdc_rx_buf_nb, 4
 1897              	udi_cdc_rx_buf_nb:
 1898 0000 00000000 		.space	4
 1899              		.section	.bss.udi_cdc_rx_buf_sel,"aw",%nobits
 1900              		.align	2
 1901              		.set	.LANCHOR15,. + 0
 1902              		.type	udi_cdc_rx_buf_sel, %object
 1903              		.size	udi_cdc_rx_buf_sel, 1
 1904              	udi_cdc_rx_buf_sel:
 1905 0000 00       		.space	1
 1906              		.section	.bss.udi_cdc_rx_pos,"aw",%nobits
 1907              		.align	2
 1908              		.set	.LANCHOR14,. + 0
 1909              		.type	udi_cdc_rx_pos, %object
 1910              		.size	udi_cdc_rx_pos, 2
 1911              	udi_cdc_rx_pos:
 1912 0000 0000     		.space	2
 1913              		.section	.bss.udi_cdc_rx_trans_ongoing,"aw",%nobits
 1914              		.align	2
 1915              		.set	.LANCHOR17,. + 0
 1916              		.type	udi_cdc_rx_trans_ongoing, %object
 1917              		.size	udi_cdc_rx_trans_ongoing, 1
 1918              	udi_cdc_rx_trans_ongoing:
 1919 0000 00       		.space	1
 1920              		.section	.bss.udi_cdc_serial_state_msg_ongoing,"aw",%nobits
 1921              		.align	2
 1922              		.set	.LANCHOR6,. + 0
 1923              		.type	udi_cdc_serial_state_msg_ongoing, %object
 1924              		.size	udi_cdc_serial_state_msg_ongoing, 1
 1925              	udi_cdc_serial_state_msg_ongoing:
 1926 0000 00       		.space	1
 1927              		.section	.bss.udi_cdc_state,"aw",%nobits
 1928              		.align	2
 1929              		.set	.LANCHOR4,. + 0
 1930              		.type	udi_cdc_state, %object
 1931              		.size	udi_cdc_state, 2
 1932              	udi_cdc_state:
 1933 0000 0000     		.space	2
ARM GAS  /tmp/ccvxl7Q5.s 			page 35


 1934              		.section	.bss.udi_cdc_tx_both_buf_to_send,"aw",%nobits
 1935              		.align	2
 1936              		.set	.LANCHOR12,. + 0
 1937              		.type	udi_cdc_tx_both_buf_to_send, %object
 1938              		.size	udi_cdc_tx_both_buf_to_send, 1
 1939              	udi_cdc_tx_both_buf_to_send:
 1940 0000 00       		.space	1
 1941              		.section	.bss.udi_cdc_tx_buf,"aw",%nobits
 1942              		.align	2
 1943              		.set	.LANCHOR13,. + 0
 1944              		.type	udi_cdc_tx_buf, %object
 1945              		.size	udi_cdc_tx_buf, 640
 1946              	udi_cdc_tx_buf:
 1947 0000 00000000 		.space	640
 1947      00000000 
 1947      00000000 
 1947      00000000 
 1947      00000000 
 1948              		.section	.bss.udi_cdc_tx_buf_nb,"aw",%nobits
 1949              		.align	2
 1950              		.set	.LANCHOR10,. + 0
 1951              		.type	udi_cdc_tx_buf_nb, %object
 1952              		.size	udi_cdc_tx_buf_nb, 4
 1953              	udi_cdc_tx_buf_nb:
 1954 0000 00000000 		.space	4
 1955              		.section	.bss.udi_cdc_tx_buf_sel,"aw",%nobits
 1956              		.align	2
 1957              		.set	.LANCHOR9,. + 0
 1958              		.type	udi_cdc_tx_buf_sel, %object
 1959              		.size	udi_cdc_tx_buf_sel, 1
 1960              	udi_cdc_tx_buf_sel:
 1961 0000 00       		.space	1
 1962              		.section	.bss.udi_cdc_tx_sof_num,"aw",%nobits
 1963              		.align	2
 1964              		.set	.LANCHOR8,. + 0
 1965              		.type	udi_cdc_tx_sof_num, %object
 1966              		.size	udi_cdc_tx_sof_num, 2
 1967              	udi_cdc_tx_sof_num:
 1968 0000 0000     		.space	2
 1969              		.section	.bss.udi_cdc_tx_trans_ongoing,"aw",%nobits
 1970              		.align	2
 1971              		.set	.LANCHOR7,. + 0
 1972              		.type	udi_cdc_tx_trans_ongoing, %object
 1973              		.size	udi_cdc_tx_trans_ongoing, 1
 1974              	udi_cdc_tx_trans_ongoing:
 1975 0000 00       		.space	1
 1976              		.section	.bss.uid_cdc_state_msg,"aw",%nobits
 1977              		.align	2
 1978              		.set	.LANCHOR5,. + 0
 1979              		.type	uid_cdc_state_msg, %object
 1980              		.size	uid_cdc_state_msg, 10
 1981              	uid_cdc_state_msg:
 1982 0000 00000000 		.space	10
 1982      00000000 
 1982      0000
 1983              		.section	.data.udi_api_cdc_comm,"aw",%progbits
 1984              		.align	2
ARM GAS  /tmp/ccvxl7Q5.s 			page 36


 1985              		.type	udi_api_cdc_comm, %object
 1986              		.size	udi_api_cdc_comm, 20
 1987              	udi_api_cdc_comm:
 1988 0000 00000000 		.word	udi_cdc_comm_enable
 1989 0004 00000000 		.word	udi_cdc_comm_disable
 1990 0008 00000000 		.word	udi_cdc_comm_setup
 1991 000c 00000000 		.word	udi_cdc_getsetting
 1992 0010 00000000 		.space	4
 1993              		.section	.data.udi_api_cdc_data,"aw",%progbits
 1994              		.align	2
 1995              		.type	udi_api_cdc_data, %object
 1996              		.size	udi_api_cdc_data, 20
 1997              	udi_api_cdc_data:
 1998 0000 00000000 		.word	udi_cdc_data_enable
 1999 0004 00000000 		.word	udi_cdc_data_disable
 2000 0008 00000000 		.word	udi_cdc_data_setup
 2001 000c 00000000 		.word	udi_cdc_getsetting
 2002 0010 00000000 		.word	udi_cdc_data_sof_notify
 2003              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
