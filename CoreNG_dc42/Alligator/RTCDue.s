ARM GAS  /tmp/cc7aCIXo.s 			page 1


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
  29 000c 0422     		movs	r2, #4
  30 000e 4FF0FF31 		mov	r1, #-1
  31 0012 044B     		ldr	r3, .L3+4
  32 0014 E160     		str	r1, [r4, #12]
  33 0016 C3F88020 		str	r2, [r3, #128]
  34 001a C3F88021 		str	r2, [r3, #384]
  35 001e 10BD     		pop	{r4, pc}
  36              	.L4:
  37              		.align	2
  38              	.L3:
  39 0020 601A0E40 		.word	1074666080
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
ARM GAS  /tmp/cc7aCIXo.s 			page 2


  58 000c 4009     		lsrs	r0, r0, #5
  59 000e 08BD     		pop	{r3, pc}
  60              	.L8:
  61              		.align	2
  62              	.L7:
  63 0010 601A0E40 		.word	1074666080
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
  77 0000 70B5     		push	{r4, r5, r6, lr}
  78 0002 144C     		ldr	r4, .L11
  79 0004 92B0     		sub	sp, sp, #72
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
  98 0030 0799     		ldr	r1, [sp, #28]
  99 0032 013A     		subs	r2, r2, #1
 100 0034 A3F26C73 		subw	r3, r3, #1900
 101 0038 02AC     		add	r4, sp, #8
 102 003a 09A8     		add	r0, sp, #36
 103 003c 70CC     		ldm	r4, {r4, r5, r6}
 104 003e 0D92     		str	r2, [sp, #52]
 105 0040 0E93     		str	r3, [sp, #56]
 106 0042 0996     		str	r6, [sp, #36]
 107 0044 0A95     		str	r5, [sp, #40]
 108 0046 0B94     		str	r4, [sp, #44]
 109 0048 0C91     		str	r1, [sp, #48]
 110 004a FFF7FEFF 		bl	mktime
 111 004e 12B0     		add	sp, sp, #72
 112              		@ sp needed
 113 0050 70BD     		pop	{r4, r5, r6, pc}
 114              	.L12:
ARM GAS  /tmp/cc7aCIXo.s 			page 3


 115 0052 00BF     		.align	2
 116              	.L11:
 117 0054 601A0E40 		.word	1074666080
 118              		.size	_ZN6RTCDue11GetDateTimeEv, .-_ZN6RTCDue11GetDateTimeEv
 119              		.section	.text._ZN6RTCDue7SetDateEl,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	_ZN6RTCDue7SetDateEl
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu softvfp
 127              		.type	_ZN6RTCDue7SetDateEl, %function
 128              	_ZN6RTCDue7SetDateEl:
 129              		@ args = 0, pretend = 0, frame = 8
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 132 0002 85B0     		sub	sp, sp, #20
 133 0004 04AB     		add	r3, sp, #16
 134 0006 43F8040D 		str	r0, [r3, #-4]!
 135 000a 1846     		mov	r0, r3
 136 000c FFF7FEFF 		bl	gmtime
 137 0010 0569     		ldr	r5, [r0, #16]
 138 0012 4669     		ldr	r6, [r0, #20]
 139 0014 012D     		cmp	r5, #1
 140 0016 06F26C71 		addw	r1, r6, #1900
 141 001a 05F10102 		add	r2, r5, #1
 142 001e 84BF     		itt	hi
 143 0020 0E46     		movhi	r6, r1
 144 0022 1546     		movhi	r5, r2
 145 0024 C368     		ldr	r3, [r0, #12]
 146 0026 164F     		ldr	r7, .L18
 147 0028 9CBF     		itt	ls
 148 002a 06F26B76 		addwls	r6, r6, #1899
 149 002e 0D35     		addls	r5, r5, #13
 150 0030 A7FB0607 		umull	r0, r7, r7, r6
 151 0034 9819     		adds	r0, r3, r6
 152 0036 6C1C     		adds	r4, r5, #1
 153 0038 00EB4500 		add	r0, r0, r5, lsl #1
 154 003c 114D     		ldr	r5, .L18+4
 155 003e 04EB4404 		add	r4, r4, r4, lsl #1
 156 0042 A5FB0445 		umull	r4, r5, r5, r4
 157 0046 00EB9600 		add	r0, r0, r6, lsr #2
 158 004a 00EBD710 		add	r0, r0, r7, lsr #7
 159 004e A0EB5710 		sub	r0, r0, r7, lsr #5
 160 0052 0D4C     		ldr	r4, .L18+8
 161 0054 00EB9500 		add	r0, r0, r5, lsr #2
 162 0058 A4FB0054 		umull	r5, r4, r4, r0
 163 005c 051B     		subs	r5, r0, r4
 164 005e 04EB5504 		add	r4, r4, r5, lsr #1
 165 0062 A408     		lsrs	r4, r4, #2
 166 0064 C4EBC404 		rsb	r4, r4, r4, lsl #3
 167 0068 001B     		subs	r0, r0, r4
 168 006a 0130     		adds	r0, r0, #1
 169 006c 0090     		str	r0, [sp]
 170 006e 0748     		ldr	r0, .L18+12
 171 0070 FFF7FEFF 		bl	rtc_set_date
ARM GAS  /tmp/cc7aCIXo.s 			page 4


 172 0074 B0FA80F0 		clz	r0, r0
 173 0078 4009     		lsrs	r0, r0, #5
 174 007a 05B0     		add	sp, sp, #20
 175              		@ sp needed
 176 007c F0BD     		pop	{r4, r5, r6, r7, pc}
 177              	.L19:
 178 007e 00BF     		.align	2
 179              	.L18:
 180 0080 1F85EB51 		.word	1374389535
 181 0084 CDCCCCCC 		.word	-858993459
 182 0088 25499224 		.word	613566757
 183 008c 601A0E40 		.word	1074666080
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
 217 002c 601A0E40 		.word	1074666080
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
ARM GAS  /tmp/cc7aCIXo.s 			page 5


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
