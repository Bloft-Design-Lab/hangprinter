ARM GAS  /tmp/ccXYNCLm.s 			page 1


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
  13              		.file	"IoPorts.cpp"
  14              		.section	.text._ZN6IoPortC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN6IoPortC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN6IoPortC2Ev, %function
  23              	_ZN6IoPortC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 4FF6FF72 		movw	r2, #65535
  28 0004 0021     		movs	r1, #0
  29 0006 C170     		strb	r1, [r0, #3]
  30 0008 0280     		strh	r2, [r0]	@ movhi
  31 000a 8270     		strb	r2, [r0, #2]
  32 000c 7047     		bx	lr
  33              		.size	_ZN6IoPortC2Ev, .-_ZN6IoPortC2Ev
  34              		.global	_ZN6IoPortC1Ev
  35              		.thumb_set _ZN6IoPortC1Ev,_ZN6IoPortC2Ev
  36 000e 00BF     		.section	.text._ZN6IoPort5ClearEv,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	_ZN6IoPort5ClearEv
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu fpv4-sp-d16
  44              		.type	_ZN6IoPort5ClearEv, %function
  45              	_ZN6IoPort5ClearEv:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48              		@ link register save eliminated.
  49 0000 4FF6FF73 		movw	r3, #65535
  50 0004 0022     		movs	r2, #0
  51 0006 C270     		strb	r2, [r0, #3]
  52 0008 0380     		strh	r3, [r0]	@ movhi
  53 000a 8370     		strb	r3, [r0, #2]
  54 000c 7047     		bx	lr
  55              		.size	_ZN6IoPort5ClearEv, .-_ZN6IoPort5ClearEv
  56 000e 00BF     		.section	.text._ZN6IoPort3SetEt9PinAccessb,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccXYNCLm.s 			page 2


  58              		.p2align 2,,3
  59              		.global	_ZN6IoPort3SetEt9PinAccessb
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  64              		.type	_ZN6IoPort3SetEt9PinAccessb, %function
  65              	_ZN6IoPort3SetEt9PinAccessb:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 70B5     		push	{r4, r5, r6, lr}
  69 0002 0C4D     		ldr	r5, .L11
  70 0004 0446     		mov	r4, r0
  71 0006 82B0     		sub	sp, sp, #8
  72 0008 2868     		ldr	r0, [r5]	@ unaligned
  73 000a E51C     		adds	r5, r4, #3
  74 000c 1E46     		mov	r6, r3
  75 000e 0095     		str	r5, [sp]
  76 0010 A31C     		adds	r3, r4, #2
  77 0012 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
  78 0016 30B1     		cbz	r0, .L5
  79 0018 1EB1     		cbz	r6, .L6
  80 001a E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
  81 001c 83F00103 		eor	r3, r3, #1
  82 0020 E370     		strb	r3, [r4, #3]
  83              	.L6:
  84 0022 02B0     		add	sp, sp, #8
  85              		@ sp needed
  86 0024 70BD     		pop	{r4, r5, r6, pc}
  87              	.L5:
  88 0026 4FF6FF73 		movw	r3, #65535
  89 002a E070     		strb	r0, [r4, #3]
  90 002c 2380     		strh	r3, [r4]	@ movhi
  91 002e A370     		strb	r3, [r4, #2]
  92 0030 02B0     		add	sp, sp, #8
  93              		@ sp needed
  94 0032 70BD     		pop	{r4, r5, r6, pc}
  95              	.L12:
  96              		.align	2
  97              	.L11:
  98 0034 00000000 		.word	reprap
  99              		.size	_ZN6IoPort3SetEt9PinAccessb, .-_ZN6IoPort3SetEt9PinAccessb
 100              		.section	.text._ZN6IoPort10SetPinModeEh7PinMode,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	_ZN6IoPort10SetPinModeEh7PinMode
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	_ZN6IoPort10SetPinModeEh7PinMode, %function
 109              	_ZN6IoPort10SetPinModeEh7PinMode:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 C728     		cmp	r0, #199
 114 0002 02D8     		bhi	.L15
ARM GAS  /tmp/ccXYNCLm.s 			page 3


 115 0004 0022     		movs	r2, #0
 116 0006 FFF7FEBF 		b	pinModeDuet
 117              	.L15:
 118 000a FFF7FEBF 		b	_ZN13DuetExpansion10SetPinModeEh7PinMode
 119              		.size	_ZN6IoPort10SetPinModeEh7PinMode, .-_ZN6IoPort10SetPinModeEh7PinMode
 120 000e 00BF     		.section	.text._ZN6IoPort7ReadPinEh,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	_ZN6IoPort7ReadPinEh
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	_ZN6IoPort7ReadPinEh, %function
 129              	_ZN6IoPort7ReadPinEh:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 C728     		cmp	r0, #199
 134 0002 01D8     		bhi	.L18
 135 0004 FFF7FEBF 		b	digitalRead
 136              	.L18:
 137 0008 FFF7FEBF 		b	_ZN13DuetExpansion11DigitalReadEh
 138              		.size	_ZN6IoPort7ReadPinEh, .-_ZN6IoPort7ReadPinEh
 139              		.section	.text._ZN6IoPort12WriteDigitalEhb,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_ZN6IoPort12WriteDigitalEhb
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv4-sp-d16
 147              		.type	_ZN6IoPort12WriteDigitalEhb, %function
 148              	_ZN6IoPort12WriteDigitalEhb:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 C728     		cmp	r0, #199
 153 0002 01D8     		bhi	.L21
 154 0004 FFF7FEBF 		b	digitalWrite
 155              	.L21:
 156 0008 FFF7FEBF 		b	_ZN13DuetExpansion12DigitalWriteEhb
 157              		.size	_ZN6IoPort12WriteDigitalEhb, .-_ZN6IoPort12WriteDigitalEhb
 158              		.section	.text._ZN6IoPort11WriteAnalogEhft,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_ZN6IoPort11WriteAnalogEhft
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_ZN6IoPort11WriteAnalogEhft, %function
 167              	_ZN6IoPort11WriteAnalogEhft:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 C728     		cmp	r0, #199
ARM GAS  /tmp/ccXYNCLm.s 			page 4


 172 0002 01D8     		bhi	.L24
 173 0004 FFF7FEBF 		b	_Z9AnalogOuthft
 174              	.L24:
 175 0008 FFF7FEBF 		b	_ZN13DuetExpansion9AnalogOutEhf
 176              		.size	_ZN6IoPort11WriteAnalogEhft, .-_ZN6IoPort11WriteAnalogEhft
 177              		.section	.text._ZN7PwmPortC2Ev,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	_ZN7PwmPortC2Ev
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	_ZN7PwmPortC2Ev, %function
 186              	_ZN7PwmPortC2Ev:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190 0000 10B4     		push	{r4}
 191 0002 0024     		movs	r4, #0
 192 0004 4FF6FF72 		movw	r2, #65535
 193 0008 4FF4FA71 		mov	r1, #500
 194 000c C470     		strb	r4, [r0, #3]
 195 000e 8180     		strh	r1, [r0, #4]	@ movhi
 196 0010 0280     		strh	r2, [r0]	@ movhi
 197 0012 8270     		strb	r2, [r0, #2]
 198 0014 5DF8044B 		ldr	r4, [sp], #4
 199 0018 7047     		bx	lr
 200              		.size	_ZN7PwmPortC2Ev, .-_ZN7PwmPortC2Ev
 201              		.global	_ZN7PwmPortC1Ev
 202              		.thumb_set _ZN7PwmPortC1Ev,_ZN7PwmPortC2Ev
 203 001a 00BF     		.section	.text._ZN7PwmPort12SetFrequencyEf,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	_ZN7PwmPort12SetFrequencyEf
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	_ZN7PwmPort12SetFrequencyEf, %function
 212              	_ZN7PwmPort12SetFrequencyEf:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 B4EE400A 		vcmp.f32	s0, s0
 217 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 218 0008 14D6     		bvs	.L31
 219 000a DFED0E7A 		vldr.32	s15, .L35
 220 000e B4EEE70A 		vcmpe.f32	s0, s15
 221 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 222 0016 09D5     		bpl	.L34
 223 0018 F7EE007A 		vmov.f32	s15, #1.0e+0
 224 001c B4EEE70A 		vcmpe.f32	s0, s15
 225 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 226 0024 06DC     		bgt	.L31
 227 0026 0123     		movs	r3, #1
 228 0028 8380     		strh	r3, [r0, #4]	@ movhi
ARM GAS  /tmp/ccXYNCLm.s 			page 5


 229 002a 7047     		bx	lr
 230              	.L34:
 231 002c 4FF6FF73 		movw	r3, #65535
 232 0030 8380     		strh	r3, [r0, #4]	@ movhi
 233 0032 7047     		bx	lr
 234              	.L31:
 235 0034 BCEEC00A 		vcvt.u32.f32	s0, s0
 236 0038 10EE103A 		vmov	r3, s0	@ int
 237 003c 9BB2     		uxth	r3, r3
 238 003e 8380     		strh	r3, [r0, #4]	@ movhi
 239 0040 7047     		bx	lr
 240              	.L36:
 241 0042 00BF     		.align	2
 242              	.L35:
 243 0044 00FF7F47 		.word	1199570688
 244              		.size	_ZN7PwmPort12SetFrequencyEf, .-_ZN7PwmPort12SetFrequencyEf
 245              		.section	.text._ZNK7PwmPort11WriteAnalogEf,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK7PwmPort11WriteAnalogEf
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK7PwmPort11WriteAnalogEf, %function
 254              	_ZNK7PwmPort11WriteAnalogEf:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 259 0002 FF2B     		cmp	r3, #255
 260 0004 09D0     		beq	.L37
 261 0006 C278     		ldrb	r2, [r0, #3]	@ zero_extendqisi2
 262 0008 1AB1     		cbz	r2, .L39
 263 000a F7EE007A 		vmov.f32	s15, #1.0e+0
 264 000e 37EEC00A 		vsub.f32	s0, s15, s0
 265              	.L39:
 266 0012 8188     		ldrh	r1, [r0, #4]
 267 0014 1846     		mov	r0, r3
 268 0016 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 269              	.L37:
 270 001a 7047     		bx	lr
 271              		.size	_ZNK7PwmPort11WriteAnalogEf, .-_ZNK7PwmPort11WriteAnalogEf
 272              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 273              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 274              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 275              	_ZL28cpu_irq_prev_interrupt_state:
 276 0000 00       		.space	1
 277              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 278              		.align	2
 279              		.type	_ZL32cpu_irq_critical_section_counter, %object
 280              		.size	_ZL32cpu_irq_critical_section_counter, 4
 281              	_ZL32cpu_irq_critical_section_counter:
 282 0000 00000000 		.space	4
 283              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 284              		.align	2
 285              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
ARM GAS  /tmp/ccXYNCLm.s 			page 6


 286              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 287              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 288 0000 00000000 		.space	4
 289              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
