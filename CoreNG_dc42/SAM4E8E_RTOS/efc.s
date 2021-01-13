ARM GAS  /tmp/cc9PROxY.s 			page 1


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
  13              		.file	"efc.c"
  14              		.section	.text.efc_get_flash_access_mode,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	efc_get_flash_access_mode
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	efc_get_flash_access_mode, %function
  23              	efc_get_flash_access_mode:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0068     		ldr	r0, [r0]
  28 0002 00F08070 		and	r0, r0, #16777216
  29 0006 7047     		bx	lr
  30              		.size	efc_get_flash_access_mode, .-efc_get_flash_access_mode
  31              		.section	.text.efc_get_wait_state,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	efc_get_wait_state
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	efc_get_wait_state, %function
  40              	efc_get_wait_state:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0068     		ldr	r0, [r0]
  45 0002 C0F30320 		ubfx	r0, r0, #8, #4
  46 0006 7047     		bx	lr
  47              		.size	efc_get_wait_state, .-efc_get_wait_state
  48              		.section	.text.efc_get_status,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	efc_get_status
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	efc_get_status, %function
  57              	efc_get_status:
ARM GAS  /tmp/cc9PROxY.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 8068     		ldr	r0, [r0, #8]
  62 0002 7047     		bx	lr
  63              		.size	efc_get_status, .-efc_get_status
  64              		.section	.text.efc_get_result,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	efc_get_result
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	efc_get_result, %function
  73              	efc_get_result:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 C068     		ldr	r0, [r0, #12]
  78 0002 7047     		bx	lr
  79              		.size	efc_get_result, .-efc_get_result
  80              		.section	.ramfunc,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	efc_perform_read_sequence
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	efc_perform_read_sequence, %function
  89              	efc_perform_read_sequence:
  90              		@ args = 4, pretend = 0, frame = 8
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 30B4     		push	{r4, r5}
  94 0002 82B0     		sub	sp, sp, #8
  95 0004 049D     		ldr	r5, [sp, #16]
  96 0006 3BB3     		cbz	r3, .L12
  97 0008 0468     		ldr	r4, [r0]
  98 000a C9B2     		uxtb	r1, r1
  99 000c 41F0B441 		orr	r1, r1, #1509949440
 100 0010 44F48034 		orr	r4, r4, #65536
 101 0014 0460     		str	r4, [r0]
 102 0016 4160     		str	r1, [r0, #4]
 103              	.L7:
 104 0018 8168     		ldr	r1, [r0, #8]
 105 001a 0191     		str	r1, [sp, #4]
 106 001c 0199     		ldr	r1, [sp, #4]
 107 001e C907     		lsls	r1, r1, #31
 108 0020 FAD4     		bmi	.L7
 109 0022 45B1     		cbz	r5, .L11
 110 0024 0E49     		ldr	r1, .L19
 111 0026 03EB8505 		add	r5, r3, r5, lsl #2
 112              	.L10:
 113 002a 51F8044F 		ldr	r4, [r1, #4]!
 114 002e 43F8044B 		str	r4, [r3], #4
ARM GAS  /tmp/cc9PROxY.s 			page 3


 115 0032 AB42     		cmp	r3, r5
 116 0034 F9D1     		bne	.L10
 117              	.L11:
 118 0036 D2B2     		uxtb	r2, r2
 119 0038 42F0B442 		orr	r2, r2, #1509949440
 120 003c 4260     		str	r2, [r0, #4]
 121              	.L9:
 122 003e 8368     		ldr	r3, [r0, #8]
 123 0040 0193     		str	r3, [sp, #4]
 124 0042 019B     		ldr	r3, [sp, #4]
 125 0044 DB07     		lsls	r3, r3, #31
 126 0046 FAD5     		bpl	.L9
 127 0048 0368     		ldr	r3, [r0]
 128 004a 23F48033 		bic	r3, r3, #65536
 129 004e 0360     		str	r3, [r0]
 130 0050 0020     		movs	r0, #0
 131 0052 02B0     		add	sp, sp, #8
 132              		@ sp needed
 133 0054 30BC     		pop	{r4, r5}
 134 0056 7047     		bx	lr
 135              	.L12:
 136 0058 0220     		movs	r0, #2
 137 005a 02B0     		add	sp, sp, #8
 138              		@ sp needed
 139 005c 30BC     		pop	{r4, r5}
 140 005e 7047     		bx	lr
 141              	.L20:
 142              		.align	2
 143              	.L19:
 144 0060 FCFF3F00 		.word	4194300
 145              		.size	efc_perform_read_sequence, .-efc_perform_read_sequence
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	efc_write_fmr
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	efc_write_fmr, %function
 154              	efc_write_fmr:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0064 0160     		str	r1, [r0]
 159 0066 7047     		bx	lr
 160              		.size	efc_write_fmr, .-efc_write_fmr
 161              		.section	.text.efc_init,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	efc_init
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	efc_init, %function
 170              	efc_init:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc9PROxY.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173 0000 08B5     		push	{r3, lr}
 174 0002 1202     		lsls	r2, r2, #8
 175 0004 02F47062 		and	r2, r2, #3840
 176 0008 41F08061 		orr	r1, r1, #67108864
 177 000c 1143     		orrs	r1, r1, r2
 178 000e FFF7FEFF 		bl	efc_write_fmr
 179 0012 0020     		movs	r0, #0
 180 0014 08BD     		pop	{r3, pc}
 181              		.size	efc_init, .-efc_init
 182 0016 00BF     		.section	.text.efc_enable_cloe,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	efc_enable_cloe
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	efc_enable_cloe, %function
 191              	efc_enable_cloe:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 0168     		ldr	r1, [r0]
 196 0002 41F08061 		orr	r1, r1, #67108864
 197 0006 FFF7FEBF 		b	efc_write_fmr
 198              		.size	efc_enable_cloe, .-efc_enable_cloe
 199 000a 00BF     		.section	.text.efc_disable_cloe,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	efc_disable_cloe
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	efc_disable_cloe, %function
 208              	efc_disable_cloe:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              		@ link register save eliminated.
 212 0000 0168     		ldr	r1, [r0]
 213 0002 21F08061 		bic	r1, r1, #67108864
 214 0006 FFF7FEBF 		b	efc_write_fmr
 215              		.size	efc_disable_cloe, .-efc_disable_cloe
 216 000a 00BF     		.section	.text.efc_enable_frdy_interrupt,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	efc_enable_frdy_interrupt
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	efc_enable_frdy_interrupt, %function
 225              	efc_enable_frdy_interrupt:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  /tmp/cc9PROxY.s 			page 5


 229 0000 0168     		ldr	r1, [r0]
 230 0002 41F00101 		orr	r1, r1, #1
 231 0006 FFF7FEBF 		b	efc_write_fmr
 232              		.size	efc_enable_frdy_interrupt, .-efc_enable_frdy_interrupt
 233 000a 00BF     		.section	.text.efc_disable_frdy_interrupt,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	efc_disable_frdy_interrupt
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	efc_disable_frdy_interrupt, %function
 242              	efc_disable_frdy_interrupt:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 0168     		ldr	r1, [r0]
 247 0002 21F00101 		bic	r1, r1, #1
 248 0006 FFF7FEBF 		b	efc_write_fmr
 249              		.size	efc_disable_frdy_interrupt, .-efc_disable_frdy_interrupt
 250 000a 00BF     		.section	.text.efc_set_flash_access_mode,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	efc_set_flash_access_mode
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	efc_set_flash_access_mode, %function
 259              	efc_set_flash_access_mode:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 0368     		ldr	r3, [r0]
 264 0002 23F08073 		bic	r3, r3, #16777216
 265 0006 1943     		orrs	r1, r1, r3
 266 0008 FFF7FEBF 		b	efc_write_fmr
 267              		.size	efc_set_flash_access_mode, .-efc_set_flash_access_mode
 268              		.section	.text.efc_set_wait_state,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	efc_set_wait_state
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	efc_set_wait_state, %function
 277              	efc_set_wait_state:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 0368     		ldr	r3, [r0]
 282 0002 0902     		lsls	r1, r1, #8
 283 0004 01F47061 		and	r1, r1, #3840
 284 0008 23F47063 		bic	r3, r3, #3840
 285 000c 1943     		orrs	r1, r1, r3
ARM GAS  /tmp/cc9PROxY.s 			page 6


 286 000e FFF7FEBF 		b	efc_write_fmr
 287              		.size	efc_set_wait_state, .-efc_set_wait_state
 288 0012 00BF     		.section	.ramfunc
 289              		.align	1
 290              		.p2align 2,,3
 291              		.global	efc_perform_fcr
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu fpv4-sp-d16
 296              		.type	efc_perform_fcr, %function
 297              	efc_perform_fcr:
 298              		@ args = 0, pretend = 0, frame = 8
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0068 82B0     		sub	sp, sp, #8
 302 006a 4160     		str	r1, [r0, #4]
 303              	.L31:
 304 006c 8368     		ldr	r3, [r0, #8]
 305 006e 0193     		str	r3, [sp, #4]
 306 0070 019B     		ldr	r3, [sp, #4]
 307 0072 DB07     		lsls	r3, r3, #31
 308 0074 FAD5     		bpl	.L31
 309 0076 0198     		ldr	r0, [sp, #4]
 310 0078 00F00E00 		and	r0, r0, #14
 311 007c 02B0     		add	sp, sp, #8
 312              		@ sp needed
 313 007e 7047     		bx	lr
 314              		.size	efc_perform_fcr, .-efc_perform_fcr
 315              		.section	.text.efc_perform_command,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	efc_perform_command
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	efc_perform_command, %function
 324              	efc_perform_command:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327 0000 38B5     		push	{r3, r4, r5, lr}
 328 0002 A1F10E03 		sub	r3, r1, #14
 329 0006 012B     		cmp	r3, #1
 330 0008 02D8     		bhi	.L39
 331 000a 4FF0FF30 		mov	r0, #-1
 332              	.L35:
 333 000e 38BD     		pop	{r3, r4, r5, pc}
 334              	.L39:
 335              		.syntax unified
 336              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 337 0010 EFF31084 		MRS r4, primask
 338              	@ 0 "" 2
 339              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 340 0014 72B6     		cpsid i
 341              	@ 0 "" 2
 342              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/cc9PROxY.s 			page 7


 343 0016 BFF35F8F 		dmb
 344              	@ 0 "" 2
 345              		.thumb
 346              		.syntax unified
 347 001a 0A4B     		ldr	r3, .L40
 348 001c 0A4D     		ldr	r5, .L40+4
 349 001e 03EA0222 		and	r2, r3, r2, lsl #8
 350 0022 C9B2     		uxtb	r1, r1
 351 0024 42F0B442 		orr	r2, r2, #1509949440
 352 0028 0023     		movs	r3, #0
 353 002a 1143     		orrs	r1, r1, r2
 354 002c 2B70     		strb	r3, [r5]
 355 002e FFF7FEFF 		bl	efc_perform_fcr
 356 0032 002C     		cmp	r4, #0
 357 0034 EBD1     		bne	.L35
 358 0036 0123     		movs	r3, #1
 359 0038 2B70     		strb	r3, [r5]
 360              		.syntax unified
 361              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 362 003a BFF35F8F 		dmb
 363              	@ 0 "" 2
 364              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 365 003e 62B6     		cpsie i
 366              	@ 0 "" 2
 367              		.thumb
 368              		.syntax unified
 369 0040 38BD     		pop	{r3, r4, r5, pc}
 370              	.L41:
 371 0042 00BF     		.align	2
 372              	.L40:
 373 0044 00FFFF00 		.word	16776960
 374 0048 00000000 		.word	g_interrupt_enabled
 375              		.size	efc_perform_command, .-efc_perform_command
 376              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 377              		.align	2
 378              		.type	cpu_irq_critical_section_counter, %object
 379              		.size	cpu_irq_critical_section_counter, 4
 380              	cpu_irq_critical_section_counter:
 381 0000 00000000 		.space	4
 382              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 383              		.type	cpu_irq_prev_interrupt_state, %object
 384              		.size	cpu_irq_prev_interrupt_state, 1
 385              	cpu_irq_prev_interrupt_state:
 386 0000 00       		.space	1
 387              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
