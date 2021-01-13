ARM GAS  /tmp/ccVcsx0W.s 			page 1


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
  13              		.file	"RTOSIface.cpp"
  14              		.section	.text._ZN5Mutex6CreateEPKc,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN5Mutex6CreateEPKc
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN5Mutex6CreateEPKc, %function
  23              	_ZN5Mutex6CreateEPKc:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0368     		ldr	r3, [r0]
  28 0004 03B1     		cbz	r3, .L5
  29 0006 38BD     		pop	{r3, r4, r5, pc}
  30              	.L5:
  31 0008 0446     		mov	r4, r0
  32 000a 0D46     		mov	r5, r1
  33 000c 00F10C01 		add	r1, r0, #12
  34 0010 0420     		movs	r0, #4
  35 0012 FFF7FEFF 		bl	xQueueCreateMutexStatic
  36 0016 034B     		ldr	r3, .L6
  37 0018 2060     		str	r0, [r4]
  38 001a 1A68     		ldr	r2, [r3]
  39 001c 1C60     		str	r4, [r3]
  40 001e C4E90125 		strd	r2, r5, [r4, #4]
  41 0022 38BD     		pop	{r3, r4, r5, pc}
  42              	.L7:
  43              		.align	2
  44              	.L6:
  45 0024 00000000 		.word	.LANCHOR0
  46              		.size	_ZN5Mutex6CreateEPKc, .-_ZN5Mutex6CreateEPKc
  47              		.section	.text._ZNK5Mutex4TakeEm,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	_ZNK5Mutex4TakeEm
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	_ZNK5Mutex4TakeEm, %function
  56              	_ZNK5Mutex4TakeEm:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccVcsx0W.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 08B5     		push	{r3, lr}
  60 0002 0068     		ldr	r0, [r0]
  61 0004 FFF7FEFF 		bl	xQueueTakeMutexRecursive
  62 0008 A0F10100 		sub	r0, #1
  63 000c B0FA80F0 		clz	r0, r0
  64 0010 4009     		lsrs	r0, r0, #5
  65 0012 08BD     		pop	{r3, pc}
  66              		.size	_ZNK5Mutex4TakeEm, .-_ZNK5Mutex4TakeEm
  67              		.section	.text._ZNK5Mutex7ReleaseEv,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZNK5Mutex7ReleaseEv
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZNK5Mutex7ReleaseEv, %function
  76              	_ZNK5Mutex7ReleaseEv:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 08B5     		push	{r3, lr}
  80 0002 0068     		ldr	r0, [r0]
  81 0004 FFF7FEFF 		bl	xQueueGiveMutexRecursive
  82 0008 A0F10100 		sub	r0, #1
  83 000c B0FA80F0 		clz	r0, r0
  84 0010 4009     		lsrs	r0, r0, #5
  85 0012 08BD     		pop	{r3, pc}
  86              		.size	_ZNK5Mutex7ReleaseEv, .-_ZNK5Mutex7ReleaseEv
  87              		.section	.text._ZNK5Mutex9GetHolderEv,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZNK5Mutex9GetHolderEv
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	_ZNK5Mutex9GetHolderEv, %function
  96              	_ZNK5Mutex9GetHolderEv:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 0068     		ldr	r0, [r0]
 101 0002 FFF7FEBF 		b	xQueueGetMutexHolder
 102              		.size	_ZNK5Mutex9GetHolderEv, .-_ZNK5Mutex9GetHolderEv
 103 0006 00BF     		.section	.text._ZN11MutexLockerC2EPK5Mutexm,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	_ZN11MutexLockerC2EPK5Mutexm
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	_ZN11MutexLockerC2EPK5Mutexm, %function
 112              	_ZN11MutexLockerC2EPK5Mutexm:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccVcsx0W.s 			page 3


 115 0000 10B5     		push	{r4, lr}
 116 0002 0446     		mov	r4, r0
 117 0004 0160     		str	r1, [r0]
 118 0006 61B1     		cbz	r1, .L15
 119 0008 0B46     		mov	r3, r1
 120 000a 1146     		mov	r1, r2
 121 000c 1868     		ldr	r0, [r3]
 122 000e FFF7FEFF 		bl	xQueueTakeMutexRecursive
 123 0012 A0F10100 		sub	r0, #1
 124 0016 B0FA80F0 		clz	r0, r0
 125 001a 4009     		lsrs	r0, r0, #5
 126 001c 2071     		strb	r0, [r4, #4]
 127 001e 2046     		mov	r0, r4
 128 0020 10BD     		pop	{r4, pc}
 129              	.L15:
 130 0022 0120     		movs	r0, #1
 131 0024 2071     		strb	r0, [r4, #4]
 132 0026 2046     		mov	r0, r4
 133 0028 10BD     		pop	{r4, pc}
 134              		.size	_ZN11MutexLockerC2EPK5Mutexm, .-_ZN11MutexLockerC2EPK5Mutexm
 135              		.global	_ZN11MutexLockerC1EPK5Mutexm
 136              		.thumb_set _ZN11MutexLockerC1EPK5Mutexm,_ZN11MutexLockerC2EPK5Mutexm
 137 002a 00BF     		.section	.text._ZN11MutexLockerC2ERK5Mutexm,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	_ZN11MutexLockerC2ERK5Mutexm
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	_ZN11MutexLockerC2ERK5Mutexm, %function
 146              	_ZN11MutexLockerC2ERK5Mutexm:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 10B5     		push	{r4, lr}
 150 0002 0160     		str	r1, [r0]
 151 0004 0446     		mov	r4, r0
 152 0006 0868     		ldr	r0, [r1]
 153 0008 1146     		mov	r1, r2
 154 000a FFF7FEFF 		bl	xQueueTakeMutexRecursive
 155 000e A0F10100 		sub	r0, #1
 156 0012 B0FA80F0 		clz	r0, r0
 157 0016 4009     		lsrs	r0, r0, #5
 158 0018 2071     		strb	r0, [r4, #4]
 159 001a 2046     		mov	r0, r4
 160 001c 10BD     		pop	{r4, pc}
 161              		.size	_ZN11MutexLockerC2ERK5Mutexm, .-_ZN11MutexLockerC2ERK5Mutexm
 162              		.global	_ZN11MutexLockerC1ERK5Mutexm
 163              		.thumb_set _ZN11MutexLockerC1ERK5Mutexm,_ZN11MutexLockerC2ERK5Mutexm
 164 001e 00BF     		.section	.text._ZN11MutexLocker7ReleaseEv,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN11MutexLocker7ReleaseEv
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccVcsx0W.s 			page 4


 172              		.type	_ZN11MutexLocker7ReleaseEv, %function
 173              	_ZN11MutexLocker7ReleaseEv:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176 0000 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 177 0002 4BB1     		cbz	r3, .L28
 178 0004 0368     		ldr	r3, [r0]
 179 0006 3BB1     		cbz	r3, .L28
 180 0008 10B5     		push	{r4, lr}
 181 000a 0446     		mov	r4, r0
 182 000c 1868     		ldr	r0, [r3]
 183 000e FFF7FEFF 		bl	xQueueGiveMutexRecursive
 184 0012 0023     		movs	r3, #0
 185 0014 2371     		strb	r3, [r4, #4]
 186 0016 10BD     		pop	{r4, pc}
 187              	.L28:
 188 0018 7047     		bx	lr
 189              		.size	_ZN11MutexLocker7ReleaseEv, .-_ZN11MutexLocker7ReleaseEv
 190 001a 00BF     		.section	.text._ZN11MutexLockerD2Ev,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZN11MutexLockerD2Ev
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZN11MutexLockerD2Ev, %function
 199              	_ZN11MutexLockerD2Ev:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 203 0002 10B5     		push	{r4, lr}
 204 0004 0446     		mov	r4, r0
 205 0006 0BB9     		cbnz	r3, .L40
 206              	.L32:
 207 0008 2046     		mov	r0, r4
 208 000a 10BD     		pop	{r4, pc}
 209              	.L40:
 210 000c 0368     		ldr	r3, [r0]
 211 000e 002B     		cmp	r3, #0
 212 0010 FAD0     		beq	.L32
 213 0012 1868     		ldr	r0, [r3]
 214 0014 FFF7FEFF 		bl	xQueueGiveMutexRecursive
 215 0018 2046     		mov	r0, r4
 216 001a 10BD     		pop	{r4, pc}
 217              		.size	_ZN11MutexLockerD2Ev, .-_ZN11MutexLockerD2Ev
 218              		.global	_ZN11MutexLockerD1Ev
 219              		.thumb_set _ZN11MutexLockerD1Ev,_ZN11MutexLockerD2Ev
 220              		.section	.text._ZN9RTOSIface14GetCurrentTaskEv,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZN9RTOSIface14GetCurrentTaskEv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZN9RTOSIface14GetCurrentTaskEv, %function
ARM GAS  /tmp/ccVcsx0W.s 			page 5


 229              	_ZN9RTOSIface14GetCurrentTaskEv:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 FFF7FEBF 		b	xTaskGetCurrentTaskHandle
 234              		.size	_ZN9RTOSIface14GetCurrentTaskEv, .-_ZN9RTOSIface14GetCurrentTaskEv
 235              		.global	_ZN5Mutex9mutexListE
 236              		.global	_ZN8TaskBase8taskListE
 237              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 238              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 239              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 240              	_ZL28cpu_irq_prev_interrupt_state:
 241 0000 00       		.space	1
 242              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 243              		.align	2
 244              		.type	_ZL32cpu_irq_critical_section_counter, %object
 245              		.size	_ZL32cpu_irq_critical_section_counter, 4
 246              	_ZL32cpu_irq_critical_section_counter:
 247 0000 00000000 		.space	4
 248              		.section	.bss._ZN5Mutex9mutexListE,"aw",%nobits
 249              		.align	2
 250              		.set	.LANCHOR0,. + 0
 251              		.type	_ZN5Mutex9mutexListE, %object
 252              		.size	_ZN5Mutex9mutexListE, 4
 253              	_ZN5Mutex9mutexListE:
 254 0000 00000000 		.space	4
 255              		.section	.bss._ZN8TaskBase8taskListE,"aw",%nobits
 256              		.align	2
 257              		.type	_ZN8TaskBase8taskListE, %object
 258              		.size	_ZN8TaskBase8taskListE, 4
 259              	_ZN8TaskBase8taskListE:
 260 0000 00000000 		.space	4
 261              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
