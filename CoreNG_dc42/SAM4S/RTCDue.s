ARM GAS  /tmp/ccP6pT1F.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"RTCDue.cpp"
  12              		.section	.text._ZN6RTCDue4InitEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN6RTCDue4InitEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN6RTCDue4InitEv, %function
  21              	_ZN6RTCDue4InitEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 074C     		ldr	r4, .L3
  26 0004 0021     		movs	r1, #0
  27 0006 2046     		mov	r0, r4
  28 0008 FFF7FEFF 		bl	rtc_set_hour_mode
  29 000c 054B     		ldr	r3, .L3+4
  30 000e 0422     		movs	r2, #4
  31 0010 4FF0FF31 		mov	r1, #-1
  32 0014 E160     		str	r1, [r4, #12]
  33 0016 C3F88020 		str	r2, [r3, #128]
  34 001a C3F88021 		str	r2, [r3, #384]
  35 001e 10BD     		pop	{r4, pc}
  36              	.L4:
  37              		.align	2
  38              	.L3:
  39 0020 60140E40 		.word	1074664544
  40 0024 00E100E0 		.word	-536813312
  41              		.size	_ZN6RTCDue4InitEv, .-_ZN6RTCDue4InitEv
  42              		.section	.text._ZN6RTCDue13IsDateTimeSetEv,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	_ZN6RTCDue13IsDateTimeSetEv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu softvfp
  50              		.type	_ZN6RTCDue13IsDateTimeSetEv, %function
  51              	_ZN6RTCDue13IsDateTimeSetEv:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 08B5     		push	{r3, lr}
  55 0002 0348     		ldr	r0, .L7
  56 0004 FFF7FEFF 		bl	rtc_get_valid_entry
  57 0008 B0FA80F0 		clz	r0, r0
ARM GAS  /tmp/ccP6pT1F.s 			page 2


  58 000c 4009     		lsrs	r0, r0, #5
  59 000e 08BD     		pop	{r3, pc}
  60              	.L8:
  61              		.align	2
  62              	.L7:
  63 0010 60140E40 		.word	1074664544
  64              		.size	_ZN6RTCDue13IsDateTimeSetEv, .-_ZN6RTCDue13IsDateTimeSetEv
  65              		.section	.text._ZN6RTCDue11GetDateTimeEv,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	_ZN6RTCDue11GetDateTimeEv
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	_ZN6RTCDue11GetDateTimeEv, %function
  74              	_ZN6RTCDue11GetDateTimeEv:
  75              		@ args = 0, pretend = 0, frame = 64
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 30B5     		push	{r4, r5, lr}
  78 0002 144C     		ldr	r4, .L11
  79 0004 93B0     		sub	sp, sp, #76
  80 0006 04AB     		add	r3, sp, #16
  81 0008 2046     		mov	r0, r4
  82 000a 03AA     		add	r2, sp, #12
  83 000c 02A9     		add	r1, sp, #8
  84 000e FFF7FEFF 		bl	rtc_get_time
  85 0012 08AB     		add	r3, sp, #32
  86 0014 2046     		mov	r0, r4
  87 0016 0093     		str	r3, [sp]
  88 0018 06AA     		add	r2, sp, #24
  89 001a 07AB     		add	r3, sp, #28
  90 001c 05A9     		add	r1, sp, #20
  91 001e FFF7FEFF 		bl	rtc_get_date
  92 0022 09A8     		add	r0, sp, #36
  93 0024 2422     		movs	r2, #36
  94 0026 0021     		movs	r1, #0
  95 0028 FFF7FEFF 		bl	memset
  96 002c 069A     		ldr	r2, [sp, #24]
  97 002e 059B     		ldr	r3, [sp, #20]
  98 0030 0498     		ldr	r0, [sp, #16]
  99 0032 039D     		ldr	r5, [sp, #12]
 100 0034 029C     		ldr	r4, [sp, #8]
 101 0036 0799     		ldr	r1, [sp, #28]
 102 0038 0990     		str	r0, [sp, #36]
 103 003a 013A     		subs	r2, r2, #1
 104 003c A3F26C73 		subw	r3, r3, #1900
 105 0040 09A8     		add	r0, sp, #36
 106 0042 0D92     		str	r2, [sp, #52]
 107 0044 0E93     		str	r3, [sp, #56]
 108 0046 0A95     		str	r5, [sp, #40]
 109 0048 0B94     		str	r4, [sp, #44]
 110 004a 0C91     		str	r1, [sp, #48]
 111 004c FFF7FEFF 		bl	mktime
 112 0050 13B0     		add	sp, sp, #76
 113              		@ sp needed
 114 0052 30BD     		pop	{r4, r5, pc}
ARM GAS  /tmp/ccP6pT1F.s 			page 3


 115              	.L12:
 116              		.align	2
 117              	.L11:
 118 0054 60140E40 		.word	1074664544
 119              		.size	_ZN6RTCDue11GetDateTimeEv, .-_ZN6RTCDue11GetDateTimeEv
 120              		.section	.text._ZN6RTCDue7SetDateEl,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	_ZN6RTCDue7SetDateEl
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu softvfp
 128              		.type	_ZN6RTCDue7SetDateEl, %function
 129              	_ZN6RTCDue7SetDateEl:
 130              		@ args = 0, pretend = 0, frame = 8
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 133 0002 85B0     		sub	sp, sp, #20
 134 0004 04AB     		add	r3, sp, #16
 135 0006 1D4F     		ldr	r7, .L18
 136 0008 43F8040D 		str	r0, [r3, #-4]!
 137 000c 1846     		mov	r0, r3
 138 000e FFF7FEFF 		bl	gmtime
 139 0012 0569     		ldr	r5, [r0, #16]
 140 0014 4469     		ldr	r4, [r0, #20]
 141 0016 C368     		ldr	r3, [r0, #12]
 142 0018 194E     		ldr	r6, .L18+4
 143 001a 012D     		cmp	r5, #1
 144 001c 04F26C71 		addw	r1, r4, #1900
 145 0020 05F10102 		add	r2, r5, #1
 146 0024 95BF     		itete	ls
 147 0026 04F26B70 		addwls	r0, r4, #1899
 148 002a 0846     		movhi	r0, r1
 149 002c 0D35     		addls	r5, r5, #13
 150 002e 1546     		movhi	r5, r2
 151 0030 1C18     		adds	r4, r3, r0
 152 0032 04EB4504 		add	r4, r4, r5, lsl #1
 153 0036 04EB9004 		add	r4, r4, r0, lsr #2
 154 003a 0135     		adds	r5, r5, #1
 155 003c A7FB0070 		umull	r7, r0, r7, r0
 156 0040 04EBD014 		add	r4, r4, r0, lsr #7
 157 0044 05EB4505 		add	r5, r5, r5, lsl #1
 158 0048 A6FB0565 		umull	r6, r5, r6, r5
 159 004c A4EB5014 		sub	r4, r4, r0, lsr #5
 160 0050 0C4E     		ldr	r6, .L18+8
 161 0052 0D48     		ldr	r0, .L18+12
 162 0054 04EB9504 		add	r4, r4, r5, lsr #2
 163 0058 A6FB0465 		umull	r6, r5, r6, r4
 164 005c 661B     		subs	r6, r4, r5
 165 005e 05EB5605 		add	r5, r5, r6, lsr #1
 166 0062 AD08     		lsrs	r5, r5, #2
 167 0064 C5EBC505 		rsb	r5, r5, r5, lsl #3
 168 0068 641B     		subs	r4, r4, r5
 169 006a 0134     		adds	r4, r4, #1
 170 006c 0094     		str	r4, [sp]
 171 006e FFF7FEFF 		bl	rtc_set_date
ARM GAS  /tmp/ccP6pT1F.s 			page 4


 172 0072 B0FA80F0 		clz	r0, r0
 173 0076 4009     		lsrs	r0, r0, #5
 174 0078 05B0     		add	sp, sp, #20
 175              		@ sp needed
 176 007a F0BD     		pop	{r4, r5, r6, r7, pc}
 177              	.L19:
 178              		.align	2
 179              	.L18:
 180 007c 1F85EB51 		.word	1374389535
 181 0080 CDCCCCCC 		.word	-858993459
 182 0084 25499224 		.word	613566757
 183 0088 60140E40 		.word	1074664544
 184              		.size	_ZN6RTCDue7SetDateEl, .-_ZN6RTCDue7SetDateEl
 185              		.section	.text._ZN6RTCDue7SetTimeEl,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	_ZN6RTCDue7SetTimeEl
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu softvfp
 193              		.type	_ZN6RTCDue7SetTimeEl, %function
 194              	_ZN6RTCDue7SetTimeEl:
 195              		@ args = 0, pretend = 0, frame = 8
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 00B5     		push	{lr}
 198 0002 83B0     		sub	sp, sp, #12
 199 0004 02AB     		add	r3, sp, #8
 200 0006 43F8040D 		str	r0, [r3, #-4]!
 201 000a 1846     		mov	r0, r3
 202 000c FFF7FEFF 		bl	gmtime
 203 0010 0146     		mov	r1, r0
 204 0012 0648     		ldr	r0, .L22
 205 0014 0B68     		ldr	r3, [r1]
 206 0016 4A68     		ldr	r2, [r1, #4]
 207 0018 8968     		ldr	r1, [r1, #8]
 208 001a FFF7FEFF 		bl	rtc_set_time
 209 001e B0FA80F0 		clz	r0, r0
 210 0022 4009     		lsrs	r0, r0, #5
 211 0024 03B0     		add	sp, sp, #12
 212              		@ sp needed
 213 0026 5DF804FB 		ldr	pc, [sp], #4
 214              	.L23:
 215 002a 00BF     		.align	2
 216              	.L22:
 217 002c 60140E40 		.word	1074664544
 218              		.size	_ZN6RTCDue7SetTimeEl, .-_ZN6RTCDue7SetTimeEl
 219              		.section	.text._ZN6RTCDue11SetDateTimeEl,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	_ZN6RTCDue11SetDateTimeEl
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu softvfp
 227              		.type	_ZN6RTCDue11SetDateTimeEl, %function
 228              	_ZN6RTCDue11SetDateTimeEl:
ARM GAS  /tmp/ccP6pT1F.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231 0000 10B5     		push	{r4, lr}
 232 0002 0446     		mov	r4, r0
 233 0004 FFF7FEFF 		bl	_ZN6RTCDue7SetDateEl
 234 0008 00B9     		cbnz	r0, .L27
 235 000a 10BD     		pop	{r4, pc}
 236              	.L27:
 237 000c 2046     		mov	r0, r4
 238 000e BDE81040 		pop	{r4, lr}
 239 0012 FFF7FEBF 		b	_ZN6RTCDue7SetTimeEl
 240              		.size	_ZN6RTCDue11SetDateTimeEl, .-_ZN6RTCDue11SetDateTimeEl
 241 0016 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 242              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 243              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 244              	_ZL28cpu_irq_prev_interrupt_state:
 245 0000 00       		.space	1
 246              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 247              		.align	2
 248              		.type	_ZL32cpu_irq_critical_section_counter, %object
 249              		.size	_ZL32cpu_irq_critical_section_counter, 4
 250              	_ZL32cpu_irq_critical_section_counter:
 251 0000 00000000 		.space	4
 252              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
