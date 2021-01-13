ARM GAS  /tmp/ccOf0kJm.s 			page 1


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
  11              		.file	"udi_cdc_desc.c"
  12              		.global	udc_config
  13              		.global	udc_config_fs
  14              		.global	udi_apis
  15              		.global	udc_desc_fs
  16              		.global	udc_device_desc
  17              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  18              		.align	2
  19              		.type	cpu_irq_critical_section_counter, %object
  20              		.size	cpu_irq_critical_section_counter, 4
  21              	cpu_irq_critical_section_counter:
  22 0000 00000000 		.space	4
  23              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  24              		.type	cpu_irq_prev_interrupt_state, %object
  25              		.size	cpu_irq_prev_interrupt_state, 1
  26              	cpu_irq_prev_interrupt_state:
  27 0000 00       		.space	1
  28              		.section	.data.udc_config,"aw",%progbits
  29              		.align	2
  30              		.type	udc_config, %object
  31              		.size	udc_config, 12
  32              	udc_config:
  33 0000 00000000 		.word	udc_device_desc
  34 0004 00000000 		.word	udc_config_fs
  35 0008 00000000 		.word	0
  36              		.section	.data.udc_config_fs,"aw",%progbits
  37              		.align	2
  38              		.type	udc_config_fs, %object
  39              		.size	udc_config_fs, 8
  40              	udc_config_fs:
  41 0000 00000000 		.word	udc_desc_fs
  42 0004 00000000 		.word	udi_apis
  43              		.section	.data.udc_desc_fs,"aw",%progbits
  44              		.align	2
  45              		.type	udc_desc_fs, %object
  46              		.size	udc_desc_fs, 67
  47              	udc_desc_fs:
  48 0000 09       		.byte	9
  49 0001 02       		.byte	2
  50 0002 4300     		.short	67
  51 0004 02       		.byte	2
  52 0005 01       		.byte	1
  53 0006 00       		.byte	0
  54 0007 C0       		.byte	-64
  55 0008 64       		.byte	100
  56 0009 09       		.byte	9
  57 000a 04       		.byte	4
ARM GAS  /tmp/ccOf0kJm.s 			page 2


  58 000b 00       		.byte	0
  59 000c 00       		.byte	0
  60 000d 01       		.byte	1
  61 000e 02       		.byte	2
  62 000f 02       		.byte	2
  63 0010 01       		.byte	1
  64 0011 00       		.byte	0
  65 0012 05       		.byte	5
  66 0013 24       		.byte	36
  67 0014 00       		.byte	0
  68 0015 1001     		.2byte	272
  69 0017 04       		.byte	4
  70 0018 24       		.byte	36
  71 0019 02       		.byte	2
  72 001a 02       		.byte	2
  73 001b 05       		.byte	5
  74 001c 24       		.byte	36
  75 001d 06       		.byte	6
  76 001e 00       		.byte	0
  77 001f 01       		.byte	1
  78 0020 05       		.byte	5
  79 0021 24       		.byte	36
  80 0022 01       		.byte	1
  81 0023 03       		.byte	3
  82 0024 01       		.byte	1
  83 0025 07       		.byte	7
  84 0026 05       		.byte	5
  85 0027 83       		.byte	-125
  86 0028 03       		.byte	3
  87 0029 4000     		.2byte	64
  88 002b 10       		.byte	16
  89 002c 09       		.byte	9
  90 002d 04       		.byte	4
  91 002e 01       		.byte	1
  92 002f 00       		.byte	0
  93 0030 02       		.byte	2
  94 0031 0A       		.byte	10
  95 0032 00       		.byte	0
  96 0033 00       		.byte	0
  97 0034 00       		.byte	0
  98 0035 07       		.byte	7
  99 0036 05       		.byte	5
 100 0037 81       		.byte	-127
 101 0038 02       		.byte	2
 102 0039 4000     		.2byte	64
 103 003b 00       		.byte	0
 104 003c 07       		.byte	7
 105 003d 05       		.byte	5
 106 003e 02       		.byte	2
 107 003f 02       		.byte	2
 108 0040 4000     		.short	64
 109 0042 00       		.byte	0
 110              		.section	.data.udc_device_desc,"aw",%progbits
 111              		.align	2
 112              		.type	udc_device_desc, %object
 113              		.size	udc_device_desc, 18
 114              	udc_device_desc:
ARM GAS  /tmp/ccOf0kJm.s 			page 3


 115 0000 12       		.byte	18
 116 0001 01       		.byte	1
 117 0002 0002     		.short	512
 118 0004 02       		.byte	2
 119 0005 00       		.byte	0
 120 0006 00       		.byte	0
 121 0007 40       		.byte	64
 122 0008 0912     		.short	4617
 123 000a D8D3     		.short	-11304
 124 000c 0001     		.short	256
 125 000e 01       		.byte	1
 126 000f 02       		.byte	2
 127 0010 00       		.byte	0
 128 0011 01       		.byte	1
 129              		.section	.data.udi_apis,"aw",%progbits
 130              		.align	2
 131              		.type	udi_apis, %object
 132              		.size	udi_apis, 8
 133              	udi_apis:
 134 0000 00000000 		.word	udi_api_cdc_comm
 135 0004 00000000 		.word	udi_api_cdc_data
 136              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
