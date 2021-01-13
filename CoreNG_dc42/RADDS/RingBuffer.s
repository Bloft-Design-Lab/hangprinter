ARM GAS  /tmp/ccHazn9v.s 			page 1


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
  11              		.file	"RingBuffer.cpp"
  12              		.section	.text._ZN10RingBufferC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN10RingBufferC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN10RingBufferC2Ev, %function
  21              	_ZN10RingBufferC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 4FF40072 		mov	r2, #512
  26 0006 0021     		movs	r1, #0
  27 0008 0446     		mov	r4, r0
  28 000a FFF7FEFF 		bl	memset
  29 000e 0023     		movs	r3, #0
  30 0010 2046     		mov	r0, r4
  31 0012 C4F80032 		str	r3, [r4, #512]
  32 0016 C4F80432 		str	r3, [r4, #516]
  33 001a 10BD     		pop	{r4, pc}
  34              		.size	_ZN10RingBufferC2Ev, .-_ZN10RingBufferC2Ev
  35              		.global	_ZN10RingBufferC1Ev
  36              		.thumb_set _ZN10RingBufferC1Ev,_ZN10RingBufferC2Ev
  37              		.section	.text._ZN10RingBuffer10storeBlockEPKhj,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_ZN10RingBuffer10storeBlockEPKhj
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	_ZN10RingBuffer10storeBlockEPKhj, %function
  46              	_ZN10RingBuffer10storeBlockEPKhj:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  50 0004 D0F80442 		ldr	r4, [r0, #516]
  51 0008 D0F80032 		ldr	r3, [r0, #512]
  52 000c 04F2FF14 		addw	r4, r4, #511
  53 0010 E41A     		subs	r4, r4, r3
  54 0012 C4F30804 		ubfx	r4, r4, #0, #9
  55 0016 9442     		cmp	r4, r2
  56 0018 28BF     		it	cs
  57 001a 1446     		movcs	r4, r2
ARM GAS  /tmp/ccHazn9v.s 			page 2


  58 001c 8CB1     		cbz	r4, .L3
  59 001e D0F80062 		ldr	r6, [r0, #512]
  60 0022 0546     		mov	r5, r0
  61 0024 C6F50076 		rsb	r6, r6, #512
  62 0028 A642     		cmp	r6, r4
  63 002a 0DD9     		bls	.L11
  64 002c D0F80002 		ldr	r0, [r0, #512]
  65 0030 2246     		mov	r2, r4
  66 0032 2844     		add	r0, r0, r5
  67 0034 FFF7FEFF 		bl	memcpy
  68 0038 D5F80032 		ldr	r3, [r5, #512]
  69 003c 2344     		add	r3, r3, r4
  70 003e C5F80032 		str	r3, [r5, #512]
  71              	.L3:
  72 0042 2046     		mov	r0, r4
  73 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  74              	.L11:
  75 0048 0F46     		mov	r7, r1
  76 004a D0F80002 		ldr	r0, [r0, #512]
  77 004e 3246     		mov	r2, r6
  78 0050 A4EB0608 		sub	r8, r4, r6
  79 0054 2844     		add	r0, r0, r5
  80 0056 FFF7FEFF 		bl	memcpy
  81 005a B919     		adds	r1, r7, r6
  82 005c 4246     		mov	r2, r8
  83 005e 2846     		mov	r0, r5
  84 0060 FFF7FEFF 		bl	memcpy
  85 0064 C5F80082 		str	r8, [r5, #512]
  86 0068 2046     		mov	r0, r4
  87 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  88              		.size	_ZN10RingBuffer10storeBlockEPKhj, .-_ZN10RingBuffer10storeBlockEPKhj
  89 006e 00BF     		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
