ARM GAS  /tmp/cchU5wrh.s 			page 1


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
  14              		.section	.text.dacc_reset,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	dacc_reset
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	dacc_reset, %function
  23              	dacc_reset:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0123     		movs	r3, #1
  28 0002 0360     		str	r3, [r0]
  29 0004 7047     		bx	lr
  30              		.size	dacc_reset, .-dacc_reset
  31 0006 00BF     		.section	.text.dacc_set_trigger,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	dacc_set_trigger
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	dacc_set_trigger, %function
  40              	dacc_set_trigger:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 4368     		ldr	r3, [r0, #4]
  45 0002 4900     		lsls	r1, r1, #1
  46 0004 01F00E01 		and	r1, r1, #14
  47 0008 23F00E03 		bic	r3, r3, #14
  48 000c 41F00101 		orr	r1, r1, #1
  49 0010 1943     		orrs	r1, r1, r3
  50 0012 4160     		str	r1, [r0, #4]
  51 0014 0020     		movs	r0, #0
  52 0016 7047     		bx	lr
  53              		.size	dacc_set_trigger, .-dacc_set_trigger
  54              		.section	.text.dacc_disable_trigger,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	dacc_disable_trigger
ARM GAS  /tmp/cchU5wrh.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	dacc_disable_trigger, %function
  63              	dacc_disable_trigger:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 4368     		ldr	r3, [r0, #4]
  68 0002 23F00103 		bic	r3, r3, #1
  69 0006 4360     		str	r3, [r0, #4]
  70 0008 7047     		bx	lr
  71              		.size	dacc_disable_trigger, .-dacc_disable_trigger
  72 000a 00BF     		.section	.text.dacc_set_transfer_mode,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	dacc_set_transfer_mode
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	dacc_set_transfer_mode, %function
  81              	dacc_set_transfer_mode:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 4368     		ldr	r3, [r0, #4]
  86 0002 43F48073 		orr	r3, r3, #256
  87 0006 4360     		str	r3, [r0, #4]
  88 0008 4368     		ldr	r3, [r0, #4]
  89 000a 21B9     		cbnz	r1, .L8
  90 000c 23F01003 		bic	r3, r3, #16
  91 0010 4360     		str	r3, [r0, #4]
  92 0012 0020     		movs	r0, #0
  93 0014 7047     		bx	lr
  94              	.L8:
  95 0016 43F01003 		orr	r3, r3, #16
  96 001a 4360     		str	r3, [r0, #4]
  97 001c 0020     		movs	r0, #0
  98 001e 7047     		bx	lr
  99              		.size	dacc_set_transfer_mode, .-dacc_set_transfer_mode
 100              		.section	.text.dacc_enable_interrupt,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	dacc_enable_interrupt
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	dacc_enable_interrupt, %function
 109              	dacc_enable_interrupt:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 4162     		str	r1, [r0, #36]
 114 0002 7047     		bx	lr
ARM GAS  /tmp/cchU5wrh.s 			page 3


 115              		.size	dacc_enable_interrupt, .-dacc_enable_interrupt
 116              		.section	.text.dacc_disable_interrupt,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	dacc_disable_interrupt
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	dacc_disable_interrupt, %function
 125              	dacc_disable_interrupt:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 8162     		str	r1, [r0, #40]
 130 0002 7047     		bx	lr
 131              		.size	dacc_disable_interrupt, .-dacc_disable_interrupt
 132              		.section	.text.dacc_get_interrupt_mask,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	dacc_get_interrupt_mask
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	dacc_get_interrupt_mask, %function
 141              	dacc_get_interrupt_mask:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 C06A     		ldr	r0, [r0, #44]
 146 0002 7047     		bx	lr
 147              		.size	dacc_get_interrupt_mask, .-dacc_get_interrupt_mask
 148              		.section	.text.dacc_get_interrupt_status,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	dacc_get_interrupt_status
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	dacc_get_interrupt_status, %function
 157              	dacc_get_interrupt_status:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 006B     		ldr	r0, [r0, #48]
 162 0002 7047     		bx	lr
 163              		.size	dacc_get_interrupt_status, .-dacc_get_interrupt_status
 164              		.section	.text.dacc_write_conversion_data,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	dacc_write_conversion_data
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cchU5wrh.s 			page 4


 172              		.type	dacc_write_conversion_data, %function
 173              	dacc_write_conversion_data:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177 0000 0162     		str	r1, [r0, #32]
 178 0002 7047     		bx	lr
 179              		.size	dacc_write_conversion_data, .-dacc_write_conversion_data
 180              		.section	.text.dacc_set_writeprotect,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	dacc_set_writeprotect
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	dacc_set_writeprotect, %function
 189              	dacc_set_writeprotect:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 19B9     		cbnz	r1, .L17
 194 0002 044B     		ldr	r3, .L18
 195 0004 C0F8E430 		str	r3, [r0, #228]
 196 0008 7047     		bx	lr
 197              	.L17:
 198 000a 034B     		ldr	r3, .L18+4
 199 000c C0F8E430 		str	r3, [r0, #228]
 200 0010 7047     		bx	lr
 201              	.L19:
 202 0012 00BF     		.align	2
 203              	.L18:
 204 0014 00434144 		.word	1145127680
 205 0018 01434144 		.word	1145127681
 206              		.size	dacc_set_writeprotect, .-dacc_set_writeprotect
 207              		.section	.text.dacc_get_writeprotect_status,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	dacc_get_writeprotect_status
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	dacc_get_writeprotect_status, %function
 216              	dacc_get_writeprotect_status:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 D0F8E800 		ldr	r0, [r0, #232]
 221 0004 7047     		bx	lr
 222              		.size	dacc_get_writeprotect_status, .-dacc_get_writeprotect_status
 223 0006 00BF     		.section	.text.dacc_get_pdc_base,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	dacc_get_pdc_base
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/cchU5wrh.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	dacc_get_pdc_base, %function
 232              	dacc_get_pdc_base:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              		@ link register save eliminated.
 236 0000 0048     		ldr	r0, .L22
 237 0002 7047     		bx	lr
 238              	.L23:
 239              		.align	2
 240              	.L22:
 241 0004 00810B40 		.word	1074495744
 242              		.size	dacc_get_pdc_base, .-dacc_get_pdc_base
 243              		.section	.text.dacc_set_channel_selection,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	dacc_set_channel_selection
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	dacc_set_channel_selection, %function
 252              	dacc_set_channel_selection:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 0129     		cmp	r1, #1
 257 0002 4368     		ldr	r3, [r0, #4]
 258 0004 01D9     		bls	.L27
 259 0006 0120     		movs	r0, #1
 260 0008 7047     		bx	lr
 261              	.L27:
 262 000a 23F49813 		bic	r3, r3, #1245184
 263 000e 43EA0141 		orr	r1, r3, r1, lsl #16
 264 0012 4160     		str	r1, [r0, #4]
 265 0014 0020     		movs	r0, #0
 266 0016 7047     		bx	lr
 267              		.size	dacc_set_channel_selection, .-dacc_set_channel_selection
 268              		.section	.text.dacc_enable_flexible_selection,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	dacc_enable_flexible_selection
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	dacc_enable_flexible_selection, %function
 277              	dacc_enable_flexible_selection:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 4368     		ldr	r3, [r0, #4]
 282 0002 43F48013 		orr	r3, r3, #1048576
 283 0006 4360     		str	r3, [r0, #4]
 284 0008 7047     		bx	lr
 285              		.size	dacc_enable_flexible_selection, .-dacc_enable_flexible_selection
ARM GAS  /tmp/cchU5wrh.s 			page 6


 286 000a 00BF     		.section	.text.dacc_set_timing,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	dacc_set_timing
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv4-sp-d16
 294              		.type	dacc_set_timing, %function
 295              	dacc_set_timing:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 4368     		ldr	r3, [r0, #4]
 300 0002 41B9     		cbnz	r1, .L32
 301 0004 0749     		ldr	r1, .L33
 302 0006 1940     		ands	r1, r1, r3
 303              	.L31:
 304 0008 1206     		lsls	r2, r2, #24
 305 000a 02F07C52 		and	r2, r2, #1056964608
 306 000e 0A43     		orrs	r2, r2, r1
 307 0010 4260     		str	r2, [r0, #4]
 308 0012 0020     		movs	r0, #0
 309 0014 7047     		bx	lr
 310              	.L32:
 311 0016 23F07C53 		bic	r3, r3, #1056964608
 312 001a 23F47F43 		bic	r3, r3, #65280
 313 001e 43F40011 		orr	r1, r3, #2097152
 314 0022 F1E7     		b	.L31
 315              	.L34:
 316              		.align	2
 317              	.L33:
 318 0024 FF00DFC0 		.word	-1059127041
 319              		.size	dacc_set_timing, .-dacc_set_timing
 320              		.section	.text.dacc_enable_channel,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	dacc_enable_channel
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 328              		.type	dacc_enable_channel, %function
 329              	dacc_enable_channel:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              		@ link register save eliminated.
 333 0000 0129     		cmp	r1, #1
 334 0002 01D9     		bls	.L38
 335 0004 0120     		movs	r0, #1
 336 0006 7047     		bx	lr
 337              	.L38:
 338 0008 0123     		movs	r3, #1
 339 000a 03FA01F1 		lsl	r1, r3, r1
 340 000e 0161     		str	r1, [r0, #16]
 341 0010 0020     		movs	r0, #0
 342 0012 7047     		bx	lr
ARM GAS  /tmp/cchU5wrh.s 			page 7


 343              		.size	dacc_enable_channel, .-dacc_enable_channel
 344              		.section	.text.dacc_disable_channel,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	dacc_disable_channel
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	dacc_disable_channel, %function
 353              	dacc_disable_channel:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356              		@ link register save eliminated.
 357 0000 0129     		cmp	r1, #1
 358 0002 01D9     		bls	.L42
 359 0004 0120     		movs	r0, #1
 360 0006 7047     		bx	lr
 361              	.L42:
 362 0008 0123     		movs	r3, #1
 363 000a 03FA01F1 		lsl	r1, r3, r1
 364 000e 4161     		str	r1, [r0, #20]
 365 0010 0020     		movs	r0, #0
 366 0012 7047     		bx	lr
 367              		.size	dacc_disable_channel, .-dacc_disable_channel
 368              		.section	.text.dacc_get_channel_status,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	dacc_get_channel_status
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	dacc_get_channel_status, %function
 377              	dacc_get_channel_status:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 8069     		ldr	r0, [r0, #24]
 382 0002 7047     		bx	lr
 383              		.size	dacc_get_channel_status, .-dacc_get_channel_status
 384              		.section	.text.dacc_set_analog_control,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	dacc_set_analog_control
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu fpv4-sp-d16
 392              		.type	dacc_set_analog_control, %function
 393              	dacc_set_analog_control:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 C0F89410 		str	r1, [r0, #148]
 398 0004 0020     		movs	r0, #0
 399 0006 7047     		bx	lr
ARM GAS  /tmp/cchU5wrh.s 			page 8


 400              		.size	dacc_set_analog_control, .-dacc_set_analog_control
 401              		.section	.text.dacc_get_analog_control,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	dacc_get_analog_control
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	dacc_get_analog_control, %function
 410              	dacc_get_analog_control:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 D0F89400 		ldr	r0, [r0, #148]
 415 0004 7047     		bx	lr
 416              		.size	dacc_get_analog_control, .-dacc_get_analog_control
 417 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 418              		.align	2
 419              		.type	cpu_irq_critical_section_counter, %object
 420              		.size	cpu_irq_critical_section_counter, 4
 421              	cpu_irq_critical_section_counter:
 422 0000 00000000 		.space	4
 423              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 424              		.type	cpu_irq_prev_interrupt_state, %object
 425              		.size	cpu_irq_prev_interrupt_state, 1
 426              	cpu_irq_prev_interrupt_state:
 427 0000 00       		.space	1
 428              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
