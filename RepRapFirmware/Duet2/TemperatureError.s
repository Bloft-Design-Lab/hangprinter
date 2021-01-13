ARM GAS  /tmp/cccmB5ct.s 			page 1


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
  13              		.file	"TemperatureError.cpp"
  14              		.section	.text._Z22TemperatureErrorString16TemperatureError,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z22TemperatureErrorString16TemperatureError
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z22TemperatureErrorString16TemperatureError, %function
  23              	_Z22TemperatureErrorString16TemperatureError:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0D28     		cmp	r0, #13
  28 0002 9ABF     		itte	ls
  29 0004 024B     		ldrls	r3, .L5
  30 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  31 000a 0248     		ldrhi	r0, .L5+4
  32 000c 7047     		bx	lr
  33              	.L6:
  34 000e 00BF     		.align	2
  35              	.L5:
  36 0010 00000000 		.word	.LANCHOR0
  37 0014 00000000 		.word	.LC0
  38              		.size	_Z22TemperatureErrorString16TemperatureError, .-_Z22TemperatureErrorString16TemperatureError
  39              		.section	.rodata.CSWTCH.1,"a",%progbits
  40              		.align	2
  41              		.set	.LANCHOR0,. + 0
  42              		.type	CSWTCH.1, %object
  43              		.size	CSWTCH.1, 56
  44              	CSWTCH.1:
  45 0000 00000000 		.word	.LC1
  46 0004 08000000 		.word	.LC2
  47 0008 20000000 		.word	.LC3
  48 000c 34000000 		.word	.LC4
  49 0010 4C000000 		.word	.LC5
  50 0014 60000000 		.word	.LC6
  51 0018 70000000 		.word	.LC7
  52 001c 84000000 		.word	.LC8
  53 0020 9C000000 		.word	.LC9
  54 0024 AC000000 		.word	.LC10
  55 0028 C8000000 		.word	.LC11
  56 002c EC000000 		.word	.LC12
  57 0030 04010000 		.word	.LC13
ARM GAS  /tmp/cccmB5ct.s 			page 2


  58 0034 14010000 		.word	.LC14
  59              		.section	.rodata._Z22TemperatureErrorString16TemperatureError.str1.4,"aMS",%progbits,1
  60              		.align	2
  61              	.LC0:
  62 0000 756E6B6E 		.ascii	"unknown temperature sense error\000"
  62      6F776E20 
  62      74656D70 
  62      65726174 
  62      75726520 
  63              		.section	.rodata.str1.4,"aMS",%progbits,1
  64              		.align	2
  65              	.LC1:
  66 0000 73756363 		.ascii	"success\000"
  66      65737300 
  67              	.LC2:
  68 0008 73686F72 		.ascii	"short-circuit in sensor\000"
  68      742D6369 
  68      72637569 
  68      7420696E 
  68      2073656E 
  69              	.LC3:
  70 0020 73656E73 		.ascii	"sensor short to Vcc\000"
  70      6F722073 
  70      686F7274 
  70      20746F20 
  70      56636300 
  71              	.LC4:
  72 0034 73656E73 		.ascii	"sensor short to ground\000"
  72      6F722073 
  72      686F7274 
  72      20746F20 
  72      67726F75 
  73 004b 00       		.space	1
  74              	.LC5:
  75 004c 73656E73 		.ascii	"sensor open circuit\000"
  75      6F72206F 
  75      70656E20 
  75      63697263 
  75      75697400 
  76              	.LC6:
  77 0060 73656E73 		.ascii	"sensor timeout\000"
  77      6F722074 
  77      696D656F 
  77      757400
  78 006f 00       		.space	1
  79              	.LC7:
  80 0070 73656E73 		.ascii	"sensor I/O error\000"
  80      6F722049 
  80      2F4F2065 
  80      72726F72 
  80      00
  81 0081 000000   		.space	3
  82              	.LC8:
  83 0084 73656E73 		.ascii	"sensor hardware error\000"
  83      6F722068 
  83      61726477 
  83      61726520 
ARM GAS  /tmp/cccmB5ct.s 			page 3


  83      6572726F 
  84 009a 0000     		.space	2
  85              	.LC9:
  86 009c 73656E73 		.ascii	"sensor bus busy\000"
  86      6F722062 
  86      75732062 
  86      75737900 
  87              	.LC10:
  88 00ac 62616420 		.ascii	"bad response from sensor\000"
  88      72657370 
  88      6F6E7365 
  88      2066726F 
  88      6D207365 
  89 00c5 000000   		.space	3
  90              	.LC11:
  91 00c8 756E6B6E 		.ascii	"unknown temperature sensor channel\000"
  91      6F776E20 
  91      74656D70 
  91      65726174 
  91      75726520 
  92 00eb 00       		.space	1
  93              	.LC12:
  94 00ec 73656E73 		.ascii	"sensor not initialised\000"
  94      6F72206E 
  94      6F742069 
  94      6E697469 
  94      616C6973 
  95 0103 00       		.space	1
  96              	.LC13:
  97 0104 756E6B6E 		.ascii	"unknown heater\000"
  97      6F776E20 
  97      68656174 
  97      657200
  98 0113 00       		.space	1
  99              	.LC14:
 100 0114 73656E73 		.ascii	"sensor short to other wiring\000"
 100      6F722073 
 100      686F7274 
 100      20746F20 
 100      6F746865 
 101              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
