ARM GAS  /tmp/ccUbLhbh.s 			page 1


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
  14              		.section	.text.SystemInit,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	SystemInit
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	SystemInit, %function
  23              	SystemInit:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 184B     		ldr	r3, .L23
  28 0002 1949     		ldr	r1, .L23+4
  29 0004 194A     		ldr	r2, .L23+8
  30 0006 1960     		str	r1, [r3]
  31 0008 136A     		ldr	r3, [r2, #32]
  32 000a DB01     		lsls	r3, r3, #7
  33 000c 04D4     		bmi	.L5
  34 000e 184B     		ldr	r3, .L23+12
  35 0010 1362     		str	r3, [r2, #32]
  36              	.L4:
  37 0012 936E     		ldr	r3, [r2, #104]
  38 0014 D807     		lsls	r0, r3, #31
  39 0016 FCD5     		bpl	.L4
  40              	.L5:
  41 0018 144A     		ldr	r2, .L23+8
  42 001a 164B     		ldr	r3, .L23+16
  43 001c 1362     		str	r3, [r2, #32]
  44              	.L3:
  45 001e 936E     		ldr	r3, [r2, #104]
  46 0020 D903     		lsls	r1, r3, #15
  47 0022 FCD5     		bpl	.L3
  48 0024 136B     		ldr	r3, [r2, #48]
  49 0026 1148     		ldr	r0, .L23+8
  50 0028 23F00303 		bic	r3, r3, #3
  51 002c 43F00103 		orr	r3, r3, #1
  52 0030 1363     		str	r3, [r2, #48]
  53              	.L6:
  54 0032 836E     		ldr	r3, [r0, #104]
  55 0034 1B07     		lsls	r3, r3, #28
  56 0036 FCD5     		bpl	.L6
  57 0038 0F4B     		ldr	r3, .L23+20
ARM GAS  /tmp/ccUbLhbh.s 			page 2


  58 003a 0C49     		ldr	r1, .L23+8
  59 003c 8362     		str	r3, [r0, #40]
  60              	.L7:
  61 003e 8B6E     		ldr	r3, [r1, #104]
  62 0040 9807     		lsls	r0, r3, #30
  63 0042 FCD5     		bpl	.L7
  64 0044 1123     		movs	r3, #17
  65 0046 094A     		ldr	r2, .L23+8
  66 0048 0B63     		str	r3, [r1, #48]
  67              	.L8:
  68 004a 936E     		ldr	r3, [r2, #104]
  69 004c 1907     		lsls	r1, r3, #28
  70 004e FCD5     		bpl	.L8
  71 0050 1223     		movs	r3, #18
  72 0052 0649     		ldr	r1, .L23+8
  73 0054 1363     		str	r3, [r2, #48]
  74              	.L9:
  75 0056 8B6E     		ldr	r3, [r1, #104]
  76 0058 1B07     		lsls	r3, r3, #28
  77 005a FCD5     		bpl	.L9
  78 005c 074B     		ldr	r3, .L23+24
  79 005e 084A     		ldr	r2, .L23+28
  80 0060 1A60     		str	r2, [r3]
  81 0062 7047     		bx	lr
  82              	.L24:
  83              		.align	2
  84              	.L23:
  85 0064 000A0E40 		.word	1074661888
  86 0068 00050004 		.word	67110144
  87 006c 00040E40 		.word	1074660352
  88 0070 09083700 		.word	3606537
  89 0074 09083701 		.word	20383753
  90 0078 013F1320 		.word	538132225
  91 007c 00000000 		.word	.LANCHOR0
  92 0080 000E2707 		.word	120000000
  93              		.size	SystemInit, .-SystemInit
  94              		.global	SystemCoreClock
  95              		.section	.data.SystemCoreClock,"aw",%progbits
  96              		.align	2
  97              		.set	.LANCHOR0,. + 0
  98              		.type	SystemCoreClock, %object
  99              		.size	SystemCoreClock, 4
 100              	SystemCoreClock:
 101 0000 00093D00 		.word	4000000
 102              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
