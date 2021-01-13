ARM GAS  /tmp/ccw9DczE.s 			page 1


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
  14              		.section	.text._Z7StrnlenPKcj,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z7StrnlenPKcj
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z7StrnlenPKcj, %function
  23              	_Z7StrnlenPKcj:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 69B1     		cbz	r1, .L5
  28 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  29 0004 4BB1     		cbz	r3, .L6
  30 0006 0346     		mov	r3, r0
  31 0008 0020     		movs	r0, #0
  32 000a 02E0     		b	.L3
  33              	.L4:
  34 000c 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
  35 0010 22B1     		cbz	r2, .L1
  36              	.L3:
  37 0012 0130     		adds	r0, r0, #1
  38 0014 8142     		cmp	r1, r0
  39 0016 F9D1     		bne	.L4
  40 0018 7047     		bx	lr
  41              	.L6:
  42 001a 1846     		mov	r0, r3
  43              	.L1:
  44 001c 7047     		bx	lr
  45              	.L5:
  46 001e 0846     		mov	r0, r1
  47 0020 7047     		bx	lr
  48              		.size	_Z7StrnlenPKcj, .-_Z7StrnlenPKcj
  49 0022 00BF     		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
