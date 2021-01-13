ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc9Qbrik.s 			page 1


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
  13              		.file	"Strnlen.cpp"
  14              		.text
  15              		.section	.text._Z7StrnlenPKcj,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z7StrnlenPKcj
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z7StrnlenPKcj, %function
  24              	_Z7StrnlenPKcj:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 69B1     		cbz	r1, .L5
  29 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  30 0004 4BB1     		cbz	r3, .L6
  31 0006 0346     		mov	r3, r0
  32 0008 0020     		movs	r0, #0
  33 000a 02E0     		b	.L3
  34              	.L4:
  35 000c 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
  36 0010 22B1     		cbz	r2, .L1
  37              	.L3:
  38 0012 0130     		adds	r0, r0, #1
  39 0014 8142     		cmp	r1, r0
  40 0016 F9D1     		bne	.L4
  41 0018 7047     		bx	lr
  42              	.L6:
  43 001a 1846     		mov	r0, r3
  44              	.L1:
  45 001c 7047     		bx	lr
  46              	.L5:
  47 001e 0846     		mov	r0, r1
  48 0020 7047     		bx	lr
  49              		.size	_Z7StrnlenPKcj, .-_Z7StrnlenPKcj
  50 0022 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
