ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 1


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
  14              		.text
  15              		.section	.text.efc_get_flash_access_mode,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	efc_get_flash_access_mode
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	efc_get_flash_access_mode, %function
  24              	efc_get_flash_access_mode:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0068     		ldr	r0, [r0]
  29 0002 00F08070 		and	r0, r0, #16777216
  30 0006 7047     		bx	lr
  31              		.size	efc_get_flash_access_mode, .-efc_get_flash_access_mode
  32              		.section	.text.efc_get_wait_state,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	efc_get_wait_state
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	efc_get_wait_state, %function
  41              	efc_get_wait_state:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 0068     		ldr	r0, [r0]
  46 0002 C0F30320 		ubfx	r0, r0, #8, #4
  47 0006 7047     		bx	lr
  48              		.size	efc_get_wait_state, .-efc_get_wait_state
  49              		.section	.text.efc_get_status,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	efc_get_status
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	efc_get_status, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 2


  58              	efc_get_status:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 8068     		ldr	r0, [r0, #8]
  63 0002 7047     		bx	lr
  64              		.size	efc_get_status, .-efc_get_status
  65              		.section	.text.efc_get_result,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	efc_get_result
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	efc_get_result, %function
  74              	efc_get_result:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 C068     		ldr	r0, [r0, #12]
  79 0002 7047     		bx	lr
  80              		.size	efc_get_result, .-efc_get_result
  81              		.section	.ramfunc,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	efc_perform_read_sequence
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv4-sp-d16
  89              		.type	efc_perform_read_sequence, %function
  90              	efc_perform_read_sequence:
  91              		@ args = 4, pretend = 0, frame = 8
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 30B4     		push	{r4, r5}
  95 0002 82B0     		sub	sp, sp, #8
  96 0004 049C     		ldr	r4, [sp, #16]
  97 0006 53B3     		cbz	r3, .L12
  98 0008 0568     		ldr	r5, [r0]
  99 000a C9B2     		uxtb	r1, r1
 100 000c 41F0B441 		orr	r1, r1, #1509949440
 101 0010 45F48035 		orr	r5, r5, #65536
 102 0014 0560     		str	r5, [r0]
 103 0016 4160     		str	r1, [r0, #4]
 104              	.L8:
 105 0018 8168     		ldr	r1, [r0, #8]
 106 001a 0191     		str	r1, [sp, #4]
 107 001c 0199     		ldr	r1, [sp, #4]
 108 001e C907     		lsls	r1, r1, #31
 109 0020 FAD4     		bmi	.L8
 110 0022 5CB1     		cbz	r4, .L9
 111 0024 03EB8404 		add	r4, r3, r4, lsl #2
 112 0028 C3F58005 		rsb	r5, r3, #4194304
 113 002c 043C     		subs	r4, r4, #4
 114 002e 0435     		adds	r5, r5, #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 3


 115 0030 043B     		subs	r3, r3, #4
 116              	.L10:
 117 0032 E958     		ldr	r1, [r5, r3]
 118 0034 43F8041F 		str	r1, [r3, #4]!
 119 0038 A342     		cmp	r3, r4
 120 003a FAD1     		bne	.L10
 121              	.L9:
 122 003c D2B2     		uxtb	r2, r2
 123 003e 42F0B442 		orr	r2, r2, #1509949440
 124 0042 4260     		str	r2, [r0, #4]
 125              	.L11:
 126 0044 8368     		ldr	r3, [r0, #8]
 127 0046 0193     		str	r3, [sp, #4]
 128 0048 019B     		ldr	r3, [sp, #4]
 129 004a DB07     		lsls	r3, r3, #31
 130 004c FAD5     		bpl	.L11
 131 004e 0368     		ldr	r3, [r0]
 132 0050 23F48033 		bic	r3, r3, #65536
 133 0054 0360     		str	r3, [r0]
 134 0056 0020     		movs	r0, #0
 135 0058 02B0     		add	sp, sp, #8
 136              		@ sp needed
 137 005a 30BC     		pop	{r4, r5}
 138 005c 7047     		bx	lr
 139              	.L12:
 140 005e 0220     		movs	r0, #2
 141 0060 02B0     		add	sp, sp, #8
 142              		@ sp needed
 143 0062 30BC     		pop	{r4, r5}
 144 0064 7047     		bx	lr
 145              		.size	efc_perform_read_sequence, .-efc_perform_read_sequence
 146              		.align	1
 147 0066 00BF     		.p2align 2,,3
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
 158 0068 0160     		str	r1, [r0]
 159 006a 7047     		bx	lr
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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 4


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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 5


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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 6


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
 301 006c 82B0     		sub	sp, sp, #8
 302 006e 4160     		str	r1, [r0, #4]
 303              	.L31:
 304 0070 8368     		ldr	r3, [r0, #8]
 305 0072 0193     		str	r3, [sp, #4]
 306 0074 019B     		ldr	r3, [sp, #4]
 307 0076 DB07     		lsls	r3, r3, #31
 308 0078 FAD5     		bpl	.L31
 309 007a 0198     		ldr	r0, [sp, #4]
 310 007c 00F00E00 		and	r0, r0, #14
 311 0080 02B0     		add	sp, sp, #8
 312              		@ sp needed
 313 0082 7047     		bx	lr
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
 330 0008 17D9     		bls	.L37
 331              		.syntax unified
 332              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 333 000a EFF31085 		MRS r5, primask
 334              	@ 0 "" 2
 335              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 336 000e 72B6     		cpsid i
 337              	@ 0 "" 2
 338              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 339 0010 BFF35F8F 		dmb
 340              	@ 0 "" 2
 341              		.thumb
 342              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc3N7tdO.s 			page 7


 343 0014 0A4B     		ldr	r3, .L39
 344 0016 0B4C     		ldr	r4, .L39+4
 345 0018 03EA0222 		and	r2, r3, r2, lsl #8
 346 001c C9B2     		uxtb	r1, r1
 347 001e 42F0B442 		orr	r2, r2, #1509949440
 348 0022 0023     		movs	r3, #0
 349 0024 1143     		orrs	r1, r1, r2
 350 0026 2370     		strb	r3, [r4]
 351 0028 FFF7FEFF 		bl	efc_perform_fcr
 352 002c 25B9     		cbnz	r5, .L35
 353 002e 0123     		movs	r3, #1
 354 0030 2370     		strb	r3, [r4]
 355              		.syntax unified
 356              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 357 0032 BFF35F8F 		dmb
 358              	@ 0 "" 2
 359              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 360 0036 62B6     		cpsie i
 361              	@ 0 "" 2
 362              		.thumb
 363              		.syntax unified
 364              	.L35:
 365 0038 38BD     		pop	{r3, r4, r5, pc}
 366              	.L37:
 367 003a 4FF0FF30 		mov	r0, #-1
 368 003e 38BD     		pop	{r3, r4, r5, pc}
 369              	.L40:
 370              		.align	2
 371              	.L39:
 372 0040 00FFFF00 		.word	16776960
 373 0044 00000000 		.word	g_interrupt_enabled
 374              		.size	efc_perform_command, .-efc_perform_command
 375              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 376              		.align	2
 377              		.type	cpu_irq_critical_section_counter, %object
 378              		.size	cpu_irq_critical_section_counter, 4
 379              	cpu_irq_critical_section_counter:
 380 0000 00000000 		.space	4
 381              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 382              		.type	cpu_irq_prev_interrupt_state, %object
 383              		.size	cpu_irq_prev_interrupt_state, 1
 384              	cpu_irq_prev_interrupt_state:
 385 0000 00       		.space	1
 386              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
