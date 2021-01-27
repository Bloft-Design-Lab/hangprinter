ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3rYZDq.s 			page 1


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
  14              		.text
  15              		.section	.text._Z22TemperatureErrorString16TemperatureError,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z22TemperatureErrorString16TemperatureError
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z22TemperatureErrorString16TemperatureError, %function
  24              	_Z22TemperatureErrorString16TemperatureError:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0D28     		cmp	r0, #13
  29 0002 9ABF     		itte	ls
  30 0004 024B     		ldrls	r3, .L5
  31 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  32 000a 0248     		ldrhi	r0, .L5+4
  33 000c 7047     		bx	lr
  34              	.L6:
  35 000e 00BF     		.align	2
  36              	.L5:
  37 0010 00000000 		.word	.LANCHOR0
  38 0014 00000000 		.word	.LC0
  39              		.size	_Z22TemperatureErrorString16TemperatureError, .-_Z22TemperatureErrorString16TemperatureError
  40              		.section	.rodata.CSWTCH.1,"a",%progbits
  41              		.align	2
  42              		.set	.LANCHOR0,. + 0
  43              		.type	CSWTCH.1, %object
  44              		.size	CSWTCH.1, 56
  45              	CSWTCH.1:
  46 0000 00000000 		.word	.LC1
  47 0004 08000000 		.word	.LC2
  48 0008 20000000 		.word	.LC3
  49 000c 34000000 		.word	.LC4
  50 0010 4C000000 		.word	.LC5
  51 0014 60000000 		.word	.LC6
  52 0018 70000000 		.word	.LC7
  53 001c 84000000 		.word	.LC8
  54 0020 9C000000 		.word	.LC9
  55 0024 AC000000 		.word	.LC10
  56 0028 C8000000 		.word	.LC11
  57 002c EC000000 		.word	.LC12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3rYZDq.s 			page 2


  58 0030 04010000 		.word	.LC13
  59 0034 14010000 		.word	.LC14
  60              		.section	.rodata._Z22TemperatureErrorString16TemperatureError.str1.4,"aMS",%progbits,1
  61              		.align	2
  62              	.LC0:
  63 0000 756E6B6E 		.ascii	"unknown temperature sense error\000"
  63      6F776E20 
  63      74656D70 
  63      65726174 
  63      75726520 
  64              		.section	.rodata.str1.4,"aMS",%progbits,1
  65              		.align	2
  66              	.LC1:
  67 0000 73756363 		.ascii	"success\000"
  67      65737300 
  68              	.LC2:
  69 0008 73686F72 		.ascii	"short-circuit in sensor\000"
  69      742D6369 
  69      72637569 
  69      7420696E 
  69      2073656E 
  70              	.LC3:
  71 0020 73656E73 		.ascii	"sensor short to Vcc\000"
  71      6F722073 
  71      686F7274 
  71      20746F20 
  71      56636300 
  72              	.LC4:
  73 0034 73656E73 		.ascii	"sensor short to ground\000"
  73      6F722073 
  73      686F7274 
  73      20746F20 
  73      67726F75 
  74 004b 00       		.space	1
  75              	.LC5:
  76 004c 73656E73 		.ascii	"sensor open circuit\000"
  76      6F72206F 
  76      70656E20 
  76      63697263 
  76      75697400 
  77              	.LC6:
  78 0060 73656E73 		.ascii	"sensor timeout\000"
  78      6F722074 
  78      696D656F 
  78      757400
  79 006f 00       		.space	1
  80              	.LC7:
  81 0070 73656E73 		.ascii	"sensor I/O error\000"
  81      6F722049 
  81      2F4F2065 
  81      72726F72 
  81      00
  82 0081 000000   		.space	3
  83              	.LC8:
  84 0084 73656E73 		.ascii	"sensor hardware error\000"
  84      6F722068 
  84      61726477 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3rYZDq.s 			page 3


  84      61726520 
  84      6572726F 
  85 009a 0000     		.space	2
  86              	.LC9:
  87 009c 73656E73 		.ascii	"sensor bus busy\000"
  87      6F722062 
  87      75732062 
  87      75737900 
  88              	.LC10:
  89 00ac 62616420 		.ascii	"bad response from sensor\000"
  89      72657370 
  89      6F6E7365 
  89      2066726F 
  89      6D207365 
  90 00c5 000000   		.space	3
  91              	.LC11:
  92 00c8 756E6B6E 		.ascii	"unknown temperature sensor channel\000"
  92      6F776E20 
  92      74656D70 
  92      65726174 
  92      75726520 
  93 00eb 00       		.space	1
  94              	.LC12:
  95 00ec 73656E73 		.ascii	"sensor not initialised\000"
  95      6F72206E 
  95      6F742069 
  95      6E697469 
  95      616C6973 
  96 0103 00       		.space	1
  97              	.LC13:
  98 0104 756E6B6E 		.ascii	"unknown heater\000"
  98      6F776E20 
  98      68656174 
  98      657200
  99 0113 00       		.space	1
 100              	.LC14:
 101 0114 73656E73 		.ascii	"sensor short to other wiring\000"
 101      6F722073 
 101      686F7274 
 101      20746F20 
 101      6F746865 
 102              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
