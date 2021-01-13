ARM GAS  /tmp/cc5VRaoG.s 			page 1


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
  14              		.section	.text.ltoa,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	ltoa
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	ltoa, %function
  23              	ltoa:
  24              		@ args = 0, pretend = 0, frame = 40
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0029     		cmp	r1, #0
  28 0002 3CD0     		beq	.L15
  29 0004 931E     		subs	r3, r2, #2
  30 0006 222B     		cmp	r3, #34
  31 0008 39D8     		bhi	.L15
  32 000a F0B4     		push	{r4, r5, r6, r7}
  33 000c 0A2A     		cmp	r2, #10
  34 000e 8AB0     		sub	sp, sp, #40
  35 0010 30D0     		beq	.L25
  36              	.L3:
  37 0012 0027     		movs	r7, #0
  38              	.L13:
  39 0014 01AE     		add	r6, sp, #4
  40 0016 3346     		mov	r3, r6
  41 0018 40B9     		cbnz	r0, .L8
  42              	.L27:
  43 001a B342     		cmp	r3, r6
  44 001c 12D1     		bne	.L26
  45 001e 0546     		mov	r5, r0
  46              	.L9:
  47 0020 3030     		adds	r0, r0, #48
  48 0022 1870     		strb	r0, [r3]
  49 0024 2846     		mov	r0, r5
  50              	.L7:
  51 0026 0133     		adds	r3, r3, #1
  52 0028 0028     		cmp	r0, #0
  53 002a F6D0     		beq	.L27
  54              	.L8:
  55 002c B0FBF2F5 		udiv	r5, r0, r2
  56 0030 02FB1504 		mls	r4, r2, r5, r0
  57 0034 092C     		cmp	r4, #9
ARM GAS  /tmp/cc5VRaoG.s 			page 2


  58 0036 2846     		mov	r0, r5
  59 0038 98BF     		it	ls
  60 003a 2046     		movls	r0, r4
  61 003c F0D9     		bls	.L9
  62 003e 5734     		adds	r4, r4, #87
  63 0040 1C70     		strb	r4, [r3]
  64 0042 F0E7     		b	.L7
  65              	.L26:
  66 0044 97B9     		cbnz	r7, .L28
  67 0046 0D46     		mov	r5, r1
  68              	.L10:
  69 0048 B342     		cmp	r3, r6
  70 004a 09D9     		bls	.L11
  71 004c 6C1E     		subs	r4, r5, #1
  72 004e 1A46     		mov	r2, r3
  73              	.L12:
  74 0050 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
  75 0054 04F8010F 		strb	r0, [r4, #1]!
  76 0058 B242     		cmp	r2, r6
  77 005a F9D1     		bne	.L12
  78 005c 9B1A     		subs	r3, r3, r2
  79 005e 1D44     		add	r5, r5, r3
  80              	.L11:
  81 0060 0023     		movs	r3, #0
  82 0062 0846     		mov	r0, r1
  83 0064 2B70     		strb	r3, [r5]
  84 0066 0AB0     		add	sp, sp, #40
  85              		@ sp needed
  86 0068 F0BC     		pop	{r4, r5, r6, r7}
  87 006a 7047     		bx	lr
  88              	.L28:
  89 006c 2D22     		movs	r2, #45
  90 006e 0A70     		strb	r2, [r1]
  91 0070 4D1C     		adds	r5, r1, #1
  92 0072 E9E7     		b	.L10
  93              	.L25:
  94 0074 0028     		cmp	r0, #0
  95 0076 CCDA     		bge	.L3
  96 0078 4042     		negs	r0, r0
  97 007a 0127     		movs	r7, #1
  98 007c CAE7     		b	.L13
  99              	.L15:
 100 007e 0020     		movs	r0, #0
 101 0080 7047     		bx	lr
 102              		.size	ltoa, .-ltoa
 103 0082 00BF     		.section	.text.itoa,"ax",%progbits
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
ARM GAS  /tmp/cc5VRaoG.s 			page 3


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
 131 0000 69B3     		cbz	r1, .L40
 132 0002 931E     		subs	r3, r2, #2
 133 0004 222B     		cmp	r3, #34
 134 0006 2AD8     		bhi	.L40
 135 0008 70B4     		push	{r4, r5, r6}
 136 000a 8BB0     		sub	sp, sp, #44
 137 000c 01AE     		add	r6, sp, #4
 138 000e 3346     		mov	r3, r6
 139 0010 40B9     		cbnz	r0, .L35
 140              	.L49:
 141 0012 B342     		cmp	r3, r6
 142 0014 12D1     		bne	.L48
 143 0016 0546     		mov	r5, r0
 144              	.L36:
 145 0018 3030     		adds	r0, r0, #48
 146 001a 1870     		strb	r0, [r3]
 147 001c 2846     		mov	r0, r5
 148              	.L34:
 149 001e 0133     		adds	r3, r3, #1
 150 0020 0028     		cmp	r0, #0
 151 0022 F6D0     		beq	.L49
 152              	.L35:
 153 0024 B0FBF2F5 		udiv	r5, r0, r2
 154 0028 02FB1504 		mls	r4, r2, r5, r0
 155 002c 092C     		cmp	r4, #9
 156 002e 2846     		mov	r0, r5
 157 0030 98BF     		it	ls
 158 0032 2046     		movls	r0, r4
 159 0034 F0D9     		bls	.L36
 160 0036 5734     		adds	r4, r4, #87
 161 0038 1C70     		strb	r4, [r3]
 162 003a F0E7     		b	.L34
 163              	.L48:
 164 003c 11D9     		bls	.L42
 165 003e 4C1E     		subs	r4, r1, #1
 166 0040 1A46     		mov	r2, r3
 167              	.L38:
 168 0042 12F8010D 		ldrb	r0, [r2, #-1]!	@ zero_extendqisi2
 169 0046 04F8010F 		strb	r0, [r4, #1]!
 170 004a B242     		cmp	r2, r6
 171 004c F9D1     		bne	.L38
ARM GAS  /tmp/cc5VRaoG.s 			page 4


 172 004e 9B1A     		subs	r3, r3, r2
 173 0050 0B44     		add	r3, r3, r1
 174              	.L37:
 175 0052 0022     		movs	r2, #0
 176 0054 0846     		mov	r0, r1
 177 0056 1A70     		strb	r2, [r3]
 178 0058 0BB0     		add	sp, sp, #44
 179              		@ sp needed
 180 005a 70BC     		pop	{r4, r5, r6}
 181 005c 7047     		bx	lr
 182              	.L40:
 183 005e 0020     		movs	r0, #0
 184 0060 7047     		bx	lr
 185              	.L42:
 186 0062 0B46     		mov	r3, r1
 187 0064 F5E7     		b	.L37
 188              		.size	ultoa, .-ultoa
 189 0066 00BF     		.section	.text.utoa,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	utoa
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	utoa, %function
 198              	utoa:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 FFF7FEBF 		b	ultoa
 203              		.size	utoa, .-utoa
 204              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
