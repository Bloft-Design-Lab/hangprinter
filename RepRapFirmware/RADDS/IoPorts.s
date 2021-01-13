ARM GAS  /tmp/ccBMFnXE.s 			page 1


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
  11              		.file	"IoPorts.cpp"
  12              		.section	.text._ZN6IoPortC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN6IoPortC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN6IoPortC2Ev, %function
  21              	_ZN6IoPortC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 4FF6FF72 		movw	r2, #65535
  26 0004 0021     		movs	r1, #0
  27 0006 0280     		strh	r2, [r0]	@ movhi
  28 0008 C170     		strb	r1, [r0, #3]
  29 000a 8270     		strb	r2, [r0, #2]
  30 000c 7047     		bx	lr
  31              		.size	_ZN6IoPortC2Ev, .-_ZN6IoPortC2Ev
  32              		.global	_ZN6IoPortC1Ev
  33              		.thumb_set _ZN6IoPortC1Ev,_ZN6IoPortC2Ev
  34 000e 00BF     		.section	.text._ZN6IoPort5ClearEv,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN6IoPort5ClearEv
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu softvfp
  42              		.type	_ZN6IoPort5ClearEv, %function
  43              	_ZN6IoPort5ClearEv:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 4FF6FF73 		movw	r3, #65535
  48 0004 0022     		movs	r2, #0
  49 0006 0380     		strh	r3, [r0]	@ movhi
  50 0008 C270     		strb	r2, [r0, #3]
  51 000a 8370     		strb	r3, [r0, #2]
  52 000c 7047     		bx	lr
  53              		.size	_ZN6IoPort5ClearEv, .-_ZN6IoPort5ClearEv
  54 000e 00BF     		.section	.text._ZN6IoPort3SetEt9PinAccessb,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	_ZN6IoPort3SetEt9PinAccessb
ARM GAS  /tmp/ccBMFnXE.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu softvfp
  62              		.type	_ZN6IoPort3SetEt9PinAccessb, %function
  63              	_ZN6IoPort3SetEt9PinAccessb:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66 0000 70B5     		push	{r4, r5, r6, lr}
  67 0002 0446     		mov	r4, r0
  68 0004 0B48     		ldr	r0, .L11
  69 0006 82B0     		sub	sp, sp, #8
  70 0008 E51C     		adds	r5, r4, #3
  71 000a 0068     		ldr	r0, [r0]	@ unaligned
  72 000c 1E46     		mov	r6, r3
  73 000e 0095     		str	r5, [sp]
  74 0010 A31C     		adds	r3, r4, #2
  75 0012 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
  76 0016 30B1     		cbz	r0, .L4
  77 0018 1EB1     		cbz	r6, .L5
  78 001a E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
  79 001c 83F00103 		eor	r3, r3, #1
  80 0020 E370     		strb	r3, [r4, #3]
  81              	.L5:
  82 0022 02B0     		add	sp, sp, #8
  83              		@ sp needed
  84 0024 70BD     		pop	{r4, r5, r6, pc}
  85              	.L4:
  86 0026 4FF6FF73 		movw	r3, #65535
  87 002a E070     		strb	r0, [r4, #3]
  88 002c 2380     		strh	r3, [r4]	@ movhi
  89 002e A370     		strb	r3, [r4, #2]
  90 0030 02B0     		add	sp, sp, #8
  91              		@ sp needed
  92 0032 70BD     		pop	{r4, r5, r6, pc}
  93              	.L12:
  94              		.align	2
  95              	.L11:
  96 0034 00000000 		.word	reprap
  97              		.size	_ZN6IoPort3SetEt9PinAccessb, .-_ZN6IoPort3SetEt9PinAccessb
  98              		.section	.text._ZN6IoPort10SetPinModeEh7PinMode,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN6IoPort10SetPinModeEh7PinMode
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	_ZN6IoPort10SetPinModeEh7PinMode, %function
 107              	_ZN6IoPort10SetPinModeEh7PinMode:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0022     		movs	r2, #0
 112 0002 FFF7FEBF 		b	pinModeDuet
 113              		.size	_ZN6IoPort10SetPinModeEh7PinMode, .-_ZN6IoPort10SetPinModeEh7PinMode
 114 0006 00BF     		.section	.text._ZN6IoPort7ReadPinEh,"ax",%progbits
ARM GAS  /tmp/ccBMFnXE.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZN6IoPort7ReadPinEh
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu softvfp
 122              		.type	_ZN6IoPort7ReadPinEh, %function
 123              	_ZN6IoPort7ReadPinEh:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 FFF7FEBF 		b	digitalRead
 128              		.size	_ZN6IoPort7ReadPinEh, .-_ZN6IoPort7ReadPinEh
 129              		.section	.text._ZN6IoPort12WriteDigitalEhb,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	_ZN6IoPort12WriteDigitalEhb
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu softvfp
 137              		.type	_ZN6IoPort12WriteDigitalEhb, %function
 138              	_ZN6IoPort12WriteDigitalEhb:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 FFF7FEBF 		b	digitalWrite
 143              		.size	_ZN6IoPort12WriteDigitalEhb, .-_ZN6IoPort12WriteDigitalEhb
 144              		.section	.text._ZN6IoPort11WriteAnalogEhft,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN6IoPort11WriteAnalogEhft
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu softvfp
 152              		.type	_ZN6IoPort11WriteAnalogEhft, %function
 153              	_ZN6IoPort11WriteAnalogEhft:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 FFF7FEBF 		b	_Z9AnalogOuthft
 158              		.size	_ZN6IoPort11WriteAnalogEhft, .-_ZN6IoPort11WriteAnalogEhft
 159              		.section	.text._ZN7PwmPortC2Ev,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	_ZN7PwmPortC2Ev
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu softvfp
 167              		.type	_ZN7PwmPortC2Ev, %function
 168              	_ZN7PwmPortC2Ev:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  /tmp/ccBMFnXE.s 			page 4


 172 0000 10B4     		push	{r4}
 173 0002 0024     		movs	r4, #0
 174 0004 4FF6FF72 		movw	r2, #65535
 175 0008 4FF4FA71 		mov	r1, #500
 176 000c C470     		strb	r4, [r0, #3]
 177 000e 8180     		strh	r1, [r0, #4]	@ movhi
 178 0010 0280     		strh	r2, [r0]	@ movhi
 179 0012 8270     		strb	r2, [r0, #2]
 180 0014 10BC     		pop	{r4}
 181 0016 7047     		bx	lr
 182              		.size	_ZN7PwmPortC2Ev, .-_ZN7PwmPortC2Ev
 183              		.global	_ZN7PwmPortC1Ev
 184              		.thumb_set _ZN7PwmPortC1Ev,_ZN7PwmPortC2Ev
 185              		.global	__aeabi_fcmpun
 186              		.global	__aeabi_f2uiz
 187              		.global	__aeabi_fcmplt
 188              		.global	__aeabi_fcmpgt
 189              		.section	.text._ZN7PwmPort12SetFrequencyEf,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_ZN7PwmPort12SetFrequencyEf
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu softvfp
 197              		.type	_ZN7PwmPort12SetFrequencyEf, %function
 198              	_ZN7PwmPort12SetFrequencyEf:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201 0000 38B5     		push	{r3, r4, r5, lr}
 202 0002 0546     		mov	r5, r0
 203 0004 0846     		mov	r0, r1
 204 0006 0C46     		mov	r4, r1
 205 0008 FFF7FEFF 		bl	__aeabi_fcmpun
 206 000c 88B9     		cbnz	r0, .L24
 207 000e 0C49     		ldr	r1, .L32
 208 0010 2046     		mov	r0, r4
 209 0012 FFF7FEFF 		bl	__aeabi_fcmplt
 210 0016 18B9     		cbnz	r0, .L31
 211 0018 4FF6FF70 		movw	r0, #65535
 212 001c A880     		strh	r0, [r5, #4]	@ movhi
 213 001e 38BD     		pop	{r3, r4, r5, pc}
 214              	.L31:
 215 0020 4FF07E51 		mov	r1, #1065353216
 216 0024 2046     		mov	r0, r4
 217 0026 FFF7FEFF 		bl	__aeabi_fcmpgt
 218 002a 10B9     		cbnz	r0, .L24
 219 002c 0120     		movs	r0, #1
 220 002e A880     		strh	r0, [r5, #4]	@ movhi
 221 0030 38BD     		pop	{r3, r4, r5, pc}
 222              	.L24:
 223 0032 2046     		mov	r0, r4
 224 0034 FFF7FEFF 		bl	__aeabi_f2uiz
 225 0038 80B2     		uxth	r0, r0
 226 003a A880     		strh	r0, [r5, #4]	@ movhi
 227 003c 38BD     		pop	{r3, r4, r5, pc}
 228              	.L33:
ARM GAS  /tmp/ccBMFnXE.s 			page 5


 229 003e 00BF     		.align	2
 230              	.L32:
 231 0040 00FF7F47 		.word	1199570688
 232              		.size	_ZN7PwmPort12SetFrequencyEf, .-_ZN7PwmPort12SetFrequencyEf
 233              		.global	__aeabi_fsub
 234              		.section	.text._ZNK7PwmPort11WriteAnalogEf,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	_ZNK7PwmPort11WriteAnalogEf
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu softvfp
 242              		.type	_ZNK7PwmPort11WriteAnalogEf, %function
 243              	_ZNK7PwmPort11WriteAnalogEf:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246 0000 38B5     		push	{r3, r4, r5, lr}
 247 0002 8578     		ldrb	r5, [r0, #2]	@ zero_extendqisi2
 248 0004 FF2D     		cmp	r5, #255
 249 0006 0ED0     		beq	.L34
 250 0008 0446     		mov	r4, r0
 251 000a E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
 252 000c 0846     		mov	r0, r1
 253 000e 1BB1     		cbz	r3, .L36
 254 0010 4FF07E50 		mov	r0, #1065353216
 255 0014 FFF7FEFF 		bl	__aeabi_fsub
 256              	.L36:
 257 0018 A288     		ldrh	r2, [r4, #4]
 258 001a 0146     		mov	r1, r0
 259 001c 2846     		mov	r0, r5
 260 001e BDE83840 		pop	{r3, r4, r5, lr}
 261 0022 FFF7FEBF 		b	_Z9AnalogOuthft
 262              	.L34:
 263 0026 38BD     		pop	{r3, r4, r5, pc}
 264              		.size	_ZNK7PwmPort11WriteAnalogEf, .-_ZNK7PwmPort11WriteAnalogEf
 265              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 266              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 267              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 268              	_ZL28cpu_irq_prev_interrupt_state:
 269 0000 00       		.space	1
 270              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 271              		.align	2
 272              		.type	_ZL32cpu_irq_critical_section_counter, %object
 273              		.size	_ZL32cpu_irq_critical_section_counter, 4
 274              	_ZL32cpu_irq_critical_section_counter:
 275 0000 00000000 		.space	4
 276              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 277              		.align	2
 278              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 279              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 280              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 281 0000 00000000 		.space	4
 282              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
