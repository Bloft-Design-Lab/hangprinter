ARM GAS  /tmp/ccSxvk5I.s 			page 1


   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 2
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"hooks.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.__empty,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	__empty, %function
  24              	__empty:
  25              	.LFB0:
  26              		.file 1 "../cores/arduino/hooks.c"
   1:../cores/arduino/hooks.c **** /*
   2:../cores/arduino/hooks.c ****   Copyright (c) 2012 Arduino.  All right reserved.
   3:../cores/arduino/hooks.c **** 
   4:../cores/arduino/hooks.c ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/hooks.c ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/hooks.c ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/hooks.c ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/hooks.c **** 
   9:../cores/arduino/hooks.c ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/hooks.c ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/hooks.c ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/hooks.c ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/hooks.c **** 
  14:../cores/arduino/hooks.c ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/hooks.c ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/hooks.c ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/hooks.c **** */
  18:../cores/arduino/hooks.c **** 
  19:../cores/arduino/hooks.c **** /**
  20:../cores/arduino/hooks.c ****  * Empty yield() hook.
  21:../cores/arduino/hooks.c ****  *
  22:../cores/arduino/hooks.c ****  * This function is intended to be used by library writers to build
  23:../cores/arduino/hooks.c ****  * libraries or sketches that supports cooperative threads.
  24:../cores/arduino/hooks.c ****  *
  25:../cores/arduino/hooks.c ****  * Its defined as a weak symbol and it can be redefined to implement a
  26:../cores/arduino/hooks.c ****  * real cooperative scheduler.
  27:../cores/arduino/hooks.c ****  */
  28:../cores/arduino/hooks.c **** static void __empty() {
  27              		.loc 1 28 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccSxvk5I.s 			page 2


  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32 0000 7047     		bx	lr
  33              		.cfi_endproc
  34              	.LFE0:
  35              		.size	__empty, .-__empty
  36              		.weak	yield
  37              		.thumb_set yield,__empty
  38 0002 00BF     		.section	.text.__false,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv5-d16
  45              		.type	__false, %function
  46              	__false:
  47              	.LFB1:
  29:../cores/arduino/hooks.c **** 	// Empty
  30:../cores/arduino/hooks.c **** }
  31:../cores/arduino/hooks.c **** void yield(void) __attribute__ ((weak, alias("__empty")));
  32:../cores/arduino/hooks.c **** 
  33:../cores/arduino/hooks.c **** /**
  34:../cores/arduino/hooks.c ****  * SysTick hook
  35:../cores/arduino/hooks.c ****  *
  36:../cores/arduino/hooks.c ****  * This function is called from SysTick handler, before the default
  37:../cores/arduino/hooks.c ****  * handler provided by Arduino.
  38:../cores/arduino/hooks.c ****  */
  39:../cores/arduino/hooks.c **** static int __false() {
  48              		.loc 1 39 0
  49              		.cfi_startproc
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  40:../cores/arduino/hooks.c **** 	// Return false
  41:../cores/arduino/hooks.c **** 	return 0;
  42:../cores/arduino/hooks.c **** }
  53              		.loc 1 42 0
  54 0000 0020     		movs	r0, #0
  55 0002 7047     		bx	lr
  56              		.cfi_endproc
  57              	.LFE1:
  58              		.size	__false, .-__false
  59              		.weak	sysTickHook
  60              		.thumb_set sysTickHook,__false
  61              		.text
  62              	.Letext0:
  63              		.section	.debug_info,"",%progbits
  64              	.Ldebug_info0:
  65 0000 4F000000 		.4byte	0x4f
  66 0004 0400     		.2byte	0x4
  67 0006 00000000 		.4byte	.Ldebug_abbrev0
  68 000a 04       		.byte	0x4
  69 000b 01       		.uleb128 0x1
  70 000c 58000000 		.4byte	.LASF0
  71 0010 0C       		.byte	0xc
  72 0011 10000000 		.4byte	.LASF1
ARM GAS  /tmp/ccSxvk5I.s 			page 3


  73 0015 29000000 		.4byte	.LASF2
  74 0019 00000000 		.4byte	.Ldebug_ranges0+0
  75 001d 00000000 		.4byte	0
  76 0021 00000000 		.4byte	.Ldebug_line0
  77 0025 02       		.uleb128 0x2
  78 0026 00000000 		.4byte	.LASF3
  79 002a 01       		.byte	0x1
  80 002b 27       		.byte	0x27
  81 002c 3A000000 		.4byte	0x3a
  82 0030 00000000 		.4byte	.LFB1
  83 0034 04000000 		.4byte	.LFE1-.LFB1
  84 0038 01       		.uleb128 0x1
  85 0039 9C       		.byte	0x9c
  86 003a 03       		.uleb128 0x3
  87 003b 04       		.byte	0x4
  88 003c 05       		.byte	0x5
  89 003d 696E7400 		.ascii	"int\000"
  90 0041 04       		.uleb128 0x4
  91 0042 08000000 		.4byte	.LASF4
  92 0046 01       		.byte	0x1
  93 0047 1C       		.byte	0x1c
  94 0048 00000000 		.4byte	.LFB0
  95 004c 02000000 		.4byte	.LFE0-.LFB0
  96 0050 01       		.uleb128 0x1
  97 0051 9C       		.byte	0x9c
  98 0052 00       		.byte	0
  99              		.section	.debug_abbrev,"",%progbits
 100              	.Ldebug_abbrev0:
 101 0000 01       		.uleb128 0x1
 102 0001 11       		.uleb128 0x11
 103 0002 01       		.byte	0x1
 104 0003 25       		.uleb128 0x25
 105 0004 0E       		.uleb128 0xe
 106 0005 13       		.uleb128 0x13
 107 0006 0B       		.uleb128 0xb
 108 0007 03       		.uleb128 0x3
 109 0008 0E       		.uleb128 0xe
 110 0009 1B       		.uleb128 0x1b
 111 000a 0E       		.uleb128 0xe
 112 000b 55       		.uleb128 0x55
 113 000c 17       		.uleb128 0x17
 114 000d 11       		.uleb128 0x11
 115 000e 01       		.uleb128 0x1
 116 000f 10       		.uleb128 0x10
 117 0010 17       		.uleb128 0x17
 118 0011 00       		.byte	0
 119 0012 00       		.byte	0
 120 0013 02       		.uleb128 0x2
 121 0014 2E       		.uleb128 0x2e
 122 0015 00       		.byte	0
 123 0016 03       		.uleb128 0x3
 124 0017 0E       		.uleb128 0xe
 125 0018 3A       		.uleb128 0x3a
 126 0019 0B       		.uleb128 0xb
 127 001a 3B       		.uleb128 0x3b
 128 001b 0B       		.uleb128 0xb
 129 001c 49       		.uleb128 0x49
ARM GAS  /tmp/ccSxvk5I.s 			page 4


 130 001d 13       		.uleb128 0x13
 131 001e 11       		.uleb128 0x11
 132 001f 01       		.uleb128 0x1
 133 0020 12       		.uleb128 0x12
 134 0021 06       		.uleb128 0x6
 135 0022 40       		.uleb128 0x40
 136 0023 18       		.uleb128 0x18
 137 0024 9742     		.uleb128 0x2117
 138 0026 19       		.uleb128 0x19
 139 0027 00       		.byte	0
 140 0028 00       		.byte	0
 141 0029 03       		.uleb128 0x3
 142 002a 24       		.uleb128 0x24
 143 002b 00       		.byte	0
 144 002c 0B       		.uleb128 0xb
 145 002d 0B       		.uleb128 0xb
 146 002e 3E       		.uleb128 0x3e
 147 002f 0B       		.uleb128 0xb
 148 0030 03       		.uleb128 0x3
 149 0031 08       		.uleb128 0x8
 150 0032 00       		.byte	0
 151 0033 00       		.byte	0
 152 0034 04       		.uleb128 0x4
 153 0035 2E       		.uleb128 0x2e
 154 0036 00       		.byte	0
 155 0037 03       		.uleb128 0x3
 156 0038 0E       		.uleb128 0xe
 157 0039 3A       		.uleb128 0x3a
 158 003a 0B       		.uleb128 0xb
 159 003b 3B       		.uleb128 0x3b
 160 003c 0B       		.uleb128 0xb
 161 003d 11       		.uleb128 0x11
 162 003e 01       		.uleb128 0x1
 163 003f 12       		.uleb128 0x12
 164 0040 06       		.uleb128 0x6
 165 0041 40       		.uleb128 0x40
 166 0042 18       		.uleb128 0x18
 167 0043 9742     		.uleb128 0x2117
 168 0045 19       		.uleb128 0x19
 169 0046 00       		.byte	0
 170 0047 00       		.byte	0
 171 0048 00       		.byte	0
 172              		.section	.debug_aranges,"",%progbits
 173 0000 24000000 		.4byte	0x24
 174 0004 0200     		.2byte	0x2
 175 0006 00000000 		.4byte	.Ldebug_info0
 176 000a 04       		.byte	0x4
 177 000b 00       		.byte	0
 178 000c 0000     		.2byte	0
 179 000e 0000     		.2byte	0
 180 0010 00000000 		.4byte	.LFB0
 181 0014 02000000 		.4byte	.LFE0-.LFB0
 182 0018 00000000 		.4byte	.LFB1
 183 001c 04000000 		.4byte	.LFE1-.LFB1
 184 0020 00000000 		.4byte	0
 185 0024 00000000 		.4byte	0
 186              		.section	.debug_ranges,"",%progbits
ARM GAS  /tmp/ccSxvk5I.s 			page 5


 187              	.Ldebug_ranges0:
 188 0000 00000000 		.4byte	.LFB0
 189 0004 02000000 		.4byte	.LFE0
 190 0008 00000000 		.4byte	.LFB1
 191 000c 04000000 		.4byte	.LFE1
 192 0010 00000000 		.4byte	0
 193 0014 00000000 		.4byte	0
 194              		.section	.debug_line,"",%progbits
 195              	.Ldebug_line0:
 196 0000 54000000 		.section	.debug_str,"MS",%progbits,1
 196      02002F00 
 196      00000201 
 196      FB0E0D00 
 196      01010101 
 197              	.LASF3:
 198 0000 5F5F6661 		.ascii	"__false\000"
 198      6C736500 
 199              	.LASF4:
 200 0008 5F5F656D 		.ascii	"__empty\000"
 200      70747900 
 201              	.LASF1:
 202 0010 2E2E2F63 		.ascii	"../cores/arduino/hooks.c\000"
 202      6F726573 
 202      2F617264 
 202      75696E6F 
 202      2F686F6F 
 203              	.LASF2:
 204 0029 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 204      652F746F 
 204      72626A6F 
 204      726E2F65 
 204      636C6970 
 205              	.LASF0:
 206 0058 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 206      43393920 
 206      362E332E 
 206      31203230 
 206      31373036 
 207 008b 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 207      76352D64 
 207      3136202D 
 207      6D666C6F 
 207      61742D61 
 208 00be 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 208      6E2D7365 
 208      6374696F 
 208      6E73202D 
 208      66646174 
 209 00f1 6F6E7374 		.ascii	"onstant\000"
 209      616E7400 
 210              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
