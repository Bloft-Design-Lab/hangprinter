ARM GAS  /tmp/ccDkEos1.s 			page 1


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
  11              		.file	"Strnlen.cpp"
  12              		.section	.text._Z7StrnlenPKcj,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z7StrnlenPKcj
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z7StrnlenPKcj, %function
  21              	_Z7StrnlenPKcj:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 69B1     		cbz	r1, .L5
  26 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  27 0004 4BB1     		cbz	r3, .L6
  28 0006 0346     		mov	r3, r0
  29 0008 0020     		movs	r0, #0
  30 000a 02E0     		b	.L3
  31              	.L4:
  32 000c 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
  33 0010 22B1     		cbz	r2, .L1
  34              	.L3:
  35 0012 0130     		adds	r0, r0, #1
  36 0014 8142     		cmp	r1, r0
  37 0016 F9D1     		bne	.L4
  38 0018 7047     		bx	lr
  39              	.L6:
  40 001a 1846     		mov	r0, r3
  41              	.L1:
  42 001c 7047     		bx	lr
  43              	.L5:
  44 001e 0846     		mov	r0, r1
  45 0020 7047     		bx	lr
  46              		.size	_Z7StrnlenPKcj, .-_Z7StrnlenPKcj
  47 0022 00BF     		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
