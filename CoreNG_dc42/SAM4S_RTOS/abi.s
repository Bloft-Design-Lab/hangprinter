ARM GAS  /tmp/cc9lbojS.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"abi.cpp"
  12              		.section	.text.__cxa_pure_virtual,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	__cxa_pure_virtual
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	__cxa_pure_virtual, %function
  21              	__cxa_pure_virtual:
  22              		@ Volatile: function does not return.
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26              	.L2:
  27 0000 FEE7     		b	.L2
  28              		.size	__cxa_pure_virtual, .-__cxa_pure_virtual
  29 0002 00BF     		.section	.text.__cxa_deleted_virtual,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	__cxa_deleted_virtual
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	__cxa_deleted_virtual, %function
  38              	__cxa_deleted_virtual:
  39              		@ Volatile: function does not return.
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43              	.L4:
  44 0000 FEE7     		b	.L4
  45              		.size	__cxa_deleted_virtual, .-__cxa_deleted_virtual
  46 0002 00BF     		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
