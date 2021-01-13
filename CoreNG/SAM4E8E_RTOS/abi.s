ARM GAS  C:\Users\paja\AppData\Local\Temp\cciV8Rl2.s 			page 1


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
  13              		.file	"abi.cpp"
  14              		.text
  15              		.section	.text.__cxa_pure_virtual,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	__cxa_pure_virtual
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	__cxa_pure_virtual, %function
  24              	__cxa_pure_virtual:
  25              		@ Volatile: function does not return.
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28              		@ link register save eliminated.
  29              	.L2:
  30 0000 FEE7     		b	.L2
  31              		.size	__cxa_pure_virtual, .-__cxa_pure_virtual
  32 0002 00BF     		.section	.text.__cxa_deleted_virtual,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	__cxa_deleted_virtual
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	__cxa_deleted_virtual, %function
  41              	__cxa_deleted_virtual:
  42              		@ Volatile: function does not return.
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46              	.L5:
  47 0000 FEE7     		b	.L5
  48              		.size	__cxa_deleted_virtual, .-__cxa_deleted_virtual
  49 0002 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
