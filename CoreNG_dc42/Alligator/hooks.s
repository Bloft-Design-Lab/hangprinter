ARM GAS  /tmp/ccrrz5CH.s 			page 1


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
  11              		.file	"hooks.c"
  12              		.section	.text.__empty,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	__empty, %function
  20              	__empty:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 7047     		bx	lr
  25              		.size	__empty, .-__empty
  26              		.weak	yield
  27              		.thumb_set yield,__empty
  28 0002 00BF     		.section	.text.__false,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.syntax unified
  32              		.thumb
  33              		.thumb_func
  34              		.fpu softvfp
  35              		.type	__false, %function
  36              	__false:
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 0, uses_anonymous_args = 0
  39              		@ link register save eliminated.
  40 0000 0020     		movs	r0, #0
  41 0002 7047     		bx	lr
  42              		.size	__false, .-__false
  43              		.weak	sysTickHook
  44              		.thumb_set sysTickHook,__false
  45              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
