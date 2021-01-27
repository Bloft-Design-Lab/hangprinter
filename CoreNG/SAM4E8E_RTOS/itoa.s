ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdTidCW.s 			page 1


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
  13              		.file	"itoa.c"
  14              		.text
  15              		.section	.text.ltoa,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	ltoa
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	ltoa, %function
  24              	ltoa:
  25              		@ args = 0, pretend = 0, frame = 40
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0029     		cmp	r1, #0
  29 0002 41D0     		beq	.L15
  30 0004 931E     		subs	r3, r2, #2
  31 0006 222B     		cmp	r3, #34
  32 0008 3ED8     		bhi	.L15
  33 000a F0B4     		push	{r4, r5, r6, r7}
  34 000c 0A2A     		cmp	r2, #10
  35 000e 8AB0     		sub	sp, sp, #40
  36 0010 34D0     		beq	.L23
  37              	.L3:
  38 0012 4FF0000C 		mov	ip, #0
  39              	.L4:
  40 0016 01AE     		add	r6, sp, #4
  41 0018 3346     		mov	r3, r6
  42 001a 78B1     		cbz	r0, .L24
  43              	.L8:
  44 001c B0FBF2F5 		udiv	r5, r0, r2
  45 0020 02FB1504 		mls	r4, r2, r5, r0
  46 0024 092C     		cmp	r4, #9
  47 0026 E7B2     		uxtb	r7, r4
  48 0028 07F15704 		add	r4, r7, #87
  49 002c 2846     		mov	r0, r5
  50 002e 9ABF     		itte	ls
  51 0030 3037     		addls	r7, r7, #48
  52 0032 1F70     		strbls	r7, [r3]
  53 0034 1C70     		strbhi	r4, [r3]
  54 0036 0133     		adds	r3, r3, #1
  55 0038 0028     		cmp	r0, #0
  56 003a EFD1     		bne	.L8
  57              	.L24:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdTidCW.s 			page 2


  58 003c 3022     		movs	r2, #48
  59 003e 01E0     		b	.L13
  60              	.L9:
  61 0040 03F8012B 		strb	r2, [r3], #1
  62              	.L13:
  63 0044 B342     		cmp	r3, r6
  64 0046 FBD0     		beq	.L9
  65 0048 BCF1000F 		cmp	ip, #0
  66 004c 12D1     		bne	.L25
  67 004e 0D46     		mov	r5, r1
  68              	.L10:
  69 0050 B342     		cmp	r3, r6
  70 0052 09D9     		bls	.L11
  71 0054 6C1E     		subs	r4, r5, #1
  72 0056 1A46     		mov	r2, r3
  73              	.L12:
  74 0058 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
  75 005c 04F8010F 		strb	r0, [r4, #1]!
  76 0060 B242     		cmp	r2, r6
  77 0062 F9D1     		bne	.L12
  78 0064 9B1A     		subs	r3, r3, r2
  79 0066 1D44     		add	r5, r5, r3
  80              	.L11:
  81 0068 0023     		movs	r3, #0
  82 006a 0846     		mov	r0, r1
  83 006c 2B70     		strb	r3, [r5]
  84 006e 0AB0     		add	sp, sp, #40
  85              		@ sp needed
  86 0070 F0BC     		pop	{r4, r5, r6, r7}
  87 0072 7047     		bx	lr
  88              	.L25:
  89 0074 2D22     		movs	r2, #45
  90 0076 0A70     		strb	r2, [r1]
  91 0078 4D1C     		adds	r5, r1, #1
  92 007a E9E7     		b	.L10
  93              	.L23:
  94 007c 0028     		cmp	r0, #0
  95 007e C8DA     		bge	.L3
  96 0080 4042     		negs	r0, r0
  97 0082 4FF0010C 		mov	ip, #1
  98 0086 C6E7     		b	.L4
  99              	.L15:
 100 0088 0020     		movs	r0, #0
 101 008a 7047     		bx	lr
 102              		.size	ltoa, .-ltoa
 103              		.section	.text.itoa,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	itoa
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	itoa, %function
 112              	itoa:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdTidCW.s 			page 3


 115              		@ link register save eliminated.
 116 0000 FFF7FEBF 		b	ltoa
 117              		.size	itoa, .-itoa
 118              		.section	.text.ultoa,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	ultoa
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	ultoa, %function
 127              	ultoa:
 128              		@ args = 0, pretend = 0, frame = 40
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 71B3     		cbz	r1, .L38
 132 0002 931E     		subs	r3, r2, #2
 133 0004 222B     		cmp	r3, #34
 134 0006 2BD8     		bhi	.L38
 135 0008 F0B4     		push	{r4, r5, r6, r7}
 136 000a 8AB0     		sub	sp, sp, #40
 137 000c 01AF     		add	r7, sp, #4
 138 000e 3B46     		mov	r3, r7
 139 0010 68B1     		cbz	r0, .L45
 140              	.L32:
 141 0012 B0FBF2F6 		udiv	r6, r0, r2
 142 0016 02FB1605 		mls	r5, r2, r6, r0
 143 001a ECB2     		uxtb	r4, r5
 144 001c 092D     		cmp	r5, #9
 145 001e 94BF     		ite	ls
 146 0020 3034     		addls	r4, r4, #48
 147 0022 5734     		addhi	r4, r4, #87
 148 0024 3046     		mov	r0, r6
 149 0026 1C70     		strb	r4, [r3]
 150 0028 0133     		adds	r3, r3, #1
 151 002a 0028     		cmp	r0, #0
 152 002c F1D1     		bne	.L32
 153              	.L45:
 154 002e 3022     		movs	r2, #48
 155 0030 01E0     		b	.L36
 156              	.L33:
 157 0032 03F8012B 		strb	r2, [r3], #1
 158              	.L36:
 159 0036 BB42     		cmp	r3, r7
 160 0038 FBD0     		beq	.L33
 161 003a 0FD9     		bls	.L39
 162 003c 4C1E     		subs	r4, r1, #1
 163 003e 1A46     		mov	r2, r3
 164              	.L35:
 165 0040 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
 166 0044 04F8010F 		strb	r0, [r4, #1]!
 167 0048 BA42     		cmp	r2, r7
 168 004a F9D1     		bne	.L35
 169 004c 9B1A     		subs	r3, r3, r2
 170 004e 0B44     		add	r3, r3, r1
 171              	.L34:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdTidCW.s 			page 4


 172 0050 0022     		movs	r2, #0
 173 0052 0846     		mov	r0, r1
 174 0054 1A70     		strb	r2, [r3]
 175 0056 0AB0     		add	sp, sp, #40
 176              		@ sp needed
 177 0058 F0BC     		pop	{r4, r5, r6, r7}
 178 005a 7047     		bx	lr
 179              	.L39:
 180 005c 0B46     		mov	r3, r1
 181 005e F7E7     		b	.L34
 182              	.L38:
 183 0060 0020     		movs	r0, #0
 184 0062 7047     		bx	lr
 185              		.size	ultoa, .-ultoa
 186              		.section	.text.utoa,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	utoa
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	utoa, %function
 195              	utoa:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 FFF7FEBF 		b	ultoa
 200              		.size	utoa, .-utoa
 201              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
