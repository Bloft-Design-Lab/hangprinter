ARM GAS  /tmp/ccsqjV53.s 			page 1


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
  14              		.section	.text._ZN10RingBufferC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN10RingBufferC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10RingBufferC2Ev, %function
  23              	_ZN10RingBufferC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 4FF40072 		mov	r2, #512
  28 0006 0446     		mov	r4, r0
  29 0008 0021     		movs	r1, #0
  30 000a FFF7FEFF 		bl	memset
  31 000e 0023     		movs	r3, #0
  32 0010 C4F80032 		str	r3, [r4, #512]
  33 0014 2046     		mov	r0, r4
  34 0016 C4F80432 		str	r3, [r4, #516]
  35 001a 10BD     		pop	{r4, pc}
  36              		.size	_ZN10RingBufferC2Ev, .-_ZN10RingBufferC2Ev
  37              		.global	_ZN10RingBufferC1Ev
  38              		.thumb_set _ZN10RingBufferC1Ev,_ZN10RingBufferC2Ev
  39              		.section	.text._ZN10RingBuffer10storeBlockEPKhj,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	_ZN10RingBuffer10storeBlockEPKhj
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	_ZN10RingBuffer10storeBlockEPKhj, %function
  48              	_ZN10RingBuffer10storeBlockEPKhj:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  52 0004 D0F80442 		ldr	r4, [r0, #516]
  53 0008 D0F80052 		ldr	r5, [r0, #512]
  54 000c 04F2FF14 		addw	r4, r4, #511
  55 0010 641B     		subs	r4, r4, r5
  56 0012 C4F30804 		ubfx	r4, r4, #0, #9
  57 0016 9442     		cmp	r4, r2
ARM GAS  /tmp/ccsqjV53.s 			page 2


  58 0018 28BF     		it	cs
  59 001a 1446     		movcs	r4, r2
  60 001c 8CB1     		cbz	r4, .L3
  61 001e D0F80062 		ldr	r6, [r0, #512]
  62 0022 C6F50076 		rsb	r6, r6, #512
  63 0026 A642     		cmp	r6, r4
  64 0028 0546     		mov	r5, r0
  65 002a 0DD9     		bls	.L11
  66 002c D0F80002 		ldr	r0, [r0, #512]
  67 0030 2246     		mov	r2, r4
  68 0032 2844     		add	r0, r0, r5
  69 0034 FFF7FEFF 		bl	memcpy
  70 0038 D5F80032 		ldr	r3, [r5, #512]
  71 003c 2344     		add	r3, r3, r4
  72 003e C5F80032 		str	r3, [r5, #512]
  73              	.L3:
  74 0042 2046     		mov	r0, r4
  75 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  76              	.L11:
  77 0048 D0F80002 		ldr	r0, [r0, #512]
  78 004c 0F46     		mov	r7, r1
  79 004e 3246     		mov	r2, r6
  80 0050 A4EB0608 		sub	r8, r4, r6
  81 0054 2844     		add	r0, r0, r5
  82 0056 FFF7FEFF 		bl	memcpy
  83 005a B919     		adds	r1, r7, r6
  84 005c 4246     		mov	r2, r8
  85 005e 2846     		mov	r0, r5
  86 0060 FFF7FEFF 		bl	memcpy
  87 0064 C5F80082 		str	r8, [r5, #512]
  88 0068 2046     		mov	r0, r4
  89 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  90              		.size	_ZN10RingBuffer10storeBlockEPKhj, .-_ZN10RingBuffer10storeBlockEPKhj
  91 006e 00BF     		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
