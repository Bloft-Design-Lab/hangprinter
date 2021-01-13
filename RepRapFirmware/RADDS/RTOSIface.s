ARM GAS  /tmp/ccphlEmI.s 			page 1


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
  11              		.file	"RTOSIface.cpp"
  12              		.section	.text._ZN5Mutex6CreateEPKc,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN5Mutex6CreateEPKc
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN5Mutex6CreateEPKc, %function
  21              	_ZN5Mutex6CreateEPKc:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7047     		bx	lr
  26              		.size	_ZN5Mutex6CreateEPKc, .-_ZN5Mutex6CreateEPKc
  27 0002 00BF     		.section	.text._ZNK5Mutex4TakeEm,"ax",%progbits
  28              		.align	1
  29              		.p2align 2,,3
  30              		.global	_ZNK5Mutex4TakeEm
  31              		.syntax unified
  32              		.thumb
  33              		.thumb_func
  34              		.fpu softvfp
  35              		.type	_ZNK5Mutex4TakeEm, %function
  36              	_ZNK5Mutex4TakeEm:
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 0, uses_anonymous_args = 0
  39              		@ link register save eliminated.
  40 0000 0120     		movs	r0, #1
  41 0002 7047     		bx	lr
  42              		.size	_ZNK5Mutex4TakeEm, .-_ZNK5Mutex4TakeEm
  43              		.section	.text._ZNK5Mutex7ReleaseEv,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZNK5Mutex7ReleaseEv
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu softvfp
  51              		.type	_ZNK5Mutex7ReleaseEv, %function
  52              	_ZNK5Mutex7ReleaseEv:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 0120     		movs	r0, #1
  57 0002 7047     		bx	lr
ARM GAS  /tmp/ccphlEmI.s 			page 2


  58              		.size	_ZNK5Mutex7ReleaseEv, .-_ZNK5Mutex7ReleaseEv
  59              		.section	.text._ZNK5Mutex9GetHolderEv,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_ZNK5Mutex9GetHolderEv
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu softvfp
  67              		.type	_ZNK5Mutex9GetHolderEv, %function
  68              	_ZNK5Mutex9GetHolderEv:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 0020     		movs	r0, #0
  73 0002 7047     		bx	lr
  74              		.size	_ZNK5Mutex9GetHolderEv, .-_ZNK5Mutex9GetHolderEv
  75              		.section	.text._ZN11MutexLockerC2EPK5Mutexm,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_ZN11MutexLockerC2EPK5Mutexm
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu softvfp
  83              		.type	_ZN11MutexLockerC2EPK5Mutexm, %function
  84              	_ZN11MutexLockerC2EPK5Mutexm:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 0122     		movs	r2, #1
  89 0002 0160     		str	r1, [r0]
  90 0004 0271     		strb	r2, [r0, #4]
  91 0006 7047     		bx	lr
  92              		.size	_ZN11MutexLockerC2EPK5Mutexm, .-_ZN11MutexLockerC2EPK5Mutexm
  93              		.global	_ZN11MutexLockerC1EPK5Mutexm
  94              		.thumb_set _ZN11MutexLockerC1EPK5Mutexm,_ZN11MutexLockerC2EPK5Mutexm
  95              		.section	.text._ZN11MutexLockerC2ERK5Mutexm,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN11MutexLockerC2ERK5Mutexm
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu softvfp
 103              		.type	_ZN11MutexLockerC2ERK5Mutexm, %function
 104              	_ZN11MutexLockerC2ERK5Mutexm:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108 0000 0122     		movs	r2, #1
 109 0002 0160     		str	r1, [r0]
 110 0004 0271     		strb	r2, [r0, #4]
 111 0006 7047     		bx	lr
 112              		.size	_ZN11MutexLockerC2ERK5Mutexm, .-_ZN11MutexLockerC2ERK5Mutexm
 113              		.global	_ZN11MutexLockerC1ERK5Mutexm
 114              		.thumb_set _ZN11MutexLockerC1ERK5Mutexm,_ZN11MutexLockerC2ERK5Mutexm
ARM GAS  /tmp/ccphlEmI.s 			page 3


 115              		.section	.text._ZN11MutexLocker7ReleaseEv,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_ZN11MutexLocker7ReleaseEv
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu softvfp
 123              		.type	_ZN11MutexLocker7ReleaseEv, %function
 124              	_ZN11MutexLocker7ReleaseEv:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 7047     		bx	lr
 129              		.size	_ZN11MutexLocker7ReleaseEv, .-_ZN11MutexLocker7ReleaseEv
 130 0002 00BF     		.section	.text._ZN11MutexLockerD2Ev,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	_ZN11MutexLockerD2Ev
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	_ZN11MutexLockerD2Ev, %function
 139              	_ZN11MutexLockerD2Ev:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 7047     		bx	lr
 144              		.size	_ZN11MutexLockerD2Ev, .-_ZN11MutexLockerD2Ev
 145              		.global	_ZN11MutexLockerD1Ev
 146              		.thumb_set _ZN11MutexLockerD1Ev,_ZN11MutexLockerD2Ev
 147 0002 00BF     		.section	.text._ZN9RTOSIface14GetCurrentTaskEv,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	_ZN9RTOSIface14GetCurrentTaskEv
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu softvfp
 155              		.type	_ZN9RTOSIface14GetCurrentTaskEv, %function
 156              	_ZN9RTOSIface14GetCurrentTaskEv:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		@ link register save eliminated.
 160 0000 0020     		movs	r0, #0
 161 0002 7047     		bx	lr
 162              		.size	_ZN9RTOSIface14GetCurrentTaskEv, .-_ZN9RTOSIface14GetCurrentTaskEv
 163              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 164              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 165              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 166              	_ZL28cpu_irq_prev_interrupt_state:
 167 0000 00       		.space	1
 168              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 169              		.align	2
 170              		.type	_ZL32cpu_irq_critical_section_counter, %object
 171              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccphlEmI.s 			page 4


 172              	_ZL32cpu_irq_critical_section_counter:
 173 0000 00000000 		.space	4
 174              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 175              		.align	2
 176              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 177              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 178              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 179 0000 00000000 		.space	4
 180              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
