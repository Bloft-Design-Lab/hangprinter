ARM GAS  /tmp/ccccOgk1.s 			page 1


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
  11              		.file	"DueFlashStorage.cpp"
  12              		.section	.text._ZN15DueFlashStorage4readEmPvm,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN15DueFlashStorage4readEmPvm
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN15DueFlashStorage4readEmPvm, %function
  21              	_ZN15DueFlashStorage4readEmPvm:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0B46     		mov	r3, r1
  26 0002 00F57F21 		add	r1, r0, #1044480
  27 0006 01F54061 		add	r1, r1, #3072
  28 000a 1846     		mov	r0, r3
  29 000c FFF7FEBF 		b	memcpy
  30              		.size	_ZN15DueFlashStorage4readEmPvm, .-_ZN15DueFlashStorage4readEmPvm
  31              		.section	.text._ZN15DueFlashStorage5writeEmPKvm,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN15DueFlashStorage5writeEmPKvm
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu softvfp
  39              		.type	_ZN15DueFlashStorage5writeEmPKvm, %function
  40              	_ZN15DueFlashStorage5writeEmPKvm:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  44 0004 00F57F24 		add	r4, r0, #1044480
  45 0008 04F54064 		add	r4, r4, #3072
  46 000c B4F5402F 		cmp	r4, #786432
  47 0010 0AD3     		bcc	.L8
  48 0012 8318     		adds	r3, r0, r2
  49 0014 03F57F23 		add	r3, r3, #1044480
  50 0018 03F54065 		add	r5, r3, #3072
  51 001c B5F5801F 		cmp	r5, #1048576
  52 0020 02D8     		bhi	.L8
  53 0022 10F00305 		ands	r5, r0, #3
  54 0026 02D0     		beq	.L11
  55              	.L8:
  56 0028 0020     		movs	r0, #0
  57 002a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  /tmp/ccccOgk1.s 			page 2


  58              	.L11:
  59 002e 1746     		mov	r7, r2
  60 0030 8846     		mov	r8, r1
  61              		.syntax unified
  62              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  63 0032 EFF3108A 		MRS r10, primask
  64              	@ 0 "" 2
  65              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  66 0036 72B6     		cpsid i
  67              	@ 0 "" 2
  68              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  69 0038 BFF35F8F 		dmb
  70              	@ 0 "" 2
  71              		.thumb
  72              		.syntax unified
  73 003c DFF85490 		ldr	r9, .L13
  74 0040 03F6FF36 		addw	r6, r3, #3071
  75 0044 3146     		mov	r1, r6
  76 0046 2B46     		mov	r3, r5
  77 0048 2A46     		mov	r2, r5
  78 004a 2046     		mov	r0, r4
  79 004c 89F80050 		strb	r5, [r9]
  80 0050 FFF7FEFF 		bl	flash_unlock
  81 0054 0346     		mov	r3, r0
  82 0056 68B1     		cbz	r0, .L12
  83              	.L4:
  84 0058 BAF1000F 		cmp	r10, #0
  85 005c 05D1     		bne	.L5
  86 005e 0122     		movs	r2, #1
  87 0060 89F80020 		strb	r2, [r9]
  88              		.syntax unified
  89              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  90 0064 BFF35F8F 		dmb
  91              	@ 0 "" 2
  92              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  93 0068 62B6     		cpsie i
  94              	@ 0 "" 2
  95              		.thumb
  96              		.syntax unified
  97              	.L5:
  98 006a B3FA83F0 		clz	r0, r3
  99 006e 4009     		lsrs	r0, r0, #5
 100 0070 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 101              	.L12:
 102 0074 0123     		movs	r3, #1
 103 0076 3A46     		mov	r2, r7
 104 0078 4146     		mov	r1, r8
 105 007a 2046     		mov	r0, r4
 106 007c FFF7FEFF 		bl	flash_write
 107 0080 0346     		mov	r3, r0
 108 0082 0028     		cmp	r0, #0
 109 0084 E8D1     		bne	.L4
 110 0086 1A46     		mov	r2, r3
 111 0088 3146     		mov	r1, r6
 112 008a 2046     		mov	r0, r4
 113 008c FFF7FEFF 		bl	flash_lock
 114 0090 0346     		mov	r3, r0
ARM GAS  /tmp/ccccOgk1.s 			page 3


 115 0092 E1E7     		b	.L4
 116              	.L14:
 117              		.align	2
 118              	.L13:
 119 0094 00000000 		.word	g_interrupt_enabled
 120              		.size	_ZN15DueFlashStorage5writeEmPKvm, .-_ZN15DueFlashStorage5writeEmPKvm
 121              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 122              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 123              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 124              	_ZL28cpu_irq_prev_interrupt_state:
 125 0000 00       		.space	1
 126              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 127              		.align	2
 128              		.type	_ZL32cpu_irq_critical_section_counter, %object
 129              		.size	_ZL32cpu_irq_critical_section_counter, 4
 130              	_ZL32cpu_irq_critical_section_counter:
 131 0000 00000000 		.space	4
 132              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
