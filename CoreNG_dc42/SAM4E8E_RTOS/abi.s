ARM GAS  /tmp/ccVrkELA.s 			page 1


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
  14              		.section	.text.__cxa_pure_virtual,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	__cxa_pure_virtual
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	__cxa_pure_virtual, %function
  23              	__cxa_pure_virtual:
  24              		@ Volatile: function does not return.
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28              	.L2:
  29 0000 FEE7     		b	.L2
  30              		.size	__cxa_pure_virtual, .-__cxa_pure_virtual
  31 0002 00BF     		.section	.text.__cxa_deleted_virtual,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	__cxa_deleted_virtual
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	__cxa_deleted_virtual, %function
  40              	__cxa_deleted_virtual:
  41              		@ Volatile: function does not return.
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45              	.L4:
  46 0000 FEE7     		b	.L4
  47              		.size	__cxa_deleted_virtual, .-__cxa_deleted_virtual
  48 0002 00BF     		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
