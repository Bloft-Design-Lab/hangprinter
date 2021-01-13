ARM GAS  /tmp/ccq24528.s 			page 1


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
  13              		.file	"IP4String.cpp"
  14              		.section	.text._ZN9IP4StringC2EPKh,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN9IP4StringC2EPKh
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9IP4StringC2EPKh, %function
  23              	_ZN9IP4StringC2EPKh:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 84B0     		sub	sp, sp, #16
  28 0004 CE78     		ldrb	r6, [r1, #3]	@ zero_extendqisi2
  29 0006 8D78     		ldrb	r5, [r1, #2]	@ zero_extendqisi2
  30 0008 4A78     		ldrb	r2, [r1, #1]	@ zero_extendqisi2
  31 000a 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
  32 000c 0092     		str	r2, [sp]
  33 000e CDE90156 		strd	r5, r6, [sp, #4]
  34 0012 044A     		ldr	r2, .L4
  35 0014 1021     		movs	r1, #16
  36 0016 0446     		mov	r4, r0
  37 0018 FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  38 001c 2046     		mov	r0, r4
  39 001e 04B0     		add	sp, sp, #16
  40              		@ sp needed
  41 0020 70BD     		pop	{r4, r5, r6, pc}
  42              	.L5:
  43 0022 00BF     		.align	2
  44              	.L4:
  45 0024 00000000 		.word	.LC0
  46              		.size	_ZN9IP4StringC2EPKh, .-_ZN9IP4StringC2EPKh
  47              		.global	_ZN9IP4StringC1EPKh
  48              		.thumb_set _ZN9IP4StringC1EPKh,_ZN9IP4StringC2EPKh
  49              		.section	.text._ZN9IP4StringC2Em,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZN9IP4StringC2Em
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_ZN9IP4StringC2Em, %function
ARM GAS  /tmp/ccq24528.s 			page 2


  58              	_ZN9IP4StringC2Em:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 10B5     		push	{r4, lr}
  62 0002 84B0     		sub	sp, sp, #16
  63 0004 0C0E     		lsrs	r4, r1, #24
  64 0006 C1F30742 		ubfx	r2, r1, #16, #8
  65 000a C1F30723 		ubfx	r3, r1, #8, #8
  66 000e CDE90124 		strd	r2, r4, [sp, #4]
  67 0012 0093     		str	r3, [sp]
  68 0014 044A     		ldr	r2, .L8
  69 0016 CBB2     		uxtb	r3, r1
  70 0018 1021     		movs	r1, #16
  71 001a 0446     		mov	r4, r0
  72 001c FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  73 0020 2046     		mov	r0, r4
  74 0022 04B0     		add	sp, sp, #16
  75              		@ sp needed
  76 0024 10BD     		pop	{r4, pc}
  77              	.L9:
  78 0026 00BF     		.align	2
  79              	.L8:
  80 0028 00000000 		.word	.LC0
  81              		.size	_ZN9IP4StringC2Em, .-_ZN9IP4StringC2Em
  82              		.global	_ZN9IP4StringC1Em
  83              		.thumb_set _ZN9IP4StringC1Em,_ZN9IP4StringC2Em
  84              		.section	.rodata._ZN9IP4StringC2EPKh.str1.4,"aMS",%progbits,1
  85              		.align	2
  86              	.LC0:
  87 0000 25752E25 		.ascii	"%u.%u.%u.%u\000"
  87      752E2575 
  87      2E257500 
  88              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
