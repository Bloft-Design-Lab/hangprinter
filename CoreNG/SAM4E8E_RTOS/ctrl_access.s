ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 1


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
  13              		.file	"ctrl_access.c"
  14              		.text
  15              		.section	.text.get_nb_lun,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	get_nb_lun
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	get_nb_lun, %function
  24              	get_nb_lun:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0220     		movs	r0, #2
  29 0002 7047     		bx	lr
  30              		.size	get_nb_lun, .-get_nb_lun
  31              		.section	.text.get_cur_lun,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	get_cur_lun
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	get_cur_lun, %function
  40              	get_cur_lun:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0020     		movs	r0, #0
  45 0002 7047     		bx	lr
  46              		.size	get_cur_lun, .-get_cur_lun
  47              		.section	.text.mem_test_unit_ready,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	mem_test_unit_ready
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	mem_test_unit_ready, %function
  56              	mem_test_unit_ready:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 0128     		cmp	r0, #1
  61 0002 03D8     		bhi	.L5
  62 0004 4001     		lsls	r0, r0, #5
  63 0006 024B     		ldr	r3, .L6
  64 0008 1B58     		ldr	r3, [r3, r0]
  65 000a 1847     		bx	r3
  66              	.L5:
  67 000c 0120     		movs	r0, #1
  68 000e 7047     		bx	lr
  69              	.L7:
  70              		.align	2
  71              	.L6:
  72 0010 00000000 		.word	.LANCHOR0
  73              		.size	mem_test_unit_ready, .-mem_test_unit_ready
  74              		.section	.text.mem_read_capacity,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	mem_read_capacity
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	mem_read_capacity, %function
  83              	mem_read_capacity:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87 0000 0128     		cmp	r0, #1
  88 0002 05D8     		bhi	.L9
  89 0004 034B     		ldr	r3, .L10
  90 0006 03EB4013 		add	r3, r3, r0, lsl #5
  91 000a 0846     		mov	r0, r1
  92 000c 5B68     		ldr	r3, [r3, #4]
  93 000e 1847     		bx	r3
  94              	.L9:
  95 0010 0120     		movs	r0, #1
  96 0012 7047     		bx	lr
  97              	.L11:
  98              		.align	2
  99              	.L10:
 100 0014 00000000 		.word	.LANCHOR0
 101              		.size	mem_read_capacity, .-mem_read_capacity
 102              		.section	.text.mem_sector_size,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	mem_sector_size
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	mem_sector_size, %function
 111              	mem_sector_size:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 3


 115 0000 0128     		cmp	r0, #1
 116 0002 8CBF     		ite	hi
 117 0004 0020     		movhi	r0, #0
 118 0006 0120     		movls	r0, #1
 119 0008 7047     		bx	lr
 120              		.size	mem_sector_size, .-mem_sector_size
 121 000a 00BF     		.section	.text.mem_unload,"ax",%progbits
 122              		.align	1
 123              		.p2align 2,,3
 124              		.global	mem_unload
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu fpv4-sp-d16
 129              		.type	mem_unload, %function
 130              	mem_unload:
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133              		@ link register save eliminated.
 134 0000 0128     		cmp	r0, #1
 135 0002 01D9     		bls	.L17
 136 0004 0020     		movs	r0, #0
 137 0006 7047     		bx	lr
 138              	.L17:
 139 0008 044B     		ldr	r3, .L18
 140 000a 03EB4010 		add	r0, r3, r0, lsl #5
 141 000e 8368     		ldr	r3, [r0, #8]
 142 0010 0BB1     		cbz	r3, .L15
 143 0012 0846     		mov	r0, r1
 144 0014 1847     		bx	r3
 145              	.L15:
 146 0016 81F00100 		eor	r0, r1, #1
 147 001a 7047     		bx	lr
 148              	.L19:
 149              		.align	2
 150              	.L18:
 151 001c 00000000 		.word	.LANCHOR0
 152              		.size	mem_unload, .-mem_unload
 153              		.section	.text.mem_wr_protect,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	mem_wr_protect
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	mem_wr_protect, %function
 162              	mem_wr_protect:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0128     		cmp	r0, #1
 167 0002 04D8     		bhi	.L21
 168 0004 034B     		ldr	r3, .L22
 169 0006 03EB4010 		add	r0, r3, r0, lsl #5
 170 000a C368     		ldr	r3, [r0, #12]
 171 000c 1847     		bx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 4


 172              	.L21:
 173 000e 0120     		movs	r0, #1
 174 0010 7047     		bx	lr
 175              	.L23:
 176 0012 00BF     		.align	2
 177              	.L22:
 178 0014 00000000 		.word	.LANCHOR0
 179              		.size	mem_wr_protect, .-mem_wr_protect
 180              		.section	.text.mem_removal,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	mem_removal
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	mem_removal, %function
 189              	mem_removal:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 0128     		cmp	r0, #1
 194 0002 04D8     		bhi	.L25
 195 0004 034B     		ldr	r3, .L26
 196 0006 03EB4010 		add	r0, r3, r0, lsl #5
 197 000a 0369     		ldr	r3, [r0, #16]
 198 000c 1847     		bx	r3
 199              	.L25:
 200 000e 0120     		movs	r0, #1
 201 0010 7047     		bx	lr
 202              	.L27:
 203 0012 00BF     		.align	2
 204              	.L26:
 205 0014 00000000 		.word	.LANCHOR0
 206              		.size	mem_removal, .-mem_removal
 207              		.section	.text.mem_name,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	mem_name
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	mem_name, %function
 216              	mem_name:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 0128     		cmp	r0, #1
 221 0002 9DBF     		ittte	ls
 222 0004 024B     		ldrls	r3, .L31
 223 0006 03EB4010 		addls	r0, r3, r0, lsl #5
 224 000a C069     		ldrls	r0, [r0, #28]
 225 000c 0020     		movhi	r0, #0
 226 000e 7047     		bx	lr
 227              	.L32:
 228              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 5


 229              	.L31:
 230 0010 00000000 		.word	.LANCHOR0
 231              		.size	mem_name, .-mem_name
 232              		.section	.text.memory_2_ram,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	memory_2_ram
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	memory_2_ram, %function
 241              	memory_2_ram:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 0128     		cmp	r0, #1
 246 0002 0AD8     		bhi	.L34
 247 0004 30B4     		push	{r4, r5}
 248 0006 064C     		ldr	r4, .L38
 249 0008 04EB4014 		add	r4, r4, r0, lsl #5
 250 000c 0D46     		mov	r5, r1
 251 000e 2846     		mov	r0, r5
 252 0010 1146     		mov	r1, r2
 253 0012 1A46     		mov	r2, r3
 254 0014 6369     		ldr	r3, [r4, #20]
 255 0016 30BC     		pop	{r4, r5}
 256 0018 1847     		bx	r3
 257              	.L34:
 258 001a 0120     		movs	r0, #1
 259 001c 7047     		bx	lr
 260              	.L39:
 261 001e 00BF     		.align	2
 262              	.L38:
 263 0020 00000000 		.word	.LANCHOR0
 264              		.size	memory_2_ram, .-memory_2_ram
 265              		.section	.text.ram_2_memory,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	ram_2_memory
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	ram_2_memory, %function
 274              	ram_2_memory:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 0128     		cmp	r0, #1
 279 0002 0AD8     		bhi	.L41
 280 0004 30B4     		push	{r4, r5}
 281 0006 064C     		ldr	r4, .L45
 282 0008 04EB4014 		add	r4, r4, r0, lsl #5
 283 000c 0D46     		mov	r5, r1
 284 000e 2846     		mov	r0, r5
 285 0010 1146     		mov	r1, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 6


 286 0012 1A46     		mov	r2, r3
 287 0014 A369     		ldr	r3, [r4, #24]
 288 0016 30BC     		pop	{r4, r5}
 289 0018 1847     		bx	r3
 290              	.L41:
 291 001a 0120     		movs	r0, #1
 292 001c 7047     		bx	lr
 293              	.L46:
 294 001e 00BF     		.align	2
 295              	.L45:
 296 0020 00000000 		.word	.LANCHOR0
 297              		.size	ram_2_memory, .-ram_2_memory
 298              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 299              		.align	2
 300              		.type	cpu_irq_critical_section_counter, %object
 301              		.size	cpu_irq_critical_section_counter, 4
 302              	cpu_irq_critical_section_counter:
 303 0000 00000000 		.space	4
 304              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 305              		.type	cpu_irq_prev_interrupt_state, %object
 306              		.size	cpu_irq_prev_interrupt_state, 1
 307              	cpu_irq_prev_interrupt_state:
 308 0000 00       		.space	1
 309              		.section	.rodata.lun_desc,"a",%progbits
 310              		.align	2
 311              		.set	.LANCHOR0,. + 0
 312              		.type	lun_desc, %object
 313              		.size	lun_desc, 64
 314              	lun_desc:
 315 0000 00000000 		.word	sd_mmc_test_unit_ready_0
 316 0004 00000000 		.word	sd_mmc_read_capacity_0
 317 0008 00000000 		.word	0
 318 000c 00000000 		.word	sd_mmc_wr_protect_0
 319 0010 00000000 		.word	sd_mmc_removal_0
 320 0014 00000000 		.word	sd_mmc_mem_2_ram_0
 321 0018 00000000 		.word	sd_mmc_ram_2_mem_0
 322 001c 00000000 		.word	.LC0
 323 0020 00000000 		.word	sd_mmc_test_unit_ready_1
 324 0024 00000000 		.word	sd_mmc_read_capacity_1
 325 0028 00000000 		.word	0
 326 002c 00000000 		.word	sd_mmc_wr_protect_1
 327 0030 00000000 		.word	sd_mmc_removal_1
 328 0034 00000000 		.word	sd_mmc_mem_2_ram_1
 329 0038 00000000 		.word	sd_mmc_ram_2_mem_1
 330 003c 18000000 		.word	.LC1
 331              		.section	.rodata.str1.4,"aMS",%progbits,1
 332              		.align	2
 333              	.LC0:
 334 0000 2253442F 		.ascii	"\"SD/MMC Card Slot 0\"\000"
 334      4D4D4320 
 334      43617264 
 334      20536C6F 
 334      74203022 
 335 0015 000000   		.space	3
 336              	.LC1:
 337 0018 2253442F 		.ascii	"\"SD/MMC Card Slot 1\"\000"
 337      4D4D4320 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccCkZ0ZG.s 			page 7


 337      43617264 
 337      20536C6F 
 337      74203122 
 338              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
