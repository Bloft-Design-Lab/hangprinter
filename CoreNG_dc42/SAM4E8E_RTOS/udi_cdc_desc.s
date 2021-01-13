ARM GAS  /tmp/cchXp7DH.s 			page 1


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
  13              		.file	"udi_cdc_desc.c"
  14              		.global	udc_config
  15              		.global	udc_config_fs
  16              		.global	udi_apis
  17              		.global	udc_desc_fs
  18              		.global	udc_device_desc
  19              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  20              		.align	2
  21              		.type	cpu_irq_critical_section_counter, %object
  22              		.size	cpu_irq_critical_section_counter, 4
  23              	cpu_irq_critical_section_counter:
  24 0000 00000000 		.space	4
  25              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  26              		.type	cpu_irq_prev_interrupt_state, %object
  27              		.size	cpu_irq_prev_interrupt_state, 1
  28              	cpu_irq_prev_interrupt_state:
  29 0000 00       		.space	1
  30              		.section	.data.udc_config,"aw",%progbits
  31              		.align	2
  32              		.type	udc_config, %object
  33              		.size	udc_config, 12
  34              	udc_config:
  35 0000 00000000 		.word	udc_device_desc
  36 0004 00000000 		.word	udc_config_fs
  37 0008 00000000 		.word	0
  38              		.section	.data.udc_config_fs,"aw",%progbits
  39              		.align	2
  40              		.type	udc_config_fs, %object
  41              		.size	udc_config_fs, 8
  42              	udc_config_fs:
  43 0000 00000000 		.word	udc_desc_fs
  44 0004 00000000 		.word	udi_apis
  45              		.section	.data.udc_desc_fs,"aw",%progbits
  46              		.align	2
  47              		.type	udc_desc_fs, %object
  48              		.size	udc_desc_fs, 67
  49              	udc_desc_fs:
  50 0000 09       		.byte	9
  51 0001 02       		.byte	2
  52 0002 4300     		.short	67
  53 0004 02       		.byte	2
  54 0005 01       		.byte	1
  55 0006 00       		.byte	0
  56 0007 C0       		.byte	-64
  57 0008 64       		.byte	100
ARM GAS  /tmp/cchXp7DH.s 			page 2


  58 0009 09       		.byte	9
  59 000a 04       		.byte	4
  60 000b 00       		.byte	0
  61 000c 00       		.byte	0
  62 000d 01       		.byte	1
  63 000e 02       		.byte	2
  64 000f 02       		.byte	2
  65 0010 01       		.byte	1
  66 0011 00       		.byte	0
  67 0012 05       		.byte	5
  68 0013 24       		.byte	36
  69 0014 00       		.byte	0
  70 0015 1001     		.2byte	272
  71 0017 04       		.byte	4
  72 0018 24       		.byte	36
  73 0019 02       		.byte	2
  74 001a 02       		.byte	2
  75 001b 05       		.byte	5
  76 001c 24       		.byte	36
  77 001d 06       		.byte	6
  78 001e 00       		.byte	0
  79 001f 01       		.byte	1
  80 0020 05       		.byte	5
  81 0021 24       		.byte	36
  82 0022 01       		.byte	1
  83 0023 03       		.byte	3
  84 0024 01       		.byte	1
  85 0025 07       		.byte	7
  86 0026 05       		.byte	5
  87 0027 83       		.byte	-125
  88 0028 03       		.byte	3
  89 0029 4000     		.2byte	64
  90 002b 10       		.byte	16
  91 002c 09       		.byte	9
  92 002d 04       		.byte	4
  93 002e 01       		.byte	1
  94 002f 00       		.byte	0
  95 0030 02       		.byte	2
  96 0031 0A       		.byte	10
  97 0032 00       		.byte	0
  98 0033 00       		.byte	0
  99 0034 00       		.byte	0
 100 0035 07       		.byte	7
 101 0036 05       		.byte	5
 102 0037 81       		.byte	-127
 103 0038 02       		.byte	2
 104 0039 4000     		.2byte	64
 105 003b 00       		.byte	0
 106 003c 07       		.byte	7
 107 003d 05       		.byte	5
 108 003e 02       		.byte	2
 109 003f 02       		.byte	2
 110 0040 4000     		.short	64
 111 0042 00       		.byte	0
 112              		.section	.data.udc_device_desc,"aw",%progbits
 113              		.align	2
 114              		.type	udc_device_desc, %object
ARM GAS  /tmp/cchXp7DH.s 			page 3


 115              		.size	udc_device_desc, 18
 116              	udc_device_desc:
 117 0000 12       		.byte	18
 118 0001 01       		.byte	1
 119 0002 0002     		.short	512
 120 0004 02       		.byte	2
 121 0005 00       		.byte	0
 122 0006 00       		.byte	0
 123 0007 40       		.byte	64
 124 0008 501D     		.short	7504
 125 000a EC60     		.short	24812
 126 000c 0001     		.short	256
 127 000e 01       		.byte	1
 128 000f 02       		.byte	2
 129 0010 00       		.byte	0
 130 0011 01       		.byte	1
 131              		.section	.data.udi_apis,"aw",%progbits
 132              		.align	2
 133              		.type	udi_apis, %object
 134              		.size	udi_apis, 8
 135              	udi_apis:
 136 0000 00000000 		.word	udi_api_cdc_comm
 137 0004 00000000 		.word	udi_api_cdc_data
 138              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
