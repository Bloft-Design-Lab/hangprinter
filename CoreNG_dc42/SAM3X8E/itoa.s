ARM GAS  /tmp/ccDBNBVT.s 			page 1


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
  11              		.file	"itoa.c"
  12              		.section	.text.ltoa,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	ltoa
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	ltoa, %function
  21              	ltoa:
  22              		@ args = 0, pretend = 0, frame = 40
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0029     		cmp	r1, #0
  26 0002 3CD0     		beq	.L15
  27 0004 931E     		subs	r3, r2, #2
  28 0006 222B     		cmp	r3, #34
  29 0008 39D8     		bhi	.L15
  30 000a F0B4     		push	{r4, r5, r6, r7}
  31 000c 0A2A     		cmp	r2, #10
  32 000e 8AB0     		sub	sp, sp, #40
  33 0010 30D0     		beq	.L25
  34              	.L3:
  35 0012 0027     		movs	r7, #0
  36              	.L13:
  37 0014 01AE     		add	r6, sp, #4
  38 0016 3346     		mov	r3, r6
  39 0018 40B9     		cbnz	r0, .L8
  40              	.L27:
  41 001a B342     		cmp	r3, r6
  42 001c 12D1     		bne	.L26
  43 001e 0546     		mov	r5, r0
  44              	.L9:
  45 0020 3030     		adds	r0, r0, #48
  46 0022 1870     		strb	r0, [r3]
  47 0024 2846     		mov	r0, r5
  48              	.L7:
  49 0026 0133     		adds	r3, r3, #1
  50 0028 0028     		cmp	r0, #0
  51 002a F6D0     		beq	.L27
  52              	.L8:
  53 002c B0FBF2F5 		udiv	r5, r0, r2
  54 0030 02FB1504 		mls	r4, r2, r5, r0
  55 0034 092C     		cmp	r4, #9
  56 0036 2846     		mov	r0, r5
  57 0038 98BF     		it	ls
ARM GAS  /tmp/ccDBNBVT.s 			page 2


  58 003a 2046     		movls	r0, r4
  59 003c F0D9     		bls	.L9
  60 003e 5734     		adds	r4, r4, #87
  61 0040 1C70     		strb	r4, [r3]
  62 0042 F0E7     		b	.L7
  63              	.L26:
  64 0044 97B9     		cbnz	r7, .L28
  65 0046 0D46     		mov	r5, r1
  66              	.L10:
  67 0048 B342     		cmp	r3, r6
  68 004a 09D9     		bls	.L11
  69 004c 1A46     		mov	r2, r3
  70 004e 6C1E     		subs	r4, r5, #1
  71              	.L12:
  72 0050 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
  73 0054 B242     		cmp	r2, r6
  74 0056 04F8010F 		strb	r0, [r4, #1]!
  75 005a F9D1     		bne	.L12
  76 005c 9B1A     		subs	r3, r3, r2
  77 005e 1D44     		add	r5, r5, r3
  78              	.L11:
  79 0060 0023     		movs	r3, #0
  80 0062 0846     		mov	r0, r1
  81 0064 2B70     		strb	r3, [r5]
  82 0066 0AB0     		add	sp, sp, #40
  83              		@ sp needed
  84 0068 F0BC     		pop	{r4, r5, r6, r7}
  85 006a 7047     		bx	lr
  86              	.L28:
  87 006c 2D22     		movs	r2, #45
  88 006e 4D1C     		adds	r5, r1, #1
  89 0070 0A70     		strb	r2, [r1]
  90 0072 E9E7     		b	.L10
  91              	.L25:
  92 0074 0028     		cmp	r0, #0
  93 0076 CCDA     		bge	.L3
  94 0078 4042     		negs	r0, r0
  95 007a 0127     		movs	r7, #1
  96 007c CAE7     		b	.L13
  97              	.L15:
  98 007e 0020     		movs	r0, #0
  99 0080 7047     		bx	lr
 100              		.size	ltoa, .-ltoa
 101 0082 00BF     		.section	.text.itoa,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	itoa
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu softvfp
 109              		.type	itoa, %function
 110              	itoa:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 FFF7FEBF 		b	ltoa
ARM GAS  /tmp/ccDBNBVT.s 			page 3


 115              		.size	itoa, .-itoa
 116              		.section	.text.ultoa,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	ultoa
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu softvfp
 124              		.type	ultoa, %function
 125              	ultoa:
 126              		@ args = 0, pretend = 0, frame = 40
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 69B3     		cbz	r1, .L40
 130 0002 931E     		subs	r3, r2, #2
 131 0004 222B     		cmp	r3, #34
 132 0006 2AD8     		bhi	.L40
 133 0008 70B4     		push	{r4, r5, r6}
 134 000a 8BB0     		sub	sp, sp, #44
 135 000c 01AE     		add	r6, sp, #4
 136 000e 3346     		mov	r3, r6
 137 0010 40B9     		cbnz	r0, .L35
 138              	.L49:
 139 0012 B342     		cmp	r3, r6
 140 0014 12D1     		bne	.L48
 141 0016 0546     		mov	r5, r0
 142              	.L36:
 143 0018 3030     		adds	r0, r0, #48
 144 001a 1870     		strb	r0, [r3]
 145 001c 2846     		mov	r0, r5
 146              	.L34:
 147 001e 0133     		adds	r3, r3, #1
 148 0020 0028     		cmp	r0, #0
 149 0022 F6D0     		beq	.L49
 150              	.L35:
 151 0024 B0FBF2F5 		udiv	r5, r0, r2
 152 0028 02FB1504 		mls	r4, r2, r5, r0
 153 002c 092C     		cmp	r4, #9
 154 002e 2846     		mov	r0, r5
 155 0030 98BF     		it	ls
 156 0032 2046     		movls	r0, r4
 157 0034 F0D9     		bls	.L36
 158 0036 5734     		adds	r4, r4, #87
 159 0038 1C70     		strb	r4, [r3]
 160 003a F0E7     		b	.L34
 161              	.L48:
 162 003c 11D9     		bls	.L42
 163 003e 1A46     		mov	r2, r3
 164 0040 4C1E     		subs	r4, r1, #1
 165              	.L38:
 166 0042 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
 167 0046 B242     		cmp	r2, r6
 168 0048 04F8010F 		strb	r0, [r4, #1]!
 169 004c F9D1     		bne	.L38
 170 004e 9B1A     		subs	r3, r3, r2
 171 0050 0B44     		add	r3, r3, r1
ARM GAS  /tmp/ccDBNBVT.s 			page 4


 172              	.L37:
 173 0052 0022     		movs	r2, #0
 174 0054 0846     		mov	r0, r1
 175 0056 1A70     		strb	r2, [r3]
 176 0058 0BB0     		add	sp, sp, #44
 177              		@ sp needed
 178 005a 70BC     		pop	{r4, r5, r6}
 179 005c 7047     		bx	lr
 180              	.L40:
 181 005e 0020     		movs	r0, #0
 182 0060 7047     		bx	lr
 183              	.L42:
 184 0062 0B46     		mov	r3, r1
 185 0064 F5E7     		b	.L37
 186              		.size	ultoa, .-ultoa
 187 0066 00BF     		.section	.text.utoa,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	utoa
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu softvfp
 195              		.type	utoa, %function
 196              	utoa:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199              		@ link register save eliminated.
 200 0000 FFF7FEBF 		b	ultoa
 201              		.size	utoa, .-utoa
 202              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
