ARM GAS  /tmp/ccT2jncq.s 			page 1


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
  11              		.file	"ctrl_access.c"
  12              		.section	.text.get_nb_lun,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	get_nb_lun
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	get_nb_lun, %function
  21              	get_nb_lun:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0220     		movs	r0, #2
  26 0002 7047     		bx	lr
  27              		.size	get_nb_lun, .-get_nb_lun
  28              		.section	.text.get_cur_lun,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	get_cur_lun
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	get_cur_lun, %function
  37              	get_cur_lun:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0020     		movs	r0, #0
  42 0002 7047     		bx	lr
  43              		.size	get_cur_lun, .-get_cur_lun
  44              		.section	.text.mem_test_unit_ready,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	mem_test_unit_ready
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu softvfp
  52              		.type	mem_test_unit_ready, %function
  53              	mem_test_unit_ready:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 0128     		cmp	r0, #1
ARM GAS  /tmp/ccT2jncq.s 			page 2


  58 0002 01D9     		bls	.L6
  59 0004 0120     		movs	r0, #1
  60 0006 7047     		bx	lr
  61              	.L6:
  62 0008 014B     		ldr	r3, .L7
  63 000a 4001     		lsls	r0, r0, #5
  64 000c 1B58     		ldr	r3, [r3, r0]
  65 000e 1847     		bx	r3
  66              	.L8:
  67              		.align	2
  68              	.L7:
  69 0010 00000000 		.word	.LANCHOR0
  70              		.size	mem_test_unit_ready, .-mem_test_unit_ready
  71              		.section	.text.mem_read_capacity,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	mem_read_capacity
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	mem_read_capacity, %function
  80              	mem_read_capacity:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0128     		cmp	r0, #1
  85 0002 0346     		mov	r3, r0
  86 0004 01D9     		bls	.L11
  87 0006 0120     		movs	r0, #1
  88 0008 7047     		bx	lr
  89              	.L11:
  90 000a 034A     		ldr	r2, .L12
  91 000c 0846     		mov	r0, r1
  92 000e 02EB4313 		add	r3, r2, r3, lsl #5
  93 0012 5B68     		ldr	r3, [r3, #4]
  94 0014 1847     		bx	r3
  95              	.L13:
  96 0016 00BF     		.align	2
  97              	.L12:
  98 0018 00000000 		.word	.LANCHOR0
  99              		.size	mem_read_capacity, .-mem_read_capacity
 100              		.section	.text.mem_sector_size,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	mem_sector_size
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	mem_sector_size, %function
 109              	mem_sector_size:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 0128     		cmp	r0, #1
 114 0002 8CBF     		ite	hi
ARM GAS  /tmp/ccT2jncq.s 			page 3


 115 0004 0020     		movhi	r0, #0
 116 0006 0120     		movls	r0, #1
 117 0008 7047     		bx	lr
 118              		.size	mem_sector_size, .-mem_sector_size
 119 000a 00BF     		.section	.text.mem_unload,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	mem_unload
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu softvfp
 127              		.type	mem_unload, %function
 128              	mem_unload:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 0128     		cmp	r0, #1
 133 0002 01D9     		bls	.L19
 134 0004 0020     		movs	r0, #0
 135 0006 7047     		bx	lr
 136              	.L19:
 137 0008 044B     		ldr	r3, .L20
 138 000a 03EB4010 		add	r0, r3, r0, lsl #5
 139 000e 8368     		ldr	r3, [r0, #8]
 140 0010 0BB1     		cbz	r3, .L17
 141 0012 0846     		mov	r0, r1
 142 0014 1847     		bx	r3
 143              	.L17:
 144 0016 81F00100 		eor	r0, r1, #1
 145 001a 7047     		bx	lr
 146              	.L21:
 147              		.align	2
 148              	.L20:
 149 001c 00000000 		.word	.LANCHOR0
 150              		.size	mem_unload, .-mem_unload
 151              		.section	.text.mem_wr_protect,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	mem_wr_protect
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu softvfp
 159              		.type	mem_wr_protect, %function
 160              	mem_wr_protect:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0000 0128     		cmp	r0, #1
 165 0002 01D9     		bls	.L24
 166 0004 0120     		movs	r0, #1
 167 0006 7047     		bx	lr
 168              	.L24:
 169 0008 024B     		ldr	r3, .L25
 170 000a 03EB4010 		add	r0, r3, r0, lsl #5
 171 000e C368     		ldr	r3, [r0, #12]
ARM GAS  /tmp/ccT2jncq.s 			page 4


 172 0010 1847     		bx	r3
 173              	.L26:
 174 0012 00BF     		.align	2
 175              	.L25:
 176 0014 00000000 		.word	.LANCHOR0
 177              		.size	mem_wr_protect, .-mem_wr_protect
 178              		.section	.text.mem_removal,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	mem_removal
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	mem_removal, %function
 187              	mem_removal:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 0128     		cmp	r0, #1
 192 0002 01D9     		bls	.L29
 193 0004 0120     		movs	r0, #1
 194 0006 7047     		bx	lr
 195              	.L29:
 196 0008 024B     		ldr	r3, .L30
 197 000a 03EB4010 		add	r0, r3, r0, lsl #5
 198 000e 0369     		ldr	r3, [r0, #16]
 199 0010 1847     		bx	r3
 200              	.L31:
 201 0012 00BF     		.align	2
 202              	.L30:
 203 0014 00000000 		.word	.LANCHOR0
 204              		.size	mem_removal, .-mem_removal
 205              		.section	.text.mem_name,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	mem_name
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	mem_name, %function
 214              	mem_name:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 0128     		cmp	r0, #1
 219 0002 9DBF     		ittte	ls
 220 0004 024B     		ldrls	r3, .L35
 221 0006 03EB4010 		addls	r0, r3, r0, lsl #5
 222 000a C069     		ldrls	r0, [r0, #28]
 223 000c 0020     		movhi	r0, #0
 224 000e 7047     		bx	lr
 225              	.L36:
 226              		.align	2
 227              	.L35:
 228 0010 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccT2jncq.s 			page 5


 229              		.size	mem_name, .-mem_name
 230              		.section	.text.memory_2_ram,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	memory_2_ram
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu softvfp
 238              		.type	memory_2_ram, %function
 239              	memory_2_ram:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 243 0000 0128     		cmp	r0, #1
 244 0002 01D9     		bls	.L42
 245 0004 0120     		movs	r0, #1
 246 0006 7047     		bx	lr
 247              	.L42:
 248 0008 30B4     		push	{r4, r5}
 249 000a 0C46     		mov	r4, r1
 250 000c 044D     		ldr	r5, .L43
 251 000e 1146     		mov	r1, r2
 252 0010 1A46     		mov	r2, r3
 253 0012 05EB4013 		add	r3, r5, r0, lsl #5
 254 0016 5B69     		ldr	r3, [r3, #20]
 255 0018 2046     		mov	r0, r4
 256 001a 30BC     		pop	{r4, r5}
 257 001c 1847     		bx	r3
 258              	.L44:
 259 001e 00BF     		.align	2
 260              	.L43:
 261 0020 00000000 		.word	.LANCHOR0
 262              		.size	memory_2_ram, .-memory_2_ram
 263              		.section	.text.ram_2_memory,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	ram_2_memory
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu softvfp
 271              		.type	ram_2_memory, %function
 272              	ram_2_memory:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 0128     		cmp	r0, #1
 277 0002 01D9     		bls	.L50
 278 0004 0120     		movs	r0, #1
 279 0006 7047     		bx	lr
 280              	.L50:
 281 0008 30B4     		push	{r4, r5}
 282 000a 0C46     		mov	r4, r1
 283 000c 044D     		ldr	r5, .L51
 284 000e 1146     		mov	r1, r2
 285 0010 1A46     		mov	r2, r3
ARM GAS  /tmp/ccT2jncq.s 			page 6


 286 0012 05EB4013 		add	r3, r5, r0, lsl #5
 287 0016 9B69     		ldr	r3, [r3, #24]
 288 0018 2046     		mov	r0, r4
 289 001a 30BC     		pop	{r4, r5}
 290 001c 1847     		bx	r3
 291              	.L52:
 292 001e 00BF     		.align	2
 293              	.L51:
 294 0020 00000000 		.word	.LANCHOR0
 295              		.size	ram_2_memory, .-ram_2_memory
 296              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 297              		.align	2
 298              		.type	cpu_irq_critical_section_counter, %object
 299              		.size	cpu_irq_critical_section_counter, 4
 300              	cpu_irq_critical_section_counter:
 301 0000 00000000 		.space	4
 302              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 303              		.type	cpu_irq_prev_interrupt_state, %object
 304              		.size	cpu_irq_prev_interrupt_state, 1
 305              	cpu_irq_prev_interrupt_state:
 306 0000 00       		.space	1
 307              		.section	.rodata.lun_desc,"a",%progbits
 308              		.align	2
 309              		.set	.LANCHOR0,. + 0
 310              		.type	lun_desc, %object
 311              		.size	lun_desc, 64
 312              	lun_desc:
 313 0000 00000000 		.word	sd_mmc_test_unit_ready_0
 314 0004 00000000 		.word	sd_mmc_read_capacity_0
 315 0008 00000000 		.word	0
 316 000c 00000000 		.word	sd_mmc_wr_protect_0
 317 0010 00000000 		.word	sd_mmc_removal_0
 318 0014 00000000 		.word	sd_mmc_mem_2_ram_0
 319 0018 00000000 		.word	sd_mmc_ram_2_mem_0
 320 001c 00000000 		.word	.LC0
 321 0020 00000000 		.word	sd_mmc_test_unit_ready_1
 322 0024 00000000 		.word	sd_mmc_read_capacity_1
 323 0028 00000000 		.word	0
 324 002c 00000000 		.word	sd_mmc_wr_protect_1
 325 0030 00000000 		.word	sd_mmc_removal_1
 326 0034 00000000 		.word	sd_mmc_mem_2_ram_1
 327 0038 00000000 		.word	sd_mmc_ram_2_mem_1
 328 003c 18000000 		.word	.LC1
 329              		.section	.rodata.str1.4,"aMS",%progbits,1
 330              		.align	2
 331              	.LC0:
 332 0000 2253442F 		.ascii	"\"SD/MMC Card Slot 0\"\000"
 332      4D4D4320 
 332      43617264 
 332      20536C6F 
 332      74203022 
 333 0015 000000   		.space	3
 334              	.LC1:
 335 0018 2253442F 		.ascii	"\"SD/MMC Card Slot 1\"\000"
 335      4D4D4320 
 335      43617264 
 335      20536C6F 
ARM GAS  /tmp/ccT2jncq.s 			page 7


 335      74203122 
 336              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
