ARM GAS  /tmp/cc3JIeRQ.s 			page 1


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
  11              		.file	"supc.c"
  12              		.section	.text.supc_enable_backup_mode,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	supc_enable_backup_mode
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	supc_enable_backup_mode, %function
  21              	supc_enable_backup_mode:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 034B     		ldr	r3, .L2
  26 0002 0360     		str	r3, [r0]
  27 0004 8368     		ldr	r3, [r0, #8]
  28              		.syntax unified
  29              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  30 0006 BFF34F8F 		dsb
  31              	@ 0 "" 2
  32              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  33 000a 20BF     		wfe
  34              	@ 0 "" 2
  35              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  36 000c 30BF     		wfi
  37              	@ 0 "" 2
  38              		.thumb
  39              		.syntax unified
  40 000e 7047     		bx	lr
  41              	.L3:
  42              		.align	2
  43              	.L2:
  44 0010 040000A5 		.word	-1526726652
  45              		.size	supc_enable_backup_mode, .-supc_enable_backup_mode
  46              		.section	.text.supc_enable_voltage_regulator,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	supc_enable_voltage_regulator
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	supc_enable_voltage_regulator, %function
  55              	supc_enable_voltage_regulator:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc3JIeRQ.s 			page 2


  58              		@ link register save eliminated.
  59 0000 8368     		ldr	r3, [r0, #8]
  60 0002 23F07F43 		bic	r3, r3, #-16777216
  61 0006 23F48043 		bic	r3, r3, #16384
  62 000a 43F02543 		orr	r3, r3, #-1526726656
  63 000e 43F48043 		orr	r3, r3, #16384
  64 0012 8360     		str	r3, [r0, #8]
  65 0014 7047     		bx	lr
  66              		.size	supc_enable_voltage_regulator, .-supc_enable_voltage_regulator
  67 0016 00BF     		.section	.text.supc_disable_voltage_regulator,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	supc_disable_voltage_regulator
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu softvfp
  75              		.type	supc_disable_voltage_regulator, %function
  76              	supc_disable_voltage_regulator:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 8368     		ldr	r3, [r0, #8]
  81 0002 23F07F43 		bic	r3, r3, #-16777216
  82 0006 23F48043 		bic	r3, r3, #16384
  83 000a 43F02543 		orr	r3, r3, #-1526726656
  84 000e 8360     		str	r3, [r0, #8]
  85 0010 7047     		bx	lr
  86              		.size	supc_disable_voltage_regulator, .-supc_disable_voltage_regulator
  87 0012 00BF     		.section	.text.supc_switch_sclk_to_32kxtal,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	supc_switch_sclk_to_32kxtal
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu softvfp
  95              		.type	supc_switch_sclk_to_32kxtal, %function
  96              	supc_switch_sclk_to_32kxtal:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 8368     		ldr	r3, [r0, #8]
 101 0002 0129     		cmp	r1, #1
 102 0004 0BBF     		itete	eq
 103 0006 43F02543 		orreq	r3, r3, #-1526726656
 104 000a 23F02543 		bicne	r3, r3, #-1526726656
 105 000e 43F48013 		orreq	r3, r3, #1048576
 106 0012 23F48013 		bicne	r3, r3, #1048576
 107 0016 8360     		str	r3, [r0, #8]
 108 0018 0368     		ldr	r3, [r0]
 109 001a 43F02543 		orr	r3, r3, #-1526726656
 110 001e 43F00803 		orr	r3, r3, #8
 111 0022 0360     		str	r3, [r0]
 112 0024 7047     		bx	lr
 113              		.size	supc_switch_sclk_to_32kxtal, .-supc_switch_sclk_to_32kxtal
 114 0026 00BF     		.section	.text.supc_enable_brownout_detector,"ax",%progbits
ARM GAS  /tmp/cc3JIeRQ.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	supc_enable_brownout_detector
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu softvfp
 122              		.type	supc_enable_brownout_detector, %function
 123              	supc_enable_brownout_detector:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 8368     		ldr	r3, [r0, #8]
 128 0002 23F07F43 		bic	r3, r3, #-16777216
 129 0006 23F40053 		bic	r3, r3, #8192
 130 000a 43F02543 		orr	r3, r3, #-1526726656
 131 000e 8360     		str	r3, [r0, #8]
 132 0010 7047     		bx	lr
 133              		.size	supc_enable_brownout_detector, .-supc_enable_brownout_detector
 134 0012 00BF     		.section	.text.supc_disable_brownout_detector,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	supc_disable_brownout_detector
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu softvfp
 142              		.type	supc_disable_brownout_detector, %function
 143              	supc_disable_brownout_detector:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 8368     		ldr	r3, [r0, #8]
 148 0002 23F07F43 		bic	r3, r3, #-16777216
 149 0006 23F40053 		bic	r3, r3, #8192
 150 000a 43F02543 		orr	r3, r3, #-1526726656
 151 000e 43F40053 		orr	r3, r3, #8192
 152 0012 8360     		str	r3, [r0, #8]
 153 0014 7047     		bx	lr
 154              		.size	supc_disable_brownout_detector, .-supc_disable_brownout_detector
 155 0016 00BF     		.section	.text.supc_enable_brownout_reset,"ax",%progbits
 156              		.align	1
 157              		.p2align 2,,3
 158              		.global	supc_enable_brownout_reset
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu softvfp
 163              		.type	supc_enable_brownout_reset, %function
 164              	supc_enable_brownout_reset:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168 0000 8368     		ldr	r3, [r0, #8]
 169 0002 23F07F43 		bic	r3, r3, #-16777216
 170 0006 23F48053 		bic	r3, r3, #4096
 171 000a 43F02543 		orr	r3, r3, #-1526726656
ARM GAS  /tmp/cc3JIeRQ.s 			page 4


 172 000e 43F48053 		orr	r3, r3, #4096
 173 0012 8360     		str	r3, [r0, #8]
 174 0014 7047     		bx	lr
 175              		.size	supc_enable_brownout_reset, .-supc_enable_brownout_reset
 176 0016 00BF     		.section	.text.supc_disable_brownout_reset,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	supc_disable_brownout_reset
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu softvfp
 184              		.type	supc_disable_brownout_reset, %function
 185              	supc_disable_brownout_reset:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 8368     		ldr	r3, [r0, #8]
 190 0002 23F07F43 		bic	r3, r3, #-16777216
 191 0006 23F48053 		bic	r3, r3, #4096
 192 000a 43F02543 		orr	r3, r3, #-1526726656
 193 000e 8360     		str	r3, [r0, #8]
 194 0010 7047     		bx	lr
 195              		.size	supc_disable_brownout_reset, .-supc_disable_brownout_reset
 196 0012 00BF     		.section	.text.supc_set_monitor_threshold,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	supc_set_monitor_threshold
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu softvfp
 204              		.type	supc_set_monitor_threshold, %function
 205              	supc_set_monitor_threshold:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 4368     		ldr	r3, [r0, #4]
 210 0002 01F00F01 		and	r1, r1, #15
 211 0006 23F00F03 		bic	r3, r3, #15
 212 000a 0B43     		orrs	r3, r3, r1
 213 000c 4360     		str	r3, [r0, #4]
 214 000e 7047     		bx	lr
 215              		.size	supc_set_monitor_threshold, .-supc_set_monitor_threshold
 216              		.section	.text.supc_set_monitor_sampling_period,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	supc_set_monitor_sampling_period
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu softvfp
 224              		.type	supc_set_monitor_sampling_period, %function
 225              	supc_set_monitor_sampling_period:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  /tmp/cc3JIeRQ.s 			page 5


 229 0000 4368     		ldr	r3, [r0, #4]
 230 0002 01F4E061 		and	r1, r1, #1792
 231 0006 23F4E063 		bic	r3, r3, #1792
 232 000a 0B43     		orrs	r3, r3, r1
 233 000c 4360     		str	r3, [r0, #4]
 234 000e 7047     		bx	lr
 235              		.size	supc_set_monitor_sampling_period, .-supc_set_monitor_sampling_period
 236              		.section	.text.supc_enable_monitor_reset,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	supc_enable_monitor_reset
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu softvfp
 244              		.type	supc_enable_monitor_reset, %function
 245              	supc_enable_monitor_reset:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248              		@ link register save eliminated.
 249 0000 4368     		ldr	r3, [r0, #4]
 250 0002 43F48053 		orr	r3, r3, #4096
 251 0006 4360     		str	r3, [r0, #4]
 252 0008 7047     		bx	lr
 253              		.size	supc_enable_monitor_reset, .-supc_enable_monitor_reset
 254 000a 00BF     		.section	.text.supc_disable_monitor_reset,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	supc_disable_monitor_reset
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu softvfp
 262              		.type	supc_disable_monitor_reset, %function
 263              	supc_disable_monitor_reset:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266              		@ link register save eliminated.
 267 0000 4368     		ldr	r3, [r0, #4]
 268 0002 23F48053 		bic	r3, r3, #4096
 269 0006 4360     		str	r3, [r0, #4]
 270 0008 7047     		bx	lr
 271              		.size	supc_disable_monitor_reset, .-supc_disable_monitor_reset
 272 000a 00BF     		.section	.text.supc_enable_monitor_interrupt,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	supc_enable_monitor_interrupt
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu softvfp
 280              		.type	supc_enable_monitor_interrupt, %function
 281              	supc_enable_monitor_interrupt:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/cc3JIeRQ.s 			page 6


 286 0002 43F40053 		orr	r3, r3, #8192
 287 0006 4360     		str	r3, [r0, #4]
 288 0008 7047     		bx	lr
 289              		.size	supc_enable_monitor_interrupt, .-supc_enable_monitor_interrupt
 290 000a 00BF     		.section	.text.supc_disable_monitor_interrupt,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	supc_disable_monitor_interrupt
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu softvfp
 298              		.type	supc_disable_monitor_interrupt, %function
 299              	supc_disable_monitor_interrupt:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 303 0000 4368     		ldr	r3, [r0, #4]
 304 0002 23F40053 		bic	r3, r3, #8192
 305 0006 4360     		str	r3, [r0, #4]
 306 0008 7047     		bx	lr
 307              		.size	supc_disable_monitor_interrupt, .-supc_disable_monitor_interrupt
 308 000a 00BF     		.section	.text.supc_set_wakeup_mode,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	supc_set_wakeup_mode
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu softvfp
 316              		.type	supc_set_wakeup_mode, %function
 317              	supc_set_wakeup_mode:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		@ link register save eliminated.
 321 0000 C160     		str	r1, [r0, #12]
 322 0002 7047     		bx	lr
 323              		.size	supc_set_wakeup_mode, .-supc_set_wakeup_mode
 324              		.section	.text.supc_set_wakeup_inputs,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	supc_set_wakeup_inputs
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu softvfp
 332              		.type	supc_set_wakeup_inputs, %function
 333              	supc_set_wakeup_inputs:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 0A43     		orrs	r2, r2, r1
 338 0002 0261     		str	r2, [r0, #16]
 339 0004 7047     		bx	lr
 340              		.size	supc_set_wakeup_inputs, .-supc_set_wakeup_inputs
 341 0006 00BF     		.section	.text.supc_get_status,"ax",%progbits
 342              		.align	1
ARM GAS  /tmp/cc3JIeRQ.s 			page 7


 343              		.p2align 2,,3
 344              		.global	supc_get_status
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	supc_get_status, %function
 350              	supc_get_status:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354 0000 4069     		ldr	r0, [r0, #20]
 355 0002 7047     		bx	lr
 356              		.size	supc_get_status, .-supc_get_status
 357              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 358              		.align	2
 359              		.type	cpu_irq_critical_section_counter, %object
 360              		.size	cpu_irq_critical_section_counter, 4
 361              	cpu_irq_critical_section_counter:
 362 0000 00000000 		.space	4
 363              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 364              		.type	cpu_irq_prev_interrupt_state, %object
 365              		.size	cpu_irq_prev_interrupt_state, 1
 366              	cpu_irq_prev_interrupt_state:
 367 0000 00       		.space	1
 368              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
