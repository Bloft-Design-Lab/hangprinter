ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5kZvCK.s 			page 1


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
  13              		.file	"chipid.c"
  14              		.text
  15              		.section	.text.chipid_read,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	chipid_read
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	chipid_read, %function
  24              	chipid_read:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 41B3     		cbz	r1, .L3
  29 0002 D0F800C0 		ldr	ip, [r0]
  30 0006 F0B4     		push	{r4, r5, r6, r7}
  31 0008 0768     		ldr	r7, [r0]
  32 000a 0668     		ldr	r6, [r0]
  33 000c 0368     		ldr	r3, [r0]
  34 000e 0268     		ldr	r2, [r0]
  35 0010 0568     		ldr	r5, [r0]
  36 0012 0468     		ldr	r4, [r0]
  37 0014 0368     		ldr	r3, [r0]
  38 0016 C2F30342 		ubfx	r2, r2, #16, #4
  39 001a 0CF01F0C 		and	ip, ip, #31
  40 001e C7F34217 		ubfx	r7, r7, #5, #3
  41 0022 C6F30326 		ubfx	r6, r6, #8, #4
  42 0026 C5F30755 		ubfx	r5, r5, #20, #8
  43 002a C4F30274 		ubfx	r4, r4, #28, #3
  44 002e DB0F     		lsrs	r3, r3, #31
  45 0030 0A61     		str	r2, [r1, #16]
  46 0032 0022     		movs	r2, #0
  47 0034 C1E900C7 		strd	ip, r7, [r1]
  48 0038 8E60     		str	r6, [r1, #8]
  49 003a C1E90554 		strd	r5, r4, [r1, #20]
  50 003e CB61     		str	r3, [r1, #28]
  51 0040 CA60     		str	r2, [r1, #12]
  52 0042 23B1     		cbz	r3, .L4
  53 0044 4368     		ldr	r3, [r0, #4]
  54 0046 0B62     		str	r3, [r1, #32]
  55 0048 1046     		mov	r0, r2
  56 004a F0BC     		pop	{r4, r5, r6, r7}
  57 004c 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5kZvCK.s 			page 2


  58              	.L4:
  59 004e 1846     		mov	r0, r3
  60 0050 F0BC     		pop	{r4, r5, r6, r7}
  61 0052 7047     		bx	lr
  62              	.L3:
  63 0054 4FF0FF30 		mov	r0, #-1
  64 0058 7047     		bx	lr
  65              		.size	chipid_read, .-chipid_read
  66 005a 00BF     		.section	.text.chipid_read_version,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	chipid_read_version
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	chipid_read_version, %function
  75              	chipid_read_version:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0068     		ldr	r0, [r0]
  80 0002 00F01F00 		and	r0, r0, #31
  81 0006 7047     		bx	lr
  82              		.size	chipid_read_version, .-chipid_read_version
  83              		.section	.text.chipid_read_processor,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	chipid_read_processor
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	chipid_read_processor, %function
  92              	chipid_read_processor:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 0068     		ldr	r0, [r0]
  97 0002 00F0E000 		and	r0, r0, #224
  98 0006 7047     		bx	lr
  99              		.size	chipid_read_processor, .-chipid_read_processor
 100              		.section	.text.chipid_read_arch,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	chipid_read_arch
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	chipid_read_arch, %function
 109              	chipid_read_arch:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 0068     		ldr	r0, [r0]
 114 0002 00F07F60 		and	r0, r0, #267386880
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5kZvCK.s 			page 3


 115 0006 7047     		bx	lr
 116              		.size	chipid_read_arch, .-chipid_read_arch
 117              		.section	.text.chipid_read_sramsize,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	chipid_read_sramsize
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	chipid_read_sramsize, %function
 126              	chipid_read_sramsize:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 0068     		ldr	r0, [r0]
 131 0002 00F47020 		and	r0, r0, #983040
 132 0006 7047     		bx	lr
 133              		.size	chipid_read_sramsize, .-chipid_read_sramsize
 134              		.section	.text.chipid_read_nvpmsize,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	chipid_read_nvpmsize
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	chipid_read_nvpmsize, %function
 143              	chipid_read_nvpmsize:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 0068     		ldr	r0, [r0]
 148 0002 00F47060 		and	r0, r0, #3840
 149 0006 7047     		bx	lr
 150              		.size	chipid_read_nvpmsize, .-chipid_read_nvpmsize
 151              		.section	.text.chipid_read_nvpm2size,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	chipid_read_nvpm2size
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv4-sp-d16
 159              		.type	chipid_read_nvpm2size, %function
 160              	chipid_read_nvpm2size:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0000 0068     		ldr	r0, [r0]
 165 0002 00F00C00 		and	r0, r0, #12
 166 0006 7047     		bx	lr
 167              		.size	chipid_read_nvpm2size, .-chipid_read_nvpm2size
 168              		.section	.text.chipid_read_nvpmtype,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	chipid_read_nvpmtype
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5kZvCK.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	chipid_read_nvpmtype, %function
 177              	chipid_read_nvpmtype:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              		@ link register save eliminated.
 181 0000 0068     		ldr	r0, [r0]
 182 0002 00F0E040 		and	r0, r0, #1879048192
 183 0006 7047     		bx	lr
 184              		.size	chipid_read_nvpmtype, .-chipid_read_nvpmtype
 185              		.section	.text.chipid_read_extchipid,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	chipid_read_extchipid
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	chipid_read_extchipid, %function
 194              	chipid_read_extchipid:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 0368     		ldr	r3, [r0]
 199 0002 002B     		cmp	r3, #0
 200 0004 B4BF     		ite	lt
 201 0006 4068     		ldrlt	r0, [r0, #4]
 202 0008 0020     		movge	r0, #0
 203 000a 7047     		bx	lr
 204              		.size	chipid_read_extchipid, .-chipid_read_extchipid
 205              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 206              		.align	2
 207              		.type	cpu_irq_critical_section_counter, %object
 208              		.size	cpu_irq_critical_section_counter, 4
 209              	cpu_irq_critical_section_counter:
 210 0000 00000000 		.space	4
 211              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 212              		.type	cpu_irq_prev_interrupt_state, %object
 213              		.size	cpu_irq_prev_interrupt_state, 1
 214              	cpu_irq_prev_interrupt_state:
 215 0000 00       		.space	1
 216              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
