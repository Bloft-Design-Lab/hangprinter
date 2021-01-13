ARM GAS  /tmp/ccRaTQhh.s 			page 1


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
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN5Mutex6CreateEPKc, .-_ZN5Mutex6CreateEPKc
  29 0002 00BF     		.section	.text._ZNK5Mutex4TakeEm,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZNK5Mutex4TakeEm
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNK5Mutex4TakeEm, %function
  38              	_ZNK5Mutex4TakeEm:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0120     		movs	r0, #1
  43 0002 7047     		bx	lr
  44              		.size	_ZNK5Mutex4TakeEm, .-_ZNK5Mutex4TakeEm
  45              		.section	.text._ZNK5Mutex7ReleaseEv,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZNK5Mutex7ReleaseEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZNK5Mutex7ReleaseEv, %function
  54              	_ZNK5Mutex7ReleaseEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccRaTQhh.s 			page 2


  58 0000 0120     		movs	r0, #1
  59 0002 7047     		bx	lr
  60              		.size	_ZNK5Mutex7ReleaseEv, .-_ZNK5Mutex7ReleaseEv
  61              		.section	.text._ZNK5Mutex9GetHolderEv,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZNK5Mutex9GetHolderEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK5Mutex9GetHolderEv, %function
  70              	_ZNK5Mutex9GetHolderEv:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 0020     		movs	r0, #0
  75 0002 7047     		bx	lr
  76              		.size	_ZNK5Mutex9GetHolderEv, .-_ZNK5Mutex9GetHolderEv
  77              		.section	.text._ZN11MutexLockerC2EPK5Mutexm,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_ZN11MutexLockerC2EPK5Mutexm
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZN11MutexLockerC2EPK5Mutexm, %function
  86              	_ZN11MutexLockerC2EPK5Mutexm:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 0122     		movs	r2, #1
  91 0002 0160     		str	r1, [r0]
  92 0004 0271     		strb	r2, [r0, #4]
  93 0006 7047     		bx	lr
  94              		.size	_ZN11MutexLockerC2EPK5Mutexm, .-_ZN11MutexLockerC2EPK5Mutexm
  95              		.global	_ZN11MutexLockerC1EPK5Mutexm
  96              		.thumb_set _ZN11MutexLockerC1EPK5Mutexm,_ZN11MutexLockerC2EPK5Mutexm
  97              		.section	.text._ZN11MutexLockerC2ERK5Mutexm,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN11MutexLockerC2ERK5Mutexm
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZN11MutexLockerC2ERK5Mutexm, %function
 106              	_ZN11MutexLockerC2ERK5Mutexm:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0122     		movs	r2, #1
 111 0002 0160     		str	r1, [r0]
 112 0004 0271     		strb	r2, [r0, #4]
 113 0006 7047     		bx	lr
 114              		.size	_ZN11MutexLockerC2ERK5Mutexm, .-_ZN11MutexLockerC2ERK5Mutexm
ARM GAS  /tmp/ccRaTQhh.s 			page 3


 115              		.global	_ZN11MutexLockerC1ERK5Mutexm
 116              		.thumb_set _ZN11MutexLockerC1ERK5Mutexm,_ZN11MutexLockerC2ERK5Mutexm
 117              		.section	.text._ZN11MutexLocker7ReleaseEv,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	_ZN11MutexLocker7ReleaseEv
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	_ZN11MutexLocker7ReleaseEv, %function
 126              	_ZN11MutexLocker7ReleaseEv:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 7047     		bx	lr
 131              		.size	_ZN11MutexLocker7ReleaseEv, .-_ZN11MutexLocker7ReleaseEv
 132 0002 00BF     		.section	.text._ZN11MutexLockerD2Ev,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	_ZN11MutexLockerD2Ev
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	_ZN11MutexLockerD2Ev, %function
 141              	_ZN11MutexLockerD2Ev:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 7047     		bx	lr
 146              		.size	_ZN11MutexLockerD2Ev, .-_ZN11MutexLockerD2Ev
 147              		.global	_ZN11MutexLockerD1Ev
 148              		.thumb_set _ZN11MutexLockerD1Ev,_ZN11MutexLockerD2Ev
 149 0002 00BF     		.section	.text._ZN9RTOSIface14GetCurrentTaskEv,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	_ZN9RTOSIface14GetCurrentTaskEv
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	_ZN9RTOSIface14GetCurrentTaskEv, %function
 158              	_ZN9RTOSIface14GetCurrentTaskEv:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 0020     		movs	r0, #0
 163 0002 7047     		bx	lr
 164              		.size	_ZN9RTOSIface14GetCurrentTaskEv, .-_ZN9RTOSIface14GetCurrentTaskEv
 165              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 166              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 167              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 168              	_ZL28cpu_irq_prev_interrupt_state:
 169 0000 00       		.space	1
 170              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 171              		.align	2
ARM GAS  /tmp/ccRaTQhh.s 			page 4


 172              		.type	_ZL32cpu_irq_critical_section_counter, %object
 173              		.size	_ZL32cpu_irq_critical_section_counter, 4
 174              	_ZL32cpu_irq_critical_section_counter:
 175 0000 00000000 		.space	4
 176              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 177              		.align	2
 178              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 179              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 180              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 181 0000 00000000 		.space	4
 182              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
