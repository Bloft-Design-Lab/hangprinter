ARM GAS  /tmp/ccTJI4Hc.s 			page 1


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
  11              		.file	"new.cpp"
  12              		.section	.text._Znwj,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Znwj
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Znwj, %function
  21              	_Znwj:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 FFF7FEBF 		b	malloc
  26              		.size	_Znwj, .-_Znwj
  27              		.section	.text._Znaj,"ax",%progbits
  28              		.align	1
  29              		.p2align 2,,3
  30              		.global	_Znaj
  31              		.syntax unified
  32              		.thumb
  33              		.thumb_func
  34              		.fpu softvfp
  35              		.type	_Znaj, %function
  36              	_Znaj:
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 0, uses_anonymous_args = 0
  39              		@ link register save eliminated.
  40 0000 FFF7FEBF 		b	malloc
  41              		.size	_Znaj, .-_Znaj
  42              		.section	.text._ZdlPv,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	_ZdlPv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu softvfp
  50              		.type	_ZdlPv, %function
  51              	_ZdlPv:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 FFF7FEBF 		b	free
  56              		.size	_ZdlPv, .-_ZdlPv
  57              		.section	.text._ZdaPv,"ax",%progbits
ARM GAS  /tmp/ccTJI4Hc.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZdaPv
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  65              		.type	_ZdaPv, %function
  66              	_ZdaPv:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 FFF7FEBF 		b	free
  71              		.size	_ZdaPv, .-_ZdaPv
  72              		.section	.text._ZdlPvj,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZdlPvj
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu softvfp
  80              		.type	_ZdlPvj, %function
  81              	_ZdlPvj:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 FFF7FEBF 		b	free
  86              		.size	_ZdlPvj, .-_ZdlPvj
  87              		.section	.text._ZdaPvj,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZdaPvj
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu softvfp
  95              		.type	_ZdaPvj, %function
  96              	_ZdaPvj:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 FFF7FEBF 		b	free
 101              		.size	_ZdaPvj, .-_ZdaPvj
 102              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
