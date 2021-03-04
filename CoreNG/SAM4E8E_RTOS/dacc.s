ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 1


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
  13              		.file	"dacc.c"
  14              		.text
  15              		.section	.text.dacc_reset,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	dacc_reset
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	dacc_reset, %function
  24              	dacc_reset:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0123     		movs	r3, #1
  29 0002 0360     		str	r3, [r0]
  30 0004 7047     		bx	lr
  31              		.size	dacc_reset, .-dacc_reset
  32 0006 00BF     		.section	.text.dacc_set_trigger,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	dacc_set_trigger
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	dacc_set_trigger, %function
  41              	dacc_set_trigger:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 4368     		ldr	r3, [r0, #4]
  46 0002 4900     		lsls	r1, r1, #1
  47 0004 01F00E01 		and	r1, r1, #14
  48 0008 23F00E03 		bic	r3, r3, #14
  49 000c 41F00101 		orr	r1, r1, #1
  50 0010 1943     		orrs	r1, r1, r3
  51 0012 4160     		str	r1, [r0, #4]
  52 0014 0020     		movs	r0, #0
  53 0016 7047     		bx	lr
  54              		.size	dacc_set_trigger, .-dacc_set_trigger
  55              		.section	.text.dacc_disable_trigger,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 2


  58              		.global	dacc_disable_trigger
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	dacc_disable_trigger, %function
  64              	dacc_disable_trigger:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 4368     		ldr	r3, [r0, #4]
  69 0002 23F00103 		bic	r3, r3, #1
  70 0006 4360     		str	r3, [r0, #4]
  71 0008 7047     		bx	lr
  72              		.size	dacc_disable_trigger, .-dacc_disable_trigger
  73 000a 00BF     		.section	.text.dacc_set_transfer_mode,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	dacc_set_transfer_mode
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	dacc_set_transfer_mode, %function
  82              	dacc_set_transfer_mode:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 4368     		ldr	r3, [r0, #4]
  87 0002 43F48073 		orr	r3, r3, #256
  88 0006 4360     		str	r3, [r0, #4]
  89 0008 4368     		ldr	r3, [r0, #4]
  90 000a 21B9     		cbnz	r1, .L8
  91 000c 23F01003 		bic	r3, r3, #16
  92 0010 4360     		str	r3, [r0, #4]
  93 0012 0020     		movs	r0, #0
  94 0014 7047     		bx	lr
  95              	.L8:
  96 0016 43F01003 		orr	r3, r3, #16
  97 001a 4360     		str	r3, [r0, #4]
  98 001c 0020     		movs	r0, #0
  99 001e 7047     		bx	lr
 100              		.size	dacc_set_transfer_mode, .-dacc_set_transfer_mode
 101              		.section	.text.dacc_enable_interrupt,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	dacc_enable_interrupt
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	dacc_enable_interrupt, %function
 110              	dacc_enable_interrupt:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 4162     		str	r1, [r0, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 3


 115 0002 7047     		bx	lr
 116              		.size	dacc_enable_interrupt, .-dacc_enable_interrupt
 117              		.section	.text.dacc_disable_interrupt,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	dacc_disable_interrupt
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	dacc_disable_interrupt, %function
 126              	dacc_disable_interrupt:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 8162     		str	r1, [r0, #40]
 131 0002 7047     		bx	lr
 132              		.size	dacc_disable_interrupt, .-dacc_disable_interrupt
 133              		.section	.text.dacc_get_interrupt_mask,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	dacc_get_interrupt_mask
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	dacc_get_interrupt_mask, %function
 142              	dacc_get_interrupt_mask:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 C06A     		ldr	r0, [r0, #44]
 147 0002 7047     		bx	lr
 148              		.size	dacc_get_interrupt_mask, .-dacc_get_interrupt_mask
 149              		.section	.text.dacc_get_interrupt_status,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	dacc_get_interrupt_status
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	dacc_get_interrupt_status, %function
 158              	dacc_get_interrupt_status:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 006B     		ldr	r0, [r0, #48]
 163 0002 7047     		bx	lr
 164              		.size	dacc_get_interrupt_status, .-dacc_get_interrupt_status
 165              		.section	.text.dacc_write_conversion_data,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	dacc_write_conversion_data
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	dacc_write_conversion_data, %function
 174              	dacc_write_conversion_data:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 0162     		str	r1, [r0, #32]
 179 0002 7047     		bx	lr
 180              		.size	dacc_write_conversion_data, .-dacc_write_conversion_data
 181              		.section	.text.dacc_set_writeprotect,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	dacc_set_writeprotect
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	dacc_set_writeprotect, %function
 190              	dacc_set_writeprotect:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 19B9     		cbnz	r1, .L17
 195 0002 044B     		ldr	r3, .L18
 196 0004 C0F8E430 		str	r3, [r0, #228]
 197 0008 7047     		bx	lr
 198              	.L17:
 199 000a 034B     		ldr	r3, .L18+4
 200 000c C0F8E430 		str	r3, [r0, #228]
 201 0010 7047     		bx	lr
 202              	.L19:
 203 0012 00BF     		.align	2
 204              	.L18:
 205 0014 00434144 		.word	1145127680
 206 0018 01434144 		.word	1145127681
 207              		.size	dacc_set_writeprotect, .-dacc_set_writeprotect
 208              		.section	.text.dacc_get_writeprotect_status,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	dacc_get_writeprotect_status
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 216              		.type	dacc_get_writeprotect_status, %function
 217              	dacc_get_writeprotect_status:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 D0F8E800 		ldr	r0, [r0, #232]
 222 0004 7047     		bx	lr
 223              		.size	dacc_get_writeprotect_status, .-dacc_get_writeprotect_status
 224 0006 00BF     		.section	.text.dacc_get_pdc_base,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	dacc_get_pdc_base
 228              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu fpv4-sp-d16
 232              		.type	dacc_get_pdc_base, %function
 233              	dacc_get_pdc_base:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              		@ link register save eliminated.
 237 0000 0048     		ldr	r0, .L22
 238 0002 7047     		bx	lr
 239              	.L23:
 240              		.align	2
 241              	.L22:
 242 0004 00810B40 		.word	1074495744
 243              		.size	dacc_get_pdc_base, .-dacc_get_pdc_base
 244              		.section	.text.dacc_set_channel_selection,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	dacc_set_channel_selection
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	dacc_set_channel_selection, %function
 253              	dacc_set_channel_selection:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 0129     		cmp	r1, #1
 258 0002 4368     		ldr	r3, [r0, #4]
 259 0004 01D9     		bls	.L27
 260 0006 0120     		movs	r0, #1
 261 0008 7047     		bx	lr
 262              	.L27:
 263 000a 23F49813 		bic	r3, r3, #1245184
 264 000e 43EA0141 		orr	r1, r3, r1, lsl #16
 265 0012 4160     		str	r1, [r0, #4]
 266 0014 0020     		movs	r0, #0
 267 0016 7047     		bx	lr
 268              		.size	dacc_set_channel_selection, .-dacc_set_channel_selection
 269              		.section	.text.dacc_enable_flexible_selection,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	dacc_enable_flexible_selection
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu fpv4-sp-d16
 277              		.type	dacc_enable_flexible_selection, %function
 278              	dacc_enable_flexible_selection:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 4368     		ldr	r3, [r0, #4]
 283 0002 43F48013 		orr	r3, r3, #1048576
 284 0006 4360     		str	r3, [r0, #4]
 285 0008 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 6


 286              		.size	dacc_enable_flexible_selection, .-dacc_enable_flexible_selection
 287 000a 00BF     		.section	.text.dacc_set_timing,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	dacc_set_timing
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	dacc_set_timing, %function
 296              	dacc_set_timing:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 4368     		ldr	r3, [r0, #4]
 301 0002 41B9     		cbnz	r1, .L32
 302 0004 0749     		ldr	r1, .L33
 303 0006 1940     		ands	r1, r1, r3
 304              	.L31:
 305 0008 1206     		lsls	r2, r2, #24
 306 000a 02F07C52 		and	r2, r2, #1056964608
 307 000e 0A43     		orrs	r2, r2, r1
 308 0010 4260     		str	r2, [r0, #4]
 309 0012 0020     		movs	r0, #0
 310 0014 7047     		bx	lr
 311              	.L32:
 312 0016 23F07C53 		bic	r3, r3, #1056964608
 313 001a 23F47F43 		bic	r3, r3, #65280
 314 001e 43F40011 		orr	r1, r3, #2097152
 315 0022 F1E7     		b	.L31
 316              	.L34:
 317              		.align	2
 318              	.L33:
 319 0024 FF00DFC0 		.word	-1059127041
 320              		.size	dacc_set_timing, .-dacc_set_timing
 321              		.section	.text.dacc_enable_channel,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	dacc_enable_channel
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	dacc_enable_channel, %function
 330              	dacc_enable_channel:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 0129     		cmp	r1, #1
 335 0002 01D9     		bls	.L38
 336 0004 0120     		movs	r0, #1
 337 0006 7047     		bx	lr
 338              	.L38:
 339 0008 0123     		movs	r3, #1
 340 000a 03FA01F1 		lsl	r1, r3, r1
 341 000e 0161     		str	r1, [r0, #16]
 342 0010 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 7


 343 0012 7047     		bx	lr
 344              		.size	dacc_enable_channel, .-dacc_enable_channel
 345              		.section	.text.dacc_disable_channel,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	dacc_disable_channel
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	dacc_disable_channel, %function
 354              	dacc_disable_channel:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 0129     		cmp	r1, #1
 359 0002 01D9     		bls	.L42
 360 0004 0120     		movs	r0, #1
 361 0006 7047     		bx	lr
 362              	.L42:
 363 0008 0123     		movs	r3, #1
 364 000a 03FA01F1 		lsl	r1, r3, r1
 365 000e 4161     		str	r1, [r0, #20]
 366 0010 0020     		movs	r0, #0
 367 0012 7047     		bx	lr
 368              		.size	dacc_disable_channel, .-dacc_disable_channel
 369              		.section	.text.dacc_get_channel_status,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	dacc_get_channel_status
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	dacc_get_channel_status, %function
 378              	dacc_get_channel_status:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 8069     		ldr	r0, [r0, #24]
 383 0002 7047     		bx	lr
 384              		.size	dacc_get_channel_status, .-dacc_get_channel_status
 385              		.section	.text.dacc_set_analog_control,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	dacc_set_analog_control
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	dacc_set_analog_control, %function
 394              	dacc_set_analog_control:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 C0F89410 		str	r1, [r0, #148]
 399 0004 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZgceXL.s 			page 8


 400 0006 7047     		bx	lr
 401              		.size	dacc_set_analog_control, .-dacc_set_analog_control
 402              		.section	.text.dacc_get_analog_control,"ax",%progbits
 403              		.align	1
 404              		.p2align 2,,3
 405              		.global	dacc_get_analog_control
 406              		.syntax unified
 407              		.thumb
 408              		.thumb_func
 409              		.fpu fpv4-sp-d16
 410              		.type	dacc_get_analog_control, %function
 411              	dacc_get_analog_control:
 412              		@ args = 0, pretend = 0, frame = 0
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414              		@ link register save eliminated.
 415 0000 D0F89400 		ldr	r0, [r0, #148]
 416 0004 7047     		bx	lr
 417              		.size	dacc_get_analog_control, .-dacc_get_analog_control
 418 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 419              		.align	2
 420              		.type	cpu_irq_critical_section_counter, %object
 421              		.size	cpu_irq_critical_section_counter, 4
 422              	cpu_irq_critical_section_counter:
 423 0000 00000000 		.space	4
 424              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 425              		.type	cpu_irq_prev_interrupt_state, %object
 426              		.size	cpu_irq_prev_interrupt_state, 1
 427              	cpu_irq_prev_interrupt_state:
 428 0000 00       		.space	1
 429              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
