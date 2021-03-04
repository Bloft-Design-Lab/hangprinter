ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 1


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
  13              		.file	"supc.c"
  14              		.text
  15              		.section	.text.supc_enable_backup_mode,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	supc_enable_backup_mode
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	supc_enable_backup_mode, %function
  24              	supc_enable_backup_mode:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 034B     		ldr	r3, .L3
  29 0002 0360     		str	r3, [r0]
  30 0004 8368     		ldr	r3, [r0, #8]
  31              		.syntax unified
  32              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  33 0006 BFF34F8F 		dsb
  34              	@ 0 "" 2
  35              	@ 412 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  36 000a 20BF     		wfe
  37              	@ 0 "" 2
  38              	@ 401 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  39 000c 30BF     		wfi
  40              	@ 0 "" 2
  41              		.thumb
  42              		.syntax unified
  43 000e 7047     		bx	lr
  44              	.L4:
  45              		.align	2
  46              	.L3:
  47 0010 040000A5 		.word	-1526726652
  48              		.size	supc_enable_backup_mode, .-supc_enable_backup_mode
  49              		.section	.text.supc_enable_voltage_regulator,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	supc_enable_voltage_regulator
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	supc_enable_voltage_regulator, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 2


  58              	supc_enable_voltage_regulator:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 8368     		ldr	r3, [r0, #8]
  63 0002 23F07F43 		bic	r3, r3, #-16777216
  64 0006 23F48043 		bic	r3, r3, #16384
  65 000a 43F02543 		orr	r3, r3, #-1526726656
  66 000e 43F48043 		orr	r3, r3, #16384
  67 0012 8360     		str	r3, [r0, #8]
  68 0014 7047     		bx	lr
  69              		.size	supc_enable_voltage_regulator, .-supc_enable_voltage_regulator
  70 0016 00BF     		.section	.text.supc_disable_voltage_regulator,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	supc_disable_voltage_regulator
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	supc_disable_voltage_regulator, %function
  79              	supc_disable_voltage_regulator:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 8368     		ldr	r3, [r0, #8]
  84 0002 23F07F43 		bic	r3, r3, #-16777216
  85 0006 23F48043 		bic	r3, r3, #16384
  86 000a 43F02543 		orr	r3, r3, #-1526726656
  87 000e 8360     		str	r3, [r0, #8]
  88 0010 7047     		bx	lr
  89              		.size	supc_disable_voltage_regulator, .-supc_disable_voltage_regulator
  90 0012 00BF     		.section	.text.supc_switch_sclk_to_32kxtal,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	supc_switch_sclk_to_32kxtal
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	supc_switch_sclk_to_32kxtal, %function
  99              	supc_switch_sclk_to_32kxtal:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 8368     		ldr	r3, [r0, #8]
 104 0002 0129     		cmp	r1, #1
 105 0004 0BBF     		itete	eq
 106 0006 43F02543 		orreq	r3, r3, #-1526726656
 107 000a 23F02543 		bicne	r3, r3, #-1526726656
 108 000e 43F48013 		orreq	r3, r3, #1048576
 109 0012 23F48013 		bicne	r3, r3, #1048576
 110 0016 8360     		str	r3, [r0, #8]
 111 0018 0368     		ldr	r3, [r0]
 112 001a 43F02543 		orr	r3, r3, #-1526726656
 113 001e 43F00803 		orr	r3, r3, #8
 114 0022 0360     		str	r3, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 3


 115 0024 7047     		bx	lr
 116              		.size	supc_switch_sclk_to_32kxtal, .-supc_switch_sclk_to_32kxtal
 117 0026 00BF     		.section	.text.supc_enable_brownout_detector,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	supc_enable_brownout_detector
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	supc_enable_brownout_detector, %function
 126              	supc_enable_brownout_detector:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 8368     		ldr	r3, [r0, #8]
 131 0002 23F07F43 		bic	r3, r3, #-16777216
 132 0006 23F40053 		bic	r3, r3, #8192
 133 000a 43F02543 		orr	r3, r3, #-1526726656
 134 000e 8360     		str	r3, [r0, #8]
 135 0010 7047     		bx	lr
 136              		.size	supc_enable_brownout_detector, .-supc_enable_brownout_detector
 137 0012 00BF     		.section	.text.supc_disable_brownout_detector,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	supc_disable_brownout_detector
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	supc_disable_brownout_detector, %function
 146              	supc_disable_brownout_detector:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 8368     		ldr	r3, [r0, #8]
 151 0002 23F07F43 		bic	r3, r3, #-16777216
 152 0006 23F40053 		bic	r3, r3, #8192
 153 000a 43F02543 		orr	r3, r3, #-1526726656
 154 000e 43F40053 		orr	r3, r3, #8192
 155 0012 8360     		str	r3, [r0, #8]
 156 0014 7047     		bx	lr
 157              		.size	supc_disable_brownout_detector, .-supc_disable_brownout_detector
 158 0016 00BF     		.section	.text.supc_enable_brownout_reset,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	supc_enable_brownout_reset
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	supc_enable_brownout_reset, %function
 167              	supc_enable_brownout_reset:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 8368     		ldr	r3, [r0, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 4


 172 0002 23F07F43 		bic	r3, r3, #-16777216
 173 0006 23F48053 		bic	r3, r3, #4096
 174 000a 43F02543 		orr	r3, r3, #-1526726656
 175 000e 43F48053 		orr	r3, r3, #4096
 176 0012 8360     		str	r3, [r0, #8]
 177 0014 7047     		bx	lr
 178              		.size	supc_enable_brownout_reset, .-supc_enable_brownout_reset
 179 0016 00BF     		.section	.text.supc_disable_brownout_reset,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	supc_disable_brownout_reset
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv4-sp-d16
 187              		.type	supc_disable_brownout_reset, %function
 188              	supc_disable_brownout_reset:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 8368     		ldr	r3, [r0, #8]
 193 0002 23F07F43 		bic	r3, r3, #-16777216
 194 0006 23F48053 		bic	r3, r3, #4096
 195 000a 43F02543 		orr	r3, r3, #-1526726656
 196 000e 8360     		str	r3, [r0, #8]
 197 0010 7047     		bx	lr
 198              		.size	supc_disable_brownout_reset, .-supc_disable_brownout_reset
 199 0012 00BF     		.section	.text.supc_set_monitor_threshold,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	supc_set_monitor_threshold
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	supc_set_monitor_threshold, %function
 208              	supc_set_monitor_threshold:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              		@ link register save eliminated.
 212 0000 4368     		ldr	r3, [r0, #4]
 213 0002 01F00F01 		and	r1, r1, #15
 214 0006 23F00F03 		bic	r3, r3, #15
 215 000a 1943     		orrs	r1, r1, r3
 216 000c 4160     		str	r1, [r0, #4]
 217 000e 7047     		bx	lr
 218              		.size	supc_set_monitor_threshold, .-supc_set_monitor_threshold
 219              		.section	.text.supc_set_monitor_sampling_period,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	supc_set_monitor_sampling_period
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu fpv4-sp-d16
 227              		.type	supc_set_monitor_sampling_period, %function
 228              	supc_set_monitor_sampling_period:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232 0000 4368     		ldr	r3, [r0, #4]
 233 0002 01F4E061 		and	r1, r1, #1792
 234 0006 23F4E063 		bic	r3, r3, #1792
 235 000a 1943     		orrs	r1, r1, r3
 236 000c 4160     		str	r1, [r0, #4]
 237 000e 7047     		bx	lr
 238              		.size	supc_set_monitor_sampling_period, .-supc_set_monitor_sampling_period
 239              		.section	.text.supc_enable_monitor_reset,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	supc_enable_monitor_reset
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv4-sp-d16
 247              		.type	supc_enable_monitor_reset, %function
 248              	supc_enable_monitor_reset:
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251              		@ link register save eliminated.
 252 0000 4368     		ldr	r3, [r0, #4]
 253 0002 43F48053 		orr	r3, r3, #4096
 254 0006 4360     		str	r3, [r0, #4]
 255 0008 7047     		bx	lr
 256              		.size	supc_enable_monitor_reset, .-supc_enable_monitor_reset
 257 000a 00BF     		.section	.text.supc_disable_monitor_reset,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	supc_disable_monitor_reset
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	supc_disable_monitor_reset, %function
 266              	supc_disable_monitor_reset:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              		@ link register save eliminated.
 270 0000 4368     		ldr	r3, [r0, #4]
 271 0002 23F48053 		bic	r3, r3, #4096
 272 0006 4360     		str	r3, [r0, #4]
 273 0008 7047     		bx	lr
 274              		.size	supc_disable_monitor_reset, .-supc_disable_monitor_reset
 275 000a 00BF     		.section	.text.supc_enable_monitor_interrupt,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	supc_enable_monitor_interrupt
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu fpv4-sp-d16
 283              		.type	supc_enable_monitor_interrupt, %function
 284              	supc_enable_monitor_interrupt:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              		@ link register save eliminated.
 288 0000 4368     		ldr	r3, [r0, #4]
 289 0002 43F40053 		orr	r3, r3, #8192
 290 0006 4360     		str	r3, [r0, #4]
 291 0008 7047     		bx	lr
 292              		.size	supc_enable_monitor_interrupt, .-supc_enable_monitor_interrupt
 293 000a 00BF     		.section	.text.supc_disable_monitor_interrupt,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	supc_disable_monitor_interrupt
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 301              		.type	supc_disable_monitor_interrupt, %function
 302              	supc_disable_monitor_interrupt:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 4368     		ldr	r3, [r0, #4]
 307 0002 23F40053 		bic	r3, r3, #8192
 308 0006 4360     		str	r3, [r0, #4]
 309 0008 7047     		bx	lr
 310              		.size	supc_disable_monitor_interrupt, .-supc_disable_monitor_interrupt
 311 000a 00BF     		.section	.text.supc_set_wakeup_mode,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	supc_set_wakeup_mode
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	supc_set_wakeup_mode, %function
 320              	supc_set_wakeup_mode:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 C160     		str	r1, [r0, #12]
 325 0002 7047     		bx	lr
 326              		.size	supc_set_wakeup_mode, .-supc_set_wakeup_mode
 327              		.section	.text.supc_set_wakeup_inputs,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.global	supc_set_wakeup_inputs
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	supc_set_wakeup_inputs, %function
 336              	supc_set_wakeup_inputs:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 0A43     		orrs	r2, r2, r1
 341 0002 0261     		str	r2, [r0, #16]
 342 0004 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBnjreh.s 			page 7


 343              		.size	supc_set_wakeup_inputs, .-supc_set_wakeup_inputs
 344 0006 00BF     		.section	.text.supc_get_status,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	supc_get_status
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	supc_get_status, %function
 353              	supc_get_status:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356              		@ link register save eliminated.
 357 0000 4069     		ldr	r0, [r0, #20]
 358 0002 7047     		bx	lr
 359              		.size	supc_get_status, .-supc_get_status
 360              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 361              		.align	2
 362              		.type	cpu_irq_critical_section_counter, %object
 363              		.size	cpu_irq_critical_section_counter, 4
 364              	cpu_irq_critical_section_counter:
 365 0000 00000000 		.space	4
 366              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 367              		.type	cpu_irq_prev_interrupt_state, %object
 368              		.size	cpu_irq_prev_interrupt_state, 1
 369              	cpu_irq_prev_interrupt_state:
 370 0000 00       		.space	1
 371              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
