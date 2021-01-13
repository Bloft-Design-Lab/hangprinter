ARM GAS  /tmp/ccJRx9GF.s 			page 1


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
  11              		.file	"IP4String.cpp"
  12              		.section	.text._ZN9IP4StringC2EPKh,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN9IP4StringC2EPKh
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9IP4StringC2EPKh, %function
  21              	_ZN9IP4StringC2EPKh:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 30B5     		push	{r4, r5, lr}
  25 0002 CD78     		ldrb	r5, [r1, #3]	@ zero_extendqisi2
  26 0004 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
  27 0006 4A78     		ldrb	r2, [r1, #1]	@ zero_extendqisi2
  28 0008 85B0     		sub	sp, sp, #20
  29 000a 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
  30 000c 8DE83400 		stm	sp, {r2, r4, r5}
  31 0010 0446     		mov	r4, r0
  32 0012 034A     		ldr	r2, .L3
  33 0014 1021     		movs	r1, #16
  34 0016 FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  35 001a 2046     		mov	r0, r4
  36 001c 05B0     		add	sp, sp, #20
  37              		@ sp needed
  38 001e 30BD     		pop	{r4, r5, pc}
  39              	.L4:
  40              		.align	2
  41              	.L3:
  42 0020 00000000 		.word	.LC0
  43              		.size	_ZN9IP4StringC2EPKh, .-_ZN9IP4StringC2EPKh
  44              		.global	_ZN9IP4StringC1EPKh
  45              		.thumb_set _ZN9IP4StringC1EPKh,_ZN9IP4StringC2EPKh
  46              		.section	.text._ZN9IP4StringC2Em,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	_ZN9IP4StringC2Em
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	_ZN9IP4StringC2Em, %function
  55              	_ZN9IP4StringC2Em:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJRx9GF.s 			page 2


  58 0000 10B5     		push	{r4, lr}
  59 0002 0C0E     		lsrs	r4, r1, #24
  60 0004 84B0     		sub	sp, sp, #16
  61 0006 0294     		str	r4, [sp, #8]
  62 0008 0446     		mov	r4, r0
  63 000a C1F30742 		ubfx	r2, r1, #16, #8
  64 000e C1F30723 		ubfx	r3, r1, #8, #8
  65 0012 0192     		str	r2, [sp, #4]
  66 0014 0093     		str	r3, [sp]
  67 0016 044A     		ldr	r2, .L7
  68 0018 CBB2     		uxtb	r3, r1
  69 001a 1021     		movs	r1, #16
  70 001c FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
  71 0020 2046     		mov	r0, r4
  72 0022 04B0     		add	sp, sp, #16
  73              		@ sp needed
  74 0024 10BD     		pop	{r4, pc}
  75              	.L8:
  76 0026 00BF     		.align	2
  77              	.L7:
  78 0028 00000000 		.word	.LC0
  79              		.size	_ZN9IP4StringC2Em, .-_ZN9IP4StringC2Em
  80              		.global	_ZN9IP4StringC1Em
  81              		.thumb_set _ZN9IP4StringC1Em,_ZN9IP4StringC2Em
  82              		.section	.rodata._ZN9IP4StringC2EPKh.str1.4,"aMS",%progbits,1
  83              		.align	2
  84              	.LC0:
  85 0000 25752E25 		.ascii	"%u.%u.%u.%u\000"
  85      752E2575 
  85      2E257500 
  86              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
