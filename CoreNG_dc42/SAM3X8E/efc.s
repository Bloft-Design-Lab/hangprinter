ARM GAS  /tmp/ccBrBNyL.s 			page 1


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
ARM GAS  /tmp/ccBrBNyL.s 			page 2


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
  91 0000 70B4     		push	{r4, r5, r6}
  92 0002 1C4C     		ldr	r4, .L21
  93 0004 83B0     		sub	sp, sp, #12
  94 0006 A042     		cmp	r0, r4
  95 0008 0CBF     		ite	eq
  96 000a 4FF40024 		moveq	r4, #524288
  97 000e 4FF44024 		movne	r4, #786432
  98 0012 069D     		ldr	r5, [sp, #24]
  99 0014 4BB3     		cbz	r3, .L14
 100 0016 0668     		ldr	r6, [r0]
 101 0018 C9B2     		uxtb	r1, r1
 102 001a 41F0B441 		orr	r1, r1, #1509949440
 103 001e 46F48036 		orr	r6, r6, #65536
 104 0022 0660     		str	r6, [r0]
 105 0024 4160     		str	r1, [r0, #4]
 106              	.L8:
 107 0026 8168     		ldr	r1, [r0, #8]
 108 0028 0191     		str	r1, [sp, #4]
 109 002a 0199     		ldr	r1, [sp, #4]
 110 002c C907     		lsls	r1, r1, #31
 111 002e FAD4     		bmi	.L8
 112 0030 4DB1     		cbz	r5, .L12
 113 0032 2146     		mov	r1, r4
 114 0034 043B     		subs	r3, r3, #4
ARM GAS  /tmp/ccBrBNyL.s 			page 3


 115 0036 04EB8505 		add	r5, r4, r5, lsl #2
 116              	.L11:
 117 003a 51F8044B 		ldr	r4, [r1], #4
 118 003e A942     		cmp	r1, r5
 119 0040 43F8044F 		str	r4, [r3, #4]!
 120 0044 F9D1     		bne	.L11
 121              	.L12:
 122 0046 D2B2     		uxtb	r2, r2
 123 0048 42F0B442 		orr	r2, r2, #1509949440
 124 004c 4260     		str	r2, [r0, #4]
 125              	.L10:
 126 004e 8368     		ldr	r3, [r0, #8]
 127 0050 0193     		str	r3, [sp, #4]
 128 0052 019B     		ldr	r3, [sp, #4]
 129 0054 DB07     		lsls	r3, r3, #31
 130 0056 FAD5     		bpl	.L10
 131 0058 0022     		movs	r2, #0
 132 005a 0368     		ldr	r3, [r0]
 133 005c 23F48033 		bic	r3, r3, #65536
 134 0060 0360     		str	r3, [r0]
 135 0062 1046     		mov	r0, r2
 136 0064 03B0     		add	sp, sp, #12
 137              		@ sp needed
 138 0066 70BC     		pop	{r4, r5, r6}
 139 0068 7047     		bx	lr
 140              	.L14:
 141 006a 0222     		movs	r2, #2
 142 006c 1046     		mov	r0, r2
 143 006e 03B0     		add	sp, sp, #12
 144              		@ sp needed
 145 0070 70BC     		pop	{r4, r5, r6}
 146 0072 7047     		bx	lr
 147              	.L22:
 148              		.align	2
 149              	.L21:
 150 0074 000A0E40 		.word	1074661888
 151              		.size	efc_perform_read_sequence, .-efc_perform_read_sequence
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	efc_write_fmr
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu softvfp
 159              		.type	efc_write_fmr, %function
 160              	efc_write_fmr:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0078 0160     		str	r1, [r0]
 165 007a 7047     		bx	lr
 166              		.size	efc_write_fmr, .-efc_write_fmr
 167              		.section	.text.efc_init,"ax",%progbits
 168              		.align	1
 169              		.p2align 2,,3
 170              		.global	efc_init
 171              		.syntax unified
ARM GAS  /tmp/ccBrBNyL.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu softvfp
 175              		.type	efc_init, %function
 176              	efc_init:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 08B5     		push	{r3, lr}
 180 0002 1202     		lsls	r2, r2, #8
 181 0004 02F47062 		and	r2, r2, #3840
 182 0008 1143     		orrs	r1, r1, r2
 183 000a FFF7FEFF 		bl	efc_write_fmr
 184 000e 0020     		movs	r0, #0
 185 0010 08BD     		pop	{r3, pc}
 186              		.size	efc_init, .-efc_init
 187 0012 00BF     		.section	.text.efc_enable_frdy_interrupt,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	efc_enable_frdy_interrupt
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu softvfp
 195              		.type	efc_enable_frdy_interrupt, %function
 196              	efc_enable_frdy_interrupt:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199              		@ link register save eliminated.
 200 0000 0168     		ldr	r1, [r0]
 201 0002 41F00101 		orr	r1, r1, #1
 202 0006 FFF7FEBF 		b	efc_write_fmr
 203              		.size	efc_enable_frdy_interrupt, .-efc_enable_frdy_interrupt
 204 000a 00BF     		.section	.text.efc_disable_frdy_interrupt,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	efc_disable_frdy_interrupt
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu softvfp
 212              		.type	efc_disable_frdy_interrupt, %function
 213              	efc_disable_frdy_interrupt:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0168     		ldr	r1, [r0]
 218 0002 21F00101 		bic	r1, r1, #1
 219 0006 FFF7FEBF 		b	efc_write_fmr
 220              		.size	efc_disable_frdy_interrupt, .-efc_disable_frdy_interrupt
 221 000a 00BF     		.section	.text.efc_set_flash_access_mode,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	efc_set_flash_access_mode
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/ccBrBNyL.s 			page 5


 229              		.type	efc_set_flash_access_mode, %function
 230              	efc_set_flash_access_mode:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0368     		ldr	r3, [r0]
 235 0002 23F08073 		bic	r3, r3, #16777216
 236 0006 1943     		orrs	r1, r1, r3
 237 0008 FFF7FEBF 		b	efc_write_fmr
 238              		.size	efc_set_flash_access_mode, .-efc_set_flash_access_mode
 239              		.section	.text.efc_set_wait_state,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	efc_set_wait_state
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu softvfp
 247              		.type	efc_set_wait_state, %function
 248              	efc_set_wait_state:
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251              		@ link register save eliminated.
 252 0000 0368     		ldr	r3, [r0]
 253 0002 0902     		lsls	r1, r1, #8
 254 0004 01F47061 		and	r1, r1, #3840
 255 0008 23F47063 		bic	r3, r3, #3840
 256 000c 1943     		orrs	r1, r1, r3
 257 000e FFF7FEBF 		b	efc_write_fmr
 258              		.size	efc_set_wait_state, .-efc_set_wait_state
 259 0012 00BF     		.section	.ramfunc
 260              		.align	1
 261              		.p2align 2,,3
 262              		.global	efc_perform_fcr
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu softvfp
 267              		.type	efc_perform_fcr, %function
 268              	efc_perform_fcr:
 269              		@ args = 0, pretend = 0, frame = 8
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 007c 82B0     		sub	sp, sp, #8
 273 007e 4160     		str	r1, [r0, #4]
 274              	.L31:
 275 0080 8368     		ldr	r3, [r0, #8]
 276 0082 0193     		str	r3, [sp, #4]
 277 0084 019B     		ldr	r3, [sp, #4]
 278 0086 DB07     		lsls	r3, r3, #31
 279 0088 FAD5     		bpl	.L31
 280 008a 0198     		ldr	r0, [sp, #4]
 281 008c 00F00600 		and	r0, r0, #6
 282 0090 02B0     		add	sp, sp, #8
 283              		@ sp needed
 284 0092 7047     		bx	lr
 285              		.size	efc_perform_fcr, .-efc_perform_fcr
ARM GAS  /tmp/ccBrBNyL.s 			page 6


 286              		.section	.text.efc_perform_command,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	efc_perform_command
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu softvfp
 294              		.type	efc_perform_command, %function
 295              	efc_perform_command:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 A1F10E03 		sub	r3, r1, #14
 299 0004 012B     		cmp	r3, #1
 300 0006 02D8     		bhi	.L42
 301 0008 4FF0FF30 		mov	r0, #-1
 302 000c 7047     		bx	lr
 303              	.L42:
 304 000e 70B5     		push	{r4, r5, r6, lr}
 305              		.syntax unified
 306              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 307 0010 EFF31084 		MRS r4, primask
 308              	@ 0 "" 2
 309              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 310 0014 72B6     		cpsid i
 311              	@ 0 "" 2
 312              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 313 0016 BFF35F8F 		dmb
 314              	@ 0 "" 2
 315              		.thumb
 316              		.syntax unified
 317 001a 0026     		movs	r6, #0
 318 001c 094B     		ldr	r3, .L43
 319 001e C9B2     		uxtb	r1, r1
 320 0020 03EA0222 		and	r2, r3, r2, lsl #8
 321 0024 42F0B442 		orr	r2, r2, #1509949440
 322 0028 074D     		ldr	r5, .L43+4
 323 002a 1143     		orrs	r1, r1, r2
 324 002c 2E70     		strb	r6, [r5]
 325 002e FFF7FEFF 		bl	efc_perform_fcr
 326 0032 2CB9     		cbnz	r4, .L35
 327 0034 0123     		movs	r3, #1
 328 0036 2B70     		strb	r3, [r5]
 329              		.syntax unified
 330              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 331 0038 BFF35F8F 		dmb
 332              	@ 0 "" 2
 333              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 334 003c 62B6     		cpsie i
 335              	@ 0 "" 2
 336              		.thumb
 337              		.syntax unified
 338 003e 70BD     		pop	{r4, r5, r6, pc}
 339              	.L35:
 340 0040 70BD     		pop	{r4, r5, r6, pc}
 341              	.L44:
 342 0042 00BF     		.align	2
ARM GAS  /tmp/ccBrBNyL.s 			page 7


 343              	.L43:
 344 0044 00FFFF00 		.word	16776960
 345 0048 00000000 		.word	g_interrupt_enabled
 346              		.size	efc_perform_command, .-efc_perform_command
 347              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 348              		.align	2
 349              		.type	cpu_irq_critical_section_counter, %object
 350              		.size	cpu_irq_critical_section_counter, 4
 351              	cpu_irq_critical_section_counter:
 352 0000 00000000 		.space	4
 353              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 354              		.type	cpu_irq_prev_interrupt_state, %object
 355              		.size	cpu_irq_prev_interrupt_state, 1
 356              	cpu_irq_prev_interrupt_state:
 357 0000 00       		.space	1
 358              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
