ARM GAS  /tmp/ccVB8pLe.s 			page 1


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
  13              		.file	"RTCDue.cpp"
  14              		.section	.text._ZN6RTCDue4InitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN6RTCDue4InitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN6RTCDue4InitEv, %function
  23              	_ZN6RTCDue4InitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 074C     		ldr	r4, .L3
  28 0004 0021     		movs	r1, #0
  29 0006 2046     		mov	r0, r4
  30 0008 FFF7FEFF 		bl	rtc_set_hour_mode
  31 000c 054B     		ldr	r3, .L3+4
  32 000e 0422     		movs	r2, #4
  33 0010 4FF0FF31 		mov	r1, #-1
  34 0014 E160     		str	r1, [r4, #12]
  35 0016 C3F88020 		str	r2, [r3, #128]
  36 001a C3F88021 		str	r2, [r3, #384]
  37 001e 10BD     		pop	{r4, pc}
  38              	.L4:
  39              		.align	2
  40              	.L3:
  41 0020 60180E40 		.word	1074665568
  42 0024 00E100E0 		.word	-536813312
  43              		.size	_ZN6RTCDue4InitEv, .-_ZN6RTCDue4InitEv
  44              		.section	.text._ZN6RTCDue13IsDateTimeSetEv,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN6RTCDue13IsDateTimeSetEv
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN6RTCDue13IsDateTimeSetEv, %function
  53              	_ZN6RTCDue13IsDateTimeSetEv:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56 0000 08B5     		push	{r3, lr}
  57 0002 0348     		ldr	r0, .L7
ARM GAS  /tmp/ccVB8pLe.s 			page 2


  58 0004 FFF7FEFF 		bl	rtc_get_valid_entry
  59 0008 B0FA80F0 		clz	r0, r0
  60 000c 4009     		lsrs	r0, r0, #5
  61 000e 08BD     		pop	{r3, pc}
  62              	.L8:
  63              		.align	2
  64              	.L7:
  65 0010 60180E40 		.word	1074665568
  66              		.size	_ZN6RTCDue13IsDateTimeSetEv, .-_ZN6RTCDue13IsDateTimeSetEv
  67              		.section	.text._ZN6RTCDue11GetDateTimeEv,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN6RTCDue11GetDateTimeEv
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZN6RTCDue11GetDateTimeEv, %function
  76              	_ZN6RTCDue11GetDateTimeEv:
  77              		@ args = 0, pretend = 0, frame = 64
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 30B5     		push	{r4, r5, lr}
  80 0002 144C     		ldr	r4, .L11
  81 0004 93B0     		sub	sp, sp, #76
  82 0006 04AB     		add	r3, sp, #16
  83 0008 2046     		mov	r0, r4
  84 000a 03AA     		add	r2, sp, #12
  85 000c 02A9     		add	r1, sp, #8
  86 000e FFF7FEFF 		bl	rtc_get_time
  87 0012 08AB     		add	r3, sp, #32
  88 0014 2046     		mov	r0, r4
  89 0016 0093     		str	r3, [sp]
  90 0018 06AA     		add	r2, sp, #24
  91 001a 07AB     		add	r3, sp, #28
  92 001c 05A9     		add	r1, sp, #20
  93 001e FFF7FEFF 		bl	rtc_get_date
  94 0022 09A8     		add	r0, sp, #36
  95 0024 2422     		movs	r2, #36
  96 0026 0021     		movs	r1, #0
  97 0028 FFF7FEFF 		bl	memset
  98 002c 069A     		ldr	r2, [sp, #24]
  99 002e 059B     		ldr	r3, [sp, #20]
 100 0030 0498     		ldr	r0, [sp, #16]
 101 0032 039D     		ldr	r5, [sp, #12]
 102 0034 029C     		ldr	r4, [sp, #8]
 103 0036 0799     		ldr	r1, [sp, #28]
 104 0038 0990     		str	r0, [sp, #36]
 105 003a 013A     		subs	r2, r2, #1
 106 003c A3F26C73 		subw	r3, r3, #1900
 107 0040 09A8     		add	r0, sp, #36
 108 0042 0D92     		str	r2, [sp, #52]
 109 0044 0E93     		str	r3, [sp, #56]
 110 0046 0A95     		str	r5, [sp, #40]
 111 0048 0B94     		str	r4, [sp, #44]
 112 004a 0C91     		str	r1, [sp, #48]
 113 004c FFF7FEFF 		bl	mktime
 114 0050 13B0     		add	sp, sp, #76
ARM GAS  /tmp/ccVB8pLe.s 			page 3


 115              		@ sp needed
 116 0052 30BD     		pop	{r4, r5, pc}
 117              	.L12:
 118              		.align	2
 119              	.L11:
 120 0054 60180E40 		.word	1074665568
 121              		.size	_ZN6RTCDue11GetDateTimeEv, .-_ZN6RTCDue11GetDateTimeEv
 122              		.section	.text._ZN6RTCDue7SetDateEl,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_ZN6RTCDue7SetDateEl
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	_ZN6RTCDue7SetDateEl, %function
 131              	_ZN6RTCDue7SetDateEl:
 132              		@ args = 0, pretend = 0, frame = 8
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 135 0002 85B0     		sub	sp, sp, #20
 136 0004 04AB     		add	r3, sp, #16
 137 0006 1D4F     		ldr	r7, .L18
 138 0008 43F8040D 		str	r0, [r3, #-4]!
 139 000c 1846     		mov	r0, r3
 140 000e FFF7FEFF 		bl	gmtime
 141 0012 0569     		ldr	r5, [r0, #16]
 142 0014 4469     		ldr	r4, [r0, #20]
 143 0016 C368     		ldr	r3, [r0, #12]
 144 0018 194E     		ldr	r6, .L18+4
 145 001a 012D     		cmp	r5, #1
 146 001c 04F26C71 		addw	r1, r4, #1900
 147 0020 05F10102 		add	r2, r5, #1
 148 0024 95BF     		itete	ls
 149 0026 04F26B70 		addwls	r0, r4, #1899
 150 002a 0846     		movhi	r0, r1
 151 002c 0D35     		addls	r5, r5, #13
 152 002e 1546     		movhi	r5, r2
 153 0030 1C18     		adds	r4, r3, r0
 154 0032 04EB4504 		add	r4, r4, r5, lsl #1
 155 0036 04EB9004 		add	r4, r4, r0, lsr #2
 156 003a 0135     		adds	r5, r5, #1
 157 003c A7FB0070 		umull	r7, r0, r7, r0
 158 0040 04EBD014 		add	r4, r4, r0, lsr #7
 159 0044 05EB4505 		add	r5, r5, r5, lsl #1
 160 0048 A6FB0565 		umull	r6, r5, r6, r5
 161 004c A4EB5014 		sub	r4, r4, r0, lsr #5
 162 0050 0C4E     		ldr	r6, .L18+8
 163 0052 0D48     		ldr	r0, .L18+12
 164 0054 04EB9504 		add	r4, r4, r5, lsr #2
 165 0058 A6FB0465 		umull	r6, r5, r6, r4
 166 005c 661B     		subs	r6, r4, r5
 167 005e 05EB5605 		add	r5, r5, r6, lsr #1
 168 0062 AD08     		lsrs	r5, r5, #2
 169 0064 C5EBC505 		rsb	r5, r5, r5, lsl #3
 170 0068 641B     		subs	r4, r4, r5
 171 006a 0134     		adds	r4, r4, #1
ARM GAS  /tmp/ccVB8pLe.s 			page 4


 172 006c 0094     		str	r4, [sp]
 173 006e FFF7FEFF 		bl	rtc_set_date
 174 0072 B0FA80F0 		clz	r0, r0
 175 0076 4009     		lsrs	r0, r0, #5
 176 0078 05B0     		add	sp, sp, #20
 177              		@ sp needed
 178 007a F0BD     		pop	{r4, r5, r6, r7, pc}
 179              	.L19:
 180              		.align	2
 181              	.L18:
 182 007c 1F85EB51 		.word	1374389535
 183 0080 CDCCCCCC 		.word	-858993459
 184 0084 25499224 		.word	613566757
 185 0088 60180E40 		.word	1074665568
 186              		.size	_ZN6RTCDue7SetDateEl, .-_ZN6RTCDue7SetDateEl
 187              		.section	.text._ZN6RTCDue7SetTimeEl,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	_ZN6RTCDue7SetTimeEl
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	_ZN6RTCDue7SetTimeEl, %function
 196              	_ZN6RTCDue7SetTimeEl:
 197              		@ args = 0, pretend = 0, frame = 8
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199 0000 00B5     		push	{lr}
 200 0002 83B0     		sub	sp, sp, #12
 201 0004 02AB     		add	r3, sp, #8
 202 0006 43F8040D 		str	r0, [r3, #-4]!
 203 000a 1846     		mov	r0, r3
 204 000c FFF7FEFF 		bl	gmtime
 205 0010 0146     		mov	r1, r0
 206 0012 0648     		ldr	r0, .L22
 207 0014 0B68     		ldr	r3, [r1]
 208 0016 4A68     		ldr	r2, [r1, #4]
 209 0018 8968     		ldr	r1, [r1, #8]
 210 001a FFF7FEFF 		bl	rtc_set_time
 211 001e B0FA80F0 		clz	r0, r0
 212 0022 4009     		lsrs	r0, r0, #5
 213 0024 03B0     		add	sp, sp, #12
 214              		@ sp needed
 215 0026 5DF804FB 		ldr	pc, [sp], #4
 216              	.L23:
 217 002a 00BF     		.align	2
 218              	.L22:
 219 002c 60180E40 		.word	1074665568
 220              		.size	_ZN6RTCDue7SetTimeEl, .-_ZN6RTCDue7SetTimeEl
 221              		.section	.text._ZN6RTCDue11SetDateTimeEl,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZN6RTCDue11SetDateTimeEl
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccVB8pLe.s 			page 5


 229              		.type	_ZN6RTCDue11SetDateTimeEl, %function
 230              	_ZN6RTCDue11SetDateTimeEl:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 10B5     		push	{r4, lr}
 234 0002 0446     		mov	r4, r0
 235 0004 FFF7FEFF 		bl	_ZN6RTCDue7SetDateEl
 236 0008 00B9     		cbnz	r0, .L27
 237 000a 10BD     		pop	{r4, pc}
 238              	.L27:
 239 000c 2046     		mov	r0, r4
 240 000e BDE81040 		pop	{r4, lr}
 241 0012 FFF7FEBF 		b	_ZN6RTCDue7SetTimeEl
 242              		.size	_ZN6RTCDue11SetDateTimeEl, .-_ZN6RTCDue11SetDateTimeEl
 243 0016 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 244              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 245              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 246              	_ZL28cpu_irq_prev_interrupt_state:
 247 0000 00       		.space	1
 248              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 249              		.align	2
 250              		.type	_ZL32cpu_irq_critical_section_counter, %object
 251              		.size	_ZL32cpu_irq_critical_section_counter, 4
 252              	_ZL32cpu_irq_critical_section_counter:
 253 0000 00000000 		.space	4
 254              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
