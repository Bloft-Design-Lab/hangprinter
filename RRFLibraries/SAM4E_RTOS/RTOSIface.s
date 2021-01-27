ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2VKY17.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN5Mutex6CreateEPKc,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN5Mutex6CreateEPKc
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN5Mutex6CreateEPKc, %function
  24              	_ZN5Mutex6CreateEPKc:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 38B5     		push	{r3, r4, r5, lr}
  28 0002 0368     		ldr	r3, [r0]
  29 0004 03B1     		cbz	r3, .L5
  30 0006 38BD     		pop	{r3, r4, r5, pc}
  31              	.L5:
  32 0008 0446     		mov	r4, r0
  33 000a 0D46     		mov	r5, r1
  34 000c 00F10C01 		add	r1, r0, #12
  35 0010 0420     		movs	r0, #4
  36 0012 FFF7FEFF 		bl	xQueueCreateMutexStatic
  37 0016 034B     		ldr	r3, .L6
  38 0018 2060     		str	r0, [r4]
  39 001a 1A68     		ldr	r2, [r3]
  40 001c 1C60     		str	r4, [r3]
  41 001e C4E90125 		strd	r2, r5, [r4, #4]
  42 0022 38BD     		pop	{r3, r4, r5, pc}
  43              	.L7:
  44              		.align	2
  45              	.L6:
  46 0024 00000000 		.word	.LANCHOR0
  47              		.size	_ZN5Mutex6CreateEPKc, .-_ZN5Mutex6CreateEPKc
  48              		.section	.text._ZNK5Mutex4TakeEm,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	_ZNK5Mutex4TakeEm
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	_ZNK5Mutex4TakeEm, %function
  57              	_ZNK5Mutex4TakeEm:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2VKY17.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60 0000 08B5     		push	{r3, lr}
  61 0002 0068     		ldr	r0, [r0]
  62 0004 FFF7FEFF 		bl	xQueueTakeMutexRecursive
  63 0008 A0F10100 		sub	r0, #1
  64 000c B0FA80F0 		clz	r0, r0
  65 0010 4009     		lsrs	r0, r0, #5
  66 0012 08BD     		pop	{r3, pc}
  67              		.size	_ZNK5Mutex4TakeEm, .-_ZNK5Mutex4TakeEm
  68              		.section	.text._ZNK5Mutex7ReleaseEv,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZNK5Mutex7ReleaseEv
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZNK5Mutex7ReleaseEv, %function
  77              	_ZNK5Mutex7ReleaseEv:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 08B5     		push	{r3, lr}
  81 0002 0068     		ldr	r0, [r0]
  82 0004 FFF7FEFF 		bl	xQueueGiveMutexRecursive
  83 0008 A0F10100 		sub	r0, #1
  84 000c B0FA80F0 		clz	r0, r0
  85 0010 4009     		lsrs	r0, r0, #5
  86 0012 08BD     		pop	{r3, pc}
  87              		.size	_ZNK5Mutex7ReleaseEv, .-_ZNK5Mutex7ReleaseEv
  88              		.section	.text._ZNK5Mutex9GetHolderEv,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZNK5Mutex9GetHolderEv
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	_ZNK5Mutex9GetHolderEv, %function
  97              	_ZNK5Mutex9GetHolderEv:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 0068     		ldr	r0, [r0]
 102 0002 FFF7FEBF 		b	xQueueGetMutexHolder
 103              		.size	_ZNK5Mutex9GetHolderEv, .-_ZNK5Mutex9GetHolderEv
 104 0006 00BF     		.section	.text._ZN11MutexLockerC2EPK5Mutexm,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_ZN11MutexLockerC2EPK5Mutexm
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	_ZN11MutexLockerC2EPK5Mutexm, %function
 113              	_ZN11MutexLockerC2EPK5Mutexm:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2VKY17.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 10B5     		push	{r4, lr}
 117 0002 0446     		mov	r4, r0
 118 0004 0160     		str	r1, [r0]
 119 0006 61B1     		cbz	r1, .L15
 120 0008 0B46     		mov	r3, r1
 121 000a 1146     		mov	r1, r2
 122 000c 1868     		ldr	r0, [r3]
 123 000e FFF7FEFF 		bl	xQueueTakeMutexRecursive
 124 0012 A0F10100 		sub	r0, #1
 125 0016 B0FA80F0 		clz	r0, r0
 126 001a 4009     		lsrs	r0, r0, #5
 127 001c 2071     		strb	r0, [r4, #4]
 128 001e 2046     		mov	r0, r4
 129 0020 10BD     		pop	{r4, pc}
 130              	.L15:
 131 0022 0120     		movs	r0, #1
 132 0024 2071     		strb	r0, [r4, #4]
 133 0026 2046     		mov	r0, r4
 134 0028 10BD     		pop	{r4, pc}
 135              		.size	_ZN11MutexLockerC2EPK5Mutexm, .-_ZN11MutexLockerC2EPK5Mutexm
 136              		.global	_ZN11MutexLockerC1EPK5Mutexm
 137              		.thumb_set _ZN11MutexLockerC1EPK5Mutexm,_ZN11MutexLockerC2EPK5Mutexm
 138 002a 00BF     		.section	.text._ZN11MutexLockerC2ERK5Mutexm,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	_ZN11MutexLockerC2ERK5Mutexm
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	_ZN11MutexLockerC2ERK5Mutexm, %function
 147              	_ZN11MutexLockerC2ERK5Mutexm:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150 0000 10B5     		push	{r4, lr}
 151 0002 0160     		str	r1, [r0]
 152 0004 0446     		mov	r4, r0
 153 0006 0868     		ldr	r0, [r1]
 154 0008 1146     		mov	r1, r2
 155 000a FFF7FEFF 		bl	xQueueTakeMutexRecursive
 156 000e A0F10100 		sub	r0, #1
 157 0012 B0FA80F0 		clz	r0, r0
 158 0016 4009     		lsrs	r0, r0, #5
 159 0018 2071     		strb	r0, [r4, #4]
 160 001a 2046     		mov	r0, r4
 161 001c 10BD     		pop	{r4, pc}
 162              		.size	_ZN11MutexLockerC2ERK5Mutexm, .-_ZN11MutexLockerC2ERK5Mutexm
 163              		.global	_ZN11MutexLockerC1ERK5Mutexm
 164              		.thumb_set _ZN11MutexLockerC1ERK5Mutexm,_ZN11MutexLockerC2ERK5Mutexm
 165 001e 00BF     		.section	.text._ZN11MutexLocker7ReleaseEv,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	_ZN11MutexLocker7ReleaseEv
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2VKY17.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	_ZN11MutexLocker7ReleaseEv, %function
 174              	_ZN11MutexLocker7ReleaseEv:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177 0000 38B5     		push	{r3, r4, r5, lr}
 178 0002 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 179 0004 8BB1     		cbz	r3, .L19
 180 0006 0368     		ldr	r3, [r0]
 181 0008 7BB1     		cbz	r3, .L19
 182 000a 0446     		mov	r4, r0
 183 000c 1868     		ldr	r0, [r3]
 184 000e FFF7FEFF 		bl	xQueueGiveMutexRecursive
 185 0012 2368     		ldr	r3, [r4]
 186 0014 1868     		ldr	r0, [r3]
 187 0016 FFF7FEFF 		bl	xQueueGetMutexHolder
 188 001a 0546     		mov	r5, r0
 189 001c FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 190 0020 281A     		subs	r0, r5, r0
 191 0022 B0FA80F0 		clz	r0, r0
 192 0026 4009     		lsrs	r0, r0, #5
 193 0028 2071     		strb	r0, [r4, #4]
 194              	.L19:
 195 002a 38BD     		pop	{r3, r4, r5, pc}
 196              		.size	_ZN11MutexLocker7ReleaseEv, .-_ZN11MutexLocker7ReleaseEv
 197              		.section	.text._ZN11MutexLockerD2Ev,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZN11MutexLockerD2Ev
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZN11MutexLockerD2Ev, %function
 206              	_ZN11MutexLockerD2Ev:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 38B5     		push	{r3, r4, r5, lr}
 210 0002 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 211 0004 0446     		mov	r4, r0
 212 0006 0BB9     		cbnz	r3, .L39
 213              	.L30:
 214 0008 2046     		mov	r0, r4
 215 000a 38BD     		pop	{r3, r4, r5, pc}
 216              	.L39:
 217 000c 0368     		ldr	r3, [r0]
 218 000e 002B     		cmp	r3, #0
 219 0010 FAD0     		beq	.L30
 220 0012 1868     		ldr	r0, [r3]
 221 0014 FFF7FEFF 		bl	xQueueGiveMutexRecursive
 222 0018 2368     		ldr	r3, [r4]
 223 001a 1868     		ldr	r0, [r3]
 224 001c FFF7FEFF 		bl	xQueueGetMutexHolder
 225 0020 0546     		mov	r5, r0
 226 0022 FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 227 0026 8542     		cmp	r5, r0
 228 0028 0CBF     		ite	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2VKY17.s 			page 5


 229 002a 0123     		moveq	r3, #1
 230 002c 0023     		movne	r3, #0
 231 002e 2371     		strb	r3, [r4, #4]
 232 0030 EAD1     		bne	.L30
 233 0032 2368     		ldr	r3, [r4]
 234 0034 002B     		cmp	r3, #0
 235 0036 E7D0     		beq	.L30
 236 0038 1868     		ldr	r0, [r3]
 237 003a FFF7FEFF 		bl	xQueueGiveMutexRecursive
 238 003e 2046     		mov	r0, r4
 239 0040 38BD     		pop	{r3, r4, r5, pc}
 240              		.size	_ZN11MutexLockerD2Ev, .-_ZN11MutexLockerD2Ev
 241              		.global	_ZN11MutexLockerD1Ev
 242              		.thumb_set _ZN11MutexLockerD1Ev,_ZN11MutexLockerD2Ev
 243 0042 00BF     		.section	.text._ZN9RTOSIface14GetCurrentTaskEv,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZN9RTOSIface14GetCurrentTaskEv
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	_ZN9RTOSIface14GetCurrentTaskEv, %function
 252              	_ZN9RTOSIface14GetCurrentTaskEv:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 FFF7FEBF 		b	xTaskGetCurrentTaskHandle
 257              		.size	_ZN9RTOSIface14GetCurrentTaskEv, .-_ZN9RTOSIface14GetCurrentTaskEv
 258              		.global	_ZN5Mutex9mutexListE
 259              		.global	_ZN8TaskBase8taskListE
 260              		.section	.bss._ZN5Mutex9mutexListE,"aw",%nobits
 261              		.align	2
 262              		.set	.LANCHOR0,. + 0
 263              		.type	_ZN5Mutex9mutexListE, %object
 264              		.size	_ZN5Mutex9mutexListE, 4
 265              	_ZN5Mutex9mutexListE:
 266 0000 00000000 		.space	4
 267              		.section	.bss._ZN8TaskBase8taskListE,"aw",%nobits
 268              		.align	2
 269              		.type	_ZN8TaskBase8taskListE, %object
 270              		.size	_ZN8TaskBase8taskListE, 4
 271              	_ZN8TaskBase8taskListE:
 272 0000 00000000 		.space	4
 273              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
