ARM GAS  /tmp/ccVOX7kF.s 			page 1


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
  14              		.section	.text.supc_enable_backup_mode,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	supc_enable_backup_mode
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	supc_enable_backup_mode, %function
  23              	supc_enable_backup_mode:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 034B     		ldr	r3, .L2
  28 0002 0360     		str	r3, [r0]
  29 0004 8368     		ldr	r3, [r0, #8]
  30              		.syntax unified
  31              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  32 0006 BFF34F8F 		dsb
  33              	@ 0 "" 2
  34              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  35 000a 20BF     		wfe
  36              	@ 0 "" 2
  37              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  38 000c 30BF     		wfi
  39              	@ 0 "" 2
  40              		.thumb
  41              		.syntax unified
  42 000e 7047     		bx	lr
  43              	.L3:
  44              		.align	2
  45              	.L2:
  46 0010 040000A5 		.word	-1526726652
  47              		.size	supc_enable_backup_mode, .-supc_enable_backup_mode
  48              		.section	.text.supc_enable_voltage_regulator,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	supc_enable_voltage_regulator
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	supc_enable_voltage_regulator, %function
  57              	supc_enable_voltage_regulator:
ARM GAS  /tmp/ccVOX7kF.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 8368     		ldr	r3, [r0, #8]
  62 0002 23F07F43 		bic	r3, r3, #-16777216
  63 0006 23F48043 		bic	r3, r3, #16384
  64 000a 43F02543 		orr	r3, r3, #-1526726656
  65 000e 43F48043 		orr	r3, r3, #16384
  66 0012 8360     		str	r3, [r0, #8]
  67 0014 7047     		bx	lr
  68              		.size	supc_enable_voltage_regulator, .-supc_enable_voltage_regulator
  69 0016 00BF     		.section	.text.supc_disable_voltage_regulator,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	supc_disable_voltage_regulator
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	supc_disable_voltage_regulator, %function
  78              	supc_disable_voltage_regulator:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 8368     		ldr	r3, [r0, #8]
  83 0002 23F07F43 		bic	r3, r3, #-16777216
  84 0006 23F48043 		bic	r3, r3, #16384
  85 000a 43F02543 		orr	r3, r3, #-1526726656
  86 000e 8360     		str	r3, [r0, #8]
  87 0010 7047     		bx	lr
  88              		.size	supc_disable_voltage_regulator, .-supc_disable_voltage_regulator
  89 0012 00BF     		.section	.text.supc_switch_sclk_to_32kxtal,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	supc_switch_sclk_to_32kxtal
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	supc_switch_sclk_to_32kxtal, %function
  98              	supc_switch_sclk_to_32kxtal:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 8368     		ldr	r3, [r0, #8]
 103 0002 0129     		cmp	r1, #1
 104 0004 0BBF     		itete	eq
 105 0006 43F02543 		orreq	r3, r3, #-1526726656
 106 000a 23F02543 		bicne	r3, r3, #-1526726656
 107 000e 43F48013 		orreq	r3, r3, #1048576
 108 0012 23F48013 		bicne	r3, r3, #1048576
 109 0016 8360     		str	r3, [r0, #8]
 110 0018 0368     		ldr	r3, [r0]
 111 001a 43F02543 		orr	r3, r3, #-1526726656
 112 001e 43F00803 		orr	r3, r3, #8
 113 0022 0360     		str	r3, [r0]
 114 0024 7047     		bx	lr
ARM GAS  /tmp/ccVOX7kF.s 			page 3


 115              		.size	supc_switch_sclk_to_32kxtal, .-supc_switch_sclk_to_32kxtal
 116 0026 00BF     		.section	.text.supc_enable_brownout_detector,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	supc_enable_brownout_detector
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	supc_enable_brownout_detector, %function
 125              	supc_enable_brownout_detector:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 8368     		ldr	r3, [r0, #8]
 130 0002 23F07F43 		bic	r3, r3, #-16777216
 131 0006 23F40053 		bic	r3, r3, #8192
 132 000a 43F02543 		orr	r3, r3, #-1526726656
 133 000e 8360     		str	r3, [r0, #8]
 134 0010 7047     		bx	lr
 135              		.size	supc_enable_brownout_detector, .-supc_enable_brownout_detector
 136 0012 00BF     		.section	.text.supc_disable_brownout_detector,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	supc_disable_brownout_detector
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	supc_disable_brownout_detector, %function
 145              	supc_disable_brownout_detector:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149 0000 8368     		ldr	r3, [r0, #8]
 150 0002 23F07F43 		bic	r3, r3, #-16777216
 151 0006 23F40053 		bic	r3, r3, #8192
 152 000a 43F02543 		orr	r3, r3, #-1526726656
 153 000e 43F40053 		orr	r3, r3, #8192
 154 0012 8360     		str	r3, [r0, #8]
 155 0014 7047     		bx	lr
 156              		.size	supc_disable_brownout_detector, .-supc_disable_brownout_detector
 157 0016 00BF     		.section	.text.supc_enable_brownout_reset,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	supc_enable_brownout_reset
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv4-sp-d16
 165              		.type	supc_enable_brownout_reset, %function
 166              	supc_enable_brownout_reset:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              		@ link register save eliminated.
 170 0000 8368     		ldr	r3, [r0, #8]
 171 0002 23F07F43 		bic	r3, r3, #-16777216
ARM GAS  /tmp/ccVOX7kF.s 			page 4


 172 0006 23F48053 		bic	r3, r3, #4096
 173 000a 43F02543 		orr	r3, r3, #-1526726656
 174 000e 43F48053 		orr	r3, r3, #4096
 175 0012 8360     		str	r3, [r0, #8]
 176 0014 7047     		bx	lr
 177              		.size	supc_enable_brownout_reset, .-supc_enable_brownout_reset
 178 0016 00BF     		.section	.text.supc_disable_brownout_reset,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	supc_disable_brownout_reset
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	supc_disable_brownout_reset, %function
 187              	supc_disable_brownout_reset:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 8368     		ldr	r3, [r0, #8]
 192 0002 23F07F43 		bic	r3, r3, #-16777216
 193 0006 23F48053 		bic	r3, r3, #4096
 194 000a 43F02543 		orr	r3, r3, #-1526726656
 195 000e 8360     		str	r3, [r0, #8]
 196 0010 7047     		bx	lr
 197              		.size	supc_disable_brownout_reset, .-supc_disable_brownout_reset
 198 0012 00BF     		.section	.text.supc_set_monitor_threshold,"ax",%progbits
 199              		.align	1
 200              		.p2align 2,,3
 201              		.global	supc_set_monitor_threshold
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 206              		.type	supc_set_monitor_threshold, %function
 207              	supc_set_monitor_threshold:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              		@ link register save eliminated.
 211 0000 01F00F03 		and	r3, r1, #15
 212 0004 4168     		ldr	r1, [r0, #4]
 213 0006 21F00F01 		bic	r1, r1, #15
 214 000a 1943     		orrs	r1, r1, r3
 215 000c 4160     		str	r1, [r0, #4]
 216 000e 7047     		bx	lr
 217              		.size	supc_set_monitor_threshold, .-supc_set_monitor_threshold
 218              		.section	.text.supc_set_monitor_sampling_period,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	supc_set_monitor_sampling_period
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	supc_set_monitor_sampling_period, %function
 227              	supc_set_monitor_sampling_period:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccVOX7kF.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 01F4E063 		and	r3, r1, #1792
 232 0004 4168     		ldr	r1, [r0, #4]
 233 0006 21F4E061 		bic	r1, r1, #1792
 234 000a 1943     		orrs	r1, r1, r3
 235 000c 4160     		str	r1, [r0, #4]
 236 000e 7047     		bx	lr
 237              		.size	supc_set_monitor_sampling_period, .-supc_set_monitor_sampling_period
 238              		.section	.text.supc_enable_monitor_reset,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	supc_enable_monitor_reset
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	supc_enable_monitor_reset, %function
 247              	supc_enable_monitor_reset:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 4368     		ldr	r3, [r0, #4]
 252 0002 43F48053 		orr	r3, r3, #4096
 253 0006 4360     		str	r3, [r0, #4]
 254 0008 7047     		bx	lr
 255              		.size	supc_enable_monitor_reset, .-supc_enable_monitor_reset
 256 000a 00BF     		.section	.text.supc_disable_monitor_reset,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	supc_disable_monitor_reset
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 264              		.type	supc_disable_monitor_reset, %function
 265              	supc_disable_monitor_reset:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268              		@ link register save eliminated.
 269 0000 4368     		ldr	r3, [r0, #4]
 270 0002 23F48053 		bic	r3, r3, #4096
 271 0006 4360     		str	r3, [r0, #4]
 272 0008 7047     		bx	lr
 273              		.size	supc_disable_monitor_reset, .-supc_disable_monitor_reset
 274 000a 00BF     		.section	.text.supc_enable_monitor_interrupt,"ax",%progbits
 275              		.align	1
 276              		.p2align 2,,3
 277              		.global	supc_enable_monitor_interrupt
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	supc_enable_monitor_interrupt, %function
 283              	supc_enable_monitor_interrupt:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccVOX7kF.s 			page 6


 286              		@ link register save eliminated.
 287 0000 4368     		ldr	r3, [r0, #4]
 288 0002 43F40053 		orr	r3, r3, #8192
 289 0006 4360     		str	r3, [r0, #4]
 290 0008 7047     		bx	lr
 291              		.size	supc_enable_monitor_interrupt, .-supc_enable_monitor_interrupt
 292 000a 00BF     		.section	.text.supc_disable_monitor_interrupt,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	supc_disable_monitor_interrupt
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	supc_disable_monitor_interrupt, %function
 301              	supc_disable_monitor_interrupt:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304              		@ link register save eliminated.
 305 0000 4368     		ldr	r3, [r0, #4]
 306 0002 23F40053 		bic	r3, r3, #8192
 307 0006 4360     		str	r3, [r0, #4]
 308 0008 7047     		bx	lr
 309              		.size	supc_disable_monitor_interrupt, .-supc_disable_monitor_interrupt
 310 000a 00BF     		.section	.text.supc_set_wakeup_mode,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	supc_set_wakeup_mode
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu fpv4-sp-d16
 318              		.type	supc_set_wakeup_mode, %function
 319              	supc_set_wakeup_mode:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 C160     		str	r1, [r0, #12]
 324 0002 7047     		bx	lr
 325              		.size	supc_set_wakeup_mode, .-supc_set_wakeup_mode
 326              		.section	.text.supc_set_wakeup_inputs,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.global	supc_set_wakeup_inputs
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu fpv4-sp-d16
 334              		.type	supc_set_wakeup_inputs, %function
 335              	supc_set_wakeup_inputs:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338              		@ link register save eliminated.
 339 0000 0A43     		orrs	r2, r2, r1
 340 0002 0261     		str	r2, [r0, #16]
 341 0004 7047     		bx	lr
 342              		.size	supc_set_wakeup_inputs, .-supc_set_wakeup_inputs
ARM GAS  /tmp/ccVOX7kF.s 			page 7


 343 0006 00BF     		.section	.text.supc_get_status,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	supc_get_status
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	supc_get_status, %function
 352              	supc_get_status:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 4069     		ldr	r0, [r0, #20]
 357 0002 7047     		bx	lr
 358              		.size	supc_get_status, .-supc_get_status
 359              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 360              		.align	2
 361              		.type	cpu_irq_critical_section_counter, %object
 362              		.size	cpu_irq_critical_section_counter, 4
 363              	cpu_irq_critical_section_counter:
 364 0000 00000000 		.space	4
 365              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 366              		.type	cpu_irq_prev_interrupt_state, %object
 367              		.size	cpu_irq_prev_interrupt_state, 1
 368              	cpu_irq_prev_interrupt_state:
 369 0000 00       		.space	1
 370              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
