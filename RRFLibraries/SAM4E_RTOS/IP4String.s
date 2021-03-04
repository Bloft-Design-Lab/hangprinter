ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc74o3VN.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN9IP4StringC2EPKh,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9IP4StringC2EPKh
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9IP4StringC2EPKh, %function
  24              	_ZN9IP4StringC2EPKh:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 70B5     		push	{r4, r5, r6, lr}
  28 0002 84B0     		sub	sp, sp, #16
  29 0004 CE78     		ldrb	r6, [r1, #3]	@ zero_extendqisi2
  30 0006 8D78     		ldrb	r5, [r1, #2]	@ zero_extendqisi2
  31 0008 4A78     		ldrb	r2, [r1, #1]	@ zero_extendqisi2
  32 000a 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
  33 000c 0092     		str	r2, [sp]
  34 000e CDE90156 		strd	r5, r6, [sp, #4]
  35 0012 044A     		ldr	r2, .L4
  36 0014 1021     		movs	r1, #16
  37 0016 0446     		mov	r4, r0
  38 0018 FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  39 001c 2046     		mov	r0, r4
  40 001e 04B0     		add	sp, sp, #16
  41              		@ sp needed
  42 0020 70BD     		pop	{r4, r5, r6, pc}
  43              	.L5:
  44 0022 00BF     		.align	2
  45              	.L4:
  46 0024 00000000 		.word	.LC0
  47              		.size	_ZN9IP4StringC2EPKh, .-_ZN9IP4StringC2EPKh
  48              		.global	_ZN9IP4StringC1EPKh
  49              		.thumb_set _ZN9IP4StringC1EPKh,_ZN9IP4StringC2EPKh
  50              		.section	.text._ZN9IP4StringC2Em,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	_ZN9IP4StringC2Em
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc74o3VN.s 			page 2


  58              		.type	_ZN9IP4StringC2Em, %function
  59              	_ZN9IP4StringC2Em:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62 0000 10B5     		push	{r4, lr}
  63 0002 84B0     		sub	sp, sp, #16
  64 0004 0C0E     		lsrs	r4, r1, #24
  65 0006 C1F30742 		ubfx	r2, r1, #16, #8
  66 000a C1F30723 		ubfx	r3, r1, #8, #8
  67 000e CDE90124 		strd	r2, r4, [sp, #4]
  68 0012 0093     		str	r3, [sp]
  69 0014 044A     		ldr	r2, .L8
  70 0016 CBB2     		uxtb	r3, r1
  71 0018 1021     		movs	r1, #16
  72 001a 0446     		mov	r4, r0
  73 001c FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  74 0020 2046     		mov	r0, r4
  75 0022 04B0     		add	sp, sp, #16
  76              		@ sp needed
  77 0024 10BD     		pop	{r4, pc}
  78              	.L9:
  79 0026 00BF     		.align	2
  80              	.L8:
  81 0028 00000000 		.word	.LC0
  82              		.size	_ZN9IP4StringC2Em, .-_ZN9IP4StringC2Em
  83              		.global	_ZN9IP4StringC1Em
  84              		.thumb_set _ZN9IP4StringC1Em,_ZN9IP4StringC2Em
  85              		.section	.rodata._ZN9IP4StringC2EPKh.str1.4,"aMS",%progbits,1
  86              		.align	2
  87              	.LC0:
  88 0000 25752E25 		.ascii	"%u.%u.%u.%u\000"
  88      752E2575 
  88      2E257500 
  89              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
