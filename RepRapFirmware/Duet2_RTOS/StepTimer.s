ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 1


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
  13              		.file	"StepTimer.cpp"
  14              		.text
  15              		.section	.text._ZN9StepTimer4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9StepTimer4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9StepTimer4InitEv, %function
  24              	_ZN9StepTimer4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0020     		movs	r0, #0
  29 0004 0F4C     		ldr	r4, .L4
  30 0006 FFF7FEFF 		bl	pmc_set_writeprotect
  31 000a 1720     		movs	r0, #23
  32 000c FFF7FEFF 		bl	pmc_enable_periph_clk
  33 0010 48F20342 		movw	r2, #33795
  34 0014 2046     		mov	r0, r4
  35 0016 0221     		movs	r1, #2
  36 0018 FFF7FEFF 		bl	tc_init
  37 001c 4FF0FF33 		mov	r3, #-1
  38 0020 C4F8A830 		str	r3, [r4, #168]
  39 0024 2046     		mov	r0, r4
  40 0026 0221     		movs	r1, #2
  41 0028 FFF7FEFF 		bl	tc_start
  42 002c 0221     		movs	r1, #2
  43 002e 2046     		mov	r0, r4
  44 0030 FFF7FEFF 		bl	tc_get_status
  45 0034 044B     		ldr	r3, .L4+4
  46 0036 6021     		movs	r1, #96
  47 0038 4FF40002 		mov	r2, #8388608
  48 003c 83F81713 		strb	r1, [r3, #791]
  49 0040 1A60     		str	r2, [r3]
  50 0042 10BD     		pop	{r4, pc}
  51              	.L5:
  52              		.align	2
  53              	.L4:
  54 0044 00000940 		.word	1074331648
  55 0048 00E100E0 		.word	-536813312
  56              		.size	_ZN9StepTimer4InitEv, .-_ZN9StepTimer4InitEv
  57              		.section	.text.hot._ZN9StepTimer21ScheduleStepInterruptEm,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZN9StepTimer21ScheduleStepInterruptEm
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZN9StepTimer21ScheduleStepInterruptEm, %function
  66              	_ZN9StepTimer21ScheduleStepInterruptEm:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 30B4     		push	{r4, r5}
  71              		.syntax unified
  72              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  73 0002 EFF31085 		MRS r5, primask
  74              	@ 0 "" 2
  75              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  76 0006 72B6     		cpsid i
  77              	@ 0 "" 2
  78              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  79 0008 BFF35F8F 		dmb
  80              	@ 0 "" 2
  81              		.thumb
  82              		.syntax unified
  83 000c 114C     		ldr	r4, .L14
  84 000e 1249     		ldr	r1, .L14+4
  85 0010 0023     		movs	r3, #0
  86 0012 2370     		strb	r3, [r4]
  87 0014 D1F89020 		ldr	r2, [r1, #144]
  88 0018 821A     		subs	r2, r0, r2
  89 001a 052A     		cmp	r2, #5
  90 001c 03DC     		bgt	.L7
  91 001e 0120     		movs	r0, #1
  92 0020 95B1     		cbz	r5, .L12
  93 0022 30BC     		pop	{r4, r5}
  94 0024 7047     		bx	lr
  95              	.L7:
  96 0026 0422     		movs	r2, #4
  97 0028 C1F89400 		str	r0, [r1, #148]
  98 002c C1F8A420 		str	r2, [r1, #164]
  99 0030 15B1     		cbz	r5, .L13
 100 0032 1846     		mov	r0, r3
 101 0034 30BC     		pop	{r4, r5}
 102 0036 7047     		bx	lr
 103              	.L13:
 104 0038 0123     		movs	r3, #1
 105 003a 2370     		strb	r3, [r4]
 106              		.syntax unified
 107              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 108 003c BFF35F8F 		dmb
 109              	@ 0 "" 2
 110              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 111 0040 62B6     		cpsie i
 112              	@ 0 "" 2
 113              		.thumb
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 3


 115 0042 2846     		mov	r0, r5
 116 0044 30BC     		pop	{r4, r5}
 117 0046 7047     		bx	lr
 118              	.L12:
 119 0048 2070     		strb	r0, [r4]
 120              		.syntax unified
 121              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 122 004a BFF35F8F 		dmb
 123              	@ 0 "" 2
 124              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 125 004e 62B6     		cpsie i
 126              	@ 0 "" 2
 127              		.thumb
 128              		.syntax unified
 129 0050 30BC     		pop	{r4, r5}
 130 0052 7047     		bx	lr
 131              	.L15:
 132              		.align	2
 133              	.L14:
 134 0054 00000000 		.word	g_interrupt_enabled
 135 0058 00000940 		.word	1074331648
 136              		.size	_ZN9StepTimer21ScheduleStepInterruptEm, .-_ZN9StepTimer21ScheduleStepInterruptEm
 137              		.section	.text._ZN9StepTimer20DisableStepInterruptEv,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	_ZN9StepTimer20DisableStepInterruptEv
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	_ZN9StepTimer20DisableStepInterruptEv, %function
 146              	_ZN9StepTimer20DisableStepInterruptEv:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 024B     		ldr	r3, .L17
 151 0002 0422     		movs	r2, #4
 152 0004 C3F8A820 		str	r2, [r3, #168]
 153 0008 7047     		bx	lr
 154              	.L18:
 155 000a 00BF     		.align	2
 156              	.L17:
 157 000c 00000940 		.word	1074331648
 158              		.size	_ZN9StepTimer20DisableStepInterruptEv, .-_ZN9StepTimer20DisableStepInterruptEv
 159              		.section	.text._ZN9StepTimer26ScheduleSoftTimerInterruptEm,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	_ZN9StepTimer26ScheduleSoftTimerInterruptEm
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	_ZN9StepTimer26ScheduleSoftTimerInterruptEm, %function
 168              	_ZN9StepTimer26ScheduleSoftTimerInterruptEm:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 4


 172 0000 30B4     		push	{r4, r5}
 173              		.syntax unified
 174              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 175 0002 EFF31085 		MRS r5, primask
 176              	@ 0 "" 2
 177              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 178 0006 72B6     		cpsid i
 179              	@ 0 "" 2
 180              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 181 0008 BFF35F8F 		dmb
 182              	@ 0 "" 2
 183              		.thumb
 184              		.syntax unified
 185 000c 114C     		ldr	r4, .L27
 186 000e 1249     		ldr	r1, .L27+4
 187 0010 0023     		movs	r3, #0
 188 0012 2370     		strb	r3, [r4]
 189 0014 D1F89020 		ldr	r2, [r1, #144]
 190 0018 821A     		subs	r2, r0, r2
 191 001a 052A     		cmp	r2, #5
 192 001c 03DC     		bgt	.L20
 193 001e 0120     		movs	r0, #1
 194 0020 95B1     		cbz	r5, .L25
 195 0022 30BC     		pop	{r4, r5}
 196 0024 7047     		bx	lr
 197              	.L20:
 198 0026 0822     		movs	r2, #8
 199 0028 C1F89800 		str	r0, [r1, #152]
 200 002c C1F8A420 		str	r2, [r1, #164]
 201 0030 15B1     		cbz	r5, .L26
 202 0032 1846     		mov	r0, r3
 203 0034 30BC     		pop	{r4, r5}
 204 0036 7047     		bx	lr
 205              	.L26:
 206 0038 0123     		movs	r3, #1
 207 003a 2370     		strb	r3, [r4]
 208              		.syntax unified
 209              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 210 003c BFF35F8F 		dmb
 211              	@ 0 "" 2
 212              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 213 0040 62B6     		cpsie i
 214              	@ 0 "" 2
 215              		.thumb
 216              		.syntax unified
 217 0042 2846     		mov	r0, r5
 218 0044 30BC     		pop	{r4, r5}
 219 0046 7047     		bx	lr
 220              	.L25:
 221 0048 2070     		strb	r0, [r4]
 222              		.syntax unified
 223              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 224 004a BFF35F8F 		dmb
 225              	@ 0 "" 2
 226              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 227 004e 62B6     		cpsie i
 228              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 5


 229              		.thumb
 230              		.syntax unified
 231 0050 30BC     		pop	{r4, r5}
 232 0052 7047     		bx	lr
 233              	.L28:
 234              		.align	2
 235              	.L27:
 236 0054 00000000 		.word	g_interrupt_enabled
 237 0058 00000940 		.word	1074331648
 238              		.size	_ZN9StepTimer26ScheduleSoftTimerInterruptEm, .-_ZN9StepTimer26ScheduleSoftTimerInterruptEm
 239              		.section	.text._ZN9StepTimer25DisableSoftTimerInterruptEv,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	_ZN9StepTimer25DisableSoftTimerInterruptEv
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv4-sp-d16
 247              		.type	_ZN9StepTimer25DisableSoftTimerInterruptEv, %function
 248              	_ZN9StepTimer25DisableSoftTimerInterruptEv:
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251              		@ link register save eliminated.
 252 0000 024B     		ldr	r3, .L30
 253 0002 0822     		movs	r2, #8
 254 0004 C3F8A820 		str	r2, [r3, #168]
 255 0008 7047     		bx	lr
 256              	.L31:
 257 000a 00BF     		.align	2
 258              	.L30:
 259 000c 00000940 		.word	1074331648
 260              		.size	_ZN9StepTimer25DisableSoftTimerInterruptEv, .-_ZN9StepTimer25DisableSoftTimerInterruptEv
 261              		.section	.text.hot.TC2_Handler,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	TC2_Handler
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	TC2_Handler, %function
 270              	TC2_Handler:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 38B5     		push	{r3, r4, r5, lr}
 274 0002 0F4B     		ldr	r3, .L45
 275 0004 D3F8A040 		ldr	r4, [r3, #160]
 276 0008 D3F8AC20 		ldr	r2, [r3, #172]
 277 000c 1440     		ands	r4, r4, r2
 278 000e 6207     		lsls	r2, r4, #29
 279 0010 0BD5     		bpl	.L33
 280 0012 0C49     		ldr	r1, .L45+4
 281 0014 0422     		movs	r2, #4
 282 0016 CD68     		ldr	r5, [r1, #12]	@ unaligned
 283 0018 C3F8A820 		str	r2, [r3, #168]
 284 001c 6B68     		ldr	r3, [r5, #4]
 285 001e 23B1     		cbz	r3, .L33
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccAvHxnW.s 			page 6


 286              	.L34:
 287 0020 6868     		ldr	r0, [r5, #4]
 288 0022 FFF7FEFF 		bl	_ZN3DDA4StepEv
 289 0026 0028     		cmp	r0, #0
 290 0028 FAD1     		bne	.L34
 291              	.L33:
 292 002a 2307     		lsls	r3, r4, #28
 293 002c 00D4     		bmi	.L44
 294 002e 38BD     		pop	{r3, r4, r5, pc}
 295              	.L44:
 296 0030 034B     		ldr	r3, .L45
 297 0032 0822     		movs	r2, #8
 298 0034 C3F8A820 		str	r2, [r3, #168]
 299 0038 BDE83840 		pop	{r3, r4, r5, lr}
 300 003c FFF7FEBF 		b	_ZN9SoftTimer9InterruptEv
 301              	.L46:
 302              		.align	2
 303              	.L45:
 304 0040 00000940 		.word	1074331648
 305 0044 00000000 		.word	reprap
 306              		.size	TC2_Handler, .-TC2_Handler
 307              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 308              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 309              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 310              	_ZL28cpu_irq_prev_interrupt_state:
 311 0000 00       		.space	1
 312              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 313              		.align	2
 314              		.type	_ZL32cpu_irq_critical_section_counter, %object
 315              		.size	_ZL32cpu_irq_critical_section_counter, 4
 316              	_ZL32cpu_irq_critical_section_counter:
 317 0000 00000000 		.space	4
 318              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
