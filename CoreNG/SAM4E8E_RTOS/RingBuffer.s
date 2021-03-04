ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccNwfJ2V.s 			page 1


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
  13              		.file	"RingBuffer.cpp"
  14              		.text
  15              		.section	.text._ZN10RingBufferC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN10RingBufferC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN10RingBufferC2Ev, %function
  24              	_ZN10RingBufferC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 4FF40072 		mov	r2, #512
  29 0006 0021     		movs	r1, #0
  30 0008 FFF7FEFF 		bl	memset
  31 000c 0022     		movs	r2, #0
  32 000e C0F80022 		str	r2, [r0, #512]
  33 0012 C0F80422 		str	r2, [r0, #516]
  34 0016 08BD     		pop	{r3, pc}
  35              		.size	_ZN10RingBufferC2Ev, .-_ZN10RingBufferC2Ev
  36              		.global	_ZN10RingBufferC1Ev
  37              		.thumb_set _ZN10RingBufferC1Ev,_ZN10RingBufferC2Ev
  38              		.section	.text._ZN10RingBuffer10storeBlockEPKhj,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_ZN10RingBuffer10storeBlockEPKhj
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	_ZN10RingBuffer10storeBlockEPKhj, %function
  47              	_ZN10RingBuffer10storeBlockEPKhj:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  51 0004 D0F80442 		ldr	r4, [r0, #516]
  52 0008 D0F80052 		ldr	r5, [r0, #512]
  53 000c 04F2FF14 		addw	r4, r4, #511
  54 0010 641B     		subs	r4, r4, r5
  55 0012 C4F30804 		ubfx	r4, r4, #0, #9
  56 0016 9442     		cmp	r4, r2
  57 0018 28BF     		it	cs
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccNwfJ2V.s 			page 2


  58 001a 1446     		movcs	r4, r2
  59 001c 8CB1     		cbz	r4, .L4
  60 001e D0F80062 		ldr	r6, [r0, #512]
  61 0022 C6F50076 		rsb	r6, r6, #512
  62 0026 A642     		cmp	r6, r4
  63 0028 0546     		mov	r5, r0
  64 002a 0DD9     		bls	.L11
  65 002c D0F80002 		ldr	r0, [r0, #512]
  66 0030 2246     		mov	r2, r4
  67 0032 2844     		add	r0, r0, r5
  68 0034 FFF7FEFF 		bl	memcpy
  69 0038 D5F80032 		ldr	r3, [r5, #512]
  70 003c 2344     		add	r3, r3, r4
  71 003e C5F80032 		str	r3, [r5, #512]
  72              	.L4:
  73 0042 2046     		mov	r0, r4
  74 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  75              	.L11:
  76 0048 D0F80002 		ldr	r0, [r0, #512]
  77 004c 0F46     		mov	r7, r1
  78 004e 3246     		mov	r2, r6
  79 0050 A4EB0608 		sub	r8, r4, r6
  80 0054 2844     		add	r0, r0, r5
  81 0056 FFF7FEFF 		bl	memcpy
  82 005a B919     		adds	r1, r7, r6
  83 005c 4246     		mov	r2, r8
  84 005e 2846     		mov	r0, r5
  85 0060 FFF7FEFF 		bl	memcpy
  86 0064 C5F80082 		str	r8, [r5, #512]
  87 0068 2046     		mov	r0, r4
  88 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  89              		.size	_ZN10RingBuffer10storeBlockEPKhj, .-_ZN10RingBuffer10storeBlockEPKhj
  90 006e 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
