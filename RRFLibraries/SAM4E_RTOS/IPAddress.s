ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTIktBN.s 			page 1


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
  13              		.file	"IPAddress.cpp"
  14              		.text
  15              		.section	.text._ZN9IPAddress5SetV4EPKh,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9IPAddress5SetV4EPKh
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9IPAddress5SetV4EPKh, %function
  24              	_ZN9IPAddress5SetV4EPKh:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0B68     		ldr	r3, [r1]	@ unaligned
  29 0002 0360     		str	r3, [r0]
  30 0004 7047     		bx	lr
  31              		.size	_ZN9IPAddress5SetV4EPKh, .-_ZN9IPAddress5SetV4EPKh
  32 0006 00BF     		.section	.text._ZNK9IPAddress8UnpackV4EPh,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZNK9IPAddress8UnpackV4EPh
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZNK9IPAddress8UnpackV4EPh, %function
  41              	_ZNK9IPAddress8UnpackV4EPh:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
  46 0002 CB70     		strb	r3, [r1, #3]
  47 0004 4388     		ldrh	r3, [r0, #2]
  48 0006 8B70     		strb	r3, [r1, #2]
  49 0008 0368     		ldr	r3, [r0]
  50 000a 1B0A     		lsrs	r3, r3, #8
  51 000c 4B70     		strb	r3, [r1, #1]
  52 000e 0368     		ldr	r3, [r0]
  53 0010 0B70     		strb	r3, [r1]
  54 0012 7047     		bx	lr
  55              		.size	_ZNK9IPAddress8UnpackV4EPh, .-_ZNK9IPAddress8UnpackV4EPh
  56              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
