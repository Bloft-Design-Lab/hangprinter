ARM GAS  C:\Users\paja\AppData\Local\Temp\cckhGAoA.s 			page 1


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
  13              		.file	"system_sam4e.c"
  14              		.text
  15              		.section	.text.SystemInit,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	SystemInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	SystemInit, %function
  24              	SystemInit:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 184A     		ldr	r2, .L22
  29 0002 1949     		ldr	r1, .L22+4
  30 0004 194B     		ldr	r3, .L22+8
  31 0006 1160     		str	r1, [r2]
  32 0008 1A6A     		ldr	r2, [r3, #32]
  33 000a D201     		lsls	r2, r2, #7
  34 000c 04D4     		bmi	.L2
  35 000e 184A     		ldr	r2, .L22+12
  36 0010 1A62     		str	r2, [r3, #32]
  37              	.L3:
  38 0012 9A6E     		ldr	r2, [r3, #104]
  39 0014 D007     		lsls	r0, r2, #31
  40 0016 FCD5     		bpl	.L3
  41              	.L2:
  42 0018 144A     		ldr	r2, .L22+8
  43 001a 164B     		ldr	r3, .L22+16
  44 001c 1362     		str	r3, [r2, #32]
  45              	.L4:
  46 001e 936E     		ldr	r3, [r2, #104]
  47 0020 D903     		lsls	r1, r3, #15
  48 0022 FCD5     		bpl	.L4
  49 0024 136B     		ldr	r3, [r2, #48]
  50 0026 1148     		ldr	r0, .L22+8
  51 0028 23F00303 		bic	r3, r3, #3
  52 002c 43F00103 		orr	r3, r3, #1
  53 0030 1363     		str	r3, [r2, #48]
  54              	.L5:
  55 0032 836E     		ldr	r3, [r0, #104]
  56 0034 1B07     		lsls	r3, r3, #28
  57 0036 FCD5     		bpl	.L5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cckhGAoA.s 			page 2


  58 0038 0F4B     		ldr	r3, .L22+20
  59 003a 0C49     		ldr	r1, .L22+8
  60 003c 8362     		str	r3, [r0, #40]
  61              	.L6:
  62 003e 8B6E     		ldr	r3, [r1, #104]
  63 0040 9807     		lsls	r0, r3, #30
  64 0042 FCD5     		bpl	.L6
  65 0044 1123     		movs	r3, #17
  66 0046 094A     		ldr	r2, .L22+8
  67 0048 0B63     		str	r3, [r1, #48]
  68              	.L7:
  69 004a 936E     		ldr	r3, [r2, #104]
  70 004c 1907     		lsls	r1, r3, #28
  71 004e FCD5     		bpl	.L7
  72 0050 1223     		movs	r3, #18
  73 0052 0649     		ldr	r1, .L22+8
  74 0054 1363     		str	r3, [r2, #48]
  75              	.L8:
  76 0056 8B6E     		ldr	r3, [r1, #104]
  77 0058 1B07     		lsls	r3, r3, #28
  78 005a FCD5     		bpl	.L8
  79 005c 074B     		ldr	r3, .L22+24
  80 005e 084A     		ldr	r2, .L22+28
  81 0060 1A60     		str	r2, [r3]
  82 0062 7047     		bx	lr
  83              	.L23:
  84              		.align	2
  85              	.L22:
  86 0064 000A0E40 		.word	1074661888
  87 0068 00050004 		.word	67110144
  88 006c 00040E40 		.word	1074660352
  89 0070 09083700 		.word	3606537
  90 0074 09083701 		.word	20383753
  91 0078 013F1320 		.word	538132225
  92 007c 00000000 		.word	.LANCHOR0
  93 0080 000E2707 		.word	120000000
  94              		.size	SystemInit, .-SystemInit
  95              		.global	SystemCoreClock
  96              		.section	.data.SystemCoreClock,"aw",%progbits
  97              		.align	2
  98              		.set	.LANCHOR0,. + 0
  99              		.type	SystemCoreClock, %object
 100              		.size	SystemCoreClock, 4
 101              	SystemCoreClock:
 102 0000 00093D00 		.word	4000000
 103              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
