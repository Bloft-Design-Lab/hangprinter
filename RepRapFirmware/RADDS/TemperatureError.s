ARM GAS  /tmp/ccMMSHju.s 			page 1


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
  11              		.file	"TemperatureError.cpp"
  12              		.section	.text._Z22TemperatureErrorString16TemperatureError,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z22TemperatureErrorString16TemperatureError
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z22TemperatureErrorString16TemperatureError, %function
  21              	_Z22TemperatureErrorString16TemperatureError:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0D28     		cmp	r0, #13
  26 0002 9ABF     		itte	ls
  27 0004 024B     		ldrls	r3, .L5
  28 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  29 000a 0248     		ldrhi	r0, .L5+4
  30 000c 7047     		bx	lr
  31              	.L6:
  32 000e 00BF     		.align	2
  33              	.L5:
  34 0010 00000000 		.word	.LANCHOR0
  35 0014 00000000 		.word	.LC0
  36              		.size	_Z22TemperatureErrorString16TemperatureError, .-_Z22TemperatureErrorString16TemperatureError
  37              		.section	.rodata.CSWTCH.1,"a",%progbits
  38              		.align	2
  39              		.set	.LANCHOR0,. + 0
  40              		.type	CSWTCH.1, %object
  41              		.size	CSWTCH.1, 56
  42              	CSWTCH.1:
  43 0000 00000000 		.word	.LC1
  44 0004 08000000 		.word	.LC2
  45 0008 20000000 		.word	.LC3
  46 000c 34000000 		.word	.LC4
  47 0010 4C000000 		.word	.LC5
  48 0014 60000000 		.word	.LC6
  49 0018 70000000 		.word	.LC7
  50 001c 84000000 		.word	.LC8
  51 0020 9C000000 		.word	.LC9
  52 0024 AC000000 		.word	.LC10
  53 0028 C8000000 		.word	.LC11
  54 002c EC000000 		.word	.LC12
  55 0030 04010000 		.word	.LC13
  56 0034 14010000 		.word	.LC14
  57              		.section	.rodata._Z22TemperatureErrorString16TemperatureError.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/ccMMSHju.s 			page 2


  58              		.align	2
  59              	.LC0:
  60 0000 756E6B6E 		.ascii	"unknown temperature sense error\000"
  60      6F776E20 
  60      74656D70 
  60      65726174 
  60      75726520 
  61              		.section	.rodata.str1.4,"aMS",%progbits,1
  62              		.align	2
  63              	.LC1:
  64 0000 73756363 		.ascii	"success\000"
  64      65737300 
  65              	.LC2:
  66 0008 73686F72 		.ascii	"short-circuit in sensor\000"
  66      742D6369 
  66      72637569 
  66      7420696E 
  66      2073656E 
  67              	.LC3:
  68 0020 73656E73 		.ascii	"sensor short to Vcc\000"
  68      6F722073 
  68      686F7274 
  68      20746F20 
  68      56636300 
  69              	.LC4:
  70 0034 73656E73 		.ascii	"sensor short to ground\000"
  70      6F722073 
  70      686F7274 
  70      20746F20 
  70      67726F75 
  71 004b 00       		.space	1
  72              	.LC5:
  73 004c 73656E73 		.ascii	"sensor open circuit\000"
  73      6F72206F 
  73      70656E20 
  73      63697263 
  73      75697400 
  74              	.LC6:
  75 0060 73656E73 		.ascii	"sensor timeout\000"
  75      6F722074 
  75      696D656F 
  75      757400
  76 006f 00       		.space	1
  77              	.LC7:
  78 0070 73656E73 		.ascii	"sensor I/O error\000"
  78      6F722049 
  78      2F4F2065 
  78      72726F72 
  78      00
  79 0081 000000   		.space	3
  80              	.LC8:
  81 0084 73656E73 		.ascii	"sensor hardware error\000"
  81      6F722068 
  81      61726477 
  81      61726520 
  81      6572726F 
  82 009a 0000     		.space	2
ARM GAS  /tmp/ccMMSHju.s 			page 3


  83              	.LC9:
  84 009c 73656E73 		.ascii	"sensor bus busy\000"
  84      6F722062 
  84      75732062 
  84      75737900 
  85              	.LC10:
  86 00ac 62616420 		.ascii	"bad response from sensor\000"
  86      72657370 
  86      6F6E7365 
  86      2066726F 
  86      6D207365 
  87 00c5 000000   		.space	3
  88              	.LC11:
  89 00c8 756E6B6E 		.ascii	"unknown temperature sensor channel\000"
  89      6F776E20 
  89      74656D70 
  89      65726174 
  89      75726520 
  90 00eb 00       		.space	1
  91              	.LC12:
  92 00ec 73656E73 		.ascii	"sensor not initialised\000"
  92      6F72206E 
  92      6F742069 
  92      6E697469 
  92      616C6973 
  93 0103 00       		.space	1
  94              	.LC13:
  95 0104 756E6B6E 		.ascii	"unknown heater\000"
  95      6F776E20 
  95      68656174 
  95      657200
  96 0113 00       		.space	1
  97              	.LC14:
  98 0114 73656E73 		.ascii	"sensor short to other wiring\000"
  98      6F722073 
  98      686F7274 
  98      20746F20 
  98      6F746865 
  99              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
