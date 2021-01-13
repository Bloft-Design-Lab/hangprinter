ARM GAS  /tmp/ccsFcOHF.s 			page 1


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
  11              		.file	"efc.c"
  12              		.section	.text.efc_get_flash_access_mode,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	efc_get_flash_access_mode
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	efc_get_flash_access_mode, %function
  21              	efc_get_flash_access_mode:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0068     		ldr	r0, [r0]
  26 0002 00F08070 		and	r0, r0, #16777216
  27 0006 7047     		bx	lr
  28              		.size	efc_get_flash_access_mode, .-efc_get_flash_access_mode
  29              		.section	.text.efc_get_wait_state,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	efc_get_wait_state
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	efc_get_wait_state, %function
  38              	efc_get_wait_state:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0068     		ldr	r0, [r0]
  43 0002 C0F30320 		ubfx	r0, r0, #8, #4
  44 0006 7047     		bx	lr
  45              		.size	efc_get_wait_state, .-efc_get_wait_state
  46              		.section	.text.efc_get_status,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	efc_get_status
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	efc_get_status, %function
  55              	efc_get_status:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccsFcOHF.s 			page 2


  58              		@ link register save eliminated.
  59 0000 8068     		ldr	r0, [r0, #8]
  60 0002 7047     		bx	lr
  61              		.size	efc_get_status, .-efc_get_status
  62              		.section	.text.efc_get_result,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	efc_get_result
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu softvfp
  70              		.type	efc_get_result, %function
  71              	efc_get_result:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 C068     		ldr	r0, [r0, #12]
  76 0002 7047     		bx	lr
  77              		.size	efc_get_result, .-efc_get_result
  78              		.section	.ramfunc,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	efc_perform_read_sequence
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu softvfp
  86              		.type	efc_perform_read_sequence, %function
  87              	efc_perform_read_sequence:
  88              		@ args = 4, pretend = 0, frame = 8
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 30B4     		push	{r4, r5}
  92 0002 82B0     		sub	sp, sp, #8
  93 0004 049D     		ldr	r5, [sp, #16]
  94 0006 3BB3     		cbz	r3, .L12
  95 0008 0468     		ldr	r4, [r0]
  96 000a C9B2     		uxtb	r1, r1
  97 000c 41F0B441 		orr	r1, r1, #1509949440
  98 0010 44F48034 		orr	r4, r4, #65536
  99 0014 0460     		str	r4, [r0]
 100 0016 4160     		str	r1, [r0, #4]
 101              	.L7:
 102 0018 8168     		ldr	r1, [r0, #8]
 103 001a 0191     		str	r1, [sp, #4]
 104 001c 0199     		ldr	r1, [sp, #4]
 105 001e C907     		lsls	r1, r1, #31
 106 0020 FAD4     		bmi	.L7
 107 0022 45B1     		cbz	r5, .L11
 108 0024 0E49     		ldr	r1, .L19
 109 0026 03EB8505 		add	r5, r3, r5, lsl #2
 110              	.L10:
 111 002a 51F8044F 		ldr	r4, [r1, #4]!
 112 002e 43F8044B 		str	r4, [r3], #4
 113 0032 AB42     		cmp	r3, r5
 114 0034 F9D1     		bne	.L10
ARM GAS  /tmp/ccsFcOHF.s 			page 3


 115              	.L11:
 116 0036 D2B2     		uxtb	r2, r2
 117 0038 42F0B442 		orr	r2, r2, #1509949440
 118 003c 4260     		str	r2, [r0, #4]
 119              	.L9:
 120 003e 8368     		ldr	r3, [r0, #8]
 121 0040 0193     		str	r3, [sp, #4]
 122 0042 019B     		ldr	r3, [sp, #4]
 123 0044 DB07     		lsls	r3, r3, #31
 124 0046 FAD5     		bpl	.L9
 125 0048 0368     		ldr	r3, [r0]
 126 004a 23F48033 		bic	r3, r3, #65536
 127 004e 0360     		str	r3, [r0]
 128 0050 0020     		movs	r0, #0
 129 0052 02B0     		add	sp, sp, #8
 130              		@ sp needed
 131 0054 30BC     		pop	{r4, r5}
 132 0056 7047     		bx	lr
 133              	.L12:
 134 0058 0220     		movs	r0, #2
 135 005a 02B0     		add	sp, sp, #8
 136              		@ sp needed
 137 005c 30BC     		pop	{r4, r5}
 138 005e 7047     		bx	lr
 139              	.L20:
 140              		.align	2
 141              	.L19:
 142 0060 FCFF3F00 		.word	4194300
 143              		.size	efc_perform_read_sequence, .-efc_perform_read_sequence
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	efc_write_fmr
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu softvfp
 151              		.type	efc_write_fmr, %function
 152              	efc_write_fmr:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0064 0160     		str	r1, [r0]
 157 0066 7047     		bx	lr
 158              		.size	efc_write_fmr, .-efc_write_fmr
 159              		.section	.text.efc_init,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	efc_init
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu softvfp
 167              		.type	efc_init, %function
 168              	efc_init:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171 0000 08B5     		push	{r3, lr}
ARM GAS  /tmp/ccsFcOHF.s 			page 4


 172 0002 1202     		lsls	r2, r2, #8
 173 0004 02F47062 		and	r2, r2, #3840
 174 0008 41F08061 		orr	r1, r1, #67108864
 175 000c 1143     		orrs	r1, r1, r2
 176 000e FFF7FEFF 		bl	efc_write_fmr
 177 0012 0020     		movs	r0, #0
 178 0014 08BD     		pop	{r3, pc}
 179              		.size	efc_init, .-efc_init
 180 0016 00BF     		.section	.text.efc_enable_cloe,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	efc_enable_cloe
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	efc_enable_cloe, %function
 189              	efc_enable_cloe:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 0168     		ldr	r1, [r0]
 194 0002 41F08061 		orr	r1, r1, #67108864
 195 0006 FFF7FEBF 		b	efc_write_fmr
 196              		.size	efc_enable_cloe, .-efc_enable_cloe
 197 000a 00BF     		.section	.text.efc_disable_cloe,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	efc_disable_cloe
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu softvfp
 205              		.type	efc_disable_cloe, %function
 206              	efc_disable_cloe:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 0168     		ldr	r1, [r0]
 211 0002 21F08061 		bic	r1, r1, #67108864
 212 0006 FFF7FEBF 		b	efc_write_fmr
 213              		.size	efc_disable_cloe, .-efc_disable_cloe
 214 000a 00BF     		.section	.text.efc_enable_frdy_interrupt,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	efc_enable_frdy_interrupt
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu softvfp
 222              		.type	efc_enable_frdy_interrupt, %function
 223              	efc_enable_frdy_interrupt:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 227 0000 0168     		ldr	r1, [r0]
 228 0002 41F00101 		orr	r1, r1, #1
ARM GAS  /tmp/ccsFcOHF.s 			page 5


 229 0006 FFF7FEBF 		b	efc_write_fmr
 230              		.size	efc_enable_frdy_interrupt, .-efc_enable_frdy_interrupt
 231 000a 00BF     		.section	.text.efc_disable_frdy_interrupt,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	efc_disable_frdy_interrupt
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	efc_disable_frdy_interrupt, %function
 240              	efc_disable_frdy_interrupt:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 0168     		ldr	r1, [r0]
 245 0002 21F00101 		bic	r1, r1, #1
 246 0006 FFF7FEBF 		b	efc_write_fmr
 247              		.size	efc_disable_frdy_interrupt, .-efc_disable_frdy_interrupt
 248 000a 00BF     		.section	.text.efc_set_flash_access_mode,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	efc_set_flash_access_mode
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 256              		.type	efc_set_flash_access_mode, %function
 257              	efc_set_flash_access_mode:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261 0000 0368     		ldr	r3, [r0]
 262 0002 23F08073 		bic	r3, r3, #16777216
 263 0006 1943     		orrs	r1, r1, r3
 264 0008 FFF7FEBF 		b	efc_write_fmr
 265              		.size	efc_set_flash_access_mode, .-efc_set_flash_access_mode
 266              		.section	.text.efc_set_wait_state,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	efc_set_wait_state
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu softvfp
 274              		.type	efc_set_wait_state, %function
 275              	efc_set_wait_state:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279 0000 0368     		ldr	r3, [r0]
 280 0002 0902     		lsls	r1, r1, #8
 281 0004 01F47061 		and	r1, r1, #3840
 282 0008 23F47063 		bic	r3, r3, #3840
 283 000c 1943     		orrs	r1, r1, r3
 284 000e FFF7FEBF 		b	efc_write_fmr
 285              		.size	efc_set_wait_state, .-efc_set_wait_state
ARM GAS  /tmp/ccsFcOHF.s 			page 6


 286 0012 00BF     		.section	.ramfunc
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	efc_perform_fcr
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu softvfp
 294              		.type	efc_perform_fcr, %function
 295              	efc_perform_fcr:
 296              		@ args = 0, pretend = 0, frame = 8
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0068 82B0     		sub	sp, sp, #8
 300 006a 4160     		str	r1, [r0, #4]
 301              	.L31:
 302 006c 8368     		ldr	r3, [r0, #8]
 303 006e 0193     		str	r3, [sp, #4]
 304 0070 019B     		ldr	r3, [sp, #4]
 305 0072 DB07     		lsls	r3, r3, #31
 306 0074 FAD5     		bpl	.L31
 307 0076 0198     		ldr	r0, [sp, #4]
 308 0078 00F00E00 		and	r0, r0, #14
 309 007c 02B0     		add	sp, sp, #8
 310              		@ sp needed
 311 007e 7047     		bx	lr
 312              		.size	efc_perform_fcr, .-efc_perform_fcr
 313              		.section	.text.efc_perform_command,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	efc_perform_command
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu softvfp
 321              		.type	efc_perform_command, %function
 322              	efc_perform_command:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325 0000 38B5     		push	{r3, r4, r5, lr}
 326 0002 A1F10E03 		sub	r3, r1, #14
 327 0006 012B     		cmp	r3, #1
 328 0008 02D8     		bhi	.L39
 329 000a 4FF0FF30 		mov	r0, #-1
 330              	.L35:
 331 000e 38BD     		pop	{r3, r4, r5, pc}
 332              	.L39:
 333              		.syntax unified
 334              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 335 0010 EFF31084 		MRS r4, primask
 336              	@ 0 "" 2
 337              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 338 0014 72B6     		cpsid i
 339              	@ 0 "" 2
 340              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 341 0016 BFF35F8F 		dmb
 342              	@ 0 "" 2
ARM GAS  /tmp/ccsFcOHF.s 			page 7


 343              		.thumb
 344              		.syntax unified
 345 001a 0A4B     		ldr	r3, .L40
 346 001c 0A4D     		ldr	r5, .L40+4
 347 001e 03EA0222 		and	r2, r3, r2, lsl #8
 348 0022 C9B2     		uxtb	r1, r1
 349 0024 42F0B442 		orr	r2, r2, #1509949440
 350 0028 0023     		movs	r3, #0
 351 002a 1143     		orrs	r1, r1, r2
 352 002c 2B70     		strb	r3, [r5]
 353 002e FFF7FEFF 		bl	efc_perform_fcr
 354 0032 002C     		cmp	r4, #0
 355 0034 EBD1     		bne	.L35
 356 0036 0123     		movs	r3, #1
 357 0038 2B70     		strb	r3, [r5]
 358              		.syntax unified
 359              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 360 003a BFF35F8F 		dmb
 361              	@ 0 "" 2
 362              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 363 003e 62B6     		cpsie i
 364              	@ 0 "" 2
 365              		.thumb
 366              		.syntax unified
 367 0040 38BD     		pop	{r3, r4, r5, pc}
 368              	.L41:
 369 0042 00BF     		.align	2
 370              	.L40:
 371 0044 00FFFF00 		.word	16776960
 372 0048 00000000 		.word	g_interrupt_enabled
 373              		.size	efc_perform_command, .-efc_perform_command
 374              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 375              		.align	2
 376              		.type	cpu_irq_critical_section_counter, %object
 377              		.size	cpu_irq_critical_section_counter, 4
 378              	cpu_irq_critical_section_counter:
 379 0000 00000000 		.space	4
 380              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 381              		.type	cpu_irq_prev_interrupt_state, %object
 382              		.size	cpu_irq_prev_interrupt_state, 1
 383              	cpu_irq_prev_interrupt_state:
 384 0000 00       		.space	1
 385              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
