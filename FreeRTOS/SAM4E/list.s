ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7mbmKL.s 			page 1


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
  13              		.file	"list.c"
  14              		.text
  15              		.section	.text.vListInitialise,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	vListInitialise
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	vListInitialise, %function
  24              	vListInitialise:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 00F10803 		add	r3, r0, #8
  29 0004 4FF0FF31 		mov	r1, #-1
  30 0008 0022     		movs	r2, #0
  31 000a 8160     		str	r1, [r0, #8]
  32 000c 0260     		str	r2, [r0]
  33 000e 4360     		str	r3, [r0, #4]
  34 0010 C0E90333 		strd	r3, r3, [r0, #12]
  35 0014 7047     		bx	lr
  36              		.size	vListInitialise, .-vListInitialise
  37 0016 00BF     		.section	.text.vListInitialiseItem,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	vListInitialiseItem
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	vListInitialiseItem, %function
  46              	vListInitialiseItem:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 0023     		movs	r3, #0
  51 0002 0361     		str	r3, [r0, #16]
  52 0004 7047     		bx	lr
  53              		.size	vListInitialiseItem, .-vListInitialiseItem
  54 0006 00BF     		.section	.text.vListInsertEnd,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	vListInsertEnd
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7mbmKL.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	vListInsertEnd, %function
  63              	vListInsertEnd:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 4368     		ldr	r3, [r0, #4]
  68 0002 0268     		ldr	r2, [r0]
  69 0004 10B4     		push	{r4}
  70 0006 9C68     		ldr	r4, [r3, #8]
  71 0008 8C60     		str	r4, [r1, #8]
  72 000a 9C68     		ldr	r4, [r3, #8]
  73 000c 4B60     		str	r3, [r1, #4]
  74 000e 0132     		adds	r2, r2, #1
  75 0010 6160     		str	r1, [r4, #4]
  76 0012 9960     		str	r1, [r3, #8]
  77 0014 5DF8044B 		ldr	r4, [sp], #4
  78 0018 0861     		str	r0, [r1, #16]
  79 001a 0260     		str	r2, [r0]
  80 001c 7047     		bx	lr
  81              		.size	vListInsertEnd, .-vListInsertEnd
  82 001e 00BF     		.section	.text.vListInsert,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	vListInsert
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	vListInsert, %function
  91              	vListInsert:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 30B4     		push	{r4, r5}
  96 0002 0D68     		ldr	r5, [r1]
  97 0004 6B1C     		adds	r3, r5, #1
  98 0006 11D0     		beq	.L12
  99 0008 00F10802 		add	r2, r0, #8
 100 000c 00E0     		b	.L9
 101              	.L10:
 102 000e 1A46     		mov	r2, r3
 103              	.L9:
 104 0010 5368     		ldr	r3, [r2, #4]
 105 0012 1C68     		ldr	r4, [r3]
 106 0014 AC42     		cmp	r4, r5
 107 0016 FAD9     		bls	.L10
 108              	.L8:
 109 0018 0468     		ldr	r4, [r0]
 110 001a 4B60     		str	r3, [r1, #4]
 111 001c 0134     		adds	r4, r4, #1
 112 001e 9960     		str	r1, [r3, #8]
 113 0020 8A60     		str	r2, [r1, #8]
 114 0022 5160     		str	r1, [r2, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7mbmKL.s 			page 3


 115 0024 0861     		str	r0, [r1, #16]
 116 0026 0460     		str	r4, [r0]
 117 0028 30BC     		pop	{r4, r5}
 118 002a 7047     		bx	lr
 119              	.L12:
 120 002c 0269     		ldr	r2, [r0, #16]
 121 002e 5368     		ldr	r3, [r2, #4]
 122 0030 F2E7     		b	.L8
 123              		.size	vListInsert, .-vListInsert
 124 0032 00BF     		.section	.text.uxListRemove,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	uxListRemove
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 132              		.type	uxListRemove, %function
 133              	uxListRemove:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              		@ link register save eliminated.
 137 0000 4268     		ldr	r2, [r0, #4]
 138 0002 8168     		ldr	r1, [r0, #8]
 139 0004 0369     		ldr	r3, [r0, #16]
 140 0006 10B4     		push	{r4}
 141 0008 9160     		str	r1, [r2, #8]
 142 000a 8168     		ldr	r1, [r0, #8]
 143 000c 5C68     		ldr	r4, [r3, #4]
 144 000e 4A60     		str	r2, [r1, #4]
 145 0010 1A68     		ldr	r2, [r3]
 146 0012 8442     		cmp	r4, r0
 147 0014 08BF     		it	eq
 148 0016 5960     		streq	r1, [r3, #4]
 149 0018 013A     		subs	r2, r2, #1
 150 001a 0021     		movs	r1, #0
 151 001c 0161     		str	r1, [r0, #16]
 152 001e 1A60     		str	r2, [r3]
 153 0020 1868     		ldr	r0, [r3]
 154 0022 5DF8044B 		ldr	r4, [sp], #4
 155 0026 7047     		bx	lr
 156              		.size	uxListRemove, .-uxListRemove
 157              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
