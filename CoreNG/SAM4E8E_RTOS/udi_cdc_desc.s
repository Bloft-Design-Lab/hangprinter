ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSrr0Cz.s 			page 1


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
  14              		.text
  15              		.global	udc_config
  16              		.global	udc_config_fs
  17              		.global	udi_apis
  18              		.global	udc_desc_fs
  19              		.global	udc_device_desc
  20              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  21              		.align	2
  22              		.type	cpu_irq_critical_section_counter, %object
  23              		.size	cpu_irq_critical_section_counter, 4
  24              	cpu_irq_critical_section_counter:
  25 0000 00000000 		.space	4
  26              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  27              		.type	cpu_irq_prev_interrupt_state, %object
  28              		.size	cpu_irq_prev_interrupt_state, 1
  29              	cpu_irq_prev_interrupt_state:
  30 0000 00       		.space	1
  31              		.section	.data.udc_config,"aw",%progbits
  32              		.align	2
  33              		.type	udc_config, %object
  34              		.size	udc_config, 12
  35              	udc_config:
  36 0000 00000000 		.word	udc_device_desc
  37 0004 00000000 		.word	udc_config_fs
  38 0008 00000000 		.word	0
  39              		.section	.data.udc_config_fs,"aw",%progbits
  40              		.align	2
  41              		.type	udc_config_fs, %object
  42              		.size	udc_config_fs, 8
  43              	udc_config_fs:
  44 0000 00000000 		.word	udc_desc_fs
  45 0004 00000000 		.word	udi_apis
  46              		.section	.data.udc_desc_fs,"aw",%progbits
  47              		.align	2
  48              		.type	udc_desc_fs, %object
  49              		.size	udc_desc_fs, 67
  50              	udc_desc_fs:
  51 0000 09       		.byte	9
  52 0001 02       		.byte	2
  53 0002 4300     		.short	67
  54 0004 02       		.byte	2
  55 0005 01       		.byte	1
  56 0006 00       		.byte	0
  57 0007 C0       		.byte	-64
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSrr0Cz.s 			page 2


  58 0008 64       		.byte	100
  59 0009 09       		.byte	9
  60 000a 04       		.byte	4
  61 000b 00       		.byte	0
  62 000c 00       		.byte	0
  63 000d 01       		.byte	1
  64 000e 02       		.byte	2
  65 000f 02       		.byte	2
  66 0010 01       		.byte	1
  67 0011 00       		.byte	0
  68 0012 05       		.byte	5
  69 0013 24       		.byte	36
  70 0014 00       		.byte	0
  71 0015 1001     		.2byte	272
  72 0017 04       		.byte	4
  73 0018 24       		.byte	36
  74 0019 02       		.byte	2
  75 001a 02       		.byte	2
  76 001b 05       		.byte	5
  77 001c 24       		.byte	36
  78 001d 06       		.byte	6
  79 001e 00       		.byte	0
  80 001f 01       		.byte	1
  81 0020 05       		.byte	5
  82 0021 24       		.byte	36
  83 0022 01       		.byte	1
  84 0023 03       		.byte	3
  85 0024 01       		.byte	1
  86 0025 07       		.byte	7
  87 0026 05       		.byte	5
  88 0027 83       		.byte	-125
  89 0028 03       		.byte	3
  90 0029 4000     		.2byte	64
  91 002b 10       		.byte	16
  92 002c 09       		.byte	9
  93 002d 04       		.byte	4
  94 002e 01       		.byte	1
  95 002f 00       		.byte	0
  96 0030 02       		.byte	2
  97 0031 0A       		.byte	10
  98 0032 00       		.byte	0
  99 0033 00       		.byte	0
 100 0034 00       		.byte	0
 101 0035 07       		.byte	7
 102 0036 05       		.byte	5
 103 0037 81       		.byte	-127
 104 0038 02       		.byte	2
 105 0039 4000     		.2byte	64
 106 003b 00       		.byte	0
 107 003c 07       		.byte	7
 108 003d 05       		.byte	5
 109 003e 02       		.byte	2
 110 003f 02       		.byte	2
 111 0040 4000     		.short	64
 112 0042 00       		.byte	0
 113              		.section	.data.udc_device_desc,"aw",%progbits
 114              		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSrr0Cz.s 			page 3


 115              		.type	udc_device_desc, %object
 116              		.size	udc_device_desc, 18
 117              	udc_device_desc:
 118 0000 12       		.byte	18
 119 0001 01       		.byte	1
 120 0002 0002     		.short	512
 121 0004 02       		.byte	2
 122 0005 00       		.byte	0
 123 0006 00       		.byte	0
 124 0007 40       		.byte	64
 125 0008 501D     		.short	7504
 126 000a EC60     		.short	24812
 127 000c 0001     		.short	256
 128 000e 01       		.byte	1
 129 000f 02       		.byte	2
 130 0010 00       		.byte	0
 131 0011 01       		.byte	1
 132              		.section	.data.udi_apis,"aw",%progbits
 133              		.align	2
 134              		.type	udi_apis, %object
 135              		.size	udi_apis, 8
 136              	udi_apis:
 137 0000 00000000 		.word	udi_api_cdc_comm
 138 0004 00000000 		.word	udi_api_cdc_data
 139              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
