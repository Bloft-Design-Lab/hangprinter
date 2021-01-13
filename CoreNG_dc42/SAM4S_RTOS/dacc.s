ARM GAS  /tmp/ccYb2mdJ.s 			page 1


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
ARM GAS  /tmp/ccYb2mdJ.s 			page 2


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
  84 0002 43F48073 		orr	r3, r3, #256
  85 0006 4360     		str	r3, [r0, #4]
  86 0008 4368     		ldr	r3, [r0, #4]
  87 000a 21B9     		cbnz	r1, .L8
  88 000c 23F01003 		bic	r3, r3, #16
  89 0010 4360     		str	r3, [r0, #4]
  90 0012 0020     		movs	r0, #0
  91 0014 7047     		bx	lr
  92              	.L8:
  93 0016 43F01003 		orr	r3, r3, #16
  94 001a 4360     		str	r3, [r0, #4]
  95 001c 0020     		movs	r0, #0
  96 001e 7047     		bx	lr
  97              		.size	dacc_set_transfer_mode, .-dacc_set_transfer_mode
  98              		.section	.text.dacc_enable_interrupt,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	dacc_enable_interrupt
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	dacc_enable_interrupt, %function
 107              	dacc_enable_interrupt:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 4162     		str	r1, [r0, #36]
 112 0002 7047     		bx	lr
 113              		.size	dacc_enable_interrupt, .-dacc_enable_interrupt
 114              		.section	.text.dacc_disable_interrupt,"ax",%progbits
ARM GAS  /tmp/ccYb2mdJ.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	dacc_disable_interrupt
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu softvfp
 122              		.type	dacc_disable_interrupt, %function
 123              	dacc_disable_interrupt:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 8162     		str	r1, [r0, #40]
 128 0002 7047     		bx	lr
 129              		.size	dacc_disable_interrupt, .-dacc_disable_interrupt
 130              		.section	.text.dacc_get_interrupt_mask,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	dacc_get_interrupt_mask
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	dacc_get_interrupt_mask, %function
 139              	dacc_get_interrupt_mask:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 C06A     		ldr	r0, [r0, #44]
 144 0002 7047     		bx	lr
 145              		.size	dacc_get_interrupt_mask, .-dacc_get_interrupt_mask
 146              		.section	.text.dacc_get_interrupt_status,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	dacc_get_interrupt_status
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu softvfp
 154              		.type	dacc_get_interrupt_status, %function
 155              	dacc_get_interrupt_status:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 006B     		ldr	r0, [r0, #48]
 160 0002 7047     		bx	lr
 161              		.size	dacc_get_interrupt_status, .-dacc_get_interrupt_status
 162              		.section	.text.dacc_write_conversion_data,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	dacc_write_conversion_data
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu softvfp
 170              		.type	dacc_write_conversion_data, %function
 171              	dacc_write_conversion_data:
ARM GAS  /tmp/ccYb2mdJ.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174              		@ link register save eliminated.
 175 0000 0162     		str	r1, [r0, #32]
 176 0002 7047     		bx	lr
 177              		.size	dacc_write_conversion_data, .-dacc_write_conversion_data
 178              		.section	.text.dacc_set_writeprotect,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	dacc_set_writeprotect
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	dacc_set_writeprotect, %function
 187              	dacc_set_writeprotect:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 19B9     		cbnz	r1, .L17
 192 0002 044B     		ldr	r3, .L18
 193 0004 C0F8E430 		str	r3, [r0, #228]
 194 0008 7047     		bx	lr
 195              	.L17:
 196 000a 034B     		ldr	r3, .L18+4
 197 000c C0F8E430 		str	r3, [r0, #228]
 198 0010 7047     		bx	lr
 199              	.L19:
 200 0012 00BF     		.align	2
 201              	.L18:
 202 0014 00434144 		.word	1145127680
 203 0018 01434144 		.word	1145127681
 204              		.size	dacc_set_writeprotect, .-dacc_set_writeprotect
 205              		.section	.text.dacc_get_writeprotect_status,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	dacc_get_writeprotect_status
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	dacc_get_writeprotect_status, %function
 214              	dacc_get_writeprotect_status:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 D0F8E800 		ldr	r0, [r0, #232]
 219 0004 7047     		bx	lr
 220              		.size	dacc_get_writeprotect_status, .-dacc_get_writeprotect_status
 221 0006 00BF     		.section	.text.dacc_get_pdc_base,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	dacc_get_pdc_base
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/ccYb2mdJ.s 			page 5


 229              		.type	dacc_get_pdc_base, %function
 230              	dacc_get_pdc_base:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0048     		ldr	r0, .L22
 235 0002 7047     		bx	lr
 236              	.L23:
 237              		.align	2
 238              	.L22:
 239 0004 00C10340 		.word	1073987840
 240              		.size	dacc_get_pdc_base, .-dacc_get_pdc_base
 241              		.section	.text.dacc_set_channel_selection,"ax",%progbits
 242              		.align	1
 243              		.p2align 2,,3
 244              		.global	dacc_set_channel_selection
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu softvfp
 249              		.type	dacc_set_channel_selection, %function
 250              	dacc_set_channel_selection:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 0129     		cmp	r1, #1
 255 0002 4368     		ldr	r3, [r0, #4]
 256 0004 01D9     		bls	.L27
 257 0006 0120     		movs	r0, #1
 258 0008 7047     		bx	lr
 259              	.L27:
 260 000a 23F49813 		bic	r3, r3, #1245184
 261 000e 43EA0141 		orr	r1, r3, r1, lsl #16
 262 0012 4160     		str	r1, [r0, #4]
 263 0014 0020     		movs	r0, #0
 264 0016 7047     		bx	lr
 265              		.size	dacc_set_channel_selection, .-dacc_set_channel_selection
 266              		.section	.text.dacc_enable_flexible_selection,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	dacc_enable_flexible_selection
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu softvfp
 274              		.type	dacc_enable_flexible_selection, %function
 275              	dacc_enable_flexible_selection:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279 0000 4368     		ldr	r3, [r0, #4]
 280 0002 43F48013 		orr	r3, r3, #1048576
 281 0006 4360     		str	r3, [r0, #4]
 282 0008 7047     		bx	lr
 283              		.size	dacc_enable_flexible_selection, .-dacc_enable_flexible_selection
 284 000a 00BF     		.section	.text.dacc_set_timing,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccYb2mdJ.s 			page 6


 286              		.p2align 2,,3
 287              		.global	dacc_set_timing
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu softvfp
 292              		.type	dacc_set_timing, %function
 293              	dacc_set_timing:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 10B4     		push	{r4}
 298 0002 4468     		ldr	r4, [r0, #4]
 299 0004 0902     		lsls	r1, r1, #8
 300 0006 24F07C54 		bic	r4, r4, #1056964608
 301 000a 89B2     		uxth	r1, r1
 302 000c 24F47F44 		bic	r4, r4, #65280
 303 0010 2143     		orrs	r1, r1, r4
 304 0012 4AB9     		cbnz	r2, .L33
 305 0014 21F40011 		bic	r1, r1, #2097152
 306              	.L31:
 307 0018 1B06     		lsls	r3, r3, #24
 308 001a 03F07C53 		and	r3, r3, #1056964608
 309 001e 0B43     		orrs	r3, r3, r1
 310 0020 4360     		str	r3, [r0, #4]
 311 0022 10BC     		pop	{r4}
 312 0024 0020     		movs	r0, #0
 313 0026 7047     		bx	lr
 314              	.L33:
 315 0028 41F40011 		orr	r1, r1, #2097152
 316 002c F4E7     		b	.L31
 317              		.size	dacc_set_timing, .-dacc_set_timing
 318 002e 00BF     		.section	.text.dacc_enable_channel,"ax",%progbits
 319              		.align	1
 320              		.p2align 2,,3
 321              		.global	dacc_enable_channel
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu softvfp
 326              		.type	dacc_enable_channel, %function
 327              	dacc_enable_channel:
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330              		@ link register save eliminated.
 331 0000 0129     		cmp	r1, #1
 332 0002 01D9     		bls	.L37
 333 0004 0120     		movs	r0, #1
 334 0006 7047     		bx	lr
 335              	.L37:
 336 0008 0123     		movs	r3, #1
 337 000a 03FA01F1 		lsl	r1, r3, r1
 338 000e 0161     		str	r1, [r0, #16]
 339 0010 0020     		movs	r0, #0
 340 0012 7047     		bx	lr
 341              		.size	dacc_enable_channel, .-dacc_enable_channel
 342              		.section	.text.dacc_disable_channel,"ax",%progbits
ARM GAS  /tmp/ccYb2mdJ.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.global	dacc_disable_channel
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu softvfp
 350              		.type	dacc_disable_channel, %function
 351              	dacc_disable_channel:
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354              		@ link register save eliminated.
 355 0000 0129     		cmp	r1, #1
 356 0002 01D9     		bls	.L41
 357 0004 0120     		movs	r0, #1
 358 0006 7047     		bx	lr
 359              	.L41:
 360 0008 0123     		movs	r3, #1
 361 000a 03FA01F1 		lsl	r1, r3, r1
 362 000e 4161     		str	r1, [r0, #20]
 363 0010 0020     		movs	r0, #0
 364 0012 7047     		bx	lr
 365              		.size	dacc_disable_channel, .-dacc_disable_channel
 366              		.section	.text.dacc_get_channel_status,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	dacc_get_channel_status
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu softvfp
 374              		.type	dacc_get_channel_status, %function
 375              	dacc_get_channel_status:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 8069     		ldr	r0, [r0, #24]
 380 0002 7047     		bx	lr
 381              		.size	dacc_get_channel_status, .-dacc_get_channel_status
 382              		.section	.text.dacc_set_analog_control,"ax",%progbits
 383              		.align	1
 384              		.p2align 2,,3
 385              		.global	dacc_set_analog_control
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu softvfp
 390              		.type	dacc_set_analog_control, %function
 391              	dacc_set_analog_control:
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394              		@ link register save eliminated.
 395 0000 C0F89410 		str	r1, [r0, #148]
 396 0004 0020     		movs	r0, #0
 397 0006 7047     		bx	lr
 398              		.size	dacc_set_analog_control, .-dacc_set_analog_control
 399              		.section	.text.dacc_get_analog_control,"ax",%progbits
ARM GAS  /tmp/ccYb2mdJ.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	dacc_get_analog_control
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu softvfp
 407              		.type	dacc_get_analog_control, %function
 408              	dacc_get_analog_control:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411              		@ link register save eliminated.
 412 0000 D0F89400 		ldr	r0, [r0, #148]
 413 0004 7047     		bx	lr
 414              		.size	dacc_get_analog_control, .-dacc_get_analog_control
 415 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 416              		.align	2
 417              		.type	cpu_irq_critical_section_counter, %object
 418              		.size	cpu_irq_critical_section_counter, 4
 419              	cpu_irq_critical_section_counter:
 420 0000 00000000 		.space	4
 421              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 422              		.type	cpu_irq_prev_interrupt_state, %object
 423              		.size	cpu_irq_prev_interrupt_state, 1
 424              	cpu_irq_prev_interrupt_state:
 425 0000 00       		.space	1
 426              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
