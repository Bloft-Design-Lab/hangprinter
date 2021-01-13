ARM GAS  /tmp/ccBWFTBw.s 			page 1


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
  11              		.file	"dacc.c"
  12              		.section	.text.dacc_reset,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	dacc_reset
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	dacc_reset, %function
  21              	dacc_reset:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0123     		movs	r3, #1
  26 0002 0360     		str	r3, [r0]
  27 0004 7047     		bx	lr
  28              		.size	dacc_reset, .-dacc_reset
  29 0006 00BF     		.section	.text.dacc_set_trigger,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	dacc_set_trigger
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	dacc_set_trigger, %function
  38              	dacc_set_trigger:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 4368     		ldr	r3, [r0, #4]
  43 0002 4900     		lsls	r1, r1, #1
  44 0004 01F00E01 		and	r1, r1, #14
  45 0008 23F00E03 		bic	r3, r3, #14
  46 000c 41F00101 		orr	r1, r1, #1
  47 0010 1943     		orrs	r1, r1, r3
  48 0012 4160     		str	r1, [r0, #4]
  49 0014 0020     		movs	r0, #0
  50 0016 7047     		bx	lr
  51              		.size	dacc_set_trigger, .-dacc_set_trigger
  52              		.section	.text.dacc_disable_trigger,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	dacc_disable_trigger
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccBWFTBw.s 			page 2


  58              		.thumb_func
  59              		.fpu softvfp
  60              		.type	dacc_disable_trigger, %function
  61              	dacc_disable_trigger:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 4368     		ldr	r3, [r0, #4]
  66 0002 23F00103 		bic	r3, r3, #1
  67 0006 4360     		str	r3, [r0, #4]
  68 0008 7047     		bx	lr
  69              		.size	dacc_disable_trigger, .-dacc_disable_trigger
  70 000a 00BF     		.section	.text.dacc_set_transfer_mode,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	dacc_set_transfer_mode
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
  78              		.type	dacc_set_transfer_mode, %function
  79              	dacc_set_transfer_mode:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 4368     		ldr	r3, [r0, #4]
  84 0002 21B9     		cbnz	r1, .L8
  85 0004 23F01003 		bic	r3, r3, #16
  86 0008 4360     		str	r3, [r0, #4]
  87 000a 0020     		movs	r0, #0
  88 000c 7047     		bx	lr
  89              	.L8:
  90 000e 43F01003 		orr	r3, r3, #16
  91 0012 4360     		str	r3, [r0, #4]
  92 0014 0020     		movs	r0, #0
  93 0016 7047     		bx	lr
  94              		.size	dacc_set_transfer_mode, .-dacc_set_transfer_mode
  95              		.section	.text.dacc_enable_interrupt,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	dacc_enable_interrupt
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu softvfp
 103              		.type	dacc_enable_interrupt, %function
 104              	dacc_enable_interrupt:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108 0000 4162     		str	r1, [r0, #36]
 109 0002 7047     		bx	lr
 110              		.size	dacc_enable_interrupt, .-dacc_enable_interrupt
 111              		.section	.text.dacc_disable_interrupt,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	dacc_disable_interrupt
ARM GAS  /tmp/ccBWFTBw.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu softvfp
 119              		.type	dacc_disable_interrupt, %function
 120              	dacc_disable_interrupt:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123              		@ link register save eliminated.
 124 0000 8162     		str	r1, [r0, #40]
 125 0002 7047     		bx	lr
 126              		.size	dacc_disable_interrupt, .-dacc_disable_interrupt
 127              		.section	.text.dacc_get_interrupt_mask,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	dacc_get_interrupt_mask
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu softvfp
 135              		.type	dacc_get_interrupt_mask, %function
 136              	dacc_get_interrupt_mask:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 C06A     		ldr	r0, [r0, #44]
 141 0002 7047     		bx	lr
 142              		.size	dacc_get_interrupt_mask, .-dacc_get_interrupt_mask
 143              		.section	.text.dacc_get_interrupt_status,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	dacc_get_interrupt_status
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu softvfp
 151              		.type	dacc_get_interrupt_status, %function
 152              	dacc_get_interrupt_status:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0000 006B     		ldr	r0, [r0, #48]
 157 0002 7047     		bx	lr
 158              		.size	dacc_get_interrupt_status, .-dacc_get_interrupt_status
 159              		.section	.text.dacc_write_conversion_data,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	dacc_write_conversion_data
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu softvfp
 167              		.type	dacc_write_conversion_data, %function
 168              	dacc_write_conversion_data:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  /tmp/ccBWFTBw.s 			page 4


 172 0000 0162     		str	r1, [r0, #32]
 173 0002 7047     		bx	lr
 174              		.size	dacc_write_conversion_data, .-dacc_write_conversion_data
 175              		.section	.text.dacc_set_writeprotect,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	dacc_set_writeprotect
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	dacc_set_writeprotect, %function
 184              	dacc_set_writeprotect:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 19B9     		cbnz	r1, .L17
 189 0002 044B     		ldr	r3, .L18
 190 0004 C0F8E430 		str	r3, [r0, #228]
 191 0008 7047     		bx	lr
 192              	.L17:
 193 000a 034B     		ldr	r3, .L18+4
 194 000c C0F8E430 		str	r3, [r0, #228]
 195 0010 7047     		bx	lr
 196              	.L19:
 197 0012 00BF     		.align	2
 198              	.L18:
 199 0014 00434144 		.word	1145127680
 200 0018 01434144 		.word	1145127681
 201              		.size	dacc_set_writeprotect, .-dacc_set_writeprotect
 202              		.section	.text.dacc_get_writeprotect_status,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	dacc_get_writeprotect_status
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu softvfp
 210              		.type	dacc_get_writeprotect_status, %function
 211              	dacc_get_writeprotect_status:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 D0F8E800 		ldr	r0, [r0, #232]
 216 0004 7047     		bx	lr
 217              		.size	dacc_get_writeprotect_status, .-dacc_get_writeprotect_status
 218 0006 00BF     		.section	.text.dacc_get_pdc_base,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	dacc_get_pdc_base
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu softvfp
 226              		.type	dacc_get_pdc_base, %function
 227              	dacc_get_pdc_base:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccBWFTBw.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 0048     		ldr	r0, .L22
 232 0002 7047     		bx	lr
 233              	.L23:
 234              		.align	2
 235              	.L22:
 236 0004 00810C40 		.word	1074561280
 237              		.size	dacc_get_pdc_base, .-dacc_get_pdc_base
 238              		.section	.text.dacc_set_channel_selection,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	dacc_set_channel_selection
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu softvfp
 246              		.type	dacc_set_channel_selection, %function
 247              	dacc_set_channel_selection:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 0129     		cmp	r1, #1
 252 0002 4368     		ldr	r3, [r0, #4]
 253 0004 01D9     		bls	.L27
 254 0006 0120     		movs	r0, #1
 255 0008 7047     		bx	lr
 256              	.L27:
 257 000a 23F49813 		bic	r3, r3, #1245184
 258 000e 43EA0141 		orr	r1, r3, r1, lsl #16
 259 0012 4160     		str	r1, [r0, #4]
 260 0014 0020     		movs	r0, #0
 261 0016 7047     		bx	lr
 262              		.size	dacc_set_channel_selection, .-dacc_set_channel_selection
 263              		.section	.text.dacc_enable_flexible_selection,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	dacc_enable_flexible_selection
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu softvfp
 271              		.type	dacc_enable_flexible_selection, %function
 272              	dacc_enable_flexible_selection:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 4368     		ldr	r3, [r0, #4]
 277 0002 43F48013 		orr	r3, r3, #1048576
 278 0006 4360     		str	r3, [r0, #4]
 279 0008 7047     		bx	lr
 280              		.size	dacc_enable_flexible_selection, .-dacc_enable_flexible_selection
 281 000a 00BF     		.section	.text.dacc_set_power_save,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	dacc_set_power_save
 285              		.syntax unified
ARM GAS  /tmp/ccBWFTBw.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu softvfp
 289              		.type	dacc_set_power_save, %function
 290              	dacc_set_power_save:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293              		@ link register save eliminated.
 294 0000 4368     		ldr	r3, [r0, #4]
 295 0002 49B1     		cbz	r1, .L30
 296 0004 43F02003 		orr	r3, r3, #32
 297 0008 4360     		str	r3, [r0, #4]
 298 000a 4368     		ldr	r3, [r0, #4]
 299 000c 52B9     		cbnz	r2, .L34
 300              	.L32:
 301 000e 23F04003 		bic	r3, r3, #64
 302 0012 4360     		str	r3, [r0, #4]
 303 0014 0020     		movs	r0, #0
 304 0016 7047     		bx	lr
 305              	.L30:
 306 0018 23F02003 		bic	r3, r3, #32
 307 001c 4360     		str	r3, [r0, #4]
 308 001e 4368     		ldr	r3, [r0, #4]
 309 0020 002A     		cmp	r2, #0
 310 0022 F4D0     		beq	.L32
 311              	.L34:
 312 0024 43F04003 		orr	r3, r3, #64
 313 0028 4360     		str	r3, [r0, #4]
 314 002a 0020     		movs	r0, #0
 315 002c 7047     		bx	lr
 316              		.size	dacc_set_power_save, .-dacc_set_power_save
 317 002e 00BF     		.section	.text.dacc_set_timing,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	dacc_set_timing
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu softvfp
 325              		.type	dacc_set_timing, %function
 326              	dacc_set_timing:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329              		@ link register save eliminated.
 330 0000 10B4     		push	{r4}
 331 0002 4468     		ldr	r4, [r0, #4]
 332 0004 0902     		lsls	r1, r1, #8
 333 0006 24F07C54 		bic	r4, r4, #1056964608
 334 000a 89B2     		uxth	r1, r1
 335 000c 24F47F44 		bic	r4, r4, #65280
 336 0010 2143     		orrs	r1, r1, r4
 337 0012 4AB9     		cbnz	r2, .L39
 338 0014 21F40011 		bic	r1, r1, #2097152
 339              	.L37:
 340 0018 1B06     		lsls	r3, r3, #24
 341 001a 03F07C53 		and	r3, r3, #1056964608
 342 001e 0B43     		orrs	r3, r3, r1
ARM GAS  /tmp/ccBWFTBw.s 			page 7


 343 0020 4360     		str	r3, [r0, #4]
 344 0022 10BC     		pop	{r4}
 345 0024 0020     		movs	r0, #0
 346 0026 7047     		bx	lr
 347              	.L39:
 348 0028 41F40011 		orr	r1, r1, #2097152
 349 002c F4E7     		b	.L37
 350              		.size	dacc_set_timing, .-dacc_set_timing
 351 002e 00BF     		.section	.text.dacc_enable_channel,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	dacc_enable_channel
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu softvfp
 359              		.type	dacc_enable_channel, %function
 360              	dacc_enable_channel:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 364 0000 0129     		cmp	r1, #1
 365 0002 01D9     		bls	.L43
 366 0004 0120     		movs	r0, #1
 367 0006 7047     		bx	lr
 368              	.L43:
 369 0008 0123     		movs	r3, #1
 370 000a 03FA01F1 		lsl	r1, r3, r1
 371 000e 0161     		str	r1, [r0, #16]
 372 0010 0020     		movs	r0, #0
 373 0012 7047     		bx	lr
 374              		.size	dacc_enable_channel, .-dacc_enable_channel
 375              		.section	.text.dacc_disable_channel,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	dacc_disable_channel
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu softvfp
 383              		.type	dacc_disable_channel, %function
 384              	dacc_disable_channel:
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388 0000 0129     		cmp	r1, #1
 389 0002 01D9     		bls	.L47
 390 0004 0120     		movs	r0, #1
 391 0006 7047     		bx	lr
 392              	.L47:
 393 0008 0123     		movs	r3, #1
 394 000a 03FA01F1 		lsl	r1, r3, r1
 395 000e 4161     		str	r1, [r0, #20]
 396 0010 0020     		movs	r0, #0
 397 0012 7047     		bx	lr
 398              		.size	dacc_disable_channel, .-dacc_disable_channel
 399              		.section	.text.dacc_get_channel_status,"ax",%progbits
ARM GAS  /tmp/ccBWFTBw.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	dacc_get_channel_status
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu softvfp
 407              		.type	dacc_get_channel_status, %function
 408              	dacc_get_channel_status:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411              		@ link register save eliminated.
 412 0000 8069     		ldr	r0, [r0, #24]
 413 0002 7047     		bx	lr
 414              		.size	dacc_get_channel_status, .-dacc_get_channel_status
 415              		.section	.text.dacc_set_analog_control,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	dacc_set_analog_control
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu softvfp
 423              		.type	dacc_set_analog_control, %function
 424              	dacc_set_analog_control:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 0346     		mov	r3, r0
 429 0002 0020     		movs	r0, #0
 430 0004 C3F89410 		str	r1, [r3, #148]
 431 0008 7047     		bx	lr
 432              		.size	dacc_set_analog_control, .-dacc_set_analog_control
 433 000a 00BF     		.section	.text.dacc_get_analog_control,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.global	dacc_get_analog_control
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu softvfp
 441              		.type	dacc_get_analog_control, %function
 442              	dacc_get_analog_control:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446 0000 D0F89400 		ldr	r0, [r0, #148]
 447 0004 7047     		bx	lr
 448              		.size	dacc_get_analog_control, .-dacc_get_analog_control
 449 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 450              		.align	2
 451              		.type	cpu_irq_critical_section_counter, %object
 452              		.size	cpu_irq_critical_section_counter, 4
 453              	cpu_irq_critical_section_counter:
 454 0000 00000000 		.space	4
 455              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 456              		.type	cpu_irq_prev_interrupt_state, %object
ARM GAS  /tmp/ccBWFTBw.s 			page 9


 457              		.size	cpu_irq_prev_interrupt_state, 1
 458              	cpu_irq_prev_interrupt_state:
 459 0000 00       		.space	1
 460              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
