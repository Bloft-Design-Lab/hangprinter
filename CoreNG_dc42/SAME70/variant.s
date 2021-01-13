ARM GAS  /tmp/cc4jIqrt.s 			page 1


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
  12              		.file	"variant.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
  17              		.align	1
  18              		.p2align 2,,3
  19              		.weak	_ZN9UARTClassD2Ev
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	_ZN9UARTClassD2Ev, %function
  25              	_ZN9UARTClassD2Ev:
  26              	.LFB546:
  27              		.file 1 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** /*
   2:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
   4:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   This library is free software; you can redistribute it and/or
   5:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   modify it under the terms of the GNU Lesser General Public
   6:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   License as published by the Free Software Foundation; either
   7:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   version 2.1 of the License, or (at your option) any later version.
   8:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
   9:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   This library is distributed in the hope that it will be useful,
  10:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   See the GNU Lesser General Public License for more details.
  13:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  14:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   You should have received a copy of the GNU Lesser General Public
  15:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   License along with this library; if not, write to the Free Software
  16:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** */
  18:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  19:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #ifndef _UART_CLASS_
  20:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define _UART_CLASS_
  21:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  22:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #include "HardwareSerial.h"
  23:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #include "RingBuffer.h"
  24:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  25:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #if SAM4E || SAME70
  26:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #include "component/usart.h"
  27:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #else
  28:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #include "component/component_usart.h"
  29:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #endif
  30:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
ARM GAS  /tmp/cc4jIqrt.s 			page 2


  31:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define SERIAL_8N1 UARTClass::Mode_8N1
  32:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define SERIAL_8E1 UARTClass::Mode_8E1
  33:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define SERIAL_8O1 UARTClass::Mode_8O1
  34:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define SERIAL_8M1 UARTClass::Mode_8M1
  35:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** #define SERIAL_8S1 UARTClass::Mode_8S1
  36:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h **** class UARTClass : public HardwareSerial
  28              		.loc 1 38 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  34              		.loc 1 38 0
  35 0000 7047     		bx	lr
  36              		.cfi_endproc
  37              	.LFE546:
  38              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
  39              		.weak	_ZN9UARTClassD1Ev
  40              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
  41 0002 00BF     		.section	.text.UART0_Handler,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	UART0_Handler
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv5-d16
  49              		.type	UART0_Handler, %function
  50              	UART0_Handler:
  51              	.LFB532:
  52              		.file 2 "../variants/same70/variant.cpp"
   1:../variants/same70/variant.cpp **** /*
   2:../variants/same70/variant.cpp ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../variants/same70/variant.cpp **** 
   4:../variants/same70/variant.cpp ****   This library is free software; you can redistribute it and/or
   5:../variants/same70/variant.cpp ****   modify it under the terms of the GNU Lesser General Public
   6:../variants/same70/variant.cpp ****   License as published by the Free Software Foundation; either
   7:../variants/same70/variant.cpp ****   version 2.1 of the License, or (at your option) any later version.
   8:../variants/same70/variant.cpp **** 
   9:../variants/same70/variant.cpp ****   This library is distributed in the hope that it will be useful,
  10:../variants/same70/variant.cpp ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../variants/same70/variant.cpp ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../variants/same70/variant.cpp ****   See the GNU Lesser General Public License for more details.
  13:../variants/same70/variant.cpp **** 
  14:../variants/same70/variant.cpp ****   You should have received a copy of the GNU Lesser General Public
  15:../variants/same70/variant.cpp ****   License along with this library; if not, write to the Free Software
  16:../variants/same70/variant.cpp ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../variants/same70/variant.cpp **** */
  18:../variants/same70/variant.cpp **** 
  19:../variants/same70/variant.cpp **** #include "variant.h"
  20:../variants/same70/variant.cpp **** #include "udc.h"
  21:../variants/same70/variant.cpp **** 
  22:../variants/same70/variant.cpp **** /* For the SAME70Q21 test board we use a logical pin numbering scheme:
  23:../variants/same70/variant.cpp ****  * Pins   0-17  PA0-6, 9-13, 17-19, 21-24, 29
  24:../variants/same70/variant.cpp ****  * Pins  18-26  PB0-7, 13
ARM GAS  /tmp/cc4jIqrt.s 			page 3


  25:../variants/same70/variant.cpp ****  * Pins  27-36  PC8-9, 12-14, 16-17, 19, 30-31
  26:../variants/same70/variant.cpp ****  * Pins  37-50  PD11-12, 18-22, 24-28, 30-31
  27:../variants/same70/variant.cpp ****  */
  28:../variants/same70/variant.cpp **** 
  29:../variants/same70/variant.cpp **** /*
  30:../variants/same70/variant.cpp ****  * Pins descriptions
  31:../variants/same70/variant.cpp ****  */
  32:../variants/same70/variant.cpp **** extern const PinDescription g_APinDescription[] =
  33:../variants/same70/variant.cpp **** {
  34:../variants/same70/variant.cpp ****   // PIO A
  35:../variants/same70/variant.cpp **** 
  36:../variants/same70/variant.cpp ****   // 0-2
  37:../variants/same70/variant.cpp ****   { PIOA, PIO_PA0,             ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  38:../variants/same70/variant.cpp ****   { PIOA, PIO_PA1,             ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  39:../variants/same70/variant.cpp ****   { PIOA, PIO_PA2,             ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  40:../variants/same70/variant.cpp **** 
  41:../variants/same70/variant.cpp ****   // PA3-4 are connected to EEPROM on the test board (TWI0)
  42:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA3A_TWD0,       ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  43:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA4A_TWCK0,      ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  44:../variants/same70/variant.cpp **** 
  45:../variants/same70/variant.cpp ****   // 3-4 UART1
  46:../variants/same70/variant.cpp ****   { PIOA, PIO_PA5C_URXD1,      ID_PIOA, PIO_PERIPH_C, PIO_PULLUP,   PIN_ATTR_DIGITAL,              
  47:../variants/same70/variant.cpp ****   { PIOA, PIO_PA6C_UTXD1,      ID_PIOA, PIO_PERIPH_C, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  48:../variants/same70/variant.cpp **** 
  49:../variants/same70/variant.cpp ****   // PA7-8 are connected to XTAL32 on the test board
  50:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA7,             ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  51:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA8,             ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  52:../variants/same70/variant.cpp **** 
  53:../variants/same70/variant.cpp ****   // 5-6 UART0
  54:../variants/same70/variant.cpp ****   { PIOA, PIO_PA9A_URXD0,      ID_PIOA, PIO_PERIPH_A, PIO_PULLUP,   PIN_ATTR_DIGITAL,              
  55:../variants/same70/variant.cpp ****   { PIOA, PIO_PA10A_UTXD0,     ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  56:../variants/same70/variant.cpp **** 
  57:../variants/same70/variant.cpp ****   // 7-9
  58:../variants/same70/variant.cpp ****   // PA11 is connected to USER SWITCH on the test board (active low)
  59:../variants/same70/variant.cpp ****   { PIOA, PIO_PA11,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  60:../variants/same70/variant.cpp ****   { PIOA, PIO_PA12,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  61:../variants/same70/variant.cpp ****   { PIOA, PIO_PA13,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  62:../variants/same70/variant.cpp **** 
  63:../variants/same70/variant.cpp ****   // PA15-16 are connected to RAM on the test board
  64:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA15,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  65:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA16,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
  66:../variants/same70/variant.cpp **** 
  67:../variants/same70/variant.cpp ****   // 10-12 (ADC)
  68:../variants/same70/variant.cpp ****   { PIOA, PIO_PA17,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_ANALOG,               
  69:../variants/same70/variant.cpp ****   { PIOA, PIO_PA18,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_ANALOG,               
  70:../variants/same70/variant.cpp ****   { PIOA, PIO_PA19,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  71:../variants/same70/variant.cpp **** 
  72:../variants/same70/variant.cpp ****   // PA20 is connected to RAM on the test board
  73:../variants/same70/variant.cpp ****   //{ PIOA, PIO_PA20,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_ANALOG,             
  74:../variants/same70/variant.cpp **** 
  75:../variants/same70/variant.cpp ****   // 13-16
  76:../variants/same70/variant.cpp ****   { PIOA, PIO_PA21,            ID_PIOA, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_ANALOG,               
  77:../variants/same70/variant.cpp ****   { PIOA, PIO_PA22,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  78:../variants/same70/variant.cpp ****   { PIOA, PIO_PA23,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  79:../variants/same70/variant.cpp ****   { PIOA, PIO_PA24,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  80:../variants/same70/variant.cpp **** 
  81:../variants/same70/variant.cpp ****   // PA25-28 are used for HSMCI
ARM GAS  /tmp/cc4jIqrt.s 			page 4


  82:../variants/same70/variant.cpp **** 
  83:../variants/same70/variant.cpp ****   // 17
  84:../variants/same70/variant.cpp ****   { PIOA, PIO_PA29,            ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  85:../variants/same70/variant.cpp **** 
  86:../variants/same70/variant.cpp ****   // PA30 is connected to SD_D0 on the test board
  87:../variants/same70/variant.cpp ****   // PA31 is connected to SD_D1 on the test board
  88:../variants/same70/variant.cpp **** 
  89:../variants/same70/variant.cpp ****   // PIO B
  90:../variants/same70/variant.cpp **** 
  91:../variants/same70/variant.cpp ****   // 18-19
  92:../variants/same70/variant.cpp ****   { PIOB, PIO_PB0,             ID_PIOB, PIO_PERIPH_D, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  93:../variants/same70/variant.cpp ****   { PIOB, PIO_PB1,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  94:../variants/same70/variant.cpp **** 
  95:../variants/same70/variant.cpp ****   // 20-21 (CAN0?) [currently used for CS from ESP]
  96:../variants/same70/variant.cpp ****   { PIOB, PIO_PB2,             ID_PIOB, PIO_PERIPH_D, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  97:../variants/same70/variant.cpp ****   { PIOB, PIO_PB3,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
  98:../variants/same70/variant.cpp **** 
  99:../variants/same70/variant.cpp ****   // 22-23 (TWI1?)
 100:../variants/same70/variant.cpp ****   { PIOB, PIO_PB4,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 101:../variants/same70/variant.cpp ****   { PIOB, PIO_PB5,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 102:../variants/same70/variant.cpp **** 
 103:../variants/same70/variant.cpp ****   // 24-25
 104:../variants/same70/variant.cpp ****   { PIOB, PIO_PB6,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 105:../variants/same70/variant.cpp ****   { PIOB, PIO_PB7,             ID_PIOB, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 106:../variants/same70/variant.cpp **** 
 107:../variants/same70/variant.cpp ****   // PB8-PB9 are not available (Crystal) [assuming we use two pins for the crystal, else we get a s
 108:../variants/same70/variant.cpp ****   // PB10-PB11 are not present on chip
 109:../variants/same70/variant.cpp ****   // PB12 is not available (Erase)
 110:../variants/same70/variant.cpp **** 
 111:../variants/same70/variant.cpp ****   // 26
 112:../variants/same70/variant.cpp ****   { PIOB, PIO_PB13,            ID_PIOB, PIO_INPUT,    PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 113:../variants/same70/variant.cpp **** 
 114:../variants/same70/variant.cpp ****   // PIO C
 115:../variants/same70/variant.cpp **** 
 116:../variants/same70/variant.cpp ****   // PC0-7 are connected to RAM on the test board
 117:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC0,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 118:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC1,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 119:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC2,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 120:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC3,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 121:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC4,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 122:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC5,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 123:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC6,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 124:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC7,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 125:../variants/same70/variant.cpp **** 
 126:../variants/same70/variant.cpp ****   // 27-28
 127:../variants/same70/variant.cpp ****   // PC8 is connected to USER LED on the test board (active low)
 128:../variants/same70/variant.cpp ****   { PIOC, PIO_PC8,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 129:../variants/same70/variant.cpp ****   { PIOC, PIO_PC9,             ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 130:../variants/same70/variant.cpp **** 
 131:../variants/same70/variant.cpp ****   // PC11 is connected to EEPROM on the test board
 132:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC11,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 133:../variants/same70/variant.cpp **** 
 134:../variants/same70/variant.cpp ****   // 29-31
 135:../variants/same70/variant.cpp ****   { PIOC, PIO_PC12,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 136:../variants/same70/variant.cpp ****   { PIOC, PIO_PC13,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 137:../variants/same70/variant.cpp ****   { PIOC, PIO_PC14,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 138:../variants/same70/variant.cpp **** 
ARM GAS  /tmp/cc4jIqrt.s 			page 5


 139:../variants/same70/variant.cpp ****   // PC15 is connected to RAM on the test board
 140:../variants/same70/variant.cpp **** 
 141:../variants/same70/variant.cpp ****   // 32
 142:../variants/same70/variant.cpp ****   { PIOC, PIO_PC16,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 143:../variants/same70/variant.cpp **** 
 144:../variants/same70/variant.cpp ****   // 33
 145:../variants/same70/variant.cpp ****   { PIOC, PIO_PC17,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 146:../variants/same70/variant.cpp **** 
 147:../variants/same70/variant.cpp ****   // PC18 is connected to RAM on the test board
 148:../variants/same70/variant.cpp **** 
 149:../variants/same70/variant.cpp ****   // 34
 150:../variants/same70/variant.cpp ****   { PIOC, PIO_PC19,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 151:../variants/same70/variant.cpp **** 
 152:../variants/same70/variant.cpp ****   // PC20-29 are connected to RAM on the test board
 153:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC20,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 154:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC21,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 155:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC22,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 156:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC23,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 157:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC24,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 158:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC25,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 159:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC26,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 160:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC27,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 161:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC28,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 162:../variants/same70/variant.cpp ****   //{ PIOC, PIO_PC29,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 163:../variants/same70/variant.cpp **** 
 164:../variants/same70/variant.cpp ****   // 35-36
 165:../variants/same70/variant.cpp ****   { PIOC, PIO_PC30,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 166:../variants/same70/variant.cpp ****   { PIOC, PIO_PC31,            ID_PIOC, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 167:../variants/same70/variant.cpp **** 
 168:../variants/same70/variant.cpp ****   // PIO D
 169:../variants/same70/variant.cpp **** 
 170:../variants/same70/variant.cpp ****   // PD0-10 are connected to the Ethernet PHY
 171:../variants/same70/variant.cpp **** 
 172:../variants/same70/variant.cpp ****   // 37-38
 173:../variants/same70/variant.cpp ****   { PIOD, PIO_PD11,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 174:../variants/same70/variant.cpp ****   { PIOD, PIO_PD12,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 175:../variants/same70/variant.cpp **** 
 176:../variants/same70/variant.cpp ****   // PD13-17 are connected to RAM on the test board
 177:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD13,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 178:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD14,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 179:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD15,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 180:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD16,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 181:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD17,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 182:../variants/same70/variant.cpp **** 
 183:../variants/same70/variant.cpp ****   // 39-40
 184:../variants/same70/variant.cpp ****   { PIOD, PIO_PD18,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 185:../variants/same70/variant.cpp ****   { PIOD, PIO_PD19,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 186:../variants/same70/variant.cpp **** 
 187:../variants/same70/variant.cpp ****   // 41-43 SPI0
 188:../variants/same70/variant.cpp ****   { PIOD, PIO_PD20B_SPI0_MISO, ID_PIOD, PIO_PERIPH_B, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 189:../variants/same70/variant.cpp ****   { PIOD, PIO_PD21B_SPI0_MOSI, ID_PIOD, PIO_PERIPH_B, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 190:../variants/same70/variant.cpp ****   { PIOD, PIO_PD22B_SPI0_SPCK, ID_PIOD, PIO_PERIPH_B, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 191:../variants/same70/variant.cpp **** 
 192:../variants/same70/variant.cpp ****   // PD23 is connected to RAM on the test board
 193:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD23,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 194:../variants/same70/variant.cpp **** 
 195:../variants/same70/variant.cpp ****   // 44-48
ARM GAS  /tmp/cc4jIqrt.s 			page 6


 196:../variants/same70/variant.cpp ****   { PIOD, PIO_PD24,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 197:../variants/same70/variant.cpp ****   { PIOD, PIO_PD25,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 198:../variants/same70/variant.cpp ****   { PIOD, PIO_PD26,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 199:../variants/same70/variant.cpp ****   { PIOD, PIO_PD27,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 200:../variants/same70/variant.cpp ****   { PIOD, PIO_PD28,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 201:../variants/same70/variant.cpp **** 
 202:../variants/same70/variant.cpp ****   // PD29 is connected to RAM on the test board
 203:../variants/same70/variant.cpp ****   //{ PIOD, PIO_PD29,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 204:../variants/same70/variant.cpp **** 
 205:../variants/same70/variant.cpp ****   // 49-50
 206:../variants/same70/variant.cpp ****   { PIOD, PIO_PD30,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 207:../variants/same70/variant.cpp ****   { PIOD, PIO_PD31,            ID_PIOD, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 208:../variants/same70/variant.cpp **** 
 209:../variants/same70/variant.cpp ****   // PIO E
 210:../variants/same70/variant.cpp **** 
 211:../variants/same70/variant.cpp ****   // PE0-5 are connected to RAM on the test board
 212:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE0,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 213:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE1,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 214:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE2,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 215:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE3,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 216:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE4,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 217:../variants/same70/variant.cpp ****   //{ PIOE, PIO_PE5,             ID_PIOE, PIO_OUTPUT_0, PIO_DEFAULT,  PIN_ATTR_DIGITAL,            
 218:../variants/same70/variant.cpp **** 
 219:../variants/same70/variant.cpp ****   // OTHER
 220:../variants/same70/variant.cpp **** 
 221:../variants/same70/variant.cpp ****   // 51-52 HSMCI
 222:../variants/same70/variant.cpp ****   { PIOA, PIO_PA25D_MCCK,      ID_PIOA, PIO_PERIPH_D, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 223:../variants/same70/variant.cpp ****   { PIOA, PIO_PA28C_MCCDA | PIO_PA30C_MCDA0 | PIO_PA31C_MCDA1 | PIO_PA26C_MCDA2 | PIO_PA27C_MCDA3,
 224:../variants/same70/variant.cpp **** 		  	  	  	  	  	   ID_PIOA, PIO_PERIPH_C, PIO_PULLUP,   PIN_ATTR_DIGITAL,                   NO_ADC
 225:../variants/same70/variant.cpp **** 
 226:../variants/same70/variant.cpp ****   // 53-55 GMAC PHY
 227:../variants/same70/variant.cpp ****   { PIOA, PIO_PA14,            ID_PIOA, PIO_INPUT,    PIO_PULLUP,   PIN_ATTR_DIGITAL,              
 228:../variants/same70/variant.cpp ****   { PIOC, PIO_PC10,            ID_PIOC, PIO_OUTPUT_1, PIO_DEFAULT,  PIN_ATTR_DIGITAL,              
 229:../variants/same70/variant.cpp ****   { PIOD, (PIO_PD0A_GTXCK | PIO_PD1A_GTXEN | PIO_PD2A_GTX0 | PIO_PD3A_GTX1 | PIO_PD4A_GRXDV | PIO_P
 230:../variants/same70/variant.cpp **** 		  	  	  	  	  	   ID_PIOD, PIO_PERIPH_A, PIO_DEFAULT,  PIN_ATTR_DIGITAL,                   NO_ADC
 231:../variants/same70/variant.cpp **** 
 232:../variants/same70/variant.cpp ****   // 56 UART0 all pins
 233:../variants/same70/variant.cpp ****   { PIOA, PIO_PA9A_URXD0|PIO_PA10A_UTXD0, ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT, (PIN_ATTR_DIGITAL|PIN
 234:../variants/same70/variant.cpp **** 
 235:../variants/same70/variant.cpp ****   // 57 UART1 all pins
 236:../variants/same70/variant.cpp ****   { PIOA, PIO_PA5C_URXD1|PIO_PA6C_UTXD1,  ID_PIOA, PIO_PERIPH_C, PIO_DEFAULT, (PIN_ATTR_DIGITAL|PIN
 237:../variants/same70/variant.cpp **** 
 238:../variants/same70/variant.cpp **** #if 0
 239:../variants/same70/variant.cpp ****   // xx - TWI0 all pins
 240:../variants/same70/variant.cpp ****   { PIOA, PIO_PA3A_TWD0|PIO_PA4A_TWCK0,   ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT, (PIN_ATTR_DIGITAL|PIN
 241:../variants/same70/variant.cpp **** #endif
 242:../variants/same70/variant.cpp **** };
 243:../variants/same70/variant.cpp **** 
 244:../variants/same70/variant.cpp **** /*
 245:../variants/same70/variant.cpp ****  * UART objects
 246:../variants/same70/variant.cpp ****  */
 247:../variants/same70/variant.cpp **** RingBuffer rx_buffer1;
 248:../variants/same70/variant.cpp **** RingBuffer tx_buffer1;
 249:../variants/same70/variant.cpp **** RingBuffer rx_buffer2;
 250:../variants/same70/variant.cpp **** RingBuffer tx_buffer2;
 251:../variants/same70/variant.cpp **** 
 252:../variants/same70/variant.cpp **** UARTClass Serial(UART0, UART0_IRQn, ID_UART0, &rx_buffer1, &tx_buffer1);
ARM GAS  /tmp/cc4jIqrt.s 			page 7


 253:../variants/same70/variant.cpp **** 
 254:../variants/same70/variant.cpp **** void UART0_Handler(void)
 255:../variants/same70/variant.cpp **** {
  53              		.loc 2 255 0
  54              		.cfi_startproc
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
 256:../variants/same70/variant.cpp ****   Serial.IrqHandler();
  58              		.loc 2 256 0
  59 0000 0148     		ldr	r0, .L3
  60 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  61              	.LVL1:
  62              	.L4:
  63 0006 00BF     		.align	2
  64              	.L3:
  65 0008 00000000 		.word	.LANCHOR0
  66              		.cfi_endproc
  67              	.LFE532:
  68              		.size	UART0_Handler, .-UART0_Handler
  69              		.section	.text.UART1_Handler,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	UART1_Handler
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv5-d16
  77              		.type	UART1_Handler, %function
  78              	UART1_Handler:
  79              	.LFB533:
 257:../variants/same70/variant.cpp **** }
 258:../variants/same70/variant.cpp **** 
 259:../variants/same70/variant.cpp **** UARTClass Serial1(UART1, UART1_IRQn, ID_UART1, &rx_buffer2, &tx_buffer2);
 260:../variants/same70/variant.cpp **** 
 261:../variants/same70/variant.cpp **** void UART1_Handler(void)
 262:../variants/same70/variant.cpp **** {
  80              		.loc 2 262 0
  81              		.cfi_startproc
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
 263:../variants/same70/variant.cpp ****   Serial1.IrqHandler();
  85              		.loc 2 263 0
  86 0000 0148     		ldr	r0, .L6
  87 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  88              	.LVL2:
  89              	.L7:
  90 0006 00BF     		.align	2
  91              	.L6:
  92 0008 00000000 		.word	.LANCHOR1
  93              		.cfi_endproc
  94              	.LFE533:
  95              		.size	UART1_Handler, .-UART1_Handler
  96              		.section	.text._Z12ConfigurePinRK14PinDescription,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
ARM GAS  /tmp/cc4jIqrt.s 			page 8


  99              		.global	_Z12ConfigurePinRK14PinDescription
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv5-d16
 104              		.type	_Z12ConfigurePinRK14PinDescription, %function
 105              	_Z12ConfigurePinRK14PinDescription:
 106              	.LFB534:
 264:../variants/same70/variant.cpp **** }
 265:../variants/same70/variant.cpp **** 
 266:../variants/same70/variant.cpp **** // ----------------------------------------------------------------------------
 267:../variants/same70/variant.cpp **** 
 268:../variants/same70/variant.cpp **** void ConfigurePin(const PinDescription& pinDesc)
 269:../variants/same70/variant.cpp **** {
 107              		.loc 2 269 0
 108              		.cfi_startproc
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112              	.LVL3:
 270:../variants/same70/variant.cpp **** 	pio_configure(pinDesc.pPort, pinDesc.ulPinType, pinDesc.ulPin, pinDesc.ulPinConfiguration);
 113              		.loc 2 270 0
 114 0000 0369     		ldr	r3, [r0, #16]
 115 0002 4268     		ldr	r2, [r0, #4]
 116 0004 C168     		ldr	r1, [r0, #12]
 117 0006 0068     		ldr	r0, [r0]
 118              	.LVL4:
 119 0008 FFF7FEBF 		b	pio_configure
 120              	.LVL5:
 121              		.cfi_endproc
 122              	.LFE534:
 123              		.size	_Z12ConfigurePinRK14PinDescription, .-_Z12ConfigurePinRK14PinDescription
 124              		.section	.text.init,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	init
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv5-d16
 132              		.type	init, %function
 133              	init:
 134              	.LFB535:
 271:../variants/same70/variant.cpp **** }
 272:../variants/same70/variant.cpp **** 
 273:../variants/same70/variant.cpp **** extern "C" void init( void )
 274:../variants/same70/variant.cpp **** {
 135              		.loc 2 274 0
 136              		.cfi_startproc
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              	.LVL6:
 140 0000 10B5     		push	{r4, lr}
 141              		.cfi_def_cfa_offset 8
 142              		.cfi_offset 4, -8
 143              		.cfi_offset 14, -4
 144              	.LBB47:
ARM GAS  /tmp/cc4jIqrt.s 			page 9


 145              	.LBB48:
 270:../variants/same70/variant.cpp **** 	pio_configure(pinDesc.pPort, pinDesc.ulPinType, pinDesc.ulPin, pinDesc.ulPinConfiguration);
 146              		.loc 2 270 0
 147 0002 214C     		ldr	r4, .L11
 148 0004 0023     		movs	r3, #0
 149 0006 4FF4C062 		mov	r2, #1536
 150 000a 4FF00061 		mov	r1, #134217728
 151 000e 2046     		mov	r0, r4
 152 0010 FFF7FEFF 		bl	pio_configure
 153              	.LVL7:
 154              	.LBE48:
 155              	.LBE47:
 275:../variants/same70/variant.cpp **** 	// We no longer disable pullups on all pins here, better to leave them enabled until the port is i
 276:../variants/same70/variant.cpp **** 
 277:../variants/same70/variant.cpp **** 	// Initialize Serial port U(S)ART pins
 278:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APINS_UART0]);
 279:../variants/same70/variant.cpp **** 	setPullup(APIN_UART0_RXD, true); 							// Enable pullup for RX0
 156              		.loc 2 279 0
 157 0014 0121     		movs	r1, #1
 158 0016 0520     		movs	r0, #5
 159 0018 FFF7FEFF 		bl	setPullup
 160              	.LVL8:
 280:../variants/same70/variant.cpp **** 
 281:../variants/same70/variant.cpp **** 	// No need to initialize the USB pins on the SAME70 because they are USB by default
 282:../variants/same70/variant.cpp **** 
 283:../variants/same70/variant.cpp **** 	// Initialize Analog Controller
 284:../variants/same70/variant.cpp **** 	AnalogInInit();
 161              		.loc 2 284 0
 162 001c FFF7FEFF 		bl	_Z12AnalogInInitv
 163              	.LVL9:
 285:../variants/same70/variant.cpp **** 
 286:../variants/same70/variant.cpp **** 	// Initialize analogOutput module
 287:../variants/same70/variant.cpp **** 	AnalogOutInit();
 164              		.loc 2 287 0
 165 0020 FFF7FEFF 		bl	_Z13AnalogOutInitv
 166              	.LVL10:
 167              	.LBB49:
 168              	.LBB50:
 270:../variants/same70/variant.cpp **** }
 169              		.loc 2 270 0
 170 0024 0023     		movs	r3, #0
 171 0026 4FF00072 		mov	r2, #33554432
 172 002a 4FF00051 		mov	r1, #536870912
 173 002e 2046     		mov	r0, r4
 174 0030 FFF7FEFF 		bl	pio_configure
 175              	.LVL11:
 176              	.LBE50:
 177              	.LBE49:
 178              	.LBB51:
 179              	.LBB52:
 180 0034 0123     		movs	r3, #1
 181 0036 4FF05C42 		mov	r2, #-603979776
 182 003a 4FF0C051 		mov	r1, #402653184
 183 003e 2046     		mov	r0, r4
 184 0040 FFF7FEFF 		bl	pio_configure
 185              	.LVL12:
 186              	.LBE52:
ARM GAS  /tmp/cc4jIqrt.s 			page 10


 187              	.LBE51:
 188              	.LBB53:
 189              	.LBB54:
 190 0044 0023     		movs	r3, #0
 191 0046 4FF48062 		mov	r2, #1024
 192 004a 4FF06051 		mov	r1, #939524096
 193 004e 0F48     		ldr	r0, .L11+4
 194 0050 FFF7FEFF 		bl	pio_configure
 195              	.LVL13:
 196              	.LBE54:
 197              	.LBE53:
 198              	.LBB55:
 199              	.LBB56:
 200 0054 0123     		movs	r3, #1
 201 0056 4FF48042 		mov	r2, #16384
 202 005a 4FF02051 		mov	r1, #671088640
 203 005e 2046     		mov	r0, r4
 204 0060 FFF7FEFF 		bl	pio_configure
 205              	.LVL14:
 206              	.LBE56:
 207              	.LBE55:
 208              	.LBB57:
 209              	.LBB58:
 210 0064 0023     		movs	r3, #0
 211 0066 40F2FF32 		movw	r2, #1023
 212 006a 4FF00061 		mov	r1, #134217728
 213 006e 0848     		ldr	r0, .L11+8
 214 0070 FFF7FEFF 		bl	pio_configure
 215              	.LVL15:
 216              	.LBE58:
 217              	.LBE57:
 288:../variants/same70/variant.cpp **** 
 289:../variants/same70/variant.cpp **** 	// Initialize HSMCI pins
 290:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APIN_HSMCI_CLOCK]);
 291:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APIN_HSMCI_DATA]);
 292:../variants/same70/variant.cpp **** 
 293:../variants/same70/variant.cpp **** 	// Initialize Ethernet pins
 294:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APIN_GMAC_PHY_RESET]);
 295:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APIN_GMAC_PHY_INTERRUPT]);
 296:../variants/same70/variant.cpp **** 	ConfigurePin(g_APinDescription[APINS_GMAC_PHY]);
 297:../variants/same70/variant.cpp **** 
 298:../variants/same70/variant.cpp **** 	// Initialize TRNG
 299:../variants/same70/variant.cpp **** 	pmc_enable_periph_clk(ID_TRNG);
 218              		.loc 2 299 0
 219 0074 3920     		movs	r0, #57
 220 0076 FFF7FEFF 		bl	pmc_enable_periph_clk
 221              	.LVL16:
 300:../variants/same70/variant.cpp **** 	TRNG->TRNG_IDR = TRNG_IDR_DATRDY;							// Disable all interrupts
 222              		.loc 2 300 0
 223 007a 064B     		ldr	r3, .L11+12
 224 007c 0121     		movs	r1, #1
 301:../variants/same70/variant.cpp **** 	TRNG->TRNG_CR = TRNG_CR_KEY(0x524e47) | TRNG_CR_ENABLE;		// Enable TRNG with security key (require
 225              		.loc 2 301 0
 226 007e 064A     		ldr	r2, .L11+16
 300:../variants/same70/variant.cpp **** 	TRNG->TRNG_IDR = TRNG_IDR_DATRDY;							// Disable all interrupts
 227              		.loc 2 300 0
 228 0080 5961     		str	r1, [r3, #20]
ARM GAS  /tmp/cc4jIqrt.s 			page 11


 229              		.loc 2 301 0
 230 0082 1A60     		str	r2, [r3]
 231 0084 10BD     		pop	{r4, pc}
 232              	.L12:
 233 0086 00BF     		.align	2
 234              	.L11:
 235 0088 000E0E40 		.word	1074662912
 236 008c 00120E40 		.word	1074663936
 237 0090 00140E40 		.word	1074664448
 238 0094 00000740 		.word	1074200576
 239 0098 01474E52 		.word	1380861697
 240              		.cfi_endproc
 241              	.LFE535:
 242              		.size	init, .-init
 243              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 244              		.align	1
 245              		.p2align 2,,3
 246              		.weak	_ZN9UARTClassD0Ev
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv5-d16
 251              		.type	_ZN9UARTClassD0Ev, %function
 252              	_ZN9UARTClassD0Ev:
 253              	.LFB548:
 254              		.loc 1 38 0
 255              		.cfi_startproc
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              	.LVL17:
 259 0000 10B5     		push	{r4, lr}
 260              		.cfi_def_cfa_offset 8
 261              		.cfi_offset 4, -8
 262              		.cfi_offset 14, -4
 263              		.loc 1 38 0
 264 0002 0446     		mov	r4, r0
 265 0004 2421     		movs	r1, #36
 266 0006 FFF7FEFF 		bl	_ZdlPvj
 267              	.LVL18:
 268 000a 2046     		mov	r0, r4
 269 000c 10BD     		pop	{r4, pc}
 270              		.cfi_endproc
 271              	.LFE548:
 272              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 273 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv5-d16
 280              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 281              	_GLOBAL__sub_I_g_APinDescription:
 282              	.LFB549:
 302:../variants/same70/variant.cpp **** }
 283              		.loc 2 302 0
 284              		.cfi_startproc
ARM GAS  /tmp/cc4jIqrt.s 			page 12


 285              		@ args = 0, pretend = 0, frame = 0
 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              	.LVL19:
 288 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 289              		.cfi_def_cfa_offset 28
 290              		.cfi_offset 4, -28
 291              		.cfi_offset 5, -24
 292              		.cfi_offset 6, -20
 293              		.cfi_offset 7, -16
 294              		.cfi_offset 8, -12
 295              		.cfi_offset 9, -8
 296              		.cfi_offset 14, -4
 297              	.LBB61:
 298              	.LBB62:
 247:../variants/same70/variant.cpp **** RingBuffer tx_buffer1;
 299              		.loc 2 247 0
 300 0004 DFF88890 		ldr	r9, .L17+32
 301              	.LBE62:
 302              	.LBE61:
 303              		.loc 2 302 0
 304 0008 83B0     		sub	sp, sp, #12
 305              		.cfi_def_cfa_offset 40
 306              	.LBB65:
 307              	.LBB63:
 248:../variants/same70/variant.cpp **** RingBuffer rx_buffer2;
 308              		.loc 2 248 0
 309 000a 194D     		ldr	r5, .L17
 249:../variants/same70/variant.cpp **** RingBuffer tx_buffer2;
 310              		.loc 2 249 0
 311 000c 194F     		ldr	r7, .L17+4
 247:../variants/same70/variant.cpp **** RingBuffer tx_buffer1;
 312              		.loc 2 247 0
 313 000e 4846     		mov	r0, r9
 314 0010 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 315              	.LVL20:
 250:../variants/same70/variant.cpp **** 
 316              		.loc 2 250 0
 317 0014 DFF87C80 		ldr	r8, .L17+36
 248:../variants/same70/variant.cpp **** RingBuffer rx_buffer2;
 318              		.loc 2 248 0
 319 0018 2846     		mov	r0, r5
 252:../variants/same70/variant.cpp **** 
 320              		.loc 2 252 0
 321 001a 174C     		ldr	r4, .L17+8
 248:../variants/same70/variant.cpp **** RingBuffer rx_buffer2;
 322              		.loc 2 248 0
 323 001c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 324              	.LVL21:
 249:../variants/same70/variant.cpp **** RingBuffer tx_buffer2;
 325              		.loc 2 249 0
 326 0020 3846     		mov	r0, r7
 327 0022 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 328              	.LVL22:
 250:../variants/same70/variant.cpp **** 
 329              		.loc 2 250 0
 330 0026 4046     		mov	r0, r8
 331 0028 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
ARM GAS  /tmp/cc4jIqrt.s 			page 13


 332              	.LVL23:
 252:../variants/same70/variant.cpp **** 
 333              		.loc 2 252 0
 334 002c 0723     		movs	r3, #7
 335 002e 134E     		ldr	r6, .L17+12
 336 0030 2046     		mov	r0, r4
 337 0032 0195     		str	r5, [sp, #4]
 338 0034 1A46     		mov	r2, r3
 339 0036 124D     		ldr	r5, .L17+16
 340 0038 CDF80090 		str	r9, [sp]
 341 003c 1149     		ldr	r1, .L17+20
 342 003e FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 343              	.LVL24:
 344 0042 3246     		mov	r2, r6
 345 0044 2946     		mov	r1, r5
 346 0046 2046     		mov	r0, r4
 347 0048 FFF7FEFF 		bl	__aeabi_atexit
 348              	.LVL25:
 259:../variants/same70/variant.cpp **** 
 349              		.loc 2 259 0
 350 004c 0E4C     		ldr	r4, .L17+24
 351 004e 0823     		movs	r3, #8
 352 0050 CDF80480 		str	r8, [sp, #4]
 353 0054 2046     		mov	r0, r4
 354 0056 0097     		str	r7, [sp]
 355 0058 1A46     		mov	r2, r3
 356 005a 0C49     		ldr	r1, .L17+28
 357 005c FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 358              	.LVL26:
 359 0060 3246     		mov	r2, r6
 360 0062 2946     		mov	r1, r5
 361 0064 2046     		mov	r0, r4
 362              	.LBE63:
 363              	.LBE65:
 364              		.loc 2 302 0
 365 0066 03B0     		add	sp, sp, #12
 366              		.cfi_def_cfa_offset 28
 367              		@ sp needed
 368 0068 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 369              		.cfi_restore 14
 370              		.cfi_restore 9
 371              		.cfi_restore 8
 372              		.cfi_restore 7
 373              		.cfi_restore 6
 374              		.cfi_restore 5
 375              		.cfi_restore 4
 376              		.cfi_def_cfa_offset 0
 377              	.LBB66:
 378              	.LBB64:
 259:../variants/same70/variant.cpp **** 
 379              		.loc 2 259 0
 380 006c FFF7FEBF 		b	__aeabi_atexit
 381              	.LVL27:
 382              	.L18:
 383              		.align	2
 384              	.L17:
 385 0070 00000000 		.word	.LANCHOR3
ARM GAS  /tmp/cc4jIqrt.s 			page 14


 386 0074 00000000 		.word	.LANCHOR4
 387 0078 00000000 		.word	.LANCHOR0
 388 007c 00000000 		.word	__dso_handle
 389 0080 00000000 		.word	_ZN9UARTClassD1Ev
 390 0084 00080E40 		.word	1074661376
 391 0088 00000000 		.word	.LANCHOR1
 392 008c 000A0E40 		.word	1074661888
 393 0090 00000000 		.word	.LANCHOR2
 394 0094 00000000 		.word	.LANCHOR5
 395              	.LBE64:
 396              	.LBE66:
 397              		.cfi_endproc
 398              	.LFE549:
 399              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 400              		.section	.init_array,"aw",%init_array
 401              		.align	2
 402 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 403              		.global	Serial1
 404              		.global	Serial
 405              		.global	tx_buffer2
 406              		.global	rx_buffer2
 407              		.global	tx_buffer1
 408              		.global	rx_buffer1
 409              		.global	g_APinDescription
 410              		.section	.bss.Serial,"aw",%nobits
 411              		.align	2
 412              		.set	.LANCHOR0,. + 0
 413              		.type	Serial, %object
 414              		.size	Serial, 36
 415              	Serial:
 416 0000 00000000 		.space	36
 416      00000000 
 416      00000000 
 416      00000000 
 416      00000000 
 417              		.section	.bss.Serial1,"aw",%nobits
 418              		.align	2
 419              		.set	.LANCHOR1,. + 0
 420              		.type	Serial1, %object
 421              		.size	Serial1, 36
 422              	Serial1:
 423 0000 00000000 		.space	36
 423      00000000 
 423      00000000 
 423      00000000 
 423      00000000 
 424              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 425              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 426              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 427              	_ZL28cpu_irq_prev_interrupt_state:
 428 0000 00       		.space	1
 429              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 430              		.align	2
 431              		.type	_ZL32cpu_irq_critical_section_counter, %object
 432              		.size	_ZL32cpu_irq_critical_section_counter, 4
 433              	_ZL32cpu_irq_critical_section_counter:
 434 0000 00000000 		.space	4
ARM GAS  /tmp/cc4jIqrt.s 			page 15


 435              		.section	.bss.rx_buffer1,"aw",%nobits
 436              		.align	2
 437              		.set	.LANCHOR2,. + 0
 438              		.type	rx_buffer1, %object
 439              		.size	rx_buffer1, 520
 440              	rx_buffer1:
 441 0000 00000000 		.space	520
 441      00000000 
 441      00000000 
 441      00000000 
 441      00000000 
 442              		.section	.bss.rx_buffer2,"aw",%nobits
 443              		.align	2
 444              		.set	.LANCHOR4,. + 0
 445              		.type	rx_buffer2, %object
 446              		.size	rx_buffer2, 520
 447              	rx_buffer2:
 448 0000 00000000 		.space	520
 448      00000000 
 448      00000000 
 448      00000000 
 448      00000000 
 449              		.section	.bss.tx_buffer1,"aw",%nobits
 450              		.align	2
 451              		.set	.LANCHOR3,. + 0
 452              		.type	tx_buffer1, %object
 453              		.size	tx_buffer1, 520
 454              	tx_buffer1:
 455 0000 00000000 		.space	520
 455      00000000 
 455      00000000 
 455      00000000 
 455      00000000 
 456              		.section	.bss.tx_buffer2,"aw",%nobits
 457              		.align	2
 458              		.set	.LANCHOR5,. + 0
 459              		.type	tx_buffer2, %object
 460              		.size	tx_buffer2, 520
 461              	tx_buffer2:
 462 0000 00000000 		.space	520
 462      00000000 
 462      00000000 
 462      00000000 
 462      00000000 
 463              		.section	.rodata.g_APinDescription,"a",%progbits
 464              		.align	2
 465              		.type	g_APinDescription, %object
 466              		.size	g_APinDescription, 1624
 467              	g_APinDescription:
 468 0000 000E0E40 		.word	1074662912
 469 0004 01000000 		.word	1
 470 0008 0A000000 		.word	10
 471 000c 00000030 		.word	805306368
 472 0010 00000000 		.word	0
 473 0014 04000000 		.word	4
 474 0018 FF       		.byte	-1
 475 0019 FF       		.byte	-1
ARM GAS  /tmp/cc4jIqrt.s 			page 16


 476 001a FF       		.byte	-1
 477 001b 00       		.space	1
 478 001c 000E0E40 		.word	1074662912
 479 0020 02000000 		.word	2
 480 0024 0A000000 		.word	10
 481 0028 00000030 		.word	805306368
 482 002c 00000000 		.word	0
 483 0030 04000000 		.word	4
 484 0034 FF       		.byte	-1
 485 0035 FF       		.byte	-1
 486 0036 FF       		.byte	-1
 487 0037 00       		.space	1
 488 0038 000E0E40 		.word	1074662912
 489 003c 04000000 		.word	4
 490 0040 0A000000 		.word	10
 491 0044 00000030 		.word	805306368
 492 0048 00000000 		.word	0
 493 004c 04000000 		.word	4
 494 0050 FF       		.byte	-1
 495 0051 FF       		.byte	-1
 496 0052 FF       		.byte	-1
 497 0053 00       		.space	1
 498 0054 000E0E40 		.word	1074662912
 499 0058 20000000 		.word	32
 500 005c 0A000000 		.word	10
 501 0060 00000018 		.word	402653184
 502 0064 01000000 		.word	1
 503 0068 04000000 		.word	4
 504 006c FF       		.byte	-1
 505 006d FF       		.byte	-1
 506 006e FF       		.byte	-1
 507 006f 00       		.space	1
 508 0070 000E0E40 		.word	1074662912
 509 0074 40000000 		.word	64
 510 0078 0A000000 		.word	10
 511 007c 00000018 		.word	402653184
 512 0080 00000000 		.word	0
 513 0084 04000000 		.word	4
 514 0088 FF       		.byte	-1
 515 0089 FF       		.byte	-1
 516 008a FF       		.byte	-1
 517 008b 00       		.space	1
 518 008c 000E0E40 		.word	1074662912
 519 0090 00020000 		.word	512
 520 0094 0A000000 		.word	10
 521 0098 00000008 		.word	134217728
 522 009c 01000000 		.word	1
 523 00a0 04000000 		.word	4
 524 00a4 FF       		.byte	-1
 525 00a5 FF       		.byte	-1
 526 00a6 FF       		.byte	-1
 527 00a7 00       		.space	1
 528 00a8 000E0E40 		.word	1074662912
 529 00ac 00040000 		.word	1024
 530 00b0 0A000000 		.word	10
 531 00b4 00000008 		.word	134217728
 532 00b8 00000000 		.word	0
ARM GAS  /tmp/cc4jIqrt.s 			page 17


 533 00bc 04000000 		.word	4
 534 00c0 FF       		.byte	-1
 535 00c1 FF       		.byte	-1
 536 00c2 FF       		.byte	-1
 537 00c3 00       		.space	1
 538 00c4 000E0E40 		.word	1074662912
 539 00c8 00080000 		.word	2048
 540 00cc 0A000000 		.word	10
 541 00d0 00000028 		.word	671088640
 542 00d4 00000000 		.word	0
 543 00d8 04000000 		.word	4
 544 00dc FF       		.byte	-1
 545 00dd FF       		.byte	-1
 546 00de FF       		.byte	-1
 547 00df 00       		.space	1
 548 00e0 000E0E40 		.word	1074662912
 549 00e4 00100000 		.word	4096
 550 00e8 0A000000 		.word	10
 551 00ec 00000030 		.word	805306368
 552 00f0 00000000 		.word	0
 553 00f4 04000000 		.word	4
 554 00f8 FF       		.byte	-1
 555 00f9 FF       		.byte	-1
 556 00fa FF       		.byte	-1
 557 00fb 00       		.space	1
 558 00fc 000E0E40 		.word	1074662912
 559 0100 00200000 		.word	8192
 560 0104 0A000000 		.word	10
 561 0108 00000030 		.word	805306368
 562 010c 00000000 		.word	0
 563 0110 04000000 		.word	4
 564 0114 FF       		.byte	-1
 565 0115 FF       		.byte	-1
 566 0116 FF       		.byte	-1
 567 0117 00       		.space	1
 568 0118 000E0E40 		.word	1074662912
 569 011c 00000200 		.word	131072
 570 0120 0A000000 		.word	10
 571 0124 00000028 		.word	671088640
 572 0128 00000000 		.word	0
 573 012c 02000000 		.word	2
 574 0130 06       		.byte	6
 575 0131 FF       		.byte	-1
 576 0132 FF       		.byte	-1
 577 0133 00       		.space	1
 578 0134 000E0E40 		.word	1074662912
 579 0138 00000400 		.word	262144
 580 013c 0A000000 		.word	10
 581 0140 00000028 		.word	671088640
 582 0144 00000000 		.word	0
 583 0148 02000000 		.word	2
 584 014c 07       		.byte	7
 585 014d FF       		.byte	-1
 586 014e FF       		.byte	-1
 587 014f 00       		.space	1
 588 0150 000E0E40 		.word	1074662912
 589 0154 00000800 		.word	524288
ARM GAS  /tmp/cc4jIqrt.s 			page 18


 590 0158 0A000000 		.word	10
 591 015c 00000028 		.word	671088640
 592 0160 00000000 		.word	0
 593 0164 04000000 		.word	4
 594 0168 FF       		.byte	-1
 595 0169 FF       		.byte	-1
 596 016a FF       		.byte	-1
 597 016b 00       		.space	1
 598 016c 000E0E40 		.word	1074662912
 599 0170 00002000 		.word	2097152
 600 0174 0A000000 		.word	10
 601 0178 00000028 		.word	671088640
 602 017c 00000000 		.word	0
 603 0180 02000000 		.word	2
 604 0184 01       		.byte	1
 605 0185 FF       		.byte	-1
 606 0186 FF       		.byte	-1
 607 0187 00       		.space	1
 608 0188 000E0E40 		.word	1074662912
 609 018c 00004000 		.word	4194304
 610 0190 0A000000 		.word	10
 611 0194 00000030 		.word	805306368
 612 0198 00000000 		.word	0
 613 019c 04000000 		.word	4
 614 01a0 FF       		.byte	-1
 615 01a1 FF       		.byte	-1
 616 01a2 FF       		.byte	-1
 617 01a3 00       		.space	1
 618 01a4 000E0E40 		.word	1074662912
 619 01a8 00008000 		.word	8388608
 620 01ac 0A000000 		.word	10
 621 01b0 00000030 		.word	805306368
 622 01b4 00000000 		.word	0
 623 01b8 04000000 		.word	4
 624 01bc FF       		.byte	-1
 625 01bd FF       		.byte	-1
 626 01be FF       		.byte	-1
 627 01bf 00       		.space	1
 628 01c0 000E0E40 		.word	1074662912
 629 01c4 00000001 		.word	16777216
 630 01c8 0A000000 		.word	10
 631 01cc 00000030 		.word	805306368
 632 01d0 00000000 		.word	0
 633 01d4 04000000 		.word	4
 634 01d8 FF       		.byte	-1
 635 01d9 FF       		.byte	-1
 636 01da FF       		.byte	-1
 637 01db 00       		.space	1
 638 01dc 000E0E40 		.word	1074662912
 639 01e0 00000020 		.word	536870912
 640 01e4 0A000000 		.word	10
 641 01e8 00000030 		.word	805306368
 642 01ec 00000000 		.word	0
 643 01f0 04000000 		.word	4
 644 01f4 FF       		.byte	-1
 645 01f5 FF       		.byte	-1
 646 01f6 FF       		.byte	-1
ARM GAS  /tmp/cc4jIqrt.s 			page 19


 647 01f7 00       		.space	1
 648 01f8 00100E40 		.word	1074663424
 649 01fc 01000000 		.word	1
 650 0200 0B000000 		.word	11
 651 0204 00000020 		.word	536870912
 652 0208 00000000 		.word	0
 653 020c 04000000 		.word	4
 654 0210 FF       		.byte	-1
 655 0211 FF       		.byte	-1
 656 0212 FF       		.byte	-1
 657 0213 00       		.space	1
 658 0214 00100E40 		.word	1074663424
 659 0218 02000000 		.word	2
 660 021c 0B000000 		.word	11
 661 0220 00000030 		.word	805306368
 662 0224 00000000 		.word	0
 663 0228 04000000 		.word	4
 664 022c FF       		.byte	-1
 665 022d FF       		.byte	-1
 666 022e FF       		.byte	-1
 667 022f 00       		.space	1
 668 0230 00100E40 		.word	1074663424
 669 0234 04000000 		.word	4
 670 0238 0B000000 		.word	11
 671 023c 00000020 		.word	536870912
 672 0240 00000000 		.word	0
 673 0244 04000000 		.word	4
 674 0248 FF       		.byte	-1
 675 0249 FF       		.byte	-1
 676 024a FF       		.byte	-1
 677 024b 00       		.space	1
 678 024c 00100E40 		.word	1074663424
 679 0250 08000000 		.word	8
 680 0254 0B000000 		.word	11
 681 0258 00000030 		.word	805306368
 682 025c 00000000 		.word	0
 683 0260 04000000 		.word	4
 684 0264 FF       		.byte	-1
 685 0265 FF       		.byte	-1
 686 0266 FF       		.byte	-1
 687 0267 00       		.space	1
 688 0268 00100E40 		.word	1074663424
 689 026c 10000000 		.word	16
 690 0270 0B000000 		.word	11
 691 0274 00000030 		.word	805306368
 692 0278 00000000 		.word	0
 693 027c 04000000 		.word	4
 694 0280 FF       		.byte	-1
 695 0281 FF       		.byte	-1
 696 0282 FF       		.byte	-1
 697 0283 00       		.space	1
 698 0284 00100E40 		.word	1074663424
 699 0288 20000000 		.word	32
 700 028c 0B000000 		.word	11
 701 0290 00000030 		.word	805306368
 702 0294 00000000 		.word	0
 703 0298 04000000 		.word	4
ARM GAS  /tmp/cc4jIqrt.s 			page 20


 704 029c FF       		.byte	-1
 705 029d FF       		.byte	-1
 706 029e FF       		.byte	-1
 707 029f 00       		.space	1
 708 02a0 00100E40 		.word	1074663424
 709 02a4 40000000 		.word	64
 710 02a8 0B000000 		.word	11
 711 02ac 00000030 		.word	805306368
 712 02b0 00000000 		.word	0
 713 02b4 04000000 		.word	4
 714 02b8 FF       		.byte	-1
 715 02b9 FF       		.byte	-1
 716 02ba FF       		.byte	-1
 717 02bb 00       		.space	1
 718 02bc 00100E40 		.word	1074663424
 719 02c0 80000000 		.word	128
 720 02c4 0B000000 		.word	11
 721 02c8 00000030 		.word	805306368
 722 02cc 00000000 		.word	0
 723 02d0 04000000 		.word	4
 724 02d4 FF       		.byte	-1
 725 02d5 FF       		.byte	-1
 726 02d6 FF       		.byte	-1
 727 02d7 00       		.space	1
 728 02d8 00100E40 		.word	1074663424
 729 02dc 00200000 		.word	8192
 730 02e0 0B000000 		.word	11
 731 02e4 00000028 		.word	671088640
 732 02e8 00000000 		.word	0
 733 02ec 04000000 		.word	4
 734 02f0 FF       		.byte	-1
 735 02f1 FF       		.byte	-1
 736 02f2 FF       		.byte	-1
 737 02f3 00       		.space	1
 738 02f4 00120E40 		.word	1074663936
 739 02f8 00010000 		.word	256
 740 02fc 0C000000 		.word	12
 741 0300 00000030 		.word	805306368
 742 0304 00000000 		.word	0
 743 0308 04000000 		.word	4
 744 030c FF       		.byte	-1
 745 030d FF       		.byte	-1
 746 030e FF       		.byte	-1
 747 030f 00       		.space	1
 748 0310 00120E40 		.word	1074663936
 749 0314 00020000 		.word	512
 750 0318 0C000000 		.word	12
 751 031c 00000030 		.word	805306368
 752 0320 00000000 		.word	0
 753 0324 04000000 		.word	4
 754 0328 FF       		.byte	-1
 755 0329 FF       		.byte	-1
 756 032a FF       		.byte	-1
 757 032b 00       		.space	1
 758 032c 00120E40 		.word	1074663936
 759 0330 00100000 		.word	4096
 760 0334 0C000000 		.word	12
ARM GAS  /tmp/cc4jIqrt.s 			page 21


 761 0338 00000030 		.word	805306368
 762 033c 00000000 		.word	0
 763 0340 04000000 		.word	4
 764 0344 FF       		.byte	-1
 765 0345 FF       		.byte	-1
 766 0346 FF       		.byte	-1
 767 0347 00       		.space	1
 768 0348 00120E40 		.word	1074663936
 769 034c 00200000 		.word	8192
 770 0350 0C000000 		.word	12
 771 0354 00000030 		.word	805306368
 772 0358 00000000 		.word	0
 773 035c 04000000 		.word	4
 774 0360 FF       		.byte	-1
 775 0361 FF       		.byte	-1
 776 0362 FF       		.byte	-1
 777 0363 00       		.space	1
 778 0364 00120E40 		.word	1074663936
 779 0368 00400000 		.word	16384
 780 036c 0C000000 		.word	12
 781 0370 00000030 		.word	805306368
 782 0374 00000000 		.word	0
 783 0378 04000000 		.word	4
 784 037c FF       		.byte	-1
 785 037d FF       		.byte	-1
 786 037e FF       		.byte	-1
 787 037f 00       		.space	1
 788 0380 00120E40 		.word	1074663936
 789 0384 00000100 		.word	65536
 790 0388 0C000000 		.word	12
 791 038c 00000030 		.word	805306368
 792 0390 00000000 		.word	0
 793 0394 04000000 		.word	4
 794 0398 FF       		.byte	-1
 795 0399 FF       		.byte	-1
 796 039a FF       		.byte	-1
 797 039b 00       		.space	1
 798 039c 00120E40 		.word	1074663936
 799 03a0 00000200 		.word	131072
 800 03a4 0C000000 		.word	12
 801 03a8 00000030 		.word	805306368
 802 03ac 00000000 		.word	0
 803 03b0 04000000 		.word	4
 804 03b4 FF       		.byte	-1
 805 03b5 FF       		.byte	-1
 806 03b6 FF       		.byte	-1
 807 03b7 00       		.space	1
 808 03b8 00120E40 		.word	1074663936
 809 03bc 00000800 		.word	524288
 810 03c0 0C000000 		.word	12
 811 03c4 00000030 		.word	805306368
 812 03c8 00000000 		.word	0
 813 03cc 04000000 		.word	4
 814 03d0 FF       		.byte	-1
 815 03d1 FF       		.byte	-1
 816 03d2 FF       		.byte	-1
 817 03d3 00       		.space	1
ARM GAS  /tmp/cc4jIqrt.s 			page 22


 818 03d4 00120E40 		.word	1074663936
 819 03d8 00000040 		.word	1073741824
 820 03dc 0C000000 		.word	12
 821 03e0 00000030 		.word	805306368
 822 03e4 00000000 		.word	0
 823 03e8 04000000 		.word	4
 824 03ec FF       		.byte	-1
 825 03ed FF       		.byte	-1
 826 03ee FF       		.byte	-1
 827 03ef 00       		.space	1
 828 03f0 00120E40 		.word	1074663936
 829 03f4 00000080 		.word	-2147483648
 830 03f8 0C000000 		.word	12
 831 03fc 00000030 		.word	805306368
 832 0400 00000000 		.word	0
 833 0404 04000000 		.word	4
 834 0408 FF       		.byte	-1
 835 0409 FF       		.byte	-1
 836 040a FF       		.byte	-1
 837 040b 00       		.space	1
 838 040c 00140E40 		.word	1074664448
 839 0410 00080000 		.word	2048
 840 0414 10000000 		.word	16
 841 0418 00000030 		.word	805306368
 842 041c 00000000 		.word	0
 843 0420 04000000 		.word	4
 844 0424 FF       		.byte	-1
 845 0425 FF       		.byte	-1
 846 0426 FF       		.byte	-1
 847 0427 00       		.space	1
 848 0428 00140E40 		.word	1074664448
 849 042c 00100000 		.word	4096
 850 0430 10000000 		.word	16
 851 0434 00000030 		.word	805306368
 852 0438 00000000 		.word	0
 853 043c 04000000 		.word	4
 854 0440 FF       		.byte	-1
 855 0441 FF       		.byte	-1
 856 0442 FF       		.byte	-1
 857 0443 00       		.space	1
 858 0444 00140E40 		.word	1074664448
 859 0448 00000400 		.word	262144
 860 044c 10000000 		.word	16
 861 0450 00000030 		.word	805306368
 862 0454 00000000 		.word	0
 863 0458 04000000 		.word	4
 864 045c FF       		.byte	-1
 865 045d FF       		.byte	-1
 866 045e FF       		.byte	-1
 867 045f 00       		.space	1
 868 0460 00140E40 		.word	1074664448
 869 0464 00000800 		.word	524288
 870 0468 10000000 		.word	16
 871 046c 00000030 		.word	805306368
 872 0470 00000000 		.word	0
 873 0474 04000000 		.word	4
 874 0478 FF       		.byte	-1
ARM GAS  /tmp/cc4jIqrt.s 			page 23


 875 0479 FF       		.byte	-1
 876 047a FF       		.byte	-1
 877 047b 00       		.space	1
 878 047c 00140E40 		.word	1074664448
 879 0480 00001000 		.word	1048576
 880 0484 10000000 		.word	16
 881 0488 00000010 		.word	268435456
 882 048c 00000000 		.word	0
 883 0490 04000000 		.word	4
 884 0494 FF       		.byte	-1
 885 0495 FF       		.byte	-1
 886 0496 FF       		.byte	-1
 887 0497 00       		.space	1
 888 0498 00140E40 		.word	1074664448
 889 049c 00002000 		.word	2097152
 890 04a0 10000000 		.word	16
 891 04a4 00000010 		.word	268435456
 892 04a8 00000000 		.word	0
 893 04ac 04000000 		.word	4
 894 04b0 FF       		.byte	-1
 895 04b1 FF       		.byte	-1
 896 04b2 FF       		.byte	-1
 897 04b3 00       		.space	1
 898 04b4 00140E40 		.word	1074664448
 899 04b8 00004000 		.word	4194304
 900 04bc 10000000 		.word	16
 901 04c0 00000010 		.word	268435456
 902 04c4 00000000 		.word	0
 903 04c8 04000000 		.word	4
 904 04cc FF       		.byte	-1
 905 04cd FF       		.byte	-1
 906 04ce FF       		.byte	-1
 907 04cf 00       		.space	1
 908 04d0 00140E40 		.word	1074664448
 909 04d4 00000001 		.word	16777216
 910 04d8 10000000 		.word	16
 911 04dc 00000030 		.word	805306368
 912 04e0 00000000 		.word	0
 913 04e4 04000000 		.word	4
 914 04e8 FF       		.byte	-1
 915 04e9 FF       		.byte	-1
 916 04ea FF       		.byte	-1
 917 04eb 00       		.space	1
 918 04ec 00140E40 		.word	1074664448
 919 04f0 00000002 		.word	33554432
 920 04f4 10000000 		.word	16
 921 04f8 00000030 		.word	805306368
 922 04fc 00000000 		.word	0
 923 0500 04000000 		.word	4
 924 0504 FF       		.byte	-1
 925 0505 FF       		.byte	-1
 926 0506 FF       		.byte	-1
 927 0507 00       		.space	1
 928 0508 00140E40 		.word	1074664448
 929 050c 00000004 		.word	67108864
 930 0510 10000000 		.word	16
 931 0514 00000030 		.word	805306368
ARM GAS  /tmp/cc4jIqrt.s 			page 24


 932 0518 00000000 		.word	0
 933 051c 04000000 		.word	4
 934 0520 FF       		.byte	-1
 935 0521 FF       		.byte	-1
 936 0522 FF       		.byte	-1
 937 0523 00       		.space	1
 938 0524 00140E40 		.word	1074664448
 939 0528 00000008 		.word	134217728
 940 052c 10000000 		.word	16
 941 0530 00000030 		.word	805306368
 942 0534 00000000 		.word	0
 943 0538 04000000 		.word	4
 944 053c FF       		.byte	-1
 945 053d FF       		.byte	-1
 946 053e FF       		.byte	-1
 947 053f 00       		.space	1
 948 0540 00140E40 		.word	1074664448
 949 0544 00000010 		.word	268435456
 950 0548 10000000 		.word	16
 951 054c 00000030 		.word	805306368
 952 0550 00000000 		.word	0
 953 0554 04000000 		.word	4
 954 0558 FF       		.byte	-1
 955 0559 FF       		.byte	-1
 956 055a FF       		.byte	-1
 957 055b 00       		.space	1
 958 055c 00140E40 		.word	1074664448
 959 0560 00000040 		.word	1073741824
 960 0564 10000000 		.word	16
 961 0568 00000030 		.word	805306368
 962 056c 00000000 		.word	0
 963 0570 04000000 		.word	4
 964 0574 FF       		.byte	-1
 965 0575 FF       		.byte	-1
 966 0576 FF       		.byte	-1
 967 0577 00       		.space	1
 968 0578 00140E40 		.word	1074664448
 969 057c 00000080 		.word	-2147483648
 970 0580 10000000 		.word	16
 971 0584 00000030 		.word	805306368
 972 0588 00000000 		.word	0
 973 058c 04000000 		.word	4
 974 0590 FF       		.byte	-1
 975 0591 FF       		.byte	-1
 976 0592 FF       		.byte	-1
 977 0593 00       		.space	1
 978 0594 000E0E40 		.word	1074662912
 979 0598 00000002 		.word	33554432
 980 059c 0A000000 		.word	10
 981 05a0 00000020 		.word	536870912
 982 05a4 00000000 		.word	0
 983 05a8 04000000 		.word	4
 984 05ac FF       		.byte	-1
 985 05ad FF       		.byte	-1
 986 05ae FF       		.byte	-1
 987 05af 00       		.space	1
 988 05b0 000E0E40 		.word	1074662912
ARM GAS  /tmp/cc4jIqrt.s 			page 25


 989 05b4 000000DC 		.word	-603979776
 990 05b8 0A000000 		.word	10
 991 05bc 00000018 		.word	402653184
 992 05c0 01000000 		.word	1
 993 05c4 04000000 		.word	4
 994 05c8 FF       		.byte	-1
 995 05c9 FF       		.byte	-1
 996 05ca FF       		.byte	-1
 997 05cb 00       		.space	1
 998 05cc 000E0E40 		.word	1074662912
 999 05d0 00400000 		.word	16384
 1000 05d4 0A000000 		.word	10
 1001 05d8 00000028 		.word	671088640
 1002 05dc 01000000 		.word	1
 1003 05e0 04000000 		.word	4
 1004 05e4 FF       		.byte	-1
 1005 05e5 FF       		.byte	-1
 1006 05e6 FF       		.byte	-1
 1007 05e7 00       		.space	1
 1008 05e8 00120E40 		.word	1074663936
 1009 05ec 00040000 		.word	1024
 1010 05f0 0C000000 		.word	12
 1011 05f4 00000038 		.word	939524096
 1012 05f8 00000000 		.word	0
 1013 05fc 04000000 		.word	4
 1014 0600 FF       		.byte	-1
 1015 0601 FF       		.byte	-1
 1016 0602 FF       		.byte	-1
 1017 0603 00       		.space	1
 1018 0604 00140E40 		.word	1074664448
 1019 0608 FF030000 		.word	1023
 1020 060c 10000000 		.word	16
 1021 0610 00000008 		.word	134217728
 1022 0614 00000000 		.word	0
 1023 0618 04000000 		.word	4
 1024 061c FF       		.byte	-1
 1025 061d FF       		.byte	-1
 1026 061e FF       		.byte	-1
 1027 061f 00       		.space	1
 1028 0620 000E0E40 		.word	1074662912
 1029 0624 00060000 		.word	1536
 1030 0628 0A000000 		.word	10
 1031 062c 00000008 		.word	134217728
 1032 0630 00000000 		.word	0
 1033 0634 05000000 		.word	5
 1034 0638 FF       		.byte	-1
 1035 0639 FF       		.byte	-1
 1036 063a FF       		.byte	-1
 1037 063b 00       		.space	1
 1038 063c 000E0E40 		.word	1074662912
 1039 0640 60000000 		.word	96
 1040 0644 0A000000 		.word	10
 1041 0648 00000018 		.word	402653184
 1042 064c 00000000 		.word	0
 1043 0650 05000000 		.word	5
 1044 0654 FF       		.byte	-1
 1045 0655 FF       		.byte	-1
ARM GAS  /tmp/cc4jIqrt.s 			page 26


 1046 0656 FF       		.byte	-1
 1047 0657 00       		.space	1
 1048              		.text
 1049              	.Letext0:
 1050              		.file 3 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1051              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 1052              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 1053              		.file 6 "/usr/include/newlib/stdint.h"
 1054              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1055              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1056              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio.
 1057              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/trn
 1058              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/uar
 1059              		.file 12 "/usr/include/newlib/sys/lock.h"
 1060              		.file 13 "/usr/include/newlib/sys/_types.h"
 1061              		.file 14 "/usr/include/newlib/sys/reent.h"
 1062              		.file 15 "/usr/include/newlib/c++/6.3.1/cstdlib"
 1063              		.file 16 "/usr/include/newlib/c++/6.3.1/cmath"
 1064              		.file 17 "/usr/include/newlib/c++/6.3.1/cstdint"
 1065              		.file 18 "/usr/include/newlib/c++/6.3.1/cstddef"
 1066              		.file 19 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 1067              		.file 20 "/usr/include/newlib/stdlib.h"
 1068              		.file 21 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 1069              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1070              		.file 23 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/compiler.h"
 1071              		.file 24 "/usr/include/newlib/math.h"
 1072              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 1073              		.file 26 "/usr/include/newlib/c++/6.3.1/math.h"
 1074              		.file 27 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 1075              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
 1076              		.file 29 "/usr/include/newlib/ctype.h"
 1077              		.file 30 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/HardwareSerial.h"
 1078              		.file 31 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/USB/USBSerial.h"
 1079              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 1080              		.file 33 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Print.h"
 1081              		.file 34 "/usr/include/newlib/time.h"
 1082              		.file 35 "../variants/same70/variant.h"
 1083              		.file 36 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/usb_protocol.h"
 1084              		.file 37 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udi.h"
 1085              		.file 38 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udc_desc.h"
 1086              		.file 39 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udd.h"
 1087              		.file 40 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Stream.h"
 1088              		.file 41 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h"
 1089              		.file 42 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/AnalogIn.h"
 1090              		.file 43 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/AnalogOut.h"
 1091              		.file 44 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1092              		.file 45 "<built-in>"
 1093              		.section	.debug_info,"",%progbits
 1094              	.Ldebug_info0:
 1095 0000 F1280000 		.4byte	0x28f1
 1096 0004 0400     		.2byte	0x4
 1097 0006 00000000 		.4byte	.Ldebug_abbrev0
 1098 000a 04       		.byte	0x4
 1099 000b 01       		.uleb128 0x1
 1100 000c 5E0F0000 		.4byte	.LASF606
 1101 0010 04       		.byte	0x4
 1102 0011 64010000 		.4byte	.LASF607
ARM GAS  /tmp/cc4jIqrt.s 			page 27


 1103 0015 0E1A0000 		.4byte	.LASF608
 1104 0019 20000000 		.4byte	.Ldebug_ranges0+0x20
 1105 001d 00000000 		.4byte	0
 1106 0021 00000000 		.4byte	.Ldebug_line0
 1107 0025 02       		.uleb128 0x2
 1108 0026 04       		.byte	0x4
 1109 0027 05       		.byte	0x5
 1110 0028 696E7400 		.ascii	"int\000"
 1111 002c 03       		.uleb128 0x3
 1112 002d 25000000 		.4byte	0x25
 1113 0031 04       		.uleb128 0x4
 1114 0032 AA090000 		.4byte	.LASF5
 1115 0036 03       		.byte	0x3
 1116 0037 D8       		.byte	0xd8
 1117 0038 46000000 		.4byte	0x46
 1118 003c 03       		.uleb128 0x3
 1119 003d 31000000 		.4byte	0x31
 1120 0041 05       		.uleb128 0x5
 1121 0042 31000000 		.4byte	0x31
 1122 0046 06       		.uleb128 0x6
 1123 0047 04       		.byte	0x4
 1124 0048 07       		.byte	0x7
 1125 0049 A21A0000 		.4byte	.LASF0
 1126 004d 07       		.uleb128 0x7
 1127 004e 10       		.byte	0x10
 1128 004f 03       		.byte	0x3
 1129 0050 AA01     		.2byte	0x1aa
 1130 0052 D7030000 		.4byte	.LASF512
 1131 0056 75000000 		.4byte	0x75
 1132 005a 08       		.uleb128 0x8
 1133 005b 67030000 		.4byte	.LASF1
 1134 005f 03       		.byte	0x3
 1135 0060 AB01     		.2byte	0x1ab
 1136 0062 75000000 		.4byte	0x75
 1137 0066 00       		.byte	0
 1138 0067 08       		.uleb128 0x8
 1139 0068 4E030000 		.4byte	.LASF2
 1140 006c 03       		.byte	0x3
 1141 006d AC01     		.2byte	0x1ac
 1142 006f 7C000000 		.4byte	0x7c
 1143 0073 08       		.byte	0x8
 1144 0074 00       		.byte	0
 1145 0075 06       		.uleb128 0x6
 1146 0076 08       		.byte	0x8
 1147 0077 05       		.byte	0x5
 1148 0078 9F180000 		.4byte	.LASF3
 1149 007c 06       		.uleb128 0x6
 1150 007d 08       		.byte	0x8
 1151 007e 04       		.byte	0x4
 1152 007f 81120000 		.4byte	.LASF4
 1153 0083 09       		.uleb128 0x9
 1154 0084 BB0E0000 		.4byte	.LASF6
 1155 0088 03       		.byte	0x3
 1156 0089 AD01     		.2byte	0x1ad
 1157 008b 4D000000 		.4byte	0x4d
 1158 008f 0A       		.uleb128 0xa
 1159 0090 6B0C0000 		.4byte	.LASF609
ARM GAS  /tmp/cc4jIqrt.s 			page 28


 1160 0094 04       		.uleb128 0x4
 1161 0095 E9190000 		.4byte	.LASF7
 1162 0099 04       		.byte	0x4
 1163 009a 1B       		.byte	0x1b
 1164 009b 9F000000 		.4byte	0x9f
 1165 009f 06       		.uleb128 0x6
 1166 00a0 01       		.byte	0x1
 1167 00a1 06       		.byte	0x6
 1168 00a2 320F0000 		.4byte	.LASF8
 1169 00a6 04       		.uleb128 0x4
 1170 00a7 B3000000 		.4byte	.LASF9
 1171 00ab 04       		.byte	0x4
 1172 00ac 1D       		.byte	0x1d
 1173 00ad B1000000 		.4byte	0xb1
 1174 00b1 06       		.uleb128 0x6
 1175 00b2 01       		.byte	0x1
 1176 00b3 08       		.byte	0x8
 1177 00b4 C1060000 		.4byte	.LASF10
 1178 00b8 04       		.uleb128 0x4
 1179 00b9 A1050000 		.4byte	.LASF11
 1180 00bd 04       		.byte	0x4
 1181 00be 29       		.byte	0x29
 1182 00bf C3000000 		.4byte	0xc3
 1183 00c3 06       		.uleb128 0x6
 1184 00c4 02       		.byte	0x2
 1185 00c5 05       		.byte	0x5
 1186 00c6 241B0000 		.4byte	.LASF12
 1187 00ca 04       		.uleb128 0x4
 1188 00cb AB050000 		.4byte	.LASF13
 1189 00cf 04       		.byte	0x4
 1190 00d0 2B       		.byte	0x2b
 1191 00d1 D5000000 		.4byte	0xd5
 1192 00d5 06       		.uleb128 0x6
 1193 00d6 02       		.byte	0x2
 1194 00d7 07       		.byte	0x7
 1195 00d8 0C0F0000 		.4byte	.LASF14
 1196 00dc 04       		.uleb128 0x4
 1197 00dd EB150000 		.4byte	.LASF15
 1198 00e1 04       		.byte	0x4
 1199 00e2 3F       		.byte	0x3f
 1200 00e3 E7000000 		.4byte	0xe7
 1201 00e7 06       		.uleb128 0x6
 1202 00e8 04       		.byte	0x4
 1203 00e9 05       		.byte	0x5
 1204 00ea 8B110000 		.4byte	.LASF16
 1205 00ee 04       		.uleb128 0x4
 1206 00ef F5150000 		.4byte	.LASF17
 1207 00f3 04       		.byte	0x4
 1208 00f4 41       		.byte	0x41
 1209 00f5 F9000000 		.4byte	0xf9
 1210 00f9 06       		.uleb128 0x6
 1211 00fa 04       		.byte	0x4
 1212 00fb 07       		.byte	0x7
 1213 00fc CA120000 		.4byte	.LASF18
 1214 0100 04       		.uleb128 0x4
 1215 0101 C10B0000 		.4byte	.LASF19
 1216 0105 04       		.byte	0x4
ARM GAS  /tmp/cc4jIqrt.s 			page 29


 1217 0106 59       		.byte	0x59
 1218 0107 75000000 		.4byte	0x75
 1219 010b 04       		.uleb128 0x4
 1220 010c D90B0000 		.4byte	.LASF20
 1221 0110 04       		.byte	0x4
 1222 0111 5B       		.byte	0x5b
 1223 0112 16010000 		.4byte	0x116
 1224 0116 06       		.uleb128 0x6
 1225 0117 08       		.byte	0x8
 1226 0118 07       		.byte	0x7
 1227 0119 91170000 		.4byte	.LASF21
 1228 011d 04       		.uleb128 0x4
 1229 011e 89080000 		.4byte	.LASF22
 1230 0122 04       		.byte	0x4
 1231 0123 78       		.byte	0x78
 1232 0124 9F000000 		.4byte	0x9f
 1233 0128 04       		.uleb128 0x4
 1234 0129 D7110000 		.4byte	.LASF23
 1235 012d 04       		.byte	0x4
 1236 012e 7A       		.byte	0x7a
 1237 012f B1000000 		.4byte	0xb1
 1238 0133 04       		.uleb128 0x4
 1239 0134 06160000 		.4byte	.LASF24
 1240 0138 04       		.byte	0x4
 1241 0139 92       		.byte	0x92
 1242 013a C3000000 		.4byte	0xc3
 1243 013e 04       		.uleb128 0x4
 1244 013f 6D100000 		.4byte	.LASF25
 1245 0143 04       		.byte	0x4
 1246 0144 94       		.byte	0x94
 1247 0145 D5000000 		.4byte	0xd5
 1248 0149 04       		.uleb128 0x4
 1249 014a 3A0A0000 		.4byte	.LASF26
 1250 014e 04       		.byte	0x4
 1251 014f A8       		.byte	0xa8
 1252 0150 E7000000 		.4byte	0xe7
 1253 0154 04       		.uleb128 0x4
 1254 0155 EE030000 		.4byte	.LASF27
 1255 0159 04       		.byte	0x4
 1256 015a AA       		.byte	0xaa
 1257 015b F9000000 		.4byte	0xf9
 1258 015f 04       		.uleb128 0x4
 1259 0160 52000000 		.4byte	.LASF28
 1260 0164 04       		.byte	0x4
 1261 0165 BA       		.byte	0xba
 1262 0166 75000000 		.4byte	0x75
 1263 016a 04       		.uleb128 0x4
 1264 016b B6150000 		.4byte	.LASF29
 1265 016f 04       		.byte	0x4
 1266 0170 BC       		.byte	0xbc
 1267 0171 16010000 		.4byte	0x116
 1268 0175 04       		.uleb128 0x4
 1269 0176 09060000 		.4byte	.LASF30
 1270 017a 04       		.byte	0x4
 1271 017b C8       		.byte	0xc8
 1272 017c 25000000 		.4byte	0x25
 1273 0180 04       		.uleb128 0x4
ARM GAS  /tmp/cc4jIqrt.s 			page 30


 1274 0181 AE130000 		.4byte	.LASF31
 1275 0185 04       		.byte	0x4
 1276 0186 CA       		.byte	0xca
 1277 0187 46000000 		.4byte	0x46
 1278 018b 04       		.uleb128 0x4
 1279 018c D60D0000 		.4byte	.LASF32
 1280 0190 05       		.byte	0x5
 1281 0191 14       		.byte	0x14
 1282 0192 94000000 		.4byte	0x94
 1283 0196 04       		.uleb128 0x4
 1284 0197 D1090000 		.4byte	.LASF33
 1285 019b 05       		.byte	0x5
 1286 019c 18       		.byte	0x18
 1287 019d A6000000 		.4byte	0xa6
 1288 01a1 05       		.uleb128 0x5
 1289 01a2 96010000 		.4byte	0x196
 1290 01a6 03       		.uleb128 0x3
 1291 01a7 96010000 		.4byte	0x196
 1292 01ab 04       		.uleb128 0x4
 1293 01ac F40E0000 		.4byte	.LASF34
 1294 01b0 05       		.byte	0x5
 1295 01b1 20       		.byte	0x20
 1296 01b2 B8000000 		.4byte	0xb8
 1297 01b6 04       		.uleb128 0x4
 1298 01b7 E1010000 		.4byte	.LASF35
 1299 01bb 05       		.byte	0x5
 1300 01bc 24       		.byte	0x24
 1301 01bd CA000000 		.4byte	0xca
 1302 01c1 04       		.uleb128 0x4
 1303 01c2 A6030000 		.4byte	.LASF36
 1304 01c6 05       		.byte	0x5
 1305 01c7 2C       		.byte	0x2c
 1306 01c8 DC000000 		.4byte	0xdc
 1307 01cc 05       		.uleb128 0x5
 1308 01cd C1010000 		.4byte	0x1c1
 1309 01d1 04       		.uleb128 0x4
 1310 01d2 50120000 		.4byte	.LASF37
 1311 01d6 05       		.byte	0x5
 1312 01d7 30       		.byte	0x30
 1313 01d8 EE000000 		.4byte	0xee
 1314 01dc 05       		.uleb128 0x5
 1315 01dd D1010000 		.4byte	0x1d1
 1316 01e1 03       		.uleb128 0x3
 1317 01e2 D1010000 		.4byte	0x1d1
 1318 01e6 04       		.uleb128 0x4
 1319 01e7 E5140000 		.4byte	.LASF38
 1320 01eb 05       		.byte	0x5
 1321 01ec 38       		.byte	0x38
 1322 01ed 00010000 		.4byte	0x100
 1323 01f1 04       		.uleb128 0x4
 1324 01f2 9F070000 		.4byte	.LASF39
 1325 01f6 05       		.byte	0x5
 1326 01f7 3C       		.byte	0x3c
 1327 01f8 0B010000 		.4byte	0x10b
 1328 01fc 04       		.uleb128 0x4
 1329 01fd 47120000 		.4byte	.LASF40
 1330 0201 05       		.byte	0x5
ARM GAS  /tmp/cc4jIqrt.s 			page 31


 1331 0202 43       		.byte	0x43
 1332 0203 75010000 		.4byte	0x175
 1333 0207 04       		.uleb128 0x4
 1334 0208 70120000 		.4byte	.LASF41
 1335 020c 05       		.byte	0x5
 1336 020d 48       		.byte	0x48
 1337 020e 80010000 		.4byte	0x180
 1338 0212 04       		.uleb128 0x4
 1339 0213 CB040000 		.4byte	.LASF42
 1340 0217 06       		.byte	0x6
 1341 0218 15       		.byte	0x15
 1342 0219 1D010000 		.4byte	0x11d
 1343 021d 04       		.uleb128 0x4
 1344 021e 33150000 		.4byte	.LASF43
 1345 0222 06       		.byte	0x6
 1346 0223 16       		.byte	0x16
 1347 0224 28010000 		.4byte	0x128
 1348 0228 04       		.uleb128 0x4
 1349 0229 33190000 		.4byte	.LASF44
 1350 022d 06       		.byte	0x6
 1351 022e 1B       		.byte	0x1b
 1352 022f 33010000 		.4byte	0x133
 1353 0233 04       		.uleb128 0x4
 1354 0234 36130000 		.4byte	.LASF45
 1355 0238 06       		.byte	0x6
 1356 0239 1C       		.byte	0x1c
 1357 023a 3E010000 		.4byte	0x13e
 1358 023e 04       		.uleb128 0x4
 1359 023f 0E0E0000 		.4byte	.LASF46
 1360 0243 06       		.byte	0x6
 1361 0244 21       		.byte	0x21
 1362 0245 49010000 		.4byte	0x149
 1363 0249 04       		.uleb128 0x4
 1364 024a 28070000 		.4byte	.LASF47
 1365 024e 06       		.byte	0x6
 1366 024f 22       		.byte	0x22
 1367 0250 54010000 		.4byte	0x154
 1368 0254 04       		.uleb128 0x4
 1369 0255 1A040000 		.4byte	.LASF48
 1370 0259 06       		.byte	0x6
 1371 025a 27       		.byte	0x27
 1372 025b 5F010000 		.4byte	0x15f
 1373 025f 04       		.uleb128 0x4
 1374 0260 110C0000 		.4byte	.LASF49
 1375 0264 06       		.byte	0x6
 1376 0265 28       		.byte	0x28
 1377 0266 6A010000 		.4byte	0x16a
 1378 026a 04       		.uleb128 0x4
 1379 026b 39180000 		.4byte	.LASF50
 1380 026f 06       		.byte	0x6
 1381 0270 33       		.byte	0x33
 1382 0271 25000000 		.4byte	0x25
 1383 0275 04       		.uleb128 0x4
 1384 0276 EC1A0000 		.4byte	.LASF51
 1385 027a 06       		.byte	0x6
 1386 027b 34       		.byte	0x34
 1387 027c 46000000 		.4byte	0x46
ARM GAS  /tmp/cc4jIqrt.s 			page 32


 1388 0280 04       		.uleb128 0x4
 1389 0281 8C0D0000 		.4byte	.LASF52
 1390 0285 06       		.byte	0x6
 1391 0286 3D       		.byte	0x3d
 1392 0287 25000000 		.4byte	0x25
 1393 028b 04       		.uleb128 0x4
 1394 028c 000E0000 		.4byte	.LASF53
 1395 0290 06       		.byte	0x6
 1396 0291 3E       		.byte	0x3e
 1397 0292 46000000 		.4byte	0x46
 1398 0296 04       		.uleb128 0x4
 1399 0297 BA010000 		.4byte	.LASF54
 1400 029b 06       		.byte	0x6
 1401 029c 47       		.byte	0x47
 1402 029d 25000000 		.4byte	0x25
 1403 02a1 04       		.uleb128 0x4
 1404 02a2 9E020000 		.4byte	.LASF55
 1405 02a6 06       		.byte	0x6
 1406 02a7 48       		.byte	0x48
 1407 02a8 46000000 		.4byte	0x46
 1408 02ac 04       		.uleb128 0x4
 1409 02ad A1130000 		.4byte	.LASF56
 1410 02b1 06       		.byte	0x6
 1411 02b2 51       		.byte	0x51
 1412 02b3 75000000 		.4byte	0x75
 1413 02b7 04       		.uleb128 0x4
 1414 02b8 0F140000 		.4byte	.LASF57
 1415 02bc 06       		.byte	0x6
 1416 02bd 52       		.byte	0x52
 1417 02be 16010000 		.4byte	0x116
 1418 02c2 04       		.uleb128 0x4
 1419 02c3 AE030000 		.4byte	.LASF58
 1420 02c7 06       		.byte	0x6
 1421 02c8 82       		.byte	0x82
 1422 02c9 75000000 		.4byte	0x75
 1423 02cd 04       		.uleb128 0x4
 1424 02ce CD030000 		.4byte	.LASF59
 1425 02d2 06       		.byte	0x6
 1426 02d3 8B       		.byte	0x8b
 1427 02d4 16010000 		.4byte	0x116
 1428 02d8 0B       		.uleb128 0xb
 1429 02d9 C6140000 		.4byte	.LASF375
 1430 02dd 01       		.byte	0x1
 1431 02de 9F000000 		.4byte	0x9f
 1432 02e2 19       		.byte	0x19
 1433 02e3 48       		.byte	0x48
 1434 02e4 7B040000 		.4byte	0x47b
 1435 02e8 0C       		.uleb128 0xc
 1436 02e9 8B160000 		.4byte	.LASF60
 1437 02ed 72       		.sleb128 -14
 1438 02ee 0C       		.uleb128 0xc
 1439 02ef 37070000 		.4byte	.LASF61
 1440 02f3 73       		.sleb128 -13
 1441 02f4 0C       		.uleb128 0xc
 1442 02f5 900E0000 		.4byte	.LASF62
 1443 02f9 74       		.sleb128 -12
 1444 02fa 0C       		.uleb128 0xc
ARM GAS  /tmp/cc4jIqrt.s 			page 33


 1445 02fb 8E1B0000 		.4byte	.LASF63
 1446 02ff 75       		.sleb128 -11
 1447 0300 0C       		.uleb128 0xc
 1448 0301 5A0D0000 		.4byte	.LASF64
 1449 0305 76       		.sleb128 -10
 1450 0306 0C       		.uleb128 0xc
 1451 0307 28040000 		.4byte	.LASF65
 1452 030b 7B       		.sleb128 -5
 1453 030c 0C       		.uleb128 0xc
 1454 030d E1000000 		.4byte	.LASF66
 1455 0311 7C       		.sleb128 -4
 1456 0312 0C       		.uleb128 0xc
 1457 0313 7F180000 		.4byte	.LASF67
 1458 0317 7E       		.sleb128 -2
 1459 0318 0C       		.uleb128 0xc
 1460 0319 20160000 		.4byte	.LASF68
 1461 031d 7F       		.sleb128 -1
 1462 031e 0D       		.uleb128 0xd
 1463 031f 26140000 		.4byte	.LASF69
 1464 0323 00       		.byte	0
 1465 0324 0D       		.uleb128 0xd
 1466 0325 C70E0000 		.4byte	.LASF70
 1467 0329 01       		.byte	0x1
 1468 032a 0D       		.uleb128 0xd
 1469 032b 5A040000 		.4byte	.LASF71
 1470 032f 02       		.byte	0x2
 1471 0330 0D       		.uleb128 0xd
 1472 0331 E40E0000 		.4byte	.LASF72
 1473 0335 03       		.byte	0x3
 1474 0336 0D       		.uleb128 0xd
 1475 0337 46160000 		.4byte	.LASF73
 1476 033b 04       		.byte	0x4
 1477 033c 0D       		.uleb128 0xd
 1478 033d C3110000 		.4byte	.LASF74
 1479 0341 05       		.byte	0x5
 1480 0342 0D       		.uleb128 0xd
 1481 0343 49000000 		.4byte	.LASF75
 1482 0347 06       		.byte	0x6
 1483 0348 0D       		.uleb128 0xd
 1484 0349 BA190000 		.4byte	.LASF76
 1485 034d 07       		.byte	0x7
 1486 034e 0D       		.uleb128 0xd
 1487 034f 7A190000 		.4byte	.LASF77
 1488 0353 08       		.byte	0x8
 1489 0354 0D       		.uleb128 0xd
 1490 0355 041A0000 		.4byte	.LASF78
 1491 0359 0A       		.byte	0xa
 1492 035a 0D       		.uleb128 0xd
 1493 035b 840A0000 		.4byte	.LASF79
 1494 035f 0B       		.byte	0xb
 1495 0360 0D       		.uleb128 0xd
 1496 0361 1A0A0000 		.4byte	.LASF80
 1497 0365 0C       		.byte	0xc
 1498 0366 0D       		.uleb128 0xd
 1499 0367 AD070000 		.4byte	.LASF81
 1500 036b 0D       		.byte	0xd
 1501 036c 0D       		.uleb128 0xd
ARM GAS  /tmp/cc4jIqrt.s 			page 34


 1502 036d BA130000 		.4byte	.LASF82
 1503 0371 0E       		.byte	0xe
 1504 0372 0D       		.uleb128 0xd
 1505 0373 77130000 		.4byte	.LASF83
 1506 0377 0F       		.byte	0xf
 1507 0378 0D       		.uleb128 0xd
 1508 0379 93090000 		.4byte	.LASF84
 1509 037d 10       		.byte	0x10
 1510 037e 0D       		.uleb128 0xd
 1511 037f 7C150000 		.4byte	.LASF85
 1512 0383 11       		.byte	0x11
 1513 0384 0D       		.uleb128 0xd
 1514 0385 CC110000 		.4byte	.LASF86
 1515 0389 12       		.byte	0x12
 1516 038a 0D       		.uleb128 0xd
 1517 038b 69070000 		.4byte	.LASF87
 1518 038f 13       		.byte	0x13
 1519 0390 0D       		.uleb128 0xd
 1520 0391 83130000 		.4byte	.LASF88
 1521 0395 14       		.byte	0x14
 1522 0396 0D       		.uleb128 0xd
 1523 0397 38090000 		.4byte	.LASF89
 1524 039b 15       		.byte	0x15
 1525 039c 0D       		.uleb128 0xd
 1526 039d 300B0000 		.4byte	.LASF90
 1527 03a1 16       		.byte	0x16
 1528 03a2 0D       		.uleb128 0xd
 1529 03a3 75060000 		.4byte	.LASF91
 1530 03a7 17       		.byte	0x17
 1531 03a8 0D       		.uleb128 0xd
 1532 03a9 DD050000 		.4byte	.LASF92
 1533 03ad 18       		.byte	0x18
 1534 03ae 0D       		.uleb128 0xd
 1535 03af 8B050000 		.4byte	.LASF93
 1536 03b3 19       		.byte	0x19
 1537 03b4 0D       		.uleb128 0xd
 1538 03b5 EC110000 		.4byte	.LASF94
 1539 03b9 1A       		.byte	0x1a
 1540 03ba 0D       		.uleb128 0xd
 1541 03bb 82110000 		.4byte	.LASF95
 1542 03bf 1B       		.byte	0x1b
 1543 03c0 0D       		.uleb128 0xd
 1544 03c1 32110000 		.4byte	.LASF96
 1545 03c5 1C       		.byte	0x1c
 1546 03c6 0D       		.uleb128 0xd
 1547 03c7 62000000 		.4byte	.LASF97
 1548 03cb 1D       		.byte	0x1d
 1549 03cc 0D       		.uleb128 0xd
 1550 03cd F7130000 		.4byte	.LASF98
 1551 03d1 1E       		.byte	0x1e
 1552 03d2 0D       		.uleb128 0xd
 1553 03d3 AC150000 		.4byte	.LASF99
 1554 03d7 1F       		.byte	0x1f
 1555 03d8 0D       		.uleb128 0xd
 1556 03d9 F5110000 		.4byte	.LASF100
 1557 03dd 20       		.byte	0x20
 1558 03de 0D       		.uleb128 0xd
ARM GAS  /tmp/cc4jIqrt.s 			page 35


 1559 03df A8170000 		.4byte	.LASF101
 1560 03e3 21       		.byte	0x21
 1561 03e4 0D       		.uleb128 0xd
 1562 03e5 28020000 		.4byte	.LASF102
 1563 03e9 22       		.byte	0x22
 1564 03ea 0D       		.uleb128 0xd
 1565 03eb 2E1B0000 		.4byte	.LASF103
 1566 03ef 23       		.byte	0x23
 1567 03f0 0D       		.uleb128 0xd
 1568 03f1 250B0000 		.4byte	.LASF104
 1569 03f5 25       		.byte	0x25
 1570 03f6 0D       		.uleb128 0xd
 1571 03f7 850C0000 		.4byte	.LASF105
 1572 03fb 27       		.byte	0x27
 1573 03fc 0D       		.uleb128 0xd
 1574 03fd 711B0000 		.4byte	.LASF106
 1575 0401 28       		.byte	0x28
 1576 0402 0D       		.uleb128 0xd
 1577 0403 1C130000 		.4byte	.LASF107
 1578 0407 29       		.byte	0x29
 1579 0408 0D       		.uleb128 0xd
 1580 0409 BF080000 		.4byte	.LASF108
 1581 040d 2A       		.byte	0x2a
 1582 040e 0D       		.uleb128 0xd
 1583 040f BD000000 		.4byte	.LASF109
 1584 0413 2B       		.byte	0x2b
 1585 0414 0D       		.uleb128 0xd
 1586 0415 DE090000 		.4byte	.LASF110
 1587 0419 2C       		.byte	0x2c
 1588 041a 0D       		.uleb128 0xd
 1589 041b 42090000 		.4byte	.LASF111
 1590 041f 2D       		.byte	0x2d
 1591 0420 0D       		.uleb128 0xd
 1592 0421 DD080000 		.4byte	.LASF112
 1593 0425 2E       		.byte	0x2e
 1594 0426 0D       		.uleb128 0xd
 1595 0427 84000000 		.4byte	.LASF113
 1596 042b 2F       		.byte	0x2f
 1597 042c 0D       		.uleb128 0xd
 1598 042d 1A000000 		.4byte	.LASF114
 1599 0431 30       		.byte	0x30
 1600 0432 0D       		.uleb128 0xd
 1601 0433 631B0000 		.4byte	.LASF115
 1602 0437 31       		.byte	0x31
 1603 0438 0D       		.uleb128 0xd
 1604 0439 660B0000 		.4byte	.LASF116
 1605 043d 32       		.byte	0x32
 1606 043e 0D       		.uleb128 0xd
 1607 043f E80C0000 		.4byte	.LASF117
 1608 0443 33       		.byte	0x33
 1609 0444 0D       		.uleb128 0xd
 1610 0445 8F130000 		.4byte	.LASF118
 1611 0449 34       		.byte	0x34
 1612 044a 0D       		.uleb128 0xd
 1613 044b C1120000 		.4byte	.LASF119
 1614 044f 38       		.byte	0x38
 1615 0450 0D       		.uleb128 0xd
ARM GAS  /tmp/cc4jIqrt.s 			page 36


 1616 0451 F5040000 		.4byte	.LASF120
 1617 0455 39       		.byte	0x39
 1618 0456 0D       		.uleb128 0xd
 1619 0457 9F160000 		.4byte	.LASF121
 1620 045b 3A       		.byte	0x3a
 1621 045c 0D       		.uleb128 0xd
 1622 045d F9020000 		.4byte	.LASF122
 1623 0461 3B       		.byte	0x3b
 1624 0462 0D       		.uleb128 0xd
 1625 0463 17120000 		.4byte	.LASF123
 1626 0467 3C       		.byte	0x3c
 1627 0468 0D       		.uleb128 0xd
 1628 0469 D0150000 		.4byte	.LASF124
 1629 046d 3E       		.byte	0x3e
 1630 046e 0D       		.uleb128 0xd
 1631 046f 960C0000 		.4byte	.LASF125
 1632 0473 3F       		.byte	0x3f
 1633 0474 0D       		.uleb128 0xd
 1634 0475 9F010000 		.4byte	.LASF126
 1635 0479 40       		.byte	0x40
 1636 047a 00       		.byte	0
 1637 047b 0E       		.uleb128 0xe
 1638 047c 04       		.byte	0x4
 1639 047d 06       		.uleb128 0x6
 1640 047e 04       		.byte	0x4
 1641 047f 07       		.byte	0x7
 1642 0480 810E0000 		.4byte	.LASF127
 1643 0484 0F       		.uleb128 0xf
 1644 0485 DC010000 		.4byte	0x1dc
 1645 0489 94040000 		.4byte	0x494
 1646 048d 10       		.uleb128 0x10
 1647 048e 7D040000 		.4byte	0x47d
 1648 0492 01       		.byte	0x1
 1649 0493 00       		.byte	0
 1650 0494 05       		.uleb128 0x5
 1651 0495 84040000 		.4byte	0x484
 1652 0499 0F       		.uleb128 0xf
 1653 049a DC010000 		.4byte	0x1dc
 1654 049e A9040000 		.4byte	0x4a9
 1655 04a2 10       		.uleb128 0x10
 1656 04a3 7D040000 		.4byte	0x47d
 1657 04a7 04       		.byte	0x4
 1658 04a8 00       		.byte	0
 1659 04a9 05       		.uleb128 0x5
 1660 04aa 99040000 		.4byte	0x499
 1661 04ae 11       		.uleb128 0x11
 1662 04af 79170000 		.4byte	.LASF128
 1663 04b3 07       		.byte	0x7
 1664 04b4 6508     		.2byte	0x865
 1665 04b6 CC010000 		.4byte	0x1cc
 1666 04ba 12       		.uleb128 0x12
 1667 04bb 9D100000 		.4byte	.LASF129
 1668 04bf 08       		.byte	0x8
 1669 04c0 3A       		.byte	0x3a
 1670 04c1 D1010000 		.4byte	0x1d1
 1671 04c5 0F       		.uleb128 0xf
 1672 04c6 DC010000 		.4byte	0x1dc
ARM GAS  /tmp/cc4jIqrt.s 			page 37


 1673 04ca D5040000 		.4byte	0x4d5
 1674 04ce 10       		.uleb128 0x10
 1675 04cf 7D040000 		.4byte	0x47d
 1676 04d3 00       		.byte	0
 1677 04d4 00       		.byte	0
 1678 04d5 05       		.uleb128 0x5
 1679 04d6 C5040000 		.4byte	0x4c5
 1680 04da 0F       		.uleb128 0xf
 1681 04db DC010000 		.4byte	0x1dc
 1682 04df EA040000 		.4byte	0x4ea
 1683 04e3 10       		.uleb128 0x10
 1684 04e4 7D040000 		.4byte	0x47d
 1685 04e8 0C       		.byte	0xc
 1686 04e9 00       		.byte	0
 1687 04ea 05       		.uleb128 0x5
 1688 04eb DA040000 		.4byte	0x4da
 1689 04ef 0F       		.uleb128 0xf
 1690 04f0 DC010000 		.4byte	0x1dc
 1691 04f4 FF040000 		.4byte	0x4ff
 1692 04f8 10       		.uleb128 0x10
 1693 04f9 7D040000 		.4byte	0x47d
 1694 04fd 02       		.byte	0x2
 1695 04fe 00       		.byte	0
 1696 04ff 05       		.uleb128 0x5
 1697 0500 EF040000 		.4byte	0x4ef
 1698 0504 0F       		.uleb128 0xf
 1699 0505 DC010000 		.4byte	0x1dc
 1700 0509 14050000 		.4byte	0x514
 1701 050d 10       		.uleb128 0x10
 1702 050e 7D040000 		.4byte	0x47d
 1703 0512 0B       		.byte	0xb
 1704 0513 00       		.byte	0
 1705 0514 05       		.uleb128 0x5
 1706 0515 04050000 		.4byte	0x504
 1707 0519 0F       		.uleb128 0xf
 1708 051a DC010000 		.4byte	0x1dc
 1709 051e 29050000 		.4byte	0x529
 1710 0522 10       		.uleb128 0x10
 1711 0523 7D040000 		.4byte	0x47d
 1712 0527 2E       		.byte	0x2e
 1713 0528 00       		.byte	0
 1714 0529 05       		.uleb128 0x5
 1715 052a 19050000 		.4byte	0x519
 1716 052e 13       		.uleb128 0x13
 1717 052f 6801     		.2byte	0x168
 1718 0531 09       		.byte	0x9
 1719 0532 38       		.byte	0x38
 1720 0533 24090000 		.4byte	.LASF610
 1721 0537 76080000 		.4byte	0x876
 1722 053b 14       		.uleb128 0x14
 1723 053c 61140000 		.4byte	.LASF130
 1724 0540 09       		.byte	0x9
 1725 0541 39       		.byte	0x39
 1726 0542 DC010000 		.4byte	0x1dc
 1727 0546 00       		.byte	0
 1728 0547 14       		.uleb128 0x14
 1729 0548 07140000 		.4byte	.LASF131
ARM GAS  /tmp/cc4jIqrt.s 			page 38


 1730 054c 09       		.byte	0x9
 1731 054d 3A       		.byte	0x3a
 1732 054e DC010000 		.4byte	0x1dc
 1733 0552 04       		.byte	0x4
 1734 0553 14       		.uleb128 0x14
 1735 0554 BF1A0000 		.4byte	.LASF132
 1736 0558 09       		.byte	0x9
 1737 0559 3B       		.byte	0x3b
 1738 055a DC010000 		.4byte	0x1dc
 1739 055e 08       		.byte	0x8
 1740 055f 14       		.uleb128 0x14
 1741 0560 481A0000 		.4byte	.LASF133
 1742 0564 09       		.byte	0x9
 1743 0565 3C       		.byte	0x3c
 1744 0566 D5040000 		.4byte	0x4d5
 1745 056a 0C       		.byte	0xc
 1746 056b 14       		.uleb128 0x14
 1747 056c 59120000 		.4byte	.LASF134
 1748 0570 09       		.byte	0x9
 1749 0571 3D       		.byte	0x3d
 1750 0572 DC010000 		.4byte	0x1dc
 1751 0576 10       		.byte	0x10
 1752 0577 14       		.uleb128 0x14
 1753 0578 FE110000 		.4byte	.LASF135
 1754 057c 09       		.byte	0x9
 1755 057d 3E       		.byte	0x3e
 1756 057e DC010000 		.4byte	0x1dc
 1757 0582 14       		.byte	0x14
 1758 0583 14       		.uleb128 0x14
 1759 0584 1F180000 		.4byte	.LASF136
 1760 0588 09       		.byte	0x9
 1761 0589 3F       		.byte	0x3f
 1762 058a DC010000 		.4byte	0x1dc
 1763 058e 18       		.byte	0x18
 1764 058f 14       		.uleb128 0x14
 1765 0590 521A0000 		.4byte	.LASF137
 1766 0594 09       		.byte	0x9
 1767 0595 40       		.byte	0x40
 1768 0596 D5040000 		.4byte	0x4d5
 1769 059a 1C       		.byte	0x1c
 1770 059b 14       		.uleb128 0x14
 1771 059c 3E0F0000 		.4byte	.LASF138
 1772 05a0 09       		.byte	0x9
 1773 05a1 41       		.byte	0x41
 1774 05a2 DC010000 		.4byte	0x1dc
 1775 05a6 20       		.byte	0x20
 1776 05a7 14       		.uleb128 0x14
 1777 05a8 780E0000 		.4byte	.LASF139
 1778 05ac 09       		.byte	0x9
 1779 05ad 42       		.byte	0x42
 1780 05ae DC010000 		.4byte	0x1dc
 1781 05b2 24       		.byte	0x24
 1782 05b3 14       		.uleb128 0x14
 1783 05b4 73150000 		.4byte	.LASF140
 1784 05b8 09       		.byte	0x9
 1785 05b9 43       		.byte	0x43
 1786 05ba DC010000 		.4byte	0x1dc
ARM GAS  /tmp/cc4jIqrt.s 			page 39


 1787 05be 28       		.byte	0x28
 1788 05bf 14       		.uleb128 0x14
 1789 05c0 5C1A0000 		.4byte	.LASF141
 1790 05c4 09       		.byte	0x9
 1791 05c5 44       		.byte	0x44
 1792 05c6 D5040000 		.4byte	0x4d5
 1793 05ca 2C       		.byte	0x2c
 1794 05cb 14       		.uleb128 0x14
 1795 05cc F5050000 		.4byte	.LASF142
 1796 05d0 09       		.byte	0x9
 1797 05d1 45       		.byte	0x45
 1798 05d2 DC010000 		.4byte	0x1dc
 1799 05d6 30       		.byte	0x30
 1800 05d7 14       		.uleb128 0x14
 1801 05d8 CD0D0000 		.4byte	.LASF143
 1802 05dc 09       		.byte	0x9
 1803 05dd 46       		.byte	0x46
 1804 05de DC010000 		.4byte	0x1dc
 1805 05e2 34       		.byte	0x34
 1806 05e3 14       		.uleb128 0x14
 1807 05e4 6A0D0000 		.4byte	.LASF144
 1808 05e8 09       		.byte	0x9
 1809 05e9 47       		.byte	0x47
 1810 05ea DC010000 		.4byte	0x1dc
 1811 05ee 38       		.byte	0x38
 1812 05ef 14       		.uleb128 0x14
 1813 05f0 F2190000 		.4byte	.LASF145
 1814 05f4 09       		.byte	0x9
 1815 05f5 48       		.byte	0x48
 1816 05f6 DC010000 		.4byte	0x1dc
 1817 05fa 3C       		.byte	0x3c
 1818 05fb 14       		.uleb128 0x14
 1819 05fc D9010000 		.4byte	.LASF146
 1820 0600 09       		.byte	0x9
 1821 0601 49       		.byte	0x49
 1822 0602 DC010000 		.4byte	0x1dc
 1823 0606 40       		.byte	0x40
 1824 0607 14       		.uleb128 0x14
 1825 0608 51010000 		.4byte	.LASF147
 1826 060c 09       		.byte	0x9
 1827 060d 4A       		.byte	0x4a
 1828 060e DC010000 		.4byte	0x1dc
 1829 0612 44       		.byte	0x44
 1830 0613 14       		.uleb128 0x14
 1831 0614 6D050000 		.4byte	.LASF148
 1832 0618 09       		.byte	0x9
 1833 0619 4B       		.byte	0x4b
 1834 061a DC010000 		.4byte	0x1dc
 1835 061e 48       		.byte	0x48
 1836 061f 14       		.uleb128 0x14
 1837 0620 B9070000 		.4byte	.LASF149
 1838 0624 09       		.byte	0x9
 1839 0625 4C       		.byte	0x4c
 1840 0626 DC010000 		.4byte	0x1dc
 1841 062a 4C       		.byte	0x4c
 1842 062b 14       		.uleb128 0x14
 1843 062c 80070000 		.4byte	.LASF150
ARM GAS  /tmp/cc4jIqrt.s 			page 40


 1844 0630 09       		.byte	0x9
 1845 0631 4D       		.byte	0x4d
 1846 0632 DC010000 		.4byte	0x1dc
 1847 0636 50       		.byte	0x50
 1848 0637 14       		.uleb128 0x14
 1849 0638 0D070000 		.4byte	.LASF151
 1850 063c 09       		.byte	0x9
 1851 063d 4E       		.byte	0x4e
 1852 063e DC010000 		.4byte	0x1dc
 1853 0642 54       		.byte	0x54
 1854 0643 14       		.uleb128 0x14
 1855 0644 F70D0000 		.4byte	.LASF152
 1856 0648 09       		.byte	0x9
 1857 0649 4F       		.byte	0x4f
 1858 064a DC010000 		.4byte	0x1dc
 1859 064e 58       		.byte	0x58
 1860 064f 14       		.uleb128 0x14
 1861 0650 661A0000 		.4byte	.LASF153
 1862 0654 09       		.byte	0x9
 1863 0655 50       		.byte	0x50
 1864 0656 D5040000 		.4byte	0x4d5
 1865 065a 5C       		.byte	0x5c
 1866 065b 14       		.uleb128 0x14
 1867 065c C0090000 		.4byte	.LASF154
 1868 0660 09       		.byte	0x9
 1869 0661 51       		.byte	0x51
 1870 0662 DC010000 		.4byte	0x1dc
 1871 0666 60       		.byte	0x60
 1872 0667 14       		.uleb128 0x14
 1873 0668 590A0000 		.4byte	.LASF155
 1874 066c 09       		.byte	0x9
 1875 066d 52       		.byte	0x52
 1876 066e DC010000 		.4byte	0x1dc
 1877 0672 64       		.byte	0x64
 1878 0673 14       		.uleb128 0x14
 1879 0674 4C110000 		.4byte	.LASF156
 1880 0678 09       		.byte	0x9
 1881 0679 53       		.byte	0x53
 1882 067a DC010000 		.4byte	0x1dc
 1883 067e 68       		.byte	0x68
 1884 067f 14       		.uleb128 0x14
 1885 0680 701A0000 		.4byte	.LASF157
 1886 0684 09       		.byte	0x9
 1887 0685 54       		.byte	0x54
 1888 0686 D5040000 		.4byte	0x4d5
 1889 068a 6C       		.byte	0x6c
 1890 068b 14       		.uleb128 0x14
 1891 068c 770B0000 		.4byte	.LASF158
 1892 0690 09       		.byte	0x9
 1893 0691 55       		.byte	0x55
 1894 0692 94040000 		.4byte	0x494
 1895 0696 70       		.byte	0x70
 1896 0697 14       		.uleb128 0x14
 1897 0698 7A1A0000 		.4byte	.LASF159
 1898 069c 09       		.byte	0x9
 1899 069d 56       		.byte	0x56
 1900 069e 94040000 		.4byte	0x494
ARM GAS  /tmp/cc4jIqrt.s 			page 41


 1901 06a2 78       		.byte	0x78
 1902 06a3 14       		.uleb128 0x14
 1903 06a4 4F160000 		.4byte	.LASF160
 1904 06a8 09       		.byte	0x9
 1905 06a9 57       		.byte	0x57
 1906 06aa DC010000 		.4byte	0x1dc
 1907 06ae 80       		.byte	0x80
 1908 06af 14       		.uleb128 0x14
 1909 06b0 07170000 		.4byte	.LASF161
 1910 06b4 09       		.byte	0x9
 1911 06b5 58       		.byte	0x58
 1912 06b6 DC010000 		.4byte	0x1dc
 1913 06ba 84       		.byte	0x84
 1914 06bb 14       		.uleb128 0x14
 1915 06bc 59010000 		.4byte	.LASF162
 1916 06c0 09       		.byte	0x9
 1917 06c1 59       		.byte	0x59
 1918 06c2 DC010000 		.4byte	0x1dc
 1919 06c6 88       		.byte	0x88
 1920 06c7 14       		.uleb128 0x14
 1921 06c8 B1010000 		.4byte	.LASF163
 1922 06cc 09       		.byte	0x9
 1923 06cd 5A       		.byte	0x5a
 1924 06ce DC010000 		.4byte	0x1dc
 1925 06d2 8C       		.byte	0x8c
 1926 06d3 14       		.uleb128 0x14
 1927 06d4 841B0000 		.4byte	.LASF164
 1928 06d8 09       		.byte	0x9
 1929 06d9 5B       		.byte	0x5b
 1930 06da DC010000 		.4byte	0x1dc
 1931 06de 90       		.byte	0x90
 1932 06df 14       		.uleb128 0x14
 1933 06e0 7A000000 		.4byte	.LASF165
 1934 06e4 09       		.byte	0x9
 1935 06e5 5C       		.byte	0x5c
 1936 06e6 DC010000 		.4byte	0x1dc
 1937 06ea 94       		.byte	0x94
 1938 06eb 14       		.uleb128 0x14
 1939 06ec CF060000 		.4byte	.LASF166
 1940 06f0 09       		.byte	0x9
 1941 06f1 5D       		.byte	0x5d
 1942 06f2 DC010000 		.4byte	0x1dc
 1943 06f6 98       		.byte	0x98
 1944 06f7 14       		.uleb128 0x14
 1945 06f8 841A0000 		.4byte	.LASF167
 1946 06fc 09       		.byte	0x9
 1947 06fd 5E       		.byte	0x5e
 1948 06fe D5040000 		.4byte	0x4d5
 1949 0702 9C       		.byte	0x9c
 1950 0703 14       		.uleb128 0x14
 1951 0704 6F020000 		.4byte	.LASF168
 1952 0708 09       		.byte	0x9
 1953 0709 5F       		.byte	0x5f
 1954 070a DC010000 		.4byte	0x1dc
 1955 070e A0       		.byte	0xa0
 1956 070f 14       		.uleb128 0x14
 1957 0710 EA010000 		.4byte	.LASF169
ARM GAS  /tmp/cc4jIqrt.s 			page 42


 1958 0714 09       		.byte	0x9
 1959 0715 60       		.byte	0x60
 1960 0716 DC010000 		.4byte	0x1dc
 1961 071a A4       		.byte	0xa4
 1962 071b 14       		.uleb128 0x14
 1963 071c 50080000 		.4byte	.LASF170
 1964 0720 09       		.byte	0x9
 1965 0721 61       		.byte	0x61
 1966 0722 DC010000 		.4byte	0x1dc
 1967 0726 A8       		.byte	0xa8
 1968 0727 14       		.uleb128 0x14
 1969 0728 8E1A0000 		.4byte	.LASF171
 1970 072c 09       		.byte	0x9
 1971 072d 62       		.byte	0x62
 1972 072e D5040000 		.4byte	0x4d5
 1973 0732 AC       		.byte	0xac
 1974 0733 14       		.uleb128 0x14
 1975 0734 81160000 		.4byte	.LASF172
 1976 0738 09       		.byte	0x9
 1977 0739 63       		.byte	0x63
 1978 073a DC010000 		.4byte	0x1dc
 1979 073e B0       		.byte	0xb0
 1980 073f 14       		.uleb128 0x14
 1981 0740 16160000 		.4byte	.LASF173
 1982 0744 09       		.byte	0x9
 1983 0745 64       		.byte	0x64
 1984 0746 DC010000 		.4byte	0x1dc
 1985 074a B4       		.byte	0xb4
 1986 074b 14       		.uleb128 0x14
 1987 074c 85190000 		.4byte	.LASF174
 1988 0750 09       		.byte	0x9
 1989 0751 65       		.byte	0x65
 1990 0752 DC010000 		.4byte	0x1dc
 1991 0756 B8       		.byte	0xb8
 1992 0757 14       		.uleb128 0x14
 1993 0758 981A0000 		.4byte	.LASF175
 1994 075c 09       		.byte	0x9
 1995 075d 66       		.byte	0x66
 1996 075e D5040000 		.4byte	0x4d5
 1997 0762 BC       		.byte	0xbc
 1998 0763 14       		.uleb128 0x14
 1999 0764 AD180000 		.4byte	.LASF176
 2000 0768 09       		.byte	0x9
 2001 0769 67       		.byte	0x67
 2002 076a DC010000 		.4byte	0x1dc
 2003 076e C0       		.byte	0xc0
 2004 076f 14       		.uleb128 0x14
 2005 0770 CE100000 		.4byte	.LASF177
 2006 0774 09       		.byte	0x9
 2007 0775 68       		.byte	0x68
 2008 0776 DC010000 		.4byte	0x1dc
 2009 077a C4       		.byte	0xc4
 2010 077b 14       		.uleb128 0x14
 2011 077c 950B0000 		.4byte	.LASF178
 2012 0780 09       		.byte	0x9
 2013 0781 69       		.byte	0x69
 2014 0782 DC010000 		.4byte	0x1dc
ARM GAS  /tmp/cc4jIqrt.s 			page 43


 2015 0786 C8       		.byte	0xc8
 2016 0787 14       		.uleb128 0x14
 2017 0788 41050000 		.4byte	.LASF179
 2018 078c 09       		.byte	0x9
 2019 078d 6A       		.byte	0x6a
 2020 078e D5040000 		.4byte	0x4d5
 2021 0792 CC       		.byte	0xcc
 2022 0793 14       		.uleb128 0x14
 2023 0794 86170000 		.4byte	.LASF180
 2024 0798 09       		.byte	0x9
 2025 0799 6B       		.byte	0x6b
 2026 079a DC010000 		.4byte	0x1dc
 2027 079e D0       		.byte	0xd0
 2028 079f 14       		.uleb128 0x14
 2029 07a0 990D0000 		.4byte	.LASF181
 2030 07a4 09       		.byte	0x9
 2031 07a5 6C       		.byte	0x6c
 2032 07a6 DC010000 		.4byte	0x1dc
 2033 07aa D4       		.byte	0xd4
 2034 07ab 14       		.uleb128 0x14
 2035 07ac 3D1A0000 		.4byte	.LASF182
 2036 07b0 09       		.byte	0x9
 2037 07b1 6D       		.byte	0x6d
 2038 07b2 DC010000 		.4byte	0x1dc
 2039 07b6 D8       		.byte	0xd8
 2040 07b7 14       		.uleb128 0x14
 2041 07b8 4C050000 		.4byte	.LASF183
 2042 07bc 09       		.byte	0x9
 2043 07bd 6E       		.byte	0x6e
 2044 07be D5040000 		.4byte	0x4d5
 2045 07c2 DC       		.byte	0xdc
 2046 07c3 14       		.uleb128 0x14
 2047 07c4 A4080000 		.4byte	.LASF184
 2048 07c8 09       		.byte	0x9
 2049 07c9 6F       		.byte	0x6f
 2050 07ca DC010000 		.4byte	0x1dc
 2051 07ce E0       		.byte	0xe0
 2052 07cf 14       		.uleb128 0x14
 2053 07d0 C60A0000 		.4byte	.LASF185
 2054 07d4 09       		.byte	0x9
 2055 07d5 70       		.byte	0x70
 2056 07d6 DC010000 		.4byte	0x1dc
 2057 07da E4       		.byte	0xe4
 2058 07db 14       		.uleb128 0x14
 2059 07dc B60D0000 		.4byte	.LASF186
 2060 07e0 09       		.byte	0x9
 2061 07e1 71       		.byte	0x71
 2062 07e2 DC010000 		.4byte	0x1dc
 2063 07e6 E8       		.byte	0xe8
 2064 07e7 14       		.uleb128 0x14
 2065 07e8 57050000 		.4byte	.LASF187
 2066 07ec 09       		.byte	0x9
 2067 07ed 72       		.byte	0x72
 2068 07ee A9040000 		.4byte	0x4a9
 2069 07f2 EC       		.byte	0xec
 2070 07f3 15       		.uleb128 0x15
 2071 07f4 33020000 		.4byte	.LASF188
ARM GAS  /tmp/cc4jIqrt.s 			page 44


 2072 07f8 09       		.byte	0x9
 2073 07f9 73       		.byte	0x73
 2074 07fa DC010000 		.4byte	0x1dc
 2075 07fe 0001     		.2byte	0x100
 2076 0800 15       		.uleb128 0x15
 2077 0801 62050000 		.4byte	.LASF189
 2078 0805 09       		.byte	0x9
 2079 0806 74       		.byte	0x74
 2080 0807 A9040000 		.4byte	0x4a9
 2081 080b 0401     		.2byte	0x104
 2082 080d 15       		.uleb128 0x15
 2083 080e 54060000 		.4byte	.LASF190
 2084 0812 09       		.byte	0x9
 2085 0813 75       		.byte	0x75
 2086 0814 DC010000 		.4byte	0x1dc
 2087 0818 1801     		.2byte	0x118
 2088 081a 15       		.uleb128 0x15
 2089 081b 310E0000 		.4byte	.LASF191
 2090 081f 09       		.byte	0x9
 2091 0820 76       		.byte	0x76
 2092 0821 EA040000 		.4byte	0x4ea
 2093 0825 1C01     		.2byte	0x11c
 2094 0827 15       		.uleb128 0x15
 2095 0828 1C150000 		.4byte	.LASF192
 2096 082c 09       		.byte	0x9
 2097 082d 77       		.byte	0x77
 2098 082e DC010000 		.4byte	0x1dc
 2099 0832 5001     		.2byte	0x150
 2100 0834 15       		.uleb128 0x15
 2101 0835 4A060000 		.4byte	.LASF193
 2102 0839 09       		.byte	0x9
 2103 083a 78       		.byte	0x78
 2104 083b DC010000 		.4byte	0x1dc
 2105 083f 5401     		.2byte	0x154
 2106 0841 15       		.uleb128 0x15
 2107 0842 BD180000 		.4byte	.LASF194
 2108 0846 09       		.byte	0x9
 2109 0847 79       		.byte	0x79
 2110 0848 DC010000 		.4byte	0x1dc
 2111 084c 5801     		.2byte	0x158
 2112 084e 15       		.uleb128 0x15
 2113 084f E9090000 		.4byte	.LASF195
 2114 0853 09       		.byte	0x9
 2115 0854 7A       		.byte	0x7a
 2116 0855 DC010000 		.4byte	0x1dc
 2117 0859 5C01     		.2byte	0x15c
 2118 085b 15       		.uleb128 0x15
 2119 085c AF0C0000 		.4byte	.LASF196
 2120 0860 09       		.byte	0x9
 2121 0861 7B       		.byte	0x7b
 2122 0862 DC010000 		.4byte	0x1dc
 2123 0866 6001     		.2byte	0x160
 2124 0868 15       		.uleb128 0x15
 2125 0869 10040000 		.4byte	.LASF197
 2126 086d 09       		.byte	0x9
 2127 086e 7C       		.byte	0x7c
 2128 086f DC010000 		.4byte	0x1dc
ARM GAS  /tmp/cc4jIqrt.s 			page 45


 2129 0873 6401     		.2byte	0x164
 2130 0875 00       		.byte	0
 2131 0876 16       		.uleb128 0x16
 2132 0877 50696F00 		.ascii	"Pio\000"
 2133 087b 09       		.byte	0x9
 2134 087c 7D       		.byte	0x7d
 2135 087d 2E050000 		.4byte	0x52e
 2136 0881 17       		.uleb128 0x17
 2137 0882 54       		.byte	0x54
 2138 0883 0A       		.byte	0xa
 2139 0884 38       		.byte	0x38
 2140 0885 2B0E0000 		.4byte	.LASF205
 2141 0889 EE080000 		.4byte	0x8ee
 2142 088d 14       		.uleb128 0x14
 2143 088e 34080000 		.4byte	.LASF198
 2144 0892 0A       		.byte	0xa
 2145 0893 39       		.byte	0x39
 2146 0894 DC010000 		.4byte	0x1dc
 2147 0898 00       		.byte	0
 2148 0899 14       		.uleb128 0x14
 2149 089a 481A0000 		.4byte	.LASF133
 2150 089e 0A       		.byte	0xa
 2151 089f 3A       		.byte	0x3a
 2152 08a0 FF040000 		.4byte	0x4ff
 2153 08a4 04       		.byte	0x4
 2154 08a5 14       		.uleb128 0x14
 2155 08a6 9D0A0000 		.4byte	.LASF199
 2156 08aa 0A       		.byte	0xa
 2157 08ab 3B       		.byte	0x3b
 2158 08ac DC010000 		.4byte	0x1dc
 2159 08b0 10       		.byte	0x10
 2160 08b1 14       		.uleb128 0x14
 2161 08b2 310A0000 		.4byte	.LASF200
 2162 08b6 0A       		.byte	0xa
 2163 08b7 3C       		.byte	0x3c
 2164 08b8 DC010000 		.4byte	0x1dc
 2165 08bc 14       		.byte	0x14
 2166 08bd 14       		.uleb128 0x14
 2167 08be 220E0000 		.4byte	.LASF201
 2168 08c2 0A       		.byte	0xa
 2169 08c3 3D       		.byte	0x3d
 2170 08c4 DC010000 		.4byte	0x1dc
 2171 08c8 18       		.byte	0x18
 2172 08c9 14       		.uleb128 0x14
 2173 08ca 94110000 		.4byte	.LASF202
 2174 08ce 0A       		.byte	0xa
 2175 08cf 3E       		.byte	0x3e
 2176 08d0 DC010000 		.4byte	0x1dc
 2177 08d4 1C       		.byte	0x1c
 2178 08d5 14       		.uleb128 0x14
 2179 08d6 521A0000 		.4byte	.LASF137
 2180 08da 0A       		.byte	0xa
 2181 08db 3F       		.byte	0x3f
 2182 08dc 14050000 		.4byte	0x514
 2183 08e0 20       		.byte	0x20
 2184 08e1 14       		.uleb128 0x14
 2185 08e2 13190000 		.4byte	.LASF203
ARM GAS  /tmp/cc4jIqrt.s 			page 46


 2186 08e6 0A       		.byte	0xa
 2187 08e7 40       		.byte	0x40
 2188 08e8 DC010000 		.4byte	0x1dc
 2189 08ec 50       		.byte	0x50
 2190 08ed 00       		.byte	0
 2191 08ee 04       		.uleb128 0x4
 2192 08ef E7110000 		.4byte	.LASF204
 2193 08f3 0A       		.byte	0xa
 2194 08f4 41       		.byte	0x41
 2195 08f5 81080000 		.4byte	0x881
 2196 08f9 17       		.uleb128 0x17
 2197 08fa E8       		.byte	0xe8
 2198 08fb 0B       		.byte	0xb
 2199 08fc 38       		.byte	0x38
 2200 08fd 8F0B0000 		.4byte	.LASF206
 2201 0901 96090000 		.4byte	0x996
 2202 0905 14       		.uleb128 0x14
 2203 0906 46030000 		.4byte	.LASF207
 2204 090a 0B       		.byte	0xb
 2205 090b 39       		.byte	0x39
 2206 090c DC010000 		.4byte	0x1dc
 2207 0910 00       		.byte	0
 2208 0911 14       		.uleb128 0x14
 2209 0912 16070000 		.4byte	.LASF208
 2210 0916 0B       		.byte	0xb
 2211 0917 3A       		.byte	0x3a
 2212 0918 DC010000 		.4byte	0x1dc
 2213 091c 04       		.byte	0x4
 2214 091d 14       		.uleb128 0x14
 2215 091e 3D160000 		.4byte	.LASF209
 2216 0922 0B       		.byte	0xb
 2217 0923 3B       		.byte	0x3b
 2218 0924 DC010000 		.4byte	0x1dc
 2219 0928 08       		.byte	0x8
 2220 0929 14       		.uleb128 0x14
 2221 092a C7150000 		.4byte	.LASF210
 2222 092e 0B       		.byte	0xb
 2223 092f 3C       		.byte	0x3c
 2224 0930 DC010000 		.4byte	0x1dc
 2225 0934 0C       		.byte	0xc
 2226 0935 14       		.uleb128 0x14
 2227 0936 2A190000 		.4byte	.LASF211
 2228 093a 0B       		.byte	0xb
 2229 093b 3D       		.byte	0x3d
 2230 093c DC010000 		.4byte	0x1dc
 2231 0940 10       		.byte	0x10
 2232 0941 14       		.uleb128 0x14
 2233 0942 070A0000 		.4byte	.LASF212
 2234 0946 0B       		.byte	0xb
 2235 0947 3E       		.byte	0x3e
 2236 0948 DC010000 		.4byte	0x1dc
 2237 094c 14       		.byte	0x14
 2238 094d 14       		.uleb128 0x14
 2239 094e E1130000 		.4byte	.LASF213
 2240 0952 0B       		.byte	0xb
 2241 0953 3F       		.byte	0x3f
 2242 0954 DC010000 		.4byte	0x1dc
ARM GAS  /tmp/cc4jIqrt.s 			page 47


 2243 0958 18       		.byte	0x18
 2244 0959 14       		.uleb128 0x14
 2245 095a E5180000 		.4byte	.LASF214
 2246 095e 0B       		.byte	0xb
 2247 095f 40       		.byte	0x40
 2248 0960 DC010000 		.4byte	0x1dc
 2249 0964 1C       		.byte	0x1c
 2250 0965 14       		.uleb128 0x14
 2251 0966 6B060000 		.4byte	.LASF215
 2252 096a 0B       		.byte	0xb
 2253 096b 41       		.byte	0x41
 2254 096c DC010000 		.4byte	0x1dc
 2255 0970 20       		.byte	0x20
 2256 0971 14       		.uleb128 0x14
 2257 0972 7A0A0000 		.4byte	.LASF216
 2258 0976 0B       		.byte	0xb
 2259 0977 42       		.byte	0x42
 2260 0978 DC010000 		.4byte	0x1dc
 2261 097c 24       		.byte	0x24
 2262 097d 14       		.uleb128 0x14
 2263 097e 481A0000 		.4byte	.LASF133
 2264 0982 0B       		.byte	0xb
 2265 0983 43       		.byte	0x43
 2266 0984 29050000 		.4byte	0x529
 2267 0988 28       		.byte	0x28
 2268 0989 14       		.uleb128 0x14
 2269 098a 1E070000 		.4byte	.LASF217
 2270 098e 0B       		.byte	0xb
 2271 098f 44       		.byte	0x44
 2272 0990 DC010000 		.4byte	0x1dc
 2273 0994 E4       		.byte	0xe4
 2274 0995 00       		.byte	0
 2275 0996 04       		.uleb128 0x4
 2276 0997 3D010000 		.4byte	.LASF218
 2277 099b 0B       		.byte	0xb
 2278 099c 45       		.byte	0x45
 2279 099d F9080000 		.4byte	0x8f9
 2280 09a1 04       		.uleb128 0x4
 2281 09a2 55110000 		.4byte	.LASF219
 2282 09a6 0C       		.byte	0xc
 2283 09a7 07       		.byte	0x7
 2284 09a8 25000000 		.4byte	0x25
 2285 09ac 04       		.uleb128 0x4
 2286 09ad 8C090000 		.4byte	.LASF220
 2287 09b1 0D       		.byte	0xd
 2288 09b2 2C       		.byte	0x2c
 2289 09b3 E7000000 		.4byte	0xe7
 2290 09b7 04       		.uleb128 0x4
 2291 09b8 25150000 		.4byte	.LASF221
 2292 09bc 0D       		.byte	0xd
 2293 09bd 72       		.byte	0x72
 2294 09be E7000000 		.4byte	0xe7
 2295 09c2 09       		.uleb128 0x9
 2296 09c3 E20A0000 		.4byte	.LASF222
 2297 09c7 03       		.byte	0x3
 2298 09c8 6501     		.2byte	0x165
 2299 09ca 46000000 		.4byte	0x46
ARM GAS  /tmp/cc4jIqrt.s 			page 48


 2300 09ce 17       		.uleb128 0x17
 2301 09cf 08       		.byte	0x8
 2302 09d0 0D       		.byte	0xd
 2303 09d1 A4       		.byte	0xa4
 2304 09d2 820B0000 		.4byte	.LASF223
 2305 09d6 120A0000 		.4byte	0xa12
 2306 09da 18       		.uleb128 0x18
 2307 09db 04       		.byte	0x4
 2308 09dc 0D       		.byte	0xd
 2309 09dd A7       		.byte	0xa7
 2310 09de F9090000 		.4byte	0x9f9
 2311 09e2 19       		.uleb128 0x19
 2312 09e3 08110000 		.4byte	.LASF224
 2313 09e7 0D       		.byte	0xd
 2314 09e8 A8       		.byte	0xa8
 2315 09e9 C2090000 		.4byte	0x9c2
 2316 09ed 19       		.uleb128 0x19
 2317 09ee A60A0000 		.4byte	.LASF225
 2318 09f2 0D       		.byte	0xd
 2319 09f3 A9       		.byte	0xa9
 2320 09f4 120A0000 		.4byte	0xa12
 2321 09f8 00       		.byte	0
 2322 09f9 14       		.uleb128 0x14
 2323 09fa C9090000 		.4byte	.LASF226
 2324 09fe 0D       		.byte	0xd
 2325 09ff A5       		.byte	0xa5
 2326 0a00 25000000 		.4byte	0x25
 2327 0a04 00       		.byte	0
 2328 0a05 14       		.uleb128 0x14
 2329 0a06 2D160000 		.4byte	.LASF227
 2330 0a0a 0D       		.byte	0xd
 2331 0a0b AA       		.byte	0xaa
 2332 0a0c DA090000 		.4byte	0x9da
 2333 0a10 04       		.byte	0x4
 2334 0a11 00       		.byte	0
 2335 0a12 0F       		.uleb128 0xf
 2336 0a13 B1000000 		.4byte	0xb1
 2337 0a17 220A0000 		.4byte	0xa22
 2338 0a1b 10       		.uleb128 0x10
 2339 0a1c 7D040000 		.4byte	0x47d
 2340 0a20 03       		.byte	0x3
 2341 0a21 00       		.byte	0
 2342 0a22 04       		.uleb128 0x4
 2343 0a23 86150000 		.4byte	.LASF228
 2344 0a27 0D       		.byte	0xd
 2345 0a28 AB       		.byte	0xab
 2346 0a29 CE090000 		.4byte	0x9ce
 2347 0a2d 04       		.uleb128 0x4
 2348 0a2e 76180000 		.4byte	.LASF229
 2349 0a32 0D       		.byte	0xd
 2350 0a33 AF       		.byte	0xaf
 2351 0a34 A1090000 		.4byte	0x9a1
 2352 0a38 04       		.uleb128 0x4
 2353 0a39 EF0D0000 		.4byte	.LASF230
 2354 0a3d 0E       		.byte	0xe
 2355 0a3e 16       		.byte	0x16
 2356 0a3f F9000000 		.4byte	0xf9
ARM GAS  /tmp/cc4jIqrt.s 			page 49


 2357 0a43 1A       		.uleb128 0x1a
 2358 0a44 99130000 		.4byte	.LASF235
 2359 0a48 18       		.byte	0x18
 2360 0a49 0E       		.byte	0xe
 2361 0a4a 2D       		.byte	0x2d
 2362 0a4b 960A0000 		.4byte	0xa96
 2363 0a4f 14       		.uleb128 0x14
 2364 0a50 E40B0000 		.4byte	.LASF231
 2365 0a54 0E       		.byte	0xe
 2366 0a55 2F       		.byte	0x2f
 2367 0a56 960A0000 		.4byte	0xa96
 2368 0a5a 00       		.byte	0
 2369 0a5b 1B       		.uleb128 0x1b
 2370 0a5c 5F6B00   		.ascii	"_k\000"
 2371 0a5f 0E       		.byte	0xe
 2372 0a60 30       		.byte	0x30
 2373 0a61 25000000 		.4byte	0x25
 2374 0a65 04       		.byte	0x4
 2375 0a66 14       		.uleb128 0x14
 2376 0a67 61120000 		.4byte	.LASF232
 2377 0a6b 0E       		.byte	0xe
 2378 0a6c 30       		.byte	0x30
 2379 0a6d 25000000 		.4byte	0x25
 2380 0a71 08       		.byte	0x8
 2381 0a72 14       		.uleb128 0x14
 2382 0a73 E3190000 		.4byte	.LASF233
 2383 0a77 0E       		.byte	0xe
 2384 0a78 30       		.byte	0x30
 2385 0a79 25000000 		.4byte	0x25
 2386 0a7d 0C       		.byte	0xc
 2387 0a7e 14       		.uleb128 0x14
 2388 0a7f F2060000 		.4byte	.LASF234
 2389 0a83 0E       		.byte	0xe
 2390 0a84 30       		.byte	0x30
 2391 0a85 25000000 		.4byte	0x25
 2392 0a89 10       		.byte	0x10
 2393 0a8a 1B       		.uleb128 0x1b
 2394 0a8b 5F7800   		.ascii	"_x\000"
 2395 0a8e 0E       		.byte	0xe
 2396 0a8f 31       		.byte	0x31
 2397 0a90 9C0A0000 		.4byte	0xa9c
 2398 0a94 14       		.byte	0x14
 2399 0a95 00       		.byte	0
 2400 0a96 1C       		.uleb128 0x1c
 2401 0a97 04       		.byte	0x4
 2402 0a98 430A0000 		.4byte	0xa43
 2403 0a9c 0F       		.uleb128 0xf
 2404 0a9d 380A0000 		.4byte	0xa38
 2405 0aa1 AC0A0000 		.4byte	0xaac
 2406 0aa5 10       		.uleb128 0x10
 2407 0aa6 7D040000 		.4byte	0x47d
 2408 0aaa 00       		.byte	0
 2409 0aab 00       		.byte	0
 2410 0aac 1A       		.uleb128 0x1a
 2411 0aad 32050000 		.4byte	.LASF236
 2412 0ab1 24       		.byte	0x24
 2413 0ab2 0E       		.byte	0xe
ARM GAS  /tmp/cc4jIqrt.s 			page 50


 2414 0ab3 35       		.byte	0x35
 2415 0ab4 250B0000 		.4byte	0xb25
 2416 0ab8 14       		.uleb128 0x14
 2417 0ab9 130D0000 		.4byte	.LASF237
 2418 0abd 0E       		.byte	0xe
 2419 0abe 37       		.byte	0x37
 2420 0abf 25000000 		.4byte	0x25
 2421 0ac3 00       		.byte	0
 2422 0ac4 14       		.uleb128 0x14
 2423 0ac5 FB190000 		.4byte	.LASF238
 2424 0ac9 0E       		.byte	0xe
 2425 0aca 38       		.byte	0x38
 2426 0acb 25000000 		.4byte	0x25
 2427 0acf 04       		.byte	0x4
 2428 0ad0 14       		.uleb128 0x14
 2429 0ad1 BC0A0000 		.4byte	.LASF239
 2430 0ad5 0E       		.byte	0xe
 2431 0ad6 39       		.byte	0x39
 2432 0ad7 25000000 		.4byte	0x25
 2433 0adb 08       		.byte	0x8
 2434 0adc 14       		.uleb128 0x14
 2435 0add 5C0B0000 		.4byte	.LASF240
 2436 0ae1 0E       		.byte	0xe
 2437 0ae2 3A       		.byte	0x3a
 2438 0ae3 25000000 		.4byte	0x25
 2439 0ae7 0C       		.byte	0xc
 2440 0ae8 14       		.uleb128 0x14
 2441 0ae9 83010000 		.4byte	.LASF241
 2442 0aed 0E       		.byte	0xe
 2443 0aee 3B       		.byte	0x3b
 2444 0aef 25000000 		.4byte	0x25
 2445 0af3 10       		.byte	0x10
 2446 0af4 14       		.uleb128 0x14
 2447 0af5 EE070000 		.4byte	.LASF242
 2448 0af9 0E       		.byte	0xe
 2449 0afa 3C       		.byte	0x3c
 2450 0afb 25000000 		.4byte	0x25
 2451 0aff 14       		.byte	0x14
 2452 0b00 14       		.uleb128 0x14
 2453 0b01 85060000 		.4byte	.LASF243
 2454 0b05 0E       		.byte	0xe
 2455 0b06 3D       		.byte	0x3d
 2456 0b07 25000000 		.4byte	0x25
 2457 0b0b 18       		.byte	0x18
 2458 0b0c 14       		.uleb128 0x14
 2459 0b0d 81050000 		.4byte	.LASF244
 2460 0b11 0E       		.byte	0xe
 2461 0b12 3E       		.byte	0x3e
 2462 0b13 25000000 		.4byte	0x25
 2463 0b17 1C       		.byte	0x1c
 2464 0b18 14       		.uleb128 0x14
 2465 0b19 8F060000 		.4byte	.LASF245
 2466 0b1d 0E       		.byte	0xe
 2467 0b1e 3F       		.byte	0x3f
 2468 0b1f 25000000 		.4byte	0x25
 2469 0b23 20       		.byte	0x20
 2470 0b24 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 51


 2471 0b25 1D       		.uleb128 0x1d
 2472 0b26 4C0D0000 		.4byte	.LASF246
 2473 0b2a 0801     		.2byte	0x108
 2474 0b2c 0E       		.byte	0xe
 2475 0b2d 48       		.byte	0x48
 2476 0b2e 650B0000 		.4byte	0xb65
 2477 0b32 14       		.uleb128 0x14
 2478 0b33 6F0B0000 		.4byte	.LASF247
 2479 0b37 0E       		.byte	0xe
 2480 0b38 49       		.byte	0x49
 2481 0b39 650B0000 		.4byte	0xb65
 2482 0b3d 00       		.byte	0
 2483 0b3e 14       		.uleb128 0x14
 2484 0b3f 5F060000 		.4byte	.LASF248
 2485 0b43 0E       		.byte	0xe
 2486 0b44 4A       		.byte	0x4a
 2487 0b45 650B0000 		.4byte	0xb65
 2488 0b49 80       		.byte	0x80
 2489 0b4a 15       		.uleb128 0x15
 2490 0b4b 8C010000 		.4byte	.LASF249
 2491 0b4f 0E       		.byte	0xe
 2492 0b50 4C       		.byte	0x4c
 2493 0b51 380A0000 		.4byte	0xa38
 2494 0b55 0001     		.2byte	0x100
 2495 0b57 15       		.uleb128 0x15
 2496 0b58 35160000 		.4byte	.LASF250
 2497 0b5c 0E       		.byte	0xe
 2498 0b5d 4F       		.byte	0x4f
 2499 0b5e 380A0000 		.4byte	0xa38
 2500 0b62 0401     		.2byte	0x104
 2501 0b64 00       		.byte	0
 2502 0b65 0F       		.uleb128 0xf
 2503 0b66 7B040000 		.4byte	0x47b
 2504 0b6a 750B0000 		.4byte	0xb75
 2505 0b6e 10       		.uleb128 0x10
 2506 0b6f 7D040000 		.4byte	0x47d
 2507 0b73 1F       		.byte	0x1f
 2508 0b74 00       		.byte	0
 2509 0b75 1D       		.uleb128 0x1d
 2510 0b76 28010000 		.4byte	.LASF251
 2511 0b7a 9001     		.2byte	0x190
 2512 0b7c 0E       		.byte	0xe
 2513 0b7d 5B       		.byte	0x5b
 2514 0b7e B30B0000 		.4byte	0xbb3
 2515 0b82 14       		.uleb128 0x14
 2516 0b83 E40B0000 		.4byte	.LASF231
 2517 0b87 0E       		.byte	0xe
 2518 0b88 5C       		.byte	0x5c
 2519 0b89 B30B0000 		.4byte	0xbb3
 2520 0b8d 00       		.byte	0
 2521 0b8e 14       		.uleb128 0x14
 2522 0b8f 9A010000 		.4byte	.LASF252
 2523 0b93 0E       		.byte	0xe
 2524 0b94 5D       		.byte	0x5d
 2525 0b95 25000000 		.4byte	0x25
 2526 0b99 04       		.byte	0x4
 2527 0b9a 14       		.uleb128 0x14
ARM GAS  /tmp/cc4jIqrt.s 			page 52


 2528 0b9b 6E150000 		.4byte	.LASF253
 2529 0b9f 0E       		.byte	0xe
 2530 0ba0 5F       		.byte	0x5f
 2531 0ba1 B90B0000 		.4byte	0xbb9
 2532 0ba5 08       		.byte	0x8
 2533 0ba6 14       		.uleb128 0x14
 2534 0ba7 4C0D0000 		.4byte	.LASF246
 2535 0bab 0E       		.byte	0xe
 2536 0bac 60       		.byte	0x60
 2537 0bad 250B0000 		.4byte	0xb25
 2538 0bb1 88       		.byte	0x88
 2539 0bb2 00       		.byte	0
 2540 0bb3 1C       		.uleb128 0x1c
 2541 0bb4 04       		.byte	0x4
 2542 0bb5 750B0000 		.4byte	0xb75
 2543 0bb9 0F       		.uleb128 0xf
 2544 0bba C90B0000 		.4byte	0xbc9
 2545 0bbe C90B0000 		.4byte	0xbc9
 2546 0bc2 10       		.uleb128 0x10
 2547 0bc3 7D040000 		.4byte	0x47d
 2548 0bc7 1F       		.byte	0x1f
 2549 0bc8 00       		.byte	0
 2550 0bc9 1C       		.uleb128 0x1c
 2551 0bca 04       		.byte	0x4
 2552 0bcb CF0B0000 		.4byte	0xbcf
 2553 0bcf 1E       		.uleb128 0x1e
 2554 0bd0 1A       		.uleb128 0x1a
 2555 0bd1 B4100000 		.4byte	.LASF254
 2556 0bd5 08       		.byte	0x8
 2557 0bd6 0E       		.byte	0xe
 2558 0bd7 73       		.byte	0x73
 2559 0bd8 F50B0000 		.4byte	0xbf5
 2560 0bdc 14       		.uleb128 0x14
 2561 0bdd 730D0000 		.4byte	.LASF255
 2562 0be1 0E       		.byte	0xe
 2563 0be2 74       		.byte	0x74
 2564 0be3 F50B0000 		.4byte	0xbf5
 2565 0be7 00       		.byte	0
 2566 0be8 14       		.uleb128 0x14
 2567 0be9 07070000 		.4byte	.LASF256
 2568 0bed 0E       		.byte	0xe
 2569 0bee 75       		.byte	0x75
 2570 0bef 25000000 		.4byte	0x25
 2571 0bf3 04       		.byte	0x4
 2572 0bf4 00       		.byte	0
 2573 0bf5 1C       		.uleb128 0x1c
 2574 0bf6 04       		.byte	0x4
 2575 0bf7 B1000000 		.4byte	0xb1
 2576 0bfb 1A       		.uleb128 0x1a
 2577 0bfc 46150000 		.4byte	.LASF257
 2578 0c00 68       		.byte	0x68
 2579 0c01 0E       		.byte	0xe
 2580 0c02 B3       		.byte	0xb3
 2581 0c03 250D0000 		.4byte	0xd25
 2582 0c07 1B       		.uleb128 0x1b
 2583 0c08 5F7000   		.ascii	"_p\000"
 2584 0c0b 0E       		.byte	0xe
ARM GAS  /tmp/cc4jIqrt.s 			page 53


 2585 0c0c B4       		.byte	0xb4
 2586 0c0d F50B0000 		.4byte	0xbf5
 2587 0c11 00       		.byte	0
 2588 0c12 1B       		.uleb128 0x1b
 2589 0c13 5F7200   		.ascii	"_r\000"
 2590 0c16 0E       		.byte	0xe
 2591 0c17 B5       		.byte	0xb5
 2592 0c18 25000000 		.4byte	0x25
 2593 0c1c 04       		.byte	0x4
 2594 0c1d 1B       		.uleb128 0x1b
 2595 0c1e 5F7700   		.ascii	"_w\000"
 2596 0c21 0E       		.byte	0xe
 2597 0c22 B6       		.byte	0xb6
 2598 0c23 25000000 		.4byte	0x25
 2599 0c27 08       		.byte	0x8
 2600 0c28 14       		.uleb128 0x14
 2601 0c29 19020000 		.4byte	.LASF258
 2602 0c2d 0E       		.byte	0xe
 2603 0c2e B7       		.byte	0xb7
 2604 0c2f C3000000 		.4byte	0xc3
 2605 0c33 0C       		.byte	0xc
 2606 0c34 14       		.uleb128 0x14
 2607 0c35 2D150000 		.4byte	.LASF259
 2608 0c39 0E       		.byte	0xe
 2609 0c3a B8       		.byte	0xb8
 2610 0c3b C3000000 		.4byte	0xc3
 2611 0c3f 0E       		.byte	0xe
 2612 0c40 1B       		.uleb128 0x1b
 2613 0c41 5F626600 		.ascii	"_bf\000"
 2614 0c45 0E       		.byte	0xe
 2615 0c46 B9       		.byte	0xb9
 2616 0c47 D00B0000 		.4byte	0xbd0
 2617 0c4b 10       		.byte	0x10
 2618 0c4c 14       		.uleb128 0x14
 2619 0c4d FF030000 		.4byte	.LASF260
 2620 0c51 0E       		.byte	0xe
 2621 0c52 BA       		.byte	0xba
 2622 0c53 25000000 		.4byte	0x25
 2623 0c57 18       		.byte	0x18
 2624 0c58 14       		.uleb128 0x14
 2625 0c59 010C0000 		.4byte	.LASF261
 2626 0c5d 0E       		.byte	0xe
 2627 0c5e C1       		.byte	0xc1
 2628 0c5f 7B040000 		.4byte	0x47b
 2629 0c63 1C       		.byte	0x1c
 2630 0c64 14       		.uleb128 0x14
 2631 0c65 461B0000 		.4byte	.LASF262
 2632 0c69 0E       		.byte	0xe
 2633 0c6a C3       		.byte	0xc3
 2634 0c6b D90F0000 		.4byte	0xfd9
 2635 0c6f 20       		.byte	0x20
 2636 0c70 14       		.uleb128 0x14
 2637 0c71 62070000 		.4byte	.LASF263
 2638 0c75 0E       		.byte	0xe
 2639 0c76 C5       		.byte	0xc5
 2640 0c77 03100000 		.4byte	0x1003
 2641 0c7b 24       		.byte	0x24
ARM GAS  /tmp/cc4jIqrt.s 			page 54


 2642 0c7c 14       		.uleb128 0x14
 2643 0c7d A60E0000 		.4byte	.LASF264
 2644 0c81 0E       		.byte	0xe
 2645 0c82 C8       		.byte	0xc8
 2646 0c83 27100000 		.4byte	0x1027
 2647 0c87 28       		.byte	0x28
 2648 0c88 14       		.uleb128 0x14
 2649 0c89 E1120000 		.4byte	.LASF265
 2650 0c8d 0E       		.byte	0xe
 2651 0c8e C9       		.byte	0xc9
 2652 0c8f 41100000 		.4byte	0x1041
 2653 0c93 2C       		.byte	0x2c
 2654 0c94 1B       		.uleb128 0x1b
 2655 0c95 5F756200 		.ascii	"_ub\000"
 2656 0c99 0E       		.byte	0xe
 2657 0c9a CC       		.byte	0xcc
 2658 0c9b D00B0000 		.4byte	0xbd0
 2659 0c9f 30       		.byte	0x30
 2660 0ca0 1B       		.uleb128 0x1b
 2661 0ca1 5F757000 		.ascii	"_up\000"
 2662 0ca5 0E       		.byte	0xe
 2663 0ca6 CD       		.byte	0xcd
 2664 0ca7 F50B0000 		.4byte	0xbf5
 2665 0cab 38       		.byte	0x38
 2666 0cac 1B       		.uleb128 0x1b
 2667 0cad 5F757200 		.ascii	"_ur\000"
 2668 0cb1 0E       		.byte	0xe
 2669 0cb2 CE       		.byte	0xce
 2670 0cb3 25000000 		.4byte	0x25
 2671 0cb7 3C       		.byte	0x3c
 2672 0cb8 14       		.uleb128 0x14
 2673 0cb9 AB140000 		.4byte	.LASF266
 2674 0cbd 0E       		.byte	0xe
 2675 0cbe D1       		.byte	0xd1
 2676 0cbf 47100000 		.4byte	0x1047
 2677 0cc3 40       		.byte	0x40
 2678 0cc4 14       		.uleb128 0x14
 2679 0cc5 EB020000 		.4byte	.LASF267
 2680 0cc9 0E       		.byte	0xe
 2681 0cca D2       		.byte	0xd2
 2682 0ccb 57100000 		.4byte	0x1057
 2683 0ccf 43       		.byte	0x43
 2684 0cd0 1B       		.uleb128 0x1b
 2685 0cd1 5F6C6200 		.ascii	"_lb\000"
 2686 0cd5 0E       		.byte	0xe
 2687 0cd6 D5       		.byte	0xd5
 2688 0cd7 D00B0000 		.4byte	0xbd0
 2689 0cdb 44       		.byte	0x44
 2690 0cdc 14       		.uleb128 0x14
 2691 0cdd 82140000 		.4byte	.LASF268
 2692 0ce1 0E       		.byte	0xe
 2693 0ce2 D8       		.byte	0xd8
 2694 0ce3 25000000 		.4byte	0x25
 2695 0ce7 4C       		.byte	0x4c
 2696 0ce8 14       		.uleb128 0x14
 2697 0ce9 95100000 		.4byte	.LASF269
 2698 0ced 0E       		.byte	0xe
ARM GAS  /tmp/cc4jIqrt.s 			page 55


 2699 0cee D9       		.byte	0xd9
 2700 0cef AC090000 		.4byte	0x9ac
 2701 0cf3 50       		.byte	0x50
 2702 0cf4 14       		.uleb128 0x14
 2703 0cf5 4A040000 		.4byte	.LASF270
 2704 0cf9 0E       		.byte	0xe
 2705 0cfa DC       		.byte	0xdc
 2706 0cfb 430D0000 		.4byte	0xd43
 2707 0cff 54       		.byte	0x54
 2708 0d00 14       		.uleb128 0x14
 2709 0d01 E5020000 		.4byte	.LASF271
 2710 0d05 0E       		.byte	0xe
 2711 0d06 E0       		.byte	0xe0
 2712 0d07 2D0A0000 		.4byte	0xa2d
 2713 0d0b 58       		.byte	0x58
 2714 0d0c 14       		.uleb128 0x14
 2715 0d0d 0B010000 		.4byte	.LASF272
 2716 0d11 0E       		.byte	0xe
 2717 0d12 E2       		.byte	0xe2
 2718 0d13 220A0000 		.4byte	0xa22
 2719 0d17 5C       		.byte	0x5c
 2720 0d18 14       		.uleb128 0x14
 2721 0d19 B5180000 		.4byte	.LASF273
 2722 0d1d 0E       		.byte	0xe
 2723 0d1e E3       		.byte	0xe3
 2724 0d1f 25000000 		.4byte	0x25
 2725 0d23 64       		.byte	0x64
 2726 0d24 00       		.byte	0
 2727 0d25 1F       		.uleb128 0x1f
 2728 0d26 25000000 		.4byte	0x25
 2729 0d2a 430D0000 		.4byte	0xd43
 2730 0d2e 20       		.uleb128 0x20
 2731 0d2f 430D0000 		.4byte	0xd43
 2732 0d33 20       		.uleb128 0x20
 2733 0d34 7B040000 		.4byte	0x47b
 2734 0d38 20       		.uleb128 0x20
 2735 0d39 C70F0000 		.4byte	0xfc7
 2736 0d3d 20       		.uleb128 0x20
 2737 0d3e 25000000 		.4byte	0x25
 2738 0d42 00       		.byte	0
 2739 0d43 1C       		.uleb128 0x1c
 2740 0d44 04       		.byte	0x4
 2741 0d45 4E0D0000 		.4byte	0xd4e
 2742 0d49 03       		.uleb128 0x3
 2743 0d4a 430D0000 		.4byte	0xd43
 2744 0d4e 21       		.uleb128 0x21
 2745 0d4f 99040000 		.4byte	.LASF274
 2746 0d53 2804     		.2byte	0x428
 2747 0d55 0E       		.byte	0xe
 2748 0d56 3802     		.2byte	0x238
 2749 0d58 C70F0000 		.4byte	0xfc7
 2750 0d5c 22       		.uleb128 0x22
 2751 0d5d F0       		.byte	0xf0
 2752 0d5e 0E       		.byte	0xe
 2753 0d5f 5602     		.2byte	0x256
 2754 0d61 A30E0000 		.4byte	0xea3
 2755 0d65 23       		.uleb128 0x23
ARM GAS  /tmp/cc4jIqrt.s 			page 56


 2756 0d66 D0       		.byte	0xd0
 2757 0d67 0E       		.byte	0xe
 2758 0d68 5802     		.2byte	0x258
 2759 0d6a 660E0000 		.4byte	0xe66
 2760 0d6e 08       		.uleb128 0x8
 2761 0d6f B6050000 		.4byte	.LASF275
 2762 0d73 0E       		.byte	0xe
 2763 0d74 5902     		.2byte	0x259
 2764 0d76 46000000 		.4byte	0x46
 2765 0d7a 00       		.byte	0
 2766 0d7b 08       		.uleb128 0x8
 2767 0d7c 4A0E0000 		.4byte	.LASF276
 2768 0d80 0E       		.byte	0xe
 2769 0d81 5A02     		.2byte	0x25a
 2770 0d83 C70F0000 		.4byte	0xfc7
 2771 0d87 04       		.byte	0x4
 2772 0d88 08       		.uleb128 0x8
 2773 0d89 DF100000 		.4byte	.LASF277
 2774 0d8d 0E       		.byte	0xe
 2775 0d8e 5B02     		.2byte	0x25b
 2776 0d90 F9100000 		.4byte	0x10f9
 2777 0d94 08       		.byte	0x8
 2778 0d95 08       		.uleb128 0x8
 2779 0d96 B1090000 		.4byte	.LASF278
 2780 0d9a 0E       		.byte	0xe
 2781 0d9b 5C02     		.2byte	0x25c
 2782 0d9d AC0A0000 		.4byte	0xaac
 2783 0da1 24       		.byte	0x24
 2784 0da2 08       		.uleb128 0x8
 2785 0da3 BF170000 		.4byte	.LASF279
 2786 0da7 0E       		.byte	0xe
 2787 0da8 5D02     		.2byte	0x25d
 2788 0daa 25000000 		.4byte	0x25
 2789 0dae 48       		.byte	0x48
 2790 0daf 08       		.uleb128 0x8
 2791 0db0 3C120000 		.4byte	.LASF280
 2792 0db4 0E       		.byte	0xe
 2793 0db5 5E02     		.2byte	0x25e
 2794 0db7 16010000 		.4byte	0x116
 2795 0dbb 50       		.byte	0x50
 2796 0dbc 08       		.uleb128 0x8
 2797 0dbd AF1A0000 		.4byte	.LASF281
 2798 0dc1 0E       		.byte	0xe
 2799 0dc2 5F02     		.2byte	0x25f
 2800 0dc4 B4100000 		.4byte	0x10b4
 2801 0dc8 58       		.byte	0x58
 2802 0dc9 08       		.uleb128 0x8
 2803 0dca B1140000 		.4byte	.LASF282
 2804 0dce 0E       		.byte	0xe
 2805 0dcf 6002     		.2byte	0x260
 2806 0dd1 220A0000 		.4byte	0xa22
 2807 0dd5 68       		.byte	0x68
 2808 0dd6 08       		.uleb128 0x8
 2809 0dd7 E7040000 		.4byte	.LASF283
 2810 0ddb 0E       		.byte	0xe
 2811 0ddc 6102     		.2byte	0x261
 2812 0dde 220A0000 		.4byte	0xa22
ARM GAS  /tmp/cc4jIqrt.s 			page 57


 2813 0de2 70       		.byte	0x70
 2814 0de3 08       		.uleb128 0x8
 2815 0de4 9D110000 		.4byte	.LASF284
 2816 0de8 0E       		.byte	0xe
 2817 0de9 6202     		.2byte	0x262
 2818 0deb 220A0000 		.4byte	0xa22
 2819 0def 78       		.byte	0x78
 2820 0df0 08       		.uleb128 0x8
 2821 0df1 C4100000 		.4byte	.LASF285
 2822 0df5 0E       		.byte	0xe
 2823 0df6 6302     		.2byte	0x263
 2824 0df8 09110000 		.4byte	0x1109
 2825 0dfc 80       		.byte	0x80
 2826 0dfd 08       		.uleb128 0x8
 2827 0dfe F50B0000 		.4byte	.LASF286
 2828 0e02 0E       		.byte	0xe
 2829 0e03 6402     		.2byte	0x264
 2830 0e05 19110000 		.4byte	0x1119
 2831 0e09 88       		.byte	0x88
 2832 0e0a 08       		.uleb128 0x8
 2833 0e0b EA130000 		.4byte	.LASF287
 2834 0e0f 0E       		.byte	0xe
 2835 0e10 6502     		.2byte	0x265
 2836 0e12 25000000 		.4byte	0x25
 2837 0e16 A0       		.byte	0xa0
 2838 0e17 08       		.uleb128 0x8
 2839 0e18 21120000 		.4byte	.LASF288
 2840 0e1c 0E       		.byte	0xe
 2841 0e1d 6602     		.2byte	0x266
 2842 0e1f 220A0000 		.4byte	0xa22
 2843 0e23 A4       		.byte	0xa4
 2844 0e24 08       		.uleb128 0x8
 2845 0e25 AD0A0000 		.4byte	.LASF289
 2846 0e29 0E       		.byte	0xe
 2847 0e2a 6702     		.2byte	0x267
 2848 0e2c 220A0000 		.4byte	0xa22
 2849 0e30 AC       		.byte	0xac
 2850 0e31 08       		.uleb128 0x8
 2851 0e32 E1060000 		.4byte	.LASF290
 2852 0e36 0E       		.byte	0xe
 2853 0e37 6802     		.2byte	0x268
 2854 0e39 220A0000 		.4byte	0xa22
 2855 0e3d B4       		.byte	0xb4
 2856 0e3e 08       		.uleb128 0x8
 2857 0e3f F8160000 		.4byte	.LASF291
 2858 0e43 0E       		.byte	0xe
 2859 0e44 6902     		.2byte	0x269
 2860 0e46 220A0000 		.4byte	0xa22
 2861 0e4a BC       		.byte	0xbc
 2862 0e4b 08       		.uleb128 0x8
 2863 0e4c 3B110000 		.4byte	.LASF292
 2864 0e50 0E       		.byte	0xe
 2865 0e51 6A02     		.2byte	0x26a
 2866 0e53 220A0000 		.4byte	0xa22
 2867 0e57 C4       		.byte	0xc4
 2868 0e58 08       		.uleb128 0x8
 2869 0e59 91150000 		.4byte	.LASF293
ARM GAS  /tmp/cc4jIqrt.s 			page 58


 2870 0e5d 0E       		.byte	0xe
 2871 0e5e 6B02     		.2byte	0x26b
 2872 0e60 25000000 		.4byte	0x25
 2873 0e64 CC       		.byte	0xcc
 2874 0e65 00       		.byte	0
 2875 0e66 23       		.uleb128 0x23
 2876 0e67 F0       		.byte	0xf0
 2877 0e68 0E       		.byte	0xe
 2878 0e69 7102     		.2byte	0x271
 2879 0e6b 8A0E0000 		.4byte	0xe8a
 2880 0e6f 08       		.uleb128 0x8
 2881 0e70 2F120000 		.4byte	.LASF294
 2882 0e74 0E       		.byte	0xe
 2883 0e75 7302     		.2byte	0x273
 2884 0e77 29110000 		.4byte	0x1129
 2885 0e7b 00       		.byte	0
 2886 0e7c 08       		.uleb128 0x8
 2887 0e7d B6080000 		.4byte	.LASF295
 2888 0e81 0E       		.byte	0xe
 2889 0e82 7402     		.2byte	0x274
 2890 0e84 39110000 		.4byte	0x1139
 2891 0e88 78       		.byte	0x78
 2892 0e89 00       		.byte	0
 2893 0e8a 24       		.uleb128 0x24
 2894 0e8b 99040000 		.4byte	.LASF274
 2895 0e8f 0E       		.byte	0xe
 2896 0e90 6C02     		.2byte	0x26c
 2897 0e92 650D0000 		.4byte	0xd65
 2898 0e96 24       		.uleb128 0x24
 2899 0e97 F1020000 		.4byte	.LASF296
 2900 0e9b 0E       		.byte	0xe
 2901 0e9c 7502     		.2byte	0x275
 2902 0e9e 660E0000 		.4byte	0xe66
 2903 0ea2 00       		.byte	0
 2904 0ea3 08       		.uleb128 0x8
 2905 0ea4 390B0000 		.4byte	.LASF297
 2906 0ea8 0E       		.byte	0xe
 2907 0ea9 3A02     		.2byte	0x23a
 2908 0eab 25000000 		.4byte	0x25
 2909 0eaf 00       		.byte	0
 2910 0eb0 08       		.uleb128 0x8
 2911 0eb1 AF080000 		.4byte	.LASF298
 2912 0eb5 0E       		.byte	0xe
 2913 0eb6 3F02     		.2byte	0x23f
 2914 0eb8 AE100000 		.4byte	0x10ae
 2915 0ebc 04       		.byte	0x4
 2916 0ebd 08       		.uleb128 0x8
 2917 0ebe 8D000000 		.4byte	.LASF299
 2918 0ec2 0E       		.byte	0xe
 2919 0ec3 3F02     		.2byte	0x23f
 2920 0ec5 AE100000 		.4byte	0x10ae
 2921 0ec9 08       		.byte	0x8
 2922 0eca 08       		.uleb128 0x8
 2923 0ecb 3A060000 		.4byte	.LASF300
 2924 0ecf 0E       		.byte	0xe
 2925 0ed0 3F02     		.2byte	0x23f
 2926 0ed2 AE100000 		.4byte	0x10ae
ARM GAS  /tmp/cc4jIqrt.s 			page 59


 2927 0ed6 0C       		.byte	0xc
 2928 0ed7 08       		.uleb128 0x8
 2929 0ed8 95010000 		.4byte	.LASF301
 2930 0edc 0E       		.byte	0xe
 2931 0edd 4102     		.2byte	0x241
 2932 0edf 25000000 		.4byte	0x25
 2933 0ee3 10       		.byte	0x10
 2934 0ee4 08       		.uleb128 0x8
 2935 0ee5 0C120000 		.4byte	.LASF302
 2936 0ee9 0E       		.byte	0xe
 2937 0eea 4202     		.2byte	0x242
 2938 0eec 49110000 		.4byte	0x1149
 2939 0ef0 14       		.byte	0x14
 2940 0ef1 08       		.uleb128 0x8
 2941 0ef2 E6170000 		.4byte	.LASF303
 2942 0ef6 0E       		.byte	0xe
 2943 0ef7 4402     		.2byte	0x244
 2944 0ef9 25000000 		.4byte	0x25
 2945 0efd 30       		.byte	0x30
 2946 0efe 08       		.uleb128 0x8
 2947 0eff 7B030000 		.4byte	.LASF304
 2948 0f03 0E       		.byte	0xe
 2949 0f04 4502     		.2byte	0x245
 2950 0f06 FD0F0000 		.4byte	0xffd
 2951 0f0a 34       		.byte	0x34
 2952 0f0b 08       		.uleb128 0x8
 2953 0f0c 4C180000 		.4byte	.LASF305
 2954 0f10 0E       		.byte	0xe
 2955 0f11 4702     		.2byte	0x247
 2956 0f13 25000000 		.4byte	0x25
 2957 0f17 38       		.byte	0x38
 2958 0f18 08       		.uleb128 0x8
 2959 0f19 DB140000 		.4byte	.LASF306
 2960 0f1d 0E       		.byte	0xe
 2961 0f1e 4902     		.2byte	0x249
 2962 0f20 64110000 		.4byte	0x1164
 2963 0f24 3C       		.byte	0x3c
 2964 0f25 08       		.uleb128 0x8
 2965 0f26 42060000 		.4byte	.LASF307
 2966 0f2a 0E       		.byte	0xe
 2967 0f2b 4C02     		.2byte	0x24c
 2968 0f2d 960A0000 		.4byte	0xa96
 2969 0f31 40       		.byte	0x40
 2970 0f32 08       		.uleb128 0x8
 2971 0f33 30060000 		.4byte	.LASF308
 2972 0f37 0E       		.byte	0xe
 2973 0f38 4D02     		.2byte	0x24d
 2974 0f3a 25000000 		.4byte	0x25
 2975 0f3e 44       		.byte	0x44
 2976 0f3f 08       		.uleb128 0x8
 2977 0f40 5A160000 		.4byte	.LASF309
 2978 0f44 0E       		.byte	0xe
 2979 0f45 4E02     		.2byte	0x24e
 2980 0f47 960A0000 		.4byte	0xa96
 2981 0f4b 48       		.byte	0x48
 2982 0f4c 08       		.uleb128 0x8
 2983 0f4d 63100000 		.4byte	.LASF310
ARM GAS  /tmp/cc4jIqrt.s 			page 60


 2984 0f51 0E       		.byte	0xe
 2985 0f52 4F02     		.2byte	0x24f
 2986 0f54 6A110000 		.4byte	0x116a
 2987 0f58 4C       		.byte	0x4c
 2988 0f59 08       		.uleb128 0x8
 2989 0f5a 3F020000 		.4byte	.LASF311
 2990 0f5e 0E       		.byte	0xe
 2991 0f5f 5202     		.2byte	0x252
 2992 0f61 25000000 		.4byte	0x25
 2993 0f65 50       		.byte	0x50
 2994 0f66 08       		.uleb128 0x8
 2995 0f67 620A0000 		.4byte	.LASF312
 2996 0f6b 0E       		.byte	0xe
 2997 0f6c 5302     		.2byte	0x253
 2998 0f6e C70F0000 		.4byte	0xfc7
 2999 0f72 54       		.byte	0x54
 3000 0f73 08       		.uleb128 0x8
 3001 0f74 060B0000 		.4byte	.LASF313
 3002 0f78 0E       		.byte	0xe
 3003 0f79 7602     		.2byte	0x276
 3004 0f7b 5C0D0000 		.4byte	0xd5c
 3005 0f7f 58       		.byte	0x58
 3006 0f80 25       		.uleb128 0x25
 3007 0f81 28010000 		.4byte	.LASF251
 3008 0f85 0E       		.byte	0xe
 3009 0f86 7A02     		.2byte	0x27a
 3010 0f88 B30B0000 		.4byte	0xbb3
 3011 0f8c 4801     		.2byte	0x148
 3012 0f8e 25       		.uleb128 0x25
 3013 0f8f D8130000 		.4byte	.LASF314
 3014 0f93 0E       		.byte	0xe
 3015 0f94 7B02     		.2byte	0x27b
 3016 0f96 750B0000 		.4byte	0xb75
 3017 0f9a 4C01     		.2byte	0x14c
 3018 0f9c 25       		.uleb128 0x25
 3019 0f9d 65020000 		.4byte	.LASF315
 3020 0fa1 0E       		.byte	0xe
 3021 0fa2 7F02     		.2byte	0x27f
 3022 0fa4 7B110000 		.4byte	0x117b
 3023 0fa8 DC02     		.2byte	0x2dc
 3024 0faa 25       		.uleb128 0x25
 3025 0fab BE140000 		.4byte	.LASF316
 3026 0faf 0E       		.byte	0xe
 3027 0fb0 8402     		.2byte	0x284
 3028 0fb2 73100000 		.4byte	0x1073
 3029 0fb6 E002     		.2byte	0x2e0
 3030 0fb8 25       		.uleb128 0x25
 3031 0fb9 C6040000 		.4byte	.LASF317
 3032 0fbd 0E       		.byte	0xe
 3033 0fbe 8502     		.2byte	0x285
 3034 0fc0 87110000 		.4byte	0x1187
 3035 0fc4 EC02     		.2byte	0x2ec
 3036 0fc6 00       		.byte	0
 3037 0fc7 1C       		.uleb128 0x1c
 3038 0fc8 04       		.byte	0x4
 3039 0fc9 CD0F0000 		.4byte	0xfcd
 3040 0fcd 06       		.uleb128 0x6
ARM GAS  /tmp/cc4jIqrt.s 			page 61


 3041 0fce 01       		.byte	0x1
 3042 0fcf 08       		.byte	0x8
 3043 0fd0 FB120000 		.4byte	.LASF318
 3044 0fd4 03       		.uleb128 0x3
 3045 0fd5 CD0F0000 		.4byte	0xfcd
 3046 0fd9 1C       		.uleb128 0x1c
 3047 0fda 04       		.byte	0x4
 3048 0fdb 250D0000 		.4byte	0xd25
 3049 0fdf 1F       		.uleb128 0x1f
 3050 0fe0 25000000 		.4byte	0x25
 3051 0fe4 FD0F0000 		.4byte	0xffd
 3052 0fe8 20       		.uleb128 0x20
 3053 0fe9 430D0000 		.4byte	0xd43
 3054 0fed 20       		.uleb128 0x20
 3055 0fee 7B040000 		.4byte	0x47b
 3056 0ff2 20       		.uleb128 0x20
 3057 0ff3 FD0F0000 		.4byte	0xffd
 3058 0ff7 20       		.uleb128 0x20
 3059 0ff8 25000000 		.4byte	0x25
 3060 0ffc 00       		.byte	0
 3061 0ffd 1C       		.uleb128 0x1c
 3062 0ffe 04       		.byte	0x4
 3063 0fff D40F0000 		.4byte	0xfd4
 3064 1003 1C       		.uleb128 0x1c
 3065 1004 04       		.byte	0x4
 3066 1005 DF0F0000 		.4byte	0xfdf
 3067 1009 1F       		.uleb128 0x1f
 3068 100a B7090000 		.4byte	0x9b7
 3069 100e 27100000 		.4byte	0x1027
 3070 1012 20       		.uleb128 0x20
 3071 1013 430D0000 		.4byte	0xd43
 3072 1017 20       		.uleb128 0x20
 3073 1018 7B040000 		.4byte	0x47b
 3074 101c 20       		.uleb128 0x20
 3075 101d B7090000 		.4byte	0x9b7
 3076 1021 20       		.uleb128 0x20
 3077 1022 25000000 		.4byte	0x25
 3078 1026 00       		.byte	0
 3079 1027 1C       		.uleb128 0x1c
 3080 1028 04       		.byte	0x4
 3081 1029 09100000 		.4byte	0x1009
 3082 102d 1F       		.uleb128 0x1f
 3083 102e 25000000 		.4byte	0x25
 3084 1032 41100000 		.4byte	0x1041
 3085 1036 20       		.uleb128 0x20
 3086 1037 430D0000 		.4byte	0xd43
 3087 103b 20       		.uleb128 0x20
 3088 103c 7B040000 		.4byte	0x47b
 3089 1040 00       		.byte	0
 3090 1041 1C       		.uleb128 0x1c
 3091 1042 04       		.byte	0x4
 3092 1043 2D100000 		.4byte	0x102d
 3093 1047 0F       		.uleb128 0xf
 3094 1048 B1000000 		.4byte	0xb1
 3095 104c 57100000 		.4byte	0x1057
 3096 1050 10       		.uleb128 0x10
 3097 1051 7D040000 		.4byte	0x47d
ARM GAS  /tmp/cc4jIqrt.s 			page 62


 3098 1055 02       		.byte	0x2
 3099 1056 00       		.byte	0
 3100 1057 0F       		.uleb128 0xf
 3101 1058 B1000000 		.4byte	0xb1
 3102 105c 67100000 		.4byte	0x1067
 3103 1060 10       		.uleb128 0x10
 3104 1061 7D040000 		.4byte	0x47d
 3105 1065 00       		.byte	0
 3106 1066 00       		.byte	0
 3107 1067 09       		.uleb128 0x9
 3108 1068 99190000 		.4byte	.LASF319
 3109 106c 0E       		.byte	0xe
 3110 106d 1D01     		.2byte	0x11d
 3111 106f FB0B0000 		.4byte	0xbfb
 3112 1073 26       		.uleb128 0x26
 3113 1074 16130000 		.4byte	.LASF320
 3114 1078 0C       		.byte	0xc
 3115 1079 0E       		.byte	0xe
 3116 107a 2101     		.2byte	0x121
 3117 107c A8100000 		.4byte	0x10a8
 3118 1080 08       		.uleb128 0x8
 3119 1081 E40B0000 		.4byte	.LASF231
 3120 1085 0E       		.byte	0xe
 3121 1086 2301     		.2byte	0x123
 3122 1088 A8100000 		.4byte	0x10a8
 3123 108c 00       		.byte	0
 3124 108d 08       		.uleb128 0x8
 3125 108e 1E0B0000 		.4byte	.LASF321
 3126 1092 0E       		.byte	0xe
 3127 1093 2401     		.2byte	0x124
 3128 1095 25000000 		.4byte	0x25
 3129 1099 04       		.byte	0x4
 3130 109a 08       		.uleb128 0x8
 3131 109b 06120000 		.4byte	.LASF322
 3132 109f 0E       		.byte	0xe
 3133 10a0 2501     		.2byte	0x125
 3134 10a2 AE100000 		.4byte	0x10ae
 3135 10a6 08       		.byte	0x8
 3136 10a7 00       		.byte	0
 3137 10a8 1C       		.uleb128 0x1c
 3138 10a9 04       		.byte	0x4
 3139 10aa 73100000 		.4byte	0x1073
 3140 10ae 1C       		.uleb128 0x1c
 3141 10af 04       		.byte	0x4
 3142 10b0 67100000 		.4byte	0x1067
 3143 10b4 26       		.uleb128 0x26
 3144 10b5 4C1B0000 		.4byte	.LASF323
 3145 10b9 0E       		.byte	0xe
 3146 10ba 0E       		.byte	0xe
 3147 10bb 3D01     		.2byte	0x13d
 3148 10bd E9100000 		.4byte	0x10e9
 3149 10c1 08       		.uleb128 0x8
 3150 10c2 8A0E0000 		.4byte	.LASF324
 3151 10c6 0E       		.byte	0xe
 3152 10c7 3E01     		.2byte	0x13e
 3153 10c9 E9100000 		.4byte	0x10e9
 3154 10cd 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 63


 3155 10ce 08       		.uleb128 0x8
 3156 10cf 2E080000 		.4byte	.LASF325
 3157 10d3 0E       		.byte	0xe
 3158 10d4 3F01     		.2byte	0x13f
 3159 10d6 E9100000 		.4byte	0x10e9
 3160 10da 06       		.byte	0x6
 3161 10db 08       		.uleb128 0x8
 3162 10dc C8030000 		.4byte	.LASF326
 3163 10e0 0E       		.byte	0xe
 3164 10e1 4001     		.2byte	0x140
 3165 10e3 D5000000 		.4byte	0xd5
 3166 10e7 0C       		.byte	0xc
 3167 10e8 00       		.byte	0
 3168 10e9 0F       		.uleb128 0xf
 3169 10ea D5000000 		.4byte	0xd5
 3170 10ee F9100000 		.4byte	0x10f9
 3171 10f2 10       		.uleb128 0x10
 3172 10f3 7D040000 		.4byte	0x47d
 3173 10f7 02       		.byte	0x2
 3174 10f8 00       		.byte	0
 3175 10f9 0F       		.uleb128 0xf
 3176 10fa CD0F0000 		.4byte	0xfcd
 3177 10fe 09110000 		.4byte	0x1109
 3178 1102 10       		.uleb128 0x10
 3179 1103 7D040000 		.4byte	0x47d
 3180 1107 19       		.byte	0x19
 3181 1108 00       		.byte	0
 3182 1109 0F       		.uleb128 0xf
 3183 110a CD0F0000 		.4byte	0xfcd
 3184 110e 19110000 		.4byte	0x1119
 3185 1112 10       		.uleb128 0x10
 3186 1113 7D040000 		.4byte	0x47d
 3187 1117 07       		.byte	0x7
 3188 1118 00       		.byte	0
 3189 1119 0F       		.uleb128 0xf
 3190 111a CD0F0000 		.4byte	0xfcd
 3191 111e 29110000 		.4byte	0x1129
 3192 1122 10       		.uleb128 0x10
 3193 1123 7D040000 		.4byte	0x47d
 3194 1127 17       		.byte	0x17
 3195 1128 00       		.byte	0
 3196 1129 0F       		.uleb128 0xf
 3197 112a F50B0000 		.4byte	0xbf5
 3198 112e 39110000 		.4byte	0x1139
 3199 1132 10       		.uleb128 0x10
 3200 1133 7D040000 		.4byte	0x47d
 3201 1137 1D       		.byte	0x1d
 3202 1138 00       		.byte	0
 3203 1139 0F       		.uleb128 0xf
 3204 113a 46000000 		.4byte	0x46
 3205 113e 49110000 		.4byte	0x1149
 3206 1142 10       		.uleb128 0x10
 3207 1143 7D040000 		.4byte	0x47d
 3208 1147 1D       		.byte	0x1d
 3209 1148 00       		.byte	0
 3210 1149 0F       		.uleb128 0xf
 3211 114a CD0F0000 		.4byte	0xfcd
ARM GAS  /tmp/cc4jIqrt.s 			page 64


 3212 114e 59110000 		.4byte	0x1159
 3213 1152 10       		.uleb128 0x10
 3214 1153 7D040000 		.4byte	0x47d
 3215 1157 18       		.byte	0x18
 3216 1158 00       		.byte	0
 3217 1159 27       		.uleb128 0x27
 3218 115a 64110000 		.4byte	0x1164
 3219 115e 20       		.uleb128 0x20
 3220 115f 430D0000 		.4byte	0xd43
 3221 1163 00       		.byte	0
 3222 1164 1C       		.uleb128 0x1c
 3223 1165 04       		.byte	0x4
 3224 1166 59110000 		.4byte	0x1159
 3225 116a 1C       		.uleb128 0x1c
 3226 116b 04       		.byte	0x4
 3227 116c 960A0000 		.4byte	0xa96
 3228 1170 27       		.uleb128 0x27
 3229 1171 7B110000 		.4byte	0x117b
 3230 1175 20       		.uleb128 0x20
 3231 1176 25000000 		.4byte	0x25
 3232 117a 00       		.byte	0
 3233 117b 1C       		.uleb128 0x1c
 3234 117c 04       		.byte	0x4
 3235 117d 81110000 		.4byte	0x1181
 3236 1181 1C       		.uleb128 0x1c
 3237 1182 04       		.byte	0x4
 3238 1183 70110000 		.4byte	0x1170
 3239 1187 0F       		.uleb128 0xf
 3240 1188 67100000 		.4byte	0x1067
 3241 118c 97110000 		.4byte	0x1197
 3242 1190 10       		.uleb128 0x10
 3243 1191 7D040000 		.4byte	0x47d
 3244 1195 02       		.byte	0x2
 3245 1196 00       		.byte	0
 3246 1197 11       		.uleb128 0x11
 3247 1198 76140000 		.4byte	.LASF327
 3248 119c 0E       		.byte	0xe
 3249 119d FD02     		.2byte	0x2fd
 3250 119f 430D0000 		.4byte	0xd43
 3251 11a3 11       		.uleb128 0x11
 3252 11a4 F8170000 		.4byte	.LASF328
 3253 11a8 0E       		.byte	0xe
 3254 11a9 FE02     		.2byte	0x2fe
 3255 11ab 490D0000 		.4byte	0xd49
 3256 11af 28       		.uleb128 0x28
 3257 11b0 73746400 		.ascii	"std\000"
 3258 11b4 2D       		.byte	0x2d
 3259 11b5 00       		.byte	0
 3260 11b6 B6130000 		.4byte	0x13b6
 3261 11ba 29       		.uleb128 0x29
 3262 11bb DC1A0000 		.4byte	.LASF331
 3263 11bf 13       		.byte	0x13
 3264 11c0 DF       		.byte	0xdf
 3265 11c1 2A       		.uleb128 0x2a
 3266 11c2 13       		.byte	0x13
 3267 11c3 DF       		.byte	0xdf
 3268 11c4 BA110000 		.4byte	0x11ba
ARM GAS  /tmp/cc4jIqrt.s 			page 65


 3269 11c8 2B       		.uleb128 0x2b
 3270 11c9 0F       		.byte	0xf
 3271 11ca 7C       		.byte	0x7c
 3272 11cb 40140000 		.4byte	0x1440
 3273 11cf 2B       		.uleb128 0x2b
 3274 11d0 0F       		.byte	0xf
 3275 11d1 7D       		.byte	0x7d
 3276 11d2 70140000 		.4byte	0x1470
 3277 11d6 2B       		.uleb128 0x2b
 3278 11d7 0F       		.byte	0xf
 3279 11d8 81       		.byte	0x81
 3280 11d9 E2140000 		.4byte	0x14e2
 3281 11dd 2B       		.uleb128 0x2b
 3282 11de 0F       		.byte	0xf
 3283 11df 87       		.byte	0x87
 3284 11e0 F7140000 		.4byte	0x14f7
 3285 11e4 2B       		.uleb128 0x2b
 3286 11e5 0F       		.byte	0xf
 3287 11e6 88       		.byte	0x88
 3288 11e7 13150000 		.4byte	0x1513
 3289 11eb 2B       		.uleb128 0x2b
 3290 11ec 0F       		.byte	0xf
 3291 11ed 89       		.byte	0x89
 3292 11ee 28150000 		.4byte	0x1528
 3293 11f2 2B       		.uleb128 0x2b
 3294 11f3 0F       		.byte	0xf
 3295 11f4 8A       		.byte	0x8a
 3296 11f5 3D150000 		.4byte	0x153d
 3297 11f9 2B       		.uleb128 0x2b
 3298 11fa 0F       		.byte	0xf
 3299 11fb 8C       		.byte	0x8c
 3300 11fc 66150000 		.4byte	0x1566
 3301 1200 2B       		.uleb128 0x2b
 3302 1201 0F       		.byte	0xf
 3303 1202 8F       		.byte	0x8f
 3304 1203 80150000 		.4byte	0x1580
 3305 1207 2B       		.uleb128 0x2b
 3306 1208 0F       		.byte	0xf
 3307 1209 91       		.byte	0x91
 3308 120a 95150000 		.4byte	0x1595
 3309 120e 2B       		.uleb128 0x2b
 3310 120f 0F       		.byte	0xf
 3311 1210 94       		.byte	0x94
 3312 1211 AF150000 		.4byte	0x15af
 3313 1215 2B       		.uleb128 0x2b
 3314 1216 0F       		.byte	0xf
 3315 1217 95       		.byte	0x95
 3316 1218 C9150000 		.4byte	0x15c9
 3317 121c 2B       		.uleb128 0x2b
 3318 121d 0F       		.byte	0xf
 3319 121e 96       		.byte	0x96
 3320 121f FA150000 		.4byte	0x15fa
 3321 1223 2B       		.uleb128 0x2b
 3322 1224 0F       		.byte	0xf
 3323 1225 98       		.byte	0x98
 3324 1226 19160000 		.4byte	0x1619
 3325 122a 2B       		.uleb128 0x2b
ARM GAS  /tmp/cc4jIqrt.s 			page 66


 3326 122b 0F       		.byte	0xf
 3327 122c 9E       		.byte	0x9e
 3328 122d 39160000 		.4byte	0x1639
 3329 1231 2B       		.uleb128 0x2b
 3330 1232 0F       		.byte	0xf
 3331 1233 A0       		.byte	0xa0
 3332 1234 44160000 		.4byte	0x1644
 3333 1238 2B       		.uleb128 0x2b
 3334 1239 0F       		.byte	0xf
 3335 123a A1       		.byte	0xa1
 3336 123b 55160000 		.4byte	0x1655
 3337 123f 2B       		.uleb128 0x2b
 3338 1240 0F       		.byte	0xf
 3339 1241 A2       		.byte	0xa2
 3340 1242 75160000 		.4byte	0x1675
 3341 1246 2B       		.uleb128 0x2b
 3342 1247 0F       		.byte	0xf
 3343 1248 A3       		.byte	0xa3
 3344 1249 94160000 		.4byte	0x1694
 3345 124d 2B       		.uleb128 0x2b
 3346 124e 0F       		.byte	0xf
 3347 124f A4       		.byte	0xa4
 3348 1250 B3160000 		.4byte	0x16b3
 3349 1254 2B       		.uleb128 0x2b
 3350 1255 0F       		.byte	0xf
 3351 1256 A6       		.byte	0xa6
 3352 1257 C8160000 		.4byte	0x16c8
 3353 125b 2B       		.uleb128 0x2b
 3354 125c 0F       		.byte	0xf
 3355 125d A7       		.byte	0xa7
 3356 125e ED160000 		.4byte	0x16ed
 3357 1262 2C       		.uleb128 0x2c
 3358 1263 0F       		.byte	0xf
 3359 1264 0401     		.2byte	0x104
 3360 1266 A0140000 		.4byte	0x14a0
 3361 126a 2C       		.uleb128 0x2c
 3362 126b 0F       		.byte	0xf
 3363 126c 0901     		.2byte	0x109
 3364 126e 00140000 		.4byte	0x1400
 3365 1272 2C       		.uleb128 0x2c
 3366 1273 0F       		.byte	0xf
 3367 1274 0A01     		.2byte	0x10a
 3368 1276 07170000 		.4byte	0x1707
 3369 127a 2C       		.uleb128 0x2c
 3370 127b 0F       		.byte	0xf
 3371 127c 0C01     		.2byte	0x10c
 3372 127e 21170000 		.4byte	0x1721
 3373 1282 2C       		.uleb128 0x2c
 3374 1283 0F       		.byte	0xf
 3375 1284 0D01     		.2byte	0x10d
 3376 1286 74170000 		.4byte	0x1774
 3377 128a 2C       		.uleb128 0x2c
 3378 128b 0F       		.byte	0xf
 3379 128c 0E01     		.2byte	0x10e
 3380 128e 36170000 		.4byte	0x1736
 3381 1292 2C       		.uleb128 0x2c
 3382 1293 0F       		.byte	0xf
ARM GAS  /tmp/cc4jIqrt.s 			page 67


 3383 1294 0F01     		.2byte	0x10f
 3384 1296 55170000 		.4byte	0x1755
 3385 129a 2C       		.uleb128 0x2c
 3386 129b 0F       		.byte	0xf
 3387 129c 1001     		.2byte	0x110
 3388 129e 95170000 		.4byte	0x1795
 3389 12a2 2D       		.uleb128 0x2d
 3390 12a3 61627300 		.ascii	"abs\000"
 3391 12a7 0F       		.byte	0xf
 3392 12a8 B4       		.byte	0xb4
 3393 12a9 9A060000 		.4byte	.LASF611
 3394 12ad 75000000 		.4byte	0x75
 3395 12b1 BB120000 		.4byte	0x12bb
 3396 12b5 20       		.uleb128 0x20
 3397 12b6 75000000 		.4byte	0x75
 3398 12ba 00       		.byte	0
 3399 12bb 2C       		.uleb128 0x2c
 3400 12bc 10       		.byte	0x10
 3401 12bd 4D04     		.2byte	0x44d
 3402 12bf A1180000 		.4byte	0x18a1
 3403 12c3 2C       		.uleb128 0x2c
 3404 12c4 10       		.byte	0x10
 3405 12c5 4E04     		.2byte	0x44e
 3406 12c7 96180000 		.4byte	0x1896
 3407 12cb 2E       		.uleb128 0x2e
 3408 12cc 44080000 		.4byte	.LASF329
 3409 12d0 10       		.byte	0x10
 3410 12d1 9301     		.2byte	0x193
 3411 12d3 D9170000 		.4byte	.LASF612
 3412 12d7 7C000000 		.4byte	0x7c
 3413 12db EA120000 		.4byte	0x12ea
 3414 12df 20       		.uleb128 0x20
 3415 12e0 7C000000 		.4byte	0x7c
 3416 12e4 20       		.uleb128 0x20
 3417 12e5 E2180000 		.4byte	0x18e2
 3418 12e9 00       		.byte	0
 3419 12ea 2B       		.uleb128 0x2b
 3420 12eb 11       		.byte	0x11
 3421 12ec 30       		.byte	0x30
 3422 12ed 8B010000 		.4byte	0x18b
 3423 12f1 2B       		.uleb128 0x2b
 3424 12f2 11       		.byte	0x11
 3425 12f3 31       		.byte	0x31
 3426 12f4 AB010000 		.4byte	0x1ab
 3427 12f8 2B       		.uleb128 0x2b
 3428 12f9 11       		.byte	0x11
 3429 12fa 32       		.byte	0x32
 3430 12fb C1010000 		.4byte	0x1c1
 3431 12ff 2B       		.uleb128 0x2b
 3432 1300 11       		.byte	0x11
 3433 1301 33       		.byte	0x33
 3434 1302 E6010000 		.4byte	0x1e6
 3435 1306 2B       		.uleb128 0x2b
 3436 1307 11       		.byte	0x11
 3437 1308 35       		.byte	0x35
 3438 1309 6A020000 		.4byte	0x26a
 3439 130d 2B       		.uleb128 0x2b
ARM GAS  /tmp/cc4jIqrt.s 			page 68


 3440 130e 11       		.byte	0x11
 3441 130f 36       		.byte	0x36
 3442 1310 80020000 		.4byte	0x280
 3443 1314 2B       		.uleb128 0x2b
 3444 1315 11       		.byte	0x11
 3445 1316 37       		.byte	0x37
 3446 1317 96020000 		.4byte	0x296
 3447 131b 2B       		.uleb128 0x2b
 3448 131c 11       		.byte	0x11
 3449 131d 38       		.byte	0x38
 3450 131e AC020000 		.4byte	0x2ac
 3451 1322 2B       		.uleb128 0x2b
 3452 1323 11       		.byte	0x11
 3453 1324 3A       		.byte	0x3a
 3454 1325 12020000 		.4byte	0x212
 3455 1329 2B       		.uleb128 0x2b
 3456 132a 11       		.byte	0x11
 3457 132b 3B       		.byte	0x3b
 3458 132c 28020000 		.4byte	0x228
 3459 1330 2B       		.uleb128 0x2b
 3460 1331 11       		.byte	0x11
 3461 1332 3C       		.byte	0x3c
 3462 1333 3E020000 		.4byte	0x23e
 3463 1337 2B       		.uleb128 0x2b
 3464 1338 11       		.byte	0x11
 3465 1339 3D       		.byte	0x3d
 3466 133a 54020000 		.4byte	0x254
 3467 133e 2B       		.uleb128 0x2b
 3468 133f 11       		.byte	0x11
 3469 1340 3F       		.byte	0x3f
 3470 1341 C2020000 		.4byte	0x2c2
 3471 1345 2B       		.uleb128 0x2b
 3472 1346 11       		.byte	0x11
 3473 1347 40       		.byte	0x40
 3474 1348 FC010000 		.4byte	0x1fc
 3475 134c 2B       		.uleb128 0x2b
 3476 134d 11       		.byte	0x11
 3477 134e 42       		.byte	0x42
 3478 134f 96010000 		.4byte	0x196
 3479 1353 2B       		.uleb128 0x2b
 3480 1354 11       		.byte	0x11
 3481 1355 43       		.byte	0x43
 3482 1356 B6010000 		.4byte	0x1b6
 3483 135a 2B       		.uleb128 0x2b
 3484 135b 11       		.byte	0x11
 3485 135c 44       		.byte	0x44
 3486 135d D1010000 		.4byte	0x1d1
 3487 1361 2B       		.uleb128 0x2b
 3488 1362 11       		.byte	0x11
 3489 1363 45       		.byte	0x45
 3490 1364 F1010000 		.4byte	0x1f1
 3491 1368 2B       		.uleb128 0x2b
 3492 1369 11       		.byte	0x11
 3493 136a 47       		.byte	0x47
 3494 136b 75020000 		.4byte	0x275
 3495 136f 2B       		.uleb128 0x2b
 3496 1370 11       		.byte	0x11
ARM GAS  /tmp/cc4jIqrt.s 			page 69


 3497 1371 48       		.byte	0x48
 3498 1372 8B020000 		.4byte	0x28b
 3499 1376 2B       		.uleb128 0x2b
 3500 1377 11       		.byte	0x11
 3501 1378 49       		.byte	0x49
 3502 1379 A1020000 		.4byte	0x2a1
 3503 137d 2B       		.uleb128 0x2b
 3504 137e 11       		.byte	0x11
 3505 137f 4A       		.byte	0x4a
 3506 1380 B7020000 		.4byte	0x2b7
 3507 1384 2B       		.uleb128 0x2b
 3508 1385 11       		.byte	0x11
 3509 1386 4C       		.byte	0x4c
 3510 1387 1D020000 		.4byte	0x21d
 3511 138b 2B       		.uleb128 0x2b
 3512 138c 11       		.byte	0x11
 3513 138d 4D       		.byte	0x4d
 3514 138e 33020000 		.4byte	0x233
 3515 1392 2B       		.uleb128 0x2b
 3516 1393 11       		.byte	0x11
 3517 1394 4E       		.byte	0x4e
 3518 1395 49020000 		.4byte	0x249
 3519 1399 2B       		.uleb128 0x2b
 3520 139a 11       		.byte	0x11
 3521 139b 4F       		.byte	0x4f
 3522 139c 5F020000 		.4byte	0x25f
 3523 13a0 2B       		.uleb128 0x2b
 3524 13a1 11       		.byte	0x11
 3525 13a2 51       		.byte	0x51
 3526 13a3 CD020000 		.4byte	0x2cd
 3527 13a7 2B       		.uleb128 0x2b
 3528 13a8 11       		.byte	0x11
 3529 13a9 52       		.byte	0x52
 3530 13aa 07020000 		.4byte	0x207
 3531 13ae 2B       		.uleb128 0x2b
 3532 13af 12       		.byte	0x12
 3533 13b0 38       		.byte	0x38
 3534 13b1 83000000 		.4byte	0x83
 3535 13b5 00       		.byte	0
 3536 13b6 2F       		.uleb128 0x2f
 3537 13b7 FF040000 		.4byte	.LASF330
 3538 13bb 13       		.byte	0x13
 3539 13bc E1       		.byte	0xe1
 3540 13bd 1B140000 		.4byte	0x141b
 3541 13c1 29       		.uleb128 0x29
 3542 13c2 DC1A0000 		.4byte	.LASF331
 3543 13c6 13       		.byte	0x13
 3544 13c7 E3       		.byte	0xe3
 3545 13c8 2A       		.uleb128 0x2a
 3546 13c9 13       		.byte	0x13
 3547 13ca E3       		.byte	0xe3
 3548 13cb C1130000 		.4byte	0x13c1
 3549 13cf 2B       		.uleb128 0x2b
 3550 13d0 0F       		.byte	0xf
 3551 13d1 DC       		.byte	0xdc
 3552 13d2 A0140000 		.4byte	0x14a0
 3553 13d6 2B       		.uleb128 0x2b
ARM GAS  /tmp/cc4jIqrt.s 			page 70


 3554 13d7 0F       		.byte	0xf
 3555 13d8 EC       		.byte	0xec
 3556 13d9 07170000 		.4byte	0x1707
 3557 13dd 2B       		.uleb128 0x2b
 3558 13de 0F       		.byte	0xf
 3559 13df F7       		.byte	0xf7
 3560 13e0 21170000 		.4byte	0x1721
 3561 13e4 2B       		.uleb128 0x2b
 3562 13e5 0F       		.byte	0xf
 3563 13e6 F8       		.byte	0xf8
 3564 13e7 36170000 		.4byte	0x1736
 3565 13eb 2B       		.uleb128 0x2b
 3566 13ec 0F       		.byte	0xf
 3567 13ed F9       		.byte	0xf9
 3568 13ee 55170000 		.4byte	0x1755
 3569 13f2 2B       		.uleb128 0x2b
 3570 13f3 0F       		.byte	0xf
 3571 13f4 FB       		.byte	0xfb
 3572 13f5 74170000 		.4byte	0x1774
 3573 13f9 2B       		.uleb128 0x2b
 3574 13fa 0F       		.byte	0xf
 3575 13fb FC       		.byte	0xfc
 3576 13fc 95170000 		.4byte	0x1795
 3577 1400 30       		.uleb128 0x30
 3578 1401 64697600 		.ascii	"div\000"
 3579 1405 0F       		.byte	0xf
 3580 1406 E9       		.byte	0xe9
 3581 1407 41190000 		.4byte	.LASF613
 3582 140b A0140000 		.4byte	0x14a0
 3583 140f 20       		.uleb128 0x20
 3584 1410 75000000 		.4byte	0x75
 3585 1414 20       		.uleb128 0x20
 3586 1415 75000000 		.4byte	0x75
 3587 1419 00       		.byte	0
 3588 141a 00       		.byte	0
 3589 141b 17       		.uleb128 0x17
 3590 141c 08       		.byte	0x8
 3591 141d 14       		.byte	0x14
 3592 141e 20       		.byte	0x20
 3593 141f 35170000 		.4byte	.LASF332
 3594 1423 40140000 		.4byte	0x1440
 3595 1427 14       		.uleb128 0x14
 3596 1428 D9090000 		.4byte	.LASF333
 3597 142c 14       		.byte	0x14
 3598 142d 21       		.byte	0x21
 3599 142e 25000000 		.4byte	0x25
 3600 1432 00       		.byte	0
 3601 1433 1B       		.uleb128 0x1b
 3602 1434 72656D00 		.ascii	"rem\000"
 3603 1438 14       		.byte	0x14
 3604 1439 22       		.byte	0x22
 3605 143a 25000000 		.4byte	0x25
 3606 143e 04       		.byte	0x4
 3607 143f 00       		.byte	0
 3608 1440 04       		.uleb128 0x4
 3609 1441 3C170000 		.4byte	.LASF334
 3610 1445 14       		.byte	0x14
ARM GAS  /tmp/cc4jIqrt.s 			page 71


 3611 1446 23       		.byte	0x23
 3612 1447 1B140000 		.4byte	0x141b
 3613 144b 17       		.uleb128 0x17
 3614 144c 08       		.byte	0x8
 3615 144d 14       		.byte	0x14
 3616 144e 26       		.byte	0x26
 3617 144f 08040000 		.4byte	.LASF335
 3618 1453 70140000 		.4byte	0x1470
 3619 1457 14       		.uleb128 0x14
 3620 1458 D9090000 		.4byte	.LASF333
 3621 145c 14       		.byte	0x14
 3622 145d 27       		.byte	0x27
 3623 145e E7000000 		.4byte	0xe7
 3624 1462 00       		.byte	0
 3625 1463 1B       		.uleb128 0x1b
 3626 1464 72656D00 		.ascii	"rem\000"
 3627 1468 14       		.byte	0x14
 3628 1469 28       		.byte	0x28
 3629 146a E7000000 		.4byte	0xe7
 3630 146e 04       		.byte	0x4
 3631 146f 00       		.byte	0
 3632 1470 04       		.uleb128 0x4
 3633 1471 B90C0000 		.4byte	.LASF336
 3634 1475 14       		.byte	0x14
 3635 1476 29       		.byte	0x29
 3636 1477 4B140000 		.4byte	0x144b
 3637 147b 17       		.uleb128 0x17
 3638 147c 10       		.byte	0x10
 3639 147d 14       		.byte	0x14
 3640 147e 2D       		.byte	0x2d
 3641 147f D8000000 		.4byte	.LASF337
 3642 1483 A0140000 		.4byte	0x14a0
 3643 1487 14       		.uleb128 0x14
 3644 1488 D9090000 		.4byte	.LASF333
 3645 148c 14       		.byte	0x14
 3646 148d 2E       		.byte	0x2e
 3647 148e 75000000 		.4byte	0x75
 3648 1492 00       		.byte	0
 3649 1493 1B       		.uleb128 0x1b
 3650 1494 72656D00 		.ascii	"rem\000"
 3651 1498 14       		.byte	0x14
 3652 1499 2F       		.byte	0x2f
 3653 149a 75000000 		.4byte	0x75
 3654 149e 08       		.byte	0x8
 3655 149f 00       		.byte	0
 3656 14a0 04       		.uleb128 0x4
 3657 14a1 DA0A0000 		.4byte	.LASF338
 3658 14a5 14       		.byte	0x14
 3659 14a6 30       		.byte	0x30
 3660 14a7 7B140000 		.4byte	0x147b
 3661 14ab 04       		.uleb128 0x4
 3662 14ac B1170000 		.4byte	.LASF339
 3663 14b0 14       		.byte	0x14
 3664 14b1 35       		.byte	0x35
 3665 14b2 B6140000 		.4byte	0x14b6
 3666 14b6 1C       		.uleb128 0x1c
 3667 14b7 04       		.byte	0x4
ARM GAS  /tmp/cc4jIqrt.s 			page 72


 3668 14b8 BC140000 		.4byte	0x14bc
 3669 14bc 1F       		.uleb128 0x1f
 3670 14bd 25000000 		.4byte	0x25
 3671 14c1 D0140000 		.4byte	0x14d0
 3672 14c5 20       		.uleb128 0x20
 3673 14c6 D0140000 		.4byte	0x14d0
 3674 14ca 20       		.uleb128 0x20
 3675 14cb D0140000 		.4byte	0x14d0
 3676 14cf 00       		.byte	0
 3677 14d0 1C       		.uleb128 0x1c
 3678 14d1 04       		.byte	0x4
 3679 14d2 D6140000 		.4byte	0x14d6
 3680 14d6 31       		.uleb128 0x31
 3681 14d7 12       		.uleb128 0x12
 3682 14d8 97120000 		.4byte	.LASF340
 3683 14dc 14       		.byte	0x14
 3684 14dd 5F       		.byte	0x5f
 3685 14de C70F0000 		.4byte	0xfc7
 3686 14e2 32       		.uleb128 0x32
 3687 14e3 49080000 		.4byte	.LASF341
 3688 14e7 14       		.byte	0x14
 3689 14e8 48       		.byte	0x48
 3690 14e9 25000000 		.4byte	0x25
 3691 14ed F7140000 		.4byte	0x14f7
 3692 14f1 20       		.uleb128 0x20
 3693 14f2 C90B0000 		.4byte	0xbc9
 3694 14f6 00       		.byte	0
 3695 14f7 32       		.uleb128 0x32
 3696 14f8 5D030000 		.4byte	.LASF342
 3697 14fc 14       		.byte	0x14
 3698 14fd 49       		.byte	0x49
 3699 14fe 0C150000 		.4byte	0x150c
 3700 1502 0C150000 		.4byte	0x150c
 3701 1506 20       		.uleb128 0x20
 3702 1507 FD0F0000 		.4byte	0xffd
 3703 150b 00       		.byte	0
 3704 150c 06       		.uleb128 0x6
 3705 150d 08       		.byte	0x8
 3706 150e 04       		.byte	0x4
 3707 150f 67150000 		.4byte	.LASF343
 3708 1513 32       		.uleb128 0x32
 3709 1514 62030000 		.4byte	.LASF344
 3710 1518 14       		.byte	0x14
 3711 1519 4D       		.byte	0x4d
 3712 151a 25000000 		.4byte	0x25
 3713 151e 28150000 		.4byte	0x1528
 3714 1522 20       		.uleb128 0x20
 3715 1523 FD0F0000 		.4byte	0xffd
 3716 1527 00       		.byte	0
 3717 1528 32       		.uleb128 0x32
 3718 1529 76030000 		.4byte	.LASF345
 3719 152d 14       		.byte	0x14
 3720 152e 4F       		.byte	0x4f
 3721 152f E7000000 		.4byte	0xe7
 3722 1533 3D150000 		.4byte	0x153d
 3723 1537 20       		.uleb128 0x20
 3724 1538 FD0F0000 		.4byte	0xffd
ARM GAS  /tmp/cc4jIqrt.s 			page 73


 3725 153c 00       		.byte	0
 3726 153d 32       		.uleb128 0x32
 3727 153e 30140000 		.4byte	.LASF346
 3728 1542 14       		.byte	0x14
 3729 1543 51       		.byte	0x51
 3730 1544 7B040000 		.4byte	0x47b
 3731 1548 66150000 		.4byte	0x1566
 3732 154c 20       		.uleb128 0x20
 3733 154d D0140000 		.4byte	0x14d0
 3734 1551 20       		.uleb128 0x20
 3735 1552 D0140000 		.4byte	0x14d0
 3736 1556 20       		.uleb128 0x20
 3737 1557 31000000 		.4byte	0x31
 3738 155b 20       		.uleb128 0x20
 3739 155c 31000000 		.4byte	0x31
 3740 1560 20       		.uleb128 0x20
 3741 1561 AB140000 		.4byte	0x14ab
 3742 1565 00       		.byte	0
 3743 1566 33       		.uleb128 0x33
 3744 1567 64697600 		.ascii	"div\000"
 3745 156b 14       		.byte	0x14
 3746 156c 57       		.byte	0x57
 3747 156d 40140000 		.4byte	0x1440
 3748 1571 80150000 		.4byte	0x1580
 3749 1575 20       		.uleb128 0x20
 3750 1576 25000000 		.4byte	0x25
 3751 157a 20       		.uleb128 0x20
 3752 157b 25000000 		.4byte	0x25
 3753 157f 00       		.byte	0
 3754 1580 32       		.uleb128 0x32
 3755 1581 45180000 		.4byte	.LASF347
 3756 1585 14       		.byte	0x14
 3757 1586 5A       		.byte	0x5a
 3758 1587 C70F0000 		.4byte	0xfc7
 3759 158b 95150000 		.4byte	0x1595
 3760 158f 20       		.uleb128 0x20
 3761 1590 FD0F0000 		.4byte	0xffd
 3762 1594 00       		.byte	0
 3763 1595 32       		.uleb128 0x32
 3764 1596 41150000 		.4byte	.LASF348
 3765 159a 14       		.byte	0x14
 3766 159b 63       		.byte	0x63
 3767 159c 70140000 		.4byte	0x1470
 3768 15a0 AF150000 		.4byte	0x15af
 3769 15a4 20       		.uleb128 0x20
 3770 15a5 E7000000 		.4byte	0xe7
 3771 15a9 20       		.uleb128 0x20
 3772 15aa E7000000 		.4byte	0xe7
 3773 15ae 00       		.byte	0
 3774 15af 32       		.uleb128 0x32
 3775 15b0 E90A0000 		.4byte	.LASF349
 3776 15b4 14       		.byte	0x14
 3777 15b5 65       		.byte	0x65
 3778 15b6 25000000 		.4byte	0x25
 3779 15ba C9150000 		.4byte	0x15c9
 3780 15be 20       		.uleb128 0x20
 3781 15bf FD0F0000 		.4byte	0xffd
ARM GAS  /tmp/cc4jIqrt.s 			page 74


 3782 15c3 20       		.uleb128 0x20
 3783 15c4 31000000 		.4byte	0x31
 3784 15c8 00       		.byte	0
 3785 15c9 32       		.uleb128 0x32
 3786 15ca BB100000 		.4byte	.LASF350
 3787 15ce 14       		.byte	0x14
 3788 15cf 6B       		.byte	0x6b
 3789 15d0 31000000 		.4byte	0x31
 3790 15d4 E8150000 		.4byte	0x15e8
 3791 15d8 20       		.uleb128 0x20
 3792 15d9 E8150000 		.4byte	0x15e8
 3793 15dd 20       		.uleb128 0x20
 3794 15de FD0F0000 		.4byte	0xffd
 3795 15e2 20       		.uleb128 0x20
 3796 15e3 31000000 		.4byte	0x31
 3797 15e7 00       		.byte	0
 3798 15e8 1C       		.uleb128 0x1c
 3799 15e9 04       		.byte	0x4
 3800 15ea EE150000 		.4byte	0x15ee
 3801 15ee 06       		.uleb128 0x6
 3802 15ef 04       		.byte	0x4
 3803 15f0 07       		.byte	0x7
 3804 15f1 8D100000 		.4byte	.LASF351
 3805 15f5 03       		.uleb128 0x3
 3806 15f6 EE150000 		.4byte	0x15ee
 3807 15fa 32       		.uleb128 0x32
 3808 15fb 63170000 		.4byte	.LASF352
 3809 15ff 14       		.byte	0x14
 3810 1600 67       		.byte	0x67
 3811 1601 25000000 		.4byte	0x25
 3812 1605 19160000 		.4byte	0x1619
 3813 1609 20       		.uleb128 0x20
 3814 160a E8150000 		.4byte	0x15e8
 3815 160e 20       		.uleb128 0x20
 3816 160f FD0F0000 		.4byte	0xffd
 3817 1613 20       		.uleb128 0x20
 3818 1614 31000000 		.4byte	0x31
 3819 1618 00       		.byte	0
 3820 1619 34       		.uleb128 0x34
 3821 161a 00160000 		.4byte	.LASF353
 3822 161e 14       		.byte	0x14
 3823 161f 87       		.byte	0x87
 3824 1620 39160000 		.4byte	0x1639
 3825 1624 20       		.uleb128 0x20
 3826 1625 7B040000 		.4byte	0x47b
 3827 1629 20       		.uleb128 0x20
 3828 162a 31000000 		.4byte	0x31
 3829 162e 20       		.uleb128 0x20
 3830 162f 31000000 		.4byte	0x31
 3831 1633 20       		.uleb128 0x20
 3832 1634 AB140000 		.4byte	0x14ab
 3833 1638 00       		.byte	0
 3834 1639 35       		.uleb128 0x35
 3835 163a 71180000 		.4byte	.LASF614
 3836 163e 14       		.byte	0x14
 3837 163f 88       		.byte	0x88
 3838 1640 25000000 		.4byte	0x25
ARM GAS  /tmp/cc4jIqrt.s 			page 75


 3839 1644 34       		.uleb128 0x34
 3840 1645 1C0E0000 		.4byte	.LASF354
 3841 1649 14       		.byte	0x14
 3842 164a 93       		.byte	0x93
 3843 164b 55160000 		.4byte	0x1655
 3844 164f 20       		.uleb128 0x20
 3845 1650 46000000 		.4byte	0x46
 3846 1654 00       		.byte	0
 3847 1655 32       		.uleb128 0x32
 3848 1656 69120000 		.4byte	.LASF355
 3849 165a 14       		.byte	0x14
 3850 165b 94       		.byte	0x94
 3851 165c 0C150000 		.4byte	0x150c
 3852 1660 6F160000 		.4byte	0x166f
 3853 1664 20       		.uleb128 0x20
 3854 1665 FD0F0000 		.4byte	0xffd
 3855 1669 20       		.uleb128 0x20
 3856 166a 6F160000 		.4byte	0x166f
 3857 166e 00       		.byte	0
 3858 166f 1C       		.uleb128 0x1c
 3859 1670 04       		.byte	0x4
 3860 1671 C70F0000 		.4byte	0xfc7
 3861 1675 32       		.uleb128 0x32
 3862 1676 7A120000 		.4byte	.LASF356
 3863 167a 14       		.byte	0x14
 3864 167b 9F       		.byte	0x9f
 3865 167c E7000000 		.4byte	0xe7
 3866 1680 94160000 		.4byte	0x1694
 3867 1684 20       		.uleb128 0x20
 3868 1685 FD0F0000 		.4byte	0xffd
 3869 1689 20       		.uleb128 0x20
 3870 168a 6F160000 		.4byte	0x166f
 3871 168e 20       		.uleb128 0x20
 3872 168f 25000000 		.4byte	0x25
 3873 1693 00       		.byte	0
 3874 1694 32       		.uleb128 0x32
 3875 1695 A10C0000 		.4byte	.LASF357
 3876 1699 14       		.byte	0x14
 3877 169a A1       		.byte	0xa1
 3878 169b F9000000 		.4byte	0xf9
 3879 169f B3160000 		.4byte	0x16b3
 3880 16a3 20       		.uleb128 0x20
 3881 16a4 FD0F0000 		.4byte	0xffd
 3882 16a8 20       		.uleb128 0x20
 3883 16a9 6F160000 		.4byte	0x166f
 3884 16ad 20       		.uleb128 0x20
 3885 16ae 25000000 		.4byte	0x25
 3886 16b2 00       		.byte	0
 3887 16b3 32       		.uleb128 0x32
 3888 16b4 ED0E0000 		.4byte	.LASF358
 3889 16b8 14       		.byte	0x14
 3890 16b9 A4       		.byte	0xa4
 3891 16ba 25000000 		.4byte	0x25
 3892 16be C8160000 		.4byte	0x16c8
 3893 16c2 20       		.uleb128 0x20
 3894 16c3 FD0F0000 		.4byte	0xffd
 3895 16c7 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 76


 3896 16c8 32       		.uleb128 0x32
 3897 16c9 360D0000 		.4byte	.LASF359
 3898 16cd 14       		.byte	0x14
 3899 16ce 6D       		.byte	0x6d
 3900 16cf 31000000 		.4byte	0x31
 3901 16d3 E7160000 		.4byte	0x16e7
 3902 16d7 20       		.uleb128 0x20
 3903 16d8 C70F0000 		.4byte	0xfc7
 3904 16dc 20       		.uleb128 0x20
 3905 16dd E7160000 		.4byte	0x16e7
 3906 16e1 20       		.uleb128 0x20
 3907 16e2 31000000 		.4byte	0x31
 3908 16e6 00       		.byte	0
 3909 16e7 1C       		.uleb128 0x1c
 3910 16e8 04       		.byte	0x4
 3911 16e9 F5150000 		.4byte	0x15f5
 3912 16ed 32       		.uleb128 0x32
 3913 16ee 34040000 		.4byte	.LASF360
 3914 16f2 14       		.byte	0x14
 3915 16f3 69       		.byte	0x69
 3916 16f4 25000000 		.4byte	0x25
 3917 16f8 07170000 		.4byte	0x1707
 3918 16fc 20       		.uleb128 0x20
 3919 16fd C70F0000 		.4byte	0xfc7
 3920 1701 20       		.uleb128 0x20
 3921 1702 EE150000 		.4byte	0x15ee
 3922 1706 00       		.byte	0
 3923 1707 32       		.uleb128 0x32
 3924 1708 7B050000 		.4byte	.LASF361
 3925 170c 14       		.byte	0x14
 3926 170d F1       		.byte	0xf1
 3927 170e A0140000 		.4byte	0x14a0
 3928 1712 21170000 		.4byte	0x1721
 3929 1716 20       		.uleb128 0x20
 3930 1717 75000000 		.4byte	0x75
 3931 171b 20       		.uleb128 0x20
 3932 171c 75000000 		.4byte	0x75
 3933 1720 00       		.byte	0
 3934 1721 32       		.uleb128 0x32
 3935 1722 01140000 		.4byte	.LASF362
 3936 1726 14       		.byte	0x14
 3937 1727 EC       		.byte	0xec
 3938 1728 75000000 		.4byte	0x75
 3939 172c 36170000 		.4byte	0x1736
 3940 1730 20       		.uleb128 0x20
 3941 1731 FD0F0000 		.4byte	0xffd
 3942 1735 00       		.byte	0
 3943 1736 32       		.uleb128 0x32
 3944 1737 3C080000 		.4byte	.LASF363
 3945 173b 14       		.byte	0x14
 3946 173c F2       		.byte	0xf2
 3947 173d 75000000 		.4byte	0x75
 3948 1741 55170000 		.4byte	0x1755
 3949 1745 20       		.uleb128 0x20
 3950 1746 FD0F0000 		.4byte	0xffd
 3951 174a 20       		.uleb128 0x20
 3952 174b 6F160000 		.4byte	0x166f
ARM GAS  /tmp/cc4jIqrt.s 			page 77


 3953 174f 20       		.uleb128 0x20
 3954 1750 25000000 		.4byte	0x25
 3955 1754 00       		.byte	0
 3956 1755 32       		.uleb128 0x32
 3957 1756 C5190000 		.4byte	.LASF364
 3958 175a 14       		.byte	0x14
 3959 175b F6       		.byte	0xf6
 3960 175c 16010000 		.4byte	0x116
 3961 1760 74170000 		.4byte	0x1774
 3962 1764 20       		.uleb128 0x20
 3963 1765 FD0F0000 		.4byte	0xffd
 3964 1769 20       		.uleb128 0x20
 3965 176a 6F160000 		.4byte	0x166f
 3966 176e 20       		.uleb128 0x20
 3967 176f 25000000 		.4byte	0x25
 3968 1773 00       		.byte	0
 3969 1774 32       		.uleb128 0x32
 3970 1775 50020000 		.4byte	.LASF365
 3971 1779 14       		.byte	0x14
 3972 177a 97       		.byte	0x97
 3973 177b 8E170000 		.4byte	0x178e
 3974 177f 8E170000 		.4byte	0x178e
 3975 1783 20       		.uleb128 0x20
 3976 1784 FD0F0000 		.4byte	0xffd
 3977 1788 20       		.uleb128 0x20
 3978 1789 6F160000 		.4byte	0x166f
 3979 178d 00       		.byte	0
 3980 178e 06       		.uleb128 0x6
 3981 178f 04       		.byte	0x4
 3982 1790 04       		.byte	0x4
 3983 1791 F7060000 		.4byte	.LASF366
 3984 1795 36       		.uleb128 0x36
 3985 1796 26080000 		.4byte	.LASF367
 3986 179a 14       		.byte	0x14
 3987 179b 2801     		.2byte	0x128
 3988 179d 7C000000 		.4byte	0x7c
 3989 17a1 B0170000 		.4byte	0x17b0
 3990 17a5 20       		.uleb128 0x20
 3991 17a6 FD0F0000 		.4byte	0xffd
 3992 17aa 20       		.uleb128 0x20
 3993 17ab 6F160000 		.4byte	0x166f
 3994 17af 00       		.byte	0
 3995 17b0 2B       		.uleb128 0x2b
 3996 17b1 15       		.byte	0x15
 3997 17b2 27       		.byte	0x27
 3998 17b3 E2140000 		.4byte	0x14e2
 3999 17b7 2B       		.uleb128 0x2b
 4000 17b8 15       		.byte	0x15
 4001 17b9 33       		.byte	0x33
 4002 17ba 40140000 		.4byte	0x1440
 4003 17be 2B       		.uleb128 0x2b
 4004 17bf 15       		.byte	0x15
 4005 17c0 34       		.byte	0x34
 4006 17c1 70140000 		.4byte	0x1470
 4007 17c5 2B       		.uleb128 0x2b
 4008 17c6 15       		.byte	0x15
 4009 17c7 36       		.byte	0x36
ARM GAS  /tmp/cc4jIqrt.s 			page 78


 4010 17c8 A2120000 		.4byte	0x12a2
 4011 17cc 2B       		.uleb128 0x2b
 4012 17cd 15       		.byte	0x15
 4013 17ce 37       		.byte	0x37
 4014 17cf F7140000 		.4byte	0x14f7
 4015 17d3 2B       		.uleb128 0x2b
 4016 17d4 15       		.byte	0x15
 4017 17d5 38       		.byte	0x38
 4018 17d6 13150000 		.4byte	0x1513
 4019 17da 2B       		.uleb128 0x2b
 4020 17db 15       		.byte	0x15
 4021 17dc 39       		.byte	0x39
 4022 17dd 28150000 		.4byte	0x1528
 4023 17e1 2B       		.uleb128 0x2b
 4024 17e2 15       		.byte	0x15
 4025 17e3 3A       		.byte	0x3a
 4026 17e4 3D150000 		.4byte	0x153d
 4027 17e8 2B       		.uleb128 0x2b
 4028 17e9 15       		.byte	0x15
 4029 17ea 3C       		.byte	0x3c
 4030 17eb 00140000 		.4byte	0x1400
 4031 17ef 2B       		.uleb128 0x2b
 4032 17f0 15       		.byte	0x15
 4033 17f1 3E       		.byte	0x3e
 4034 17f2 80150000 		.4byte	0x1580
 4035 17f6 2B       		.uleb128 0x2b
 4036 17f7 15       		.byte	0x15
 4037 17f8 40       		.byte	0x40
 4038 17f9 95150000 		.4byte	0x1595
 4039 17fd 2B       		.uleb128 0x2b
 4040 17fe 15       		.byte	0x15
 4041 17ff 43       		.byte	0x43
 4042 1800 AF150000 		.4byte	0x15af
 4043 1804 2B       		.uleb128 0x2b
 4044 1805 15       		.byte	0x15
 4045 1806 44       		.byte	0x44
 4046 1807 C9150000 		.4byte	0x15c9
 4047 180b 2B       		.uleb128 0x2b
 4048 180c 15       		.byte	0x15
 4049 180d 45       		.byte	0x45
 4050 180e FA150000 		.4byte	0x15fa
 4051 1812 2B       		.uleb128 0x2b
 4052 1813 15       		.byte	0x15
 4053 1814 47       		.byte	0x47
 4054 1815 19160000 		.4byte	0x1619
 4055 1819 2B       		.uleb128 0x2b
 4056 181a 15       		.byte	0x15
 4057 181b 48       		.byte	0x48
 4058 181c 39160000 		.4byte	0x1639
 4059 1820 2B       		.uleb128 0x2b
 4060 1821 15       		.byte	0x15
 4061 1822 4A       		.byte	0x4a
 4062 1823 44160000 		.4byte	0x1644
 4063 1827 2B       		.uleb128 0x2b
 4064 1828 15       		.byte	0x15
 4065 1829 4B       		.byte	0x4b
 4066 182a 55160000 		.4byte	0x1655
ARM GAS  /tmp/cc4jIqrt.s 			page 79


 4067 182e 2B       		.uleb128 0x2b
 4068 182f 15       		.byte	0x15
 4069 1830 4C       		.byte	0x4c
 4070 1831 75160000 		.4byte	0x1675
 4071 1835 2B       		.uleb128 0x2b
 4072 1836 15       		.byte	0x15
 4073 1837 4D       		.byte	0x4d
 4074 1838 94160000 		.4byte	0x1694
 4075 183c 2B       		.uleb128 0x2b
 4076 183d 15       		.byte	0x15
 4077 183e 4E       		.byte	0x4e
 4078 183f B3160000 		.4byte	0x16b3
 4079 1843 2B       		.uleb128 0x2b
 4080 1844 15       		.byte	0x15
 4081 1845 50       		.byte	0x50
 4082 1846 C8160000 		.4byte	0x16c8
 4083 184a 2B       		.uleb128 0x2b
 4084 184b 15       		.byte	0x15
 4085 184c 51       		.byte	0x51
 4086 184d ED160000 		.4byte	0x16ed
 4087 1851 12       		.uleb128 0x12
 4088 1852 C9080000 		.4byte	.LASF368
 4089 1856 16       		.byte	0x16
 4090 1857 8F       		.byte	0x8f
 4091 1858 63180000 		.4byte	0x1863
 4092 185c 06       		.uleb128 0x6
 4093 185d 01       		.byte	0x1
 4094 185e 02       		.byte	0x2
 4095 185f DC120000 		.4byte	.LASF369
 4096 1863 05       		.uleb128 0x5
 4097 1864 5C180000 		.4byte	0x185c
 4098 1868 37       		.uleb128 0x37
 4099 1869 63040000 		.4byte	.LASF370
 4100 186d 16       		.byte	0x16
 4101 186e 94       		.byte	0x94
 4102 186f DC010000 		.4byte	0x1dc
 4103 1873 05       		.uleb128 0x5
 4104 1874 03       		.byte	0x3
 4105 1875 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 4106 1879 37       		.uleb128 0x37
 4107 187a 5D190000 		.4byte	.LASF371
 4108 187e 16       		.byte	0x16
 4109 187f 95       		.byte	0x95
 4110 1880 63180000 		.4byte	0x1863
 4111 1884 05       		.uleb128 0x5
 4112 1885 03       		.byte	0x3
 4113 1886 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 4114 188a 09       		.uleb128 0x9
 4115 188b AD100000 		.4byte	.LASF372
 4116 188f 17       		.byte	0x17
 4117 1890 0401     		.2byte	0x104
 4118 1892 B6010000 		.4byte	0x1b6
 4119 1896 04       		.uleb128 0x4
 4120 1897 20020000 		.4byte	.LASF373
 4121 189b 18       		.byte	0x18
 4122 189c AD       		.byte	0xad
 4123 189d 8E170000 		.4byte	0x178e
ARM GAS  /tmp/cc4jIqrt.s 			page 80


 4124 18a1 04       		.uleb128 0x4
 4125 18a2 14060000 		.4byte	.LASF374
 4126 18a6 18       		.byte	0x18
 4127 18a7 AE       		.byte	0xae
 4128 18a8 0C150000 		.4byte	0x150c
 4129 18ac 38       		.uleb128 0x38
 4130 18ad 67110000 		.4byte	.LASF376
 4131 18b1 01       		.byte	0x1
 4132 18b2 9F000000 		.4byte	0x9f
 4133 18b6 18       		.byte	0x18
 4134 18b7 9902     		.2byte	0x299
 4135 18b9 D6180000 		.4byte	0x18d6
 4136 18bd 0C       		.uleb128 0xc
 4137 18be 500F0000 		.4byte	.LASF377
 4138 18c2 7F       		.sleb128 -1
 4139 18c3 0D       		.uleb128 0xd
 4140 18c4 57020000 		.4byte	.LASF378
 4141 18c8 00       		.byte	0
 4142 18c9 0D       		.uleb128 0xd
 4143 18ca A4000000 		.4byte	.LASF379
 4144 18ce 01       		.byte	0x1
 4145 18cf 0D       		.uleb128 0xd
 4146 18d0 57180000 		.4byte	.LASF380
 4147 18d4 02       		.byte	0x2
 4148 18d5 00       		.byte	0
 4149 18d6 11       		.uleb128 0x11
 4150 18d7 A4060000 		.4byte	.LASF381
 4151 18db 18       		.byte	0x18
 4152 18dc A402     		.2byte	0x2a4
 4153 18de AC180000 		.4byte	0x18ac
 4154 18e2 1C       		.uleb128 0x1c
 4155 18e3 04       		.byte	0x4
 4156 18e4 7C000000 		.4byte	0x7c
 4157 18e8 2B       		.uleb128 0x2b
 4158 18e9 1A       		.byte	0x1a
 4159 18ea 36       		.byte	0x36
 4160 18eb CB120000 		.4byte	0x12cb
 4161 18ef 0B       		.uleb128 0xb
 4162 18f0 8F190000 		.4byte	.LASF382
 4163 18f4 04       		.byte	0x4
 4164 18f5 46000000 		.4byte	0x46
 4165 18f9 1B       		.byte	0x1b
 4166 18fa 50       		.byte	0x50
 4167 18fb 45190000 		.4byte	0x1945
 4168 18ff 0D       		.uleb128 0xd
 4169 1900 F80C0000 		.4byte	.LASF383
 4170 1904 00       		.byte	0
 4171 1905 39       		.uleb128 0x39
 4172 1906 1C0D0000 		.4byte	.LASF384
 4173 190a 00000008 		.4byte	0x8000000
 4174 190e 39       		.uleb128 0x39
 4175 190f 290D0000 		.4byte	.LASF385
 4176 1913 00000010 		.4byte	0x10000000
 4177 1917 39       		.uleb128 0x39
 4178 1918 69140000 		.4byte	.LASF386
 4179 191c 00000018 		.4byte	0x18000000
 4180 1920 39       		.uleb128 0x39
ARM GAS  /tmp/cc4jIqrt.s 			page 81


 4181 1921 3F0D0000 		.4byte	.LASF387
 4182 1925 00000020 		.4byte	0x20000000
 4183 1929 39       		.uleb128 0x39
 4184 192a 95070000 		.4byte	.LASF388
 4185 192e 00000028 		.4byte	0x28000000
 4186 1932 39       		.uleb128 0x39
 4187 1933 C00C0000 		.4byte	.LASF389
 4188 1937 00000030 		.4byte	0x30000000
 4189 193b 39       		.uleb128 0x39
 4190 193c CD0C0000 		.4byte	.LASF390
 4191 1940 00000038 		.4byte	0x38000000
 4192 1944 00       		.byte	0
 4193 1945 04       		.uleb128 0x4
 4194 1946 35100000 		.4byte	.LASF391
 4195 194a 1B       		.byte	0x1b
 4196 194b 5B       		.byte	0x5b
 4197 194c EF180000 		.4byte	0x18ef
 4198 1950 16       		.uleb128 0x16
 4199 1951 50696E00 		.ascii	"Pin\000"
 4200 1955 1C       		.byte	0x1c
 4201 1956 38       		.byte	0x38
 4202 1957 96010000 		.4byte	0x196
 4203 195b 03       		.uleb128 0x3
 4204 195c 50190000 		.4byte	0x1950
 4205 1960 3A       		.uleb128 0x3a
 4206 1961 59080000 		.4byte	.LASF392
 4207 1965 1C       		.byte	0x1c
 4208 1966 39       		.byte	0x39
 4209 1967 5B190000 		.4byte	0x195b
 4210 196b 7F       		.sleb128 -1
 4211 196c 0B       		.uleb128 0xb
 4212 196d F3090000 		.4byte	.LASF393
 4213 1971 01       		.byte	0x1
 4214 1972 9F000000 		.4byte	0x9f
 4215 1976 1C       		.byte	0x1c
 4216 1977 4E       		.byte	0x4e
 4217 1978 B3190000 		.4byte	0x19b3
 4218 197c 0C       		.uleb128 0xc
 4219 197d B6120000 		.4byte	.LASF394
 4220 1981 7F       		.sleb128 -1
 4221 1982 0D       		.uleb128 0xd
 4222 1983 200C0000 		.4byte	.LASF395
 4223 1987 00       		.byte	0
 4224 1988 0D       		.uleb128 0xd
 4225 1989 280C0000 		.4byte	.LASF396
 4226 198d 01       		.byte	0x1
 4227 198e 0D       		.uleb128 0xd
 4228 198f 300C0000 		.4byte	.LASF397
 4229 1993 02       		.byte	0x2
 4230 1994 0D       		.uleb128 0xd
 4231 1995 380C0000 		.4byte	.LASF398
 4232 1999 03       		.byte	0x3
 4233 199a 0D       		.uleb128 0xd
 4234 199b 400C0000 		.4byte	.LASF399
 4235 199f 04       		.byte	0x4
 4236 19a0 0D       		.uleb128 0xd
 4237 19a1 480C0000 		.4byte	.LASF400
ARM GAS  /tmp/cc4jIqrt.s 			page 82


 4238 19a5 05       		.byte	0x5
 4239 19a6 0D       		.uleb128 0xd
 4240 19a7 500C0000 		.4byte	.LASF401
 4241 19ab 06       		.byte	0x6
 4242 19ac 0D       		.uleb128 0xd
 4243 19ad 580C0000 		.4byte	.LASF402
 4244 19b1 07       		.byte	0x7
 4245 19b2 00       		.byte	0
 4246 19b3 04       		.uleb128 0x4
 4247 19b4 AE190000 		.4byte	.LASF403
 4248 19b8 1C       		.byte	0x1c
 4249 19b9 59       		.byte	0x59
 4250 19ba 6C190000 		.4byte	0x196c
 4251 19be 0B       		.uleb128 0xb
 4252 19bf 89070000 		.4byte	.LASF404
 4253 19c3 01       		.byte	0x1
 4254 19c4 9F000000 		.4byte	0x9f
 4255 19c8 1C       		.byte	0x1c
 4256 19c9 5C       		.byte	0x5c
 4257 19ca 411A0000 		.4byte	0x1a41
 4258 19ce 0C       		.uleb128 0xc
 4259 19cf 240A0000 		.4byte	.LASF405
 4260 19d3 7F       		.sleb128 -1
 4261 19d4 0D       		.uleb128 0xd
 4262 19d5 02030000 		.4byte	.LASF406
 4263 19d9 00       		.byte	0
 4264 19da 0D       		.uleb128 0xd
 4265 19db 8B030000 		.4byte	.LASF407
 4266 19df 01       		.byte	0x1
 4267 19e0 0D       		.uleb128 0xd
 4268 19e1 0B030000 		.4byte	.LASF408
 4269 19e5 02       		.byte	0x2
 4270 19e6 0D       		.uleb128 0xd
 4271 19e7 94030000 		.4byte	.LASF409
 4272 19eb 03       		.byte	0x3
 4273 19ec 0D       		.uleb128 0xd
 4274 19ed 14030000 		.4byte	.LASF410
 4275 19f1 04       		.byte	0x4
 4276 19f2 0D       		.uleb128 0xd
 4277 19f3 9D030000 		.4byte	.LASF411
 4278 19f7 05       		.byte	0x5
 4279 19f8 0D       		.uleb128 0xd
 4280 19f9 47020000 		.4byte	.LASF412
 4281 19fd 06       		.byte	0x6
 4282 19fe 0D       		.uleb128 0xd
 4283 19ff 2B030000 		.4byte	.LASF413
 4284 1a03 07       		.byte	0x7
 4285 1a04 0D       		.uleb128 0xd
 4286 1a05 6F160000 		.4byte	.LASF414
 4287 1a09 08       		.byte	0x8
 4288 1a0a 0D       		.uleb128 0xd
 4289 1a0b 34030000 		.4byte	.LASF415
 4290 1a0f 09       		.byte	0x9
 4291 1a10 0D       		.uleb128 0xd
 4292 1a11 78160000 		.4byte	.LASF416
 4293 1a15 0A       		.byte	0xa
 4294 1a16 0D       		.uleb128 0xd
ARM GAS  /tmp/cc4jIqrt.s 			page 83


 4295 1a17 3D030000 		.4byte	.LASF417
 4296 1a1b 0B       		.byte	0xb
 4297 1a1c 0D       		.uleb128 0xd
 4298 1a1d F3010000 		.4byte	.LASF418
 4299 1a21 0C       		.byte	0xc
 4300 1a22 0D       		.uleb128 0xd
 4301 1a23 78020000 		.4byte	.LASF419
 4302 1a27 0D       		.byte	0xd
 4303 1a28 0D       		.uleb128 0xd
 4304 1a29 FC010000 		.4byte	.LASF420
 4305 1a2d 0E       		.byte	0xe
 4306 1a2e 0D       		.uleb128 0xd
 4307 1a2f 81020000 		.4byte	.LASF421
 4308 1a33 0F       		.byte	0xf
 4309 1a34 0D       		.uleb128 0xd
 4310 1a35 05020000 		.4byte	.LASF422
 4311 1a39 10       		.byte	0x10
 4312 1a3a 0D       		.uleb128 0xd
 4313 1a3b 8A020000 		.4byte	.LASF423
 4314 1a3f 11       		.byte	0x11
 4315 1a40 00       		.byte	0
 4316 1a41 04       		.uleb128 0x4
 4317 1a42 CE170000 		.4byte	.LASF424
 4318 1a46 1C       		.byte	0x1c
 4319 1a47 71       		.byte	0x71
 4320 1a48 BE190000 		.4byte	0x19be
 4321 1a4c 0B       		.uleb128 0xb
 4322 1a4d D1020000 		.4byte	.LASF425
 4323 1a51 01       		.byte	0x1
 4324 1a52 9F000000 		.4byte	0x9f
 4325 1a56 1C       		.byte	0x1c
 4326 1a57 7E       		.byte	0x7e
 4327 1a58 2F1B0000 		.4byte	0x1b2f
 4328 1a5c 0C       		.uleb128 0xc
 4329 1a5d 050F0000 		.4byte	.LASF426
 4330 1a61 7F       		.sleb128 -1
 4331 1a62 0D       		.uleb128 0xd
 4332 1a63 6A170000 		.4byte	.LASF427
 4333 1a67 00       		.byte	0
 4334 1a68 0D       		.uleb128 0xd
 4335 1a69 C1070000 		.4byte	.LASF428
 4336 1a6d 01       		.byte	0x1
 4337 1a6e 0D       		.uleb128 0xd
 4338 1a6f C6070000 		.4byte	.LASF429
 4339 1a73 02       		.byte	0x2
 4340 1a74 0D       		.uleb128 0xd
 4341 1a75 CB070000 		.4byte	.LASF430
 4342 1a79 03       		.byte	0x3
 4343 1a7a 0D       		.uleb128 0xd
 4344 1a7b D0070000 		.4byte	.LASF431
 4345 1a7f 04       		.byte	0x4
 4346 1a80 0D       		.uleb128 0xd
 4347 1a81 D5070000 		.4byte	.LASF432
 4348 1a85 05       		.byte	0x5
 4349 1a86 0D       		.uleb128 0xd
 4350 1a87 DA070000 		.4byte	.LASF433
 4351 1a8b 06       		.byte	0x6
ARM GAS  /tmp/cc4jIqrt.s 			page 84


 4352 1a8c 0D       		.uleb128 0xd
 4353 1a8d DF070000 		.4byte	.LASF434
 4354 1a91 07       		.byte	0x7
 4355 1a92 0D       		.uleb128 0xd
 4356 1a93 E4070000 		.4byte	.LASF435
 4357 1a97 08       		.byte	0x8
 4358 1a98 0D       		.uleb128 0xd
 4359 1a99 E9070000 		.4byte	.LASF436
 4360 1a9d 09       		.byte	0x9
 4361 1a9e 0D       		.uleb128 0xd
 4362 1a9f 5F080000 		.4byte	.LASF437
 4363 1aa3 0A       		.byte	0xa
 4364 1aa4 0D       		.uleb128 0xd
 4365 1aa5 65080000 		.4byte	.LASF438
 4366 1aa9 0B       		.byte	0xb
 4367 1aaa 0D       		.uleb128 0xd
 4368 1aab 6B080000 		.4byte	.LASF439
 4369 1aaf 0C       		.byte	0xc
 4370 1ab0 0D       		.uleb128 0xd
 4371 1ab1 71080000 		.4byte	.LASF440
 4372 1ab5 0D       		.byte	0xd
 4373 1ab6 0D       		.uleb128 0xd
 4374 1ab7 77080000 		.4byte	.LASF441
 4375 1abb 0E       		.byte	0xe
 4376 1abc 0D       		.uleb128 0xd
 4377 1abd 7D080000 		.4byte	.LASF442
 4378 1ac1 0F       		.byte	0xf
 4379 1ac2 0D       		.uleb128 0xd
 4380 1ac3 83080000 		.4byte	.LASF443
 4381 1ac7 10       		.byte	0x10
 4382 1ac8 0D       		.uleb128 0xd
 4383 1ac9 A90C0000 		.4byte	.LASF444
 4384 1acd 11       		.byte	0x11
 4385 1ace 0D       		.uleb128 0xd
 4386 1acf 98080000 		.4byte	.LASF445
 4387 1ad3 12       		.byte	0x12
 4388 1ad4 0D       		.uleb128 0xd
 4389 1ad5 9E080000 		.4byte	.LASF446
 4390 1ad9 13       		.byte	0x13
 4391 1ada 0D       		.uleb128 0xd
 4392 1adb E8080000 		.4byte	.LASF447
 4393 1adf 14       		.byte	0x14
 4394 1ae0 0D       		.uleb128 0xd
 4395 1ae1 EE080000 		.4byte	.LASF448
 4396 1ae5 15       		.byte	0x15
 4397 1ae6 0D       		.uleb128 0xd
 4398 1ae7 F4080000 		.4byte	.LASF449
 4399 1aeb 16       		.byte	0x16
 4400 1aec 0D       		.uleb128 0xd
 4401 1aed FA080000 		.4byte	.LASF450
 4402 1af1 17       		.byte	0x17
 4403 1af2 0D       		.uleb128 0xd
 4404 1af3 00090000 		.4byte	.LASF451
 4405 1af7 18       		.byte	0x18
 4406 1af8 0D       		.uleb128 0xd
 4407 1af9 06090000 		.4byte	.LASF452
 4408 1afd 19       		.byte	0x19
ARM GAS  /tmp/cc4jIqrt.s 			page 85


 4409 1afe 0D       		.uleb128 0xd
 4410 1aff 0C090000 		.4byte	.LASF453
 4411 1b03 1A       		.byte	0x1a
 4412 1b04 0D       		.uleb128 0xd
 4413 1b05 12090000 		.4byte	.LASF454
 4414 1b09 1B       		.byte	0x1b
 4415 1b0a 0D       		.uleb128 0xd
 4416 1b0b 18090000 		.4byte	.LASF455
 4417 1b0f 1C       		.byte	0x1c
 4418 1b10 0D       		.uleb128 0xd
 4419 1b11 1E090000 		.4byte	.LASF456
 4420 1b15 1D       		.byte	0x1d
 4421 1b16 0D       		.uleb128 0xd
 4422 1b17 80090000 		.4byte	.LASF457
 4423 1b1b 1E       		.byte	0x1e
 4424 1b1c 0D       		.uleb128 0xd
 4425 1b1d 86090000 		.4byte	.LASF458
 4426 1b21 1F       		.byte	0x1f
 4427 1b22 3B       		.uleb128 0x3b
 4428 1b23 44413000 		.ascii	"DA0\000"
 4429 1b27 20       		.byte	0x20
 4430 1b28 3B       		.uleb128 0x3b
 4431 1b29 44413100 		.ascii	"DA1\000"
 4432 1b2d 21       		.byte	0x21
 4433 1b2e 00       		.byte	0
 4434 1b2f 1A       		.uleb128 0x1a
 4435 1b30 A7040000 		.4byte	.LASF459
 4436 1b34 1C       		.byte	0x1c
 4437 1b35 1C       		.byte	0x1c
 4438 1b36 AF       		.byte	0xaf
 4439 1b37 A81B0000 		.4byte	0x1ba8
 4440 1b3b 14       		.uleb128 0x14
 4441 1b3c 84040000 		.4byte	.LASF460
 4442 1b40 1C       		.byte	0x1c
 4443 1b41 B1       		.byte	0xb1
 4444 1b42 AD1B0000 		.4byte	0x1bad
 4445 1b46 00       		.byte	0
 4446 1b47 14       		.uleb128 0x14
 4447 1b48 F20C0000 		.4byte	.LASF461
 4448 1b4c 1C       		.byte	0x1c
 4449 1b4d B2       		.byte	0xb2
 4450 1b4e D1010000 		.4byte	0x1d1
 4451 1b52 04       		.byte	0x4
 4452 1b53 14       		.uleb128 0x14
 4453 1b54 42010000 		.4byte	.LASF462
 4454 1b58 1C       		.byte	0x1c
 4455 1b59 B3       		.byte	0xb3
 4456 1b5a D1010000 		.4byte	0x1d1
 4457 1b5e 08       		.byte	0x8
 4458 1b5f 14       		.uleb128 0x14
 4459 1b60 37050000 		.4byte	.LASF463
 4460 1b64 1C       		.byte	0x1c
 4461 1b65 B4       		.byte	0xb4
 4462 1b66 45190000 		.4byte	0x1945
 4463 1b6a 0C       		.byte	0xc
 4464 1b6b 14       		.uleb128 0x14
 4465 1b6c 50100000 		.4byte	.LASF464
ARM GAS  /tmp/cc4jIqrt.s 			page 86


 4466 1b70 1C       		.byte	0x1c
 4467 1b71 B5       		.byte	0xb5
 4468 1b72 D1010000 		.4byte	0x1d1
 4469 1b76 10       		.byte	0x10
 4470 1b77 14       		.uleb128 0x14
 4471 1b78 FB140000 		.4byte	.LASF465
 4472 1b7c 1C       		.byte	0x1c
 4473 1b7d B6       		.byte	0xb6
 4474 1b7e D1010000 		.4byte	0x1d1
 4475 1b82 14       		.byte	0x14
 4476 1b83 14       		.uleb128 0x14
 4477 1b84 1D060000 		.4byte	.LASF466
 4478 1b88 1C       		.byte	0x1c
 4479 1b89 B7       		.byte	0xb7
 4480 1b8a 4C1A0000 		.4byte	0x1a4c
 4481 1b8e 18       		.byte	0x18
 4482 1b8f 14       		.uleb128 0x14
 4483 1b90 CF1A0000 		.4byte	.LASF467
 4484 1b94 1C       		.byte	0x1c
 4485 1b95 B8       		.byte	0xb8
 4486 1b96 B3190000 		.4byte	0x19b3
 4487 1b9a 19       		.byte	0x19
 4488 1b9b 14       		.uleb128 0x14
 4489 1b9c 4E150000 		.4byte	.LASF468
 4490 1ba0 1C       		.byte	0x1c
 4491 1ba1 B9       		.byte	0xb9
 4492 1ba2 411A0000 		.4byte	0x1a41
 4493 1ba6 1A       		.byte	0x1a
 4494 1ba7 00       		.byte	0
 4495 1ba8 03       		.uleb128 0x3
 4496 1ba9 2F1B0000 		.4byte	0x1b2f
 4497 1bad 1C       		.uleb128 0x1c
 4498 1bae 04       		.byte	0x4
 4499 1baf 76080000 		.4byte	0x876
 4500 1bb3 0F       		.uleb128 0xf
 4501 1bb4 A81B0000 		.4byte	0x1ba8
 4502 1bb8 BE1B0000 		.4byte	0x1bbe
 4503 1bbc 3C       		.uleb128 0x3c
 4504 1bbd 00       		.byte	0
 4505 1bbe 12       		.uleb128 0x12
 4506 1bbf C6130000 		.4byte	.LASF469
 4507 1bc3 1C       		.byte	0x1c
 4508 1bc4 BD       		.byte	0xbd
 4509 1bc5 B31B0000 		.4byte	0x1bb3
 4510 1bc9 12       		.uleb128 0x12
 4511 1bca 53140000 		.4byte	.LASF470
 4512 1bce 1D       		.byte	0x1d
 4513 1bcf 2E       		.byte	0x2e
 4514 1bd0 FD0F0000 		.4byte	0xffd
 4515 1bd4 0F       		.uleb128 0xf
 4516 1bd5 D40F0000 		.4byte	0xfd4
 4517 1bd9 DF1B0000 		.4byte	0x1bdf
 4518 1bdd 3C       		.uleb128 0x3c
 4519 1bde 00       		.byte	0
 4520 1bdf 12       		.uleb128 0x12
 4521 1be0 D9060000 		.4byte	.LASF471
 4522 1be4 1D       		.byte	0x1d
ARM GAS  /tmp/cc4jIqrt.s 			page 87


 4523 1be5 6E       		.byte	0x6e
 4524 1be6 D41B0000 		.4byte	0x1bd4
 4525 1bea 3D       		.uleb128 0x3d
 4526 1beb 3B040000 		.4byte	.LASF472
 4527 1bef 1D1C0000 		.4byte	0x1c1d
 4528 1bf3 2B       		.uleb128 0x2b
 4529 1bf4 1E       		.byte	0x1e
 4530 1bf5 1A       		.byte	0x1a
 4531 1bf6 261C0000 		.4byte	0x1c26
 4532 1bfa 3E       		.uleb128 0x3e
 4533 1bfb C2160000 		.4byte	.LASF474
 4534 1bff 23000000 		.4byte	.LASF615
 4535 1c03 7B040000 		.4byte	0x47b
 4536 1c07 01       		.byte	0x1
 4537 1c08 EA1B0000 		.4byte	0x1bea
 4538 1c0c 01       		.byte	0x1
 4539 1c0d 111C0000 		.4byte	0x1c11
 4540 1c11 3F       		.uleb128 0x3f
 4541 1c12 84240000 		.4byte	0x2484
 4542 1c16 3F       		.uleb128 0x3f
 4543 1c17 25000000 		.4byte	0x25
 4544 1c1b 00       		.byte	0
 4545 1c1c 00       		.byte	0
 4546 1c1d 3D       		.uleb128 0x3d
 4547 1c1e 8E0A0000 		.4byte	.LASF473
 4548 1c22 731C0000 		.4byte	0x1c73
 4549 1c26 40       		.uleb128 0x40
 4550 1c27 36120000 		.4byte	.LASF475
 4551 1c2b 21       		.byte	0x21
 4552 1c2c 3B       		.byte	0x3b
 4553 1c2d CE190000 		.4byte	.LASF482
 4554 1c31 31000000 		.4byte	0x31
 4555 1c35 01       		.byte	0x1
 4556 1c36 3E1C0000 		.4byte	0x1c3e
 4557 1c3a 4E1C0000 		.4byte	0x1c4e
 4558 1c3e 3F       		.uleb128 0x3f
 4559 1c3f 731C0000 		.4byte	0x1c73
 4560 1c43 20       		.uleb128 0x20
 4561 1c44 FD0F0000 		.4byte	0xffd
 4562 1c48 20       		.uleb128 0x20
 4563 1c49 31000000 		.4byte	0x31
 4564 1c4d 00       		.byte	0
 4565 1c4e 41       		.uleb128 0x41
 4566 1c4f 8F0C0000 		.4byte	.LASF491
 4567 1c53 21       		.byte	0x21
 4568 1c54 2E       		.byte	0x2e
 4569 1c55 28130000 		.4byte	.LASF616
 4570 1c59 7B040000 		.4byte	0x47b
 4571 1c5d 01       		.byte	0x1
 4572 1c5e 1D1C0000 		.4byte	0x1c1d
 4573 1c62 01       		.byte	0x1
 4574 1c63 671C0000 		.4byte	0x1c67
 4575 1c67 3F       		.uleb128 0x3f
 4576 1c68 731C0000 		.4byte	0x1c73
 4577 1c6c 3F       		.uleb128 0x3f
 4578 1c6d 25000000 		.4byte	0x25
 4579 1c71 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 88


 4580 1c72 00       		.byte	0
 4581 1c73 1C       		.uleb128 0x1c
 4582 1c74 04       		.byte	0x4
 4583 1c75 1D1C0000 		.4byte	0x1c1d
 4584 1c79 03       		.uleb128 0x3
 4585 1c7a 731C0000 		.4byte	0x1c73
 4586 1c7e 42       		.uleb128 0x42
 4587 1c7f 78110000 		.4byte	.LASF617
 4588 1c83 12       		.uleb128 0x12
 4589 1c84 28110000 		.4byte	.LASF476
 4590 1c88 1F       		.byte	0x1f
 4591 1c89 30       		.byte	0x30
 4592 1c8a 7E1C0000 		.4byte	0x1c7e
 4593 1c8e 43       		.uleb128 0x43
 4594 1c8f 0B0B0000 		.4byte	.LASF477
 4595 1c93 20       		.byte	0x20
 4596 1c94 1D       		.byte	0x1d
 4597 1c95 3C000000 		.4byte	0x3c
 4598 1c99 0002     		.2byte	0x200
 4599 1c9b 44       		.uleb128 0x44
 4600 1c9c 600C0000 		.4byte	.LASF481
 4601 1ca0 0802     		.2byte	0x208
 4602 1ca2 20       		.byte	0x20
 4603 1ca3 1F       		.byte	0x1f
 4604 1ca4 511D0000 		.4byte	0x1d51
 4605 1ca8 45       		.uleb128 0x45
 4606 1ca9 0E020000 		.4byte	.LASF478
 4607 1cad 20       		.byte	0x20
 4608 1cae 22       		.byte	0x22
 4609 1caf 671D0000 		.4byte	0x1d67
 4610 1cb3 00       		.byte	0
 4611 1cb4 01       		.byte	0x1
 4612 1cb5 46       		.uleb128 0x46
 4613 1cb6 56190000 		.4byte	.LASF479
 4614 1cba 20       		.byte	0x20
 4615 1cbb 23       		.byte	0x23
 4616 1cbc 41000000 		.4byte	0x41
 4617 1cc0 0002     		.2byte	0x200
 4618 1cc2 01       		.byte	0x1
 4619 1cc3 46       		.uleb128 0x46
 4620 1cc4 000A0000 		.4byte	.LASF480
 4621 1cc8 20       		.byte	0x20
 4622 1cc9 24       		.byte	0x24
 4623 1cca 41000000 		.4byte	0x41
 4624 1cce 0402     		.2byte	0x204
 4625 1cd0 01       		.byte	0x1
 4626 1cd1 40       		.uleb128 0x40
 4627 1cd2 600C0000 		.4byte	.LASF481
 4628 1cd6 20       		.byte	0x20
 4629 1cd7 27       		.byte	0x27
 4630 1cd8 14010000 		.4byte	.LASF483
 4631 1cdc 6C1D0000 		.4byte	0x1d6c
 4632 1ce0 01       		.byte	0x1
 4633 1ce1 E91C0000 		.4byte	0x1ce9
 4634 1ce5 EF1C0000 		.4byte	0x1cef
 4635 1ce9 3F       		.uleb128 0x3f
 4636 1cea 6C1D0000 		.4byte	0x1d6c
ARM GAS  /tmp/cc4jIqrt.s 			page 89


 4637 1cee 00       		.byte	0
 4638 1cef 47       		.uleb128 0x47
 4639 1cf0 0F000000 		.4byte	.LASF486
 4640 1cf4 20       		.byte	0x20
 4641 1cf5 28       		.byte	0x28
 4642 1cf6 C7180000 		.4byte	.LASF488
 4643 1cfa 01       		.byte	0x1
 4644 1cfb 031D0000 		.4byte	0x1d03
 4645 1cff 0E1D0000 		.4byte	0x1d0e
 4646 1d03 3F       		.uleb128 0x3f
 4647 1d04 6C1D0000 		.4byte	0x1d6c
 4648 1d08 20       		.uleb128 0x20
 4649 1d09 96010000 		.4byte	0x196
 4650 1d0d 00       		.byte	0
 4651 1d0e 40       		.uleb128 0x40
 4652 1d0f B41A0000 		.4byte	.LASF484
 4653 1d13 20       		.byte	0x20
 4654 1d14 29       		.byte	0x29
 4655 1d15 5F090000 		.4byte	.LASF485
 4656 1d19 31000000 		.4byte	0x31
 4657 1d1d 01       		.byte	0x1
 4658 1d1e 261D0000 		.4byte	0x1d26
 4659 1d22 361D0000 		.4byte	0x1d36
 4660 1d26 3F       		.uleb128 0x3f
 4661 1d27 6C1D0000 		.4byte	0x1d6c
 4662 1d2b 20       		.uleb128 0x20
 4663 1d2c 721D0000 		.4byte	0x1d72
 4664 1d30 20       		.uleb128 0x20
 4665 1d31 31000000 		.4byte	0x31
 4666 1d35 00       		.byte	0
 4667 1d36 48       		.uleb128 0x48
 4668 1d37 D2140000 		.4byte	.LASF487
 4669 1d3b 20       		.byte	0x20
 4670 1d3c 2A       		.byte	0x2a
 4671 1d3d 400B0000 		.4byte	.LASF489
 4672 1d41 31000000 		.4byte	0x31
 4673 1d45 01       		.byte	0x1
 4674 1d46 4A1D0000 		.4byte	0x1d4a
 4675 1d4a 3F       		.uleb128 0x3f
 4676 1d4b 781D0000 		.4byte	0x1d78
 4677 1d4f 00       		.byte	0
 4678 1d50 00       		.byte	0
 4679 1d51 03       		.uleb128 0x3
 4680 1d52 9B1C0000 		.4byte	0x1c9b
 4681 1d56 0F       		.uleb128 0xf
 4682 1d57 A1010000 		.4byte	0x1a1
 4683 1d5b 671D0000 		.4byte	0x1d67
 4684 1d5f 49       		.uleb128 0x49
 4685 1d60 7D040000 		.4byte	0x47d
 4686 1d64 FF01     		.2byte	0x1ff
 4687 1d66 00       		.byte	0
 4688 1d67 05       		.uleb128 0x5
 4689 1d68 561D0000 		.4byte	0x1d56
 4690 1d6c 1C       		.uleb128 0x1c
 4691 1d6d 04       		.byte	0x4
 4692 1d6e 9B1C0000 		.4byte	0x1c9b
 4693 1d72 1C       		.uleb128 0x1c
ARM GAS  /tmp/cc4jIqrt.s 			page 90


 4694 1d73 04       		.byte	0x4
 4695 1d74 A6010000 		.4byte	0x1a6
 4696 1d78 1C       		.uleb128 0x1c
 4697 1d79 04       		.byte	0x4
 4698 1d7a 511D0000 		.4byte	0x1d51
 4699 1d7e 3D       		.uleb128 0x3d
 4700 1d7f 95180000 		.4byte	.LASF490
 4701 1d83 EA1D0000 		.4byte	0x1dea
 4702 1d87 2B       		.uleb128 0x2b
 4703 1d88 01       		.byte	0x1
 4704 1d89 26       		.byte	0x26
 4705 1d8a 261C0000 		.4byte	0x1c26
 4706 1d8e 4A       		.uleb128 0x4a
 4707 1d8f 0F0A0000 		.4byte	.LASF492
 4708 1d93 27180000 		.4byte	.LASF586
 4709 1d97 7B040000 		.4byte	0x47b
 4710 1d9b 01       		.byte	0x1
 4711 1d9c 7E1D0000 		.4byte	0x1d7e
 4712 1da0 01       		.byte	0x1
 4713 1da1 A91D0000 		.4byte	0x1da9
 4714 1da5 B41D0000 		.4byte	0x1db4
 4715 1da9 3F       		.uleb128 0x3f
 4716 1daa F0230000 		.4byte	0x23f0
 4717 1dae 3F       		.uleb128 0x3f
 4718 1daf 25000000 		.4byte	0x25
 4719 1db3 00       		.byte	0
 4720 1db4 4B       		.uleb128 0x4b
 4721 1db5 1D030000 		.4byte	.LASF618
 4722 1db9 01       		.byte	0x1
 4723 1dba 45       		.byte	0x45
 4724 1dbb E8120000 		.4byte	.LASF619
 4725 1dbf 5C180000 		.4byte	0x185c
 4726 1dc3 01       		.byte	0x1
 4727 1dc4 02       		.uleb128 0x2
 4728 1dc5 10       		.byte	0x10
 4729 1dc6 0C       		.uleb128 0xc
 4730 1dc7 7E1D0000 		.4byte	0x1d7e
 4731 1dcb 01       		.byte	0x1
 4732 1dcc D41D0000 		.4byte	0x1dd4
 4733 1dd0 DA1D0000 		.4byte	0x1dda
 4734 1dd4 3F       		.uleb128 0x3f
 4735 1dd5 F0230000 		.4byte	0x23f0
 4736 1dd9 00       		.byte	0
 4737 1dda 4C       		.uleb128 0x4c
 4738 1ddb EC100000 		.4byte	.LASF599
 4739 1ddf FE050000 		.4byte	.LASF601
 4740 1de3 01       		.byte	0x1
 4741 1de4 43       		.byte	0x43
 4742 1de5 EC100000 		.4byte	.LASF599
 4743 1de9 00       		.byte	0
 4744 1dea 12       		.uleb128 0x12
 4745 1deb 6F170000 		.4byte	.LASF493
 4746 1def 22       		.byte	0x22
 4747 1df0 8B       		.byte	0x8b
 4748 1df1 E7000000 		.4byte	0xe7
 4749 1df5 12       		.uleb128 0x12
 4750 1df6 8A040000 		.4byte	.LASF494
ARM GAS  /tmp/cc4jIqrt.s 			page 91


 4751 1dfa 22       		.byte	0x22
 4752 1dfb 8C       		.byte	0x8c
 4753 1dfc 25000000 		.4byte	0x25
 4754 1e00 0F       		.uleb128 0xf
 4755 1e01 C70F0000 		.4byte	0xfc7
 4756 1e05 101E0000 		.4byte	0x1e10
 4757 1e09 10       		.uleb128 0x10
 4758 1e0a 7D040000 		.4byte	0x47d
 4759 1e0e 01       		.byte	0x1
 4760 1e0f 00       		.byte	0
 4761 1e10 12       		.uleb128 0x12
 4762 1e11 090C0000 		.4byte	.LASF495
 4763 1e15 22       		.byte	0x22
 4764 1e16 8F       		.byte	0x8f
 4765 1e17 001E0000 		.4byte	0x1e00
 4766 1e1b 4D       		.uleb128 0x4d
 4767 1e1c 38140000 		.4byte	.LASF496
 4768 1e20 23       		.byte	0x23
 4769 1e21 5C       		.byte	0x5c
 4770 1e22 A6010000 		.4byte	0x1a6
 4771 1e26 38       		.byte	0x38
 4772 1e27 4D       		.uleb128 0x4d
 4773 1e28 95000000 		.4byte	.LASF497
 4774 1e2c 23       		.byte	0x23
 4775 1e2d 5D       		.byte	0x5d
 4776 1e2e A6010000 		.4byte	0x1a6
 4777 1e32 05       		.byte	0x5
 4778 1e33 4D       		.uleb128 0x4d
 4779 1e34 E6050000 		.4byte	.LASF498
 4780 1e38 23       		.byte	0x23
 4781 1e39 5E       		.byte	0x5e
 4782 1e3a A6010000 		.4byte	0x1a6
 4783 1e3e 06       		.byte	0x6
 4784 1e3f 4D       		.uleb128 0x4d
 4785 1e40 1E190000 		.4byte	.LASF499
 4786 1e44 23       		.byte	0x23
 4787 1e45 60       		.byte	0x60
 4788 1e46 A6010000 		.4byte	0x1a6
 4789 1e4a 39       		.byte	0x39
 4790 1e4b 4D       		.uleb128 0x4d
 4791 1e4c 29090000 		.4byte	.LASF500
 4792 1e50 23       		.byte	0x23
 4793 1e51 61       		.byte	0x61
 4794 1e52 A6010000 		.4byte	0x1a6
 4795 1e56 03       		.byte	0x3
 4796 1e57 4D       		.uleb128 0x4d
 4797 1e58 AC0E0000 		.4byte	.LASF501
 4798 1e5c 23       		.byte	0x23
 4799 1e5d 62       		.byte	0x62
 4800 1e5e A6010000 		.4byte	0x1a6
 4801 1e62 04       		.byte	0x4
 4802 1e63 4D       		.uleb128 0x4d
 4803 1e64 C7000000 		.4byte	.LASF502
 4804 1e68 23       		.byte	0x23
 4805 1e69 69       		.byte	0x69
 4806 1e6a A6010000 		.4byte	0x1a6
 4807 1e6e 33       		.byte	0x33
ARM GAS  /tmp/cc4jIqrt.s 			page 92


 4808 1e6f 4D       		.uleb128 0x4d
 4809 1e70 B6040000 		.4byte	.LASF503
 4810 1e74 23       		.byte	0x23
 4811 1e75 6A       		.byte	0x6a
 4812 1e76 A6010000 		.4byte	0x1a6
 4813 1e7a 34       		.byte	0x34
 4814 1e7b 4D       		.uleb128 0x4d
 4815 1e7c AC020000 		.4byte	.LASF504
 4816 1e80 23       		.byte	0x23
 4817 1e81 6D       		.byte	0x6d
 4818 1e82 A6010000 		.4byte	0x1a6
 4819 1e86 35       		.byte	0x35
 4820 1e87 4D       		.uleb128 0x4d
 4821 1e88 4E070000 		.4byte	.LASF505
 4822 1e8c 23       		.byte	0x23
 4823 1e8d 6E       		.byte	0x6e
 4824 1e8e A6010000 		.4byte	0x1a6
 4825 1e92 36       		.byte	0x36
 4826 1e93 4D       		.uleb128 0x4d
 4827 1e94 541B0000 		.4byte	.LASF506
 4828 1e98 23       		.byte	0x23
 4829 1e99 6F       		.byte	0x6f
 4830 1e9a A6010000 		.4byte	0x1a6
 4831 1e9e 37       		.byte	0x37
 4832 1e9f 4D       		.uleb128 0x4d
 4833 1ea0 5A150000 		.4byte	.LASF507
 4834 1ea4 23       		.byte	0x23
 4835 1ea5 71       		.byte	0x71
 4836 1ea6 E1010000 		.4byte	0x1e1
 4837 1eaa 32       		.byte	0x32
 4838 1eab 4E       		.uleb128 0x4e
 4839 1eac C4020000 		.4byte	.LASF508
 4840 1eb0 23       		.byte	0x23
 4841 1eb1 73       		.byte	0x73
 4842 1eb2 E1010000 		.4byte	0x1e1
 4843 1eb6 58466100 		.4byte	0x614658
 4844 1eba 43       		.uleb128 0x43
 4845 1ebb 9D090000 		.4byte	.LASF509
 4846 1ebf 23       		.byte	0x23
 4847 1ec0 74       		.byte	0x74
 4848 1ec1 E1010000 		.4byte	0x1e1
 4849 1ec5 4661     		.2byte	0x6146
 4850 1ec7 12       		.uleb128 0x12
 4851 1ec8 CB140000 		.4byte	.LASF510
 4852 1ecc 23       		.byte	0x23
 4853 1ecd 80       		.byte	0x80
 4854 1ece 7E1D0000 		.4byte	0x1d7e
 4855 1ed2 12       		.uleb128 0x12
 4856 1ed3 C71A0000 		.4byte	.LASF511
 4857 1ed7 23       		.byte	0x23
 4858 1ed8 81       		.byte	0x81
 4859 1ed9 7E1D0000 		.4byte	0x1d7e
 4860 1edd 07       		.uleb128 0x7
 4861 1ede 08       		.byte	0x8
 4862 1edf 24       		.byte	0x24
 4863 1ee0 3801     		.2byte	0x138
 4864 1ee2 42170000 		.4byte	.LASF513
ARM GAS  /tmp/cc4jIqrt.s 			page 93


 4865 1ee6 2C1F0000 		.4byte	0x1f2c
 4866 1eea 08       		.uleb128 0x8
 4867 1eeb ED140000 		.4byte	.LASF514
 4868 1eef 24       		.byte	0x24
 4869 1ef0 3901     		.2byte	0x139
 4870 1ef2 96010000 		.4byte	0x196
 4871 1ef6 00       		.byte	0
 4872 1ef7 08       		.uleb128 0x8
 4873 1ef8 FC0E0000 		.4byte	.LASF515
 4874 1efc 24       		.byte	0x24
 4875 1efd 3A01     		.2byte	0x13a
 4876 1eff 96010000 		.4byte	0x196
 4877 1f03 01       		.byte	0x1
 4878 1f04 08       		.uleb128 0x8
 4879 1f05 0A150000 		.4byte	.LASF516
 4880 1f09 24       		.byte	0x24
 4881 1f0a 3B01     		.2byte	0x13b
 4882 1f0c 8A180000 		.4byte	0x188a
 4883 1f10 02       		.byte	0x2
 4884 1f11 08       		.uleb128 0x8
 4885 1f12 0C190000 		.4byte	.LASF517
 4886 1f16 24       		.byte	0x24
 4887 1f17 3C01     		.2byte	0x13c
 4888 1f19 8A180000 		.4byte	0x188a
 4889 1f1d 04       		.byte	0x4
 4890 1f1e 08       		.uleb128 0x8
 4891 1f1f 7D0C0000 		.4byte	.LASF518
 4892 1f23 24       		.byte	0x24
 4893 1f24 3D01     		.2byte	0x13d
 4894 1f26 8A180000 		.4byte	0x188a
 4895 1f2a 06       		.byte	0x6
 4896 1f2b 00       		.byte	0
 4897 1f2c 09       		.uleb128 0x9
 4898 1f2d 6A0A0000 		.4byte	.LASF519
 4899 1f31 24       		.byte	0x24
 4900 1f32 3E01     		.2byte	0x13e
 4901 1f34 DD1E0000 		.4byte	0x1edd
 4902 1f38 07       		.uleb128 0x7
 4903 1f39 12       		.byte	0x12
 4904 1f3a 24       		.byte	0x24
 4905 1f3b 4301     		.2byte	0x143
 4906 1f3d B7030000 		.4byte	.LASF520
 4907 1f41 FC1F0000 		.4byte	0x1ffc
 4908 1f45 08       		.uleb128 0x8
 4909 1f46 7C1B0000 		.4byte	.LASF521
 4910 1f4a 24       		.byte	0x24
 4911 1f4b 4401     		.2byte	0x144
 4912 1f4d 96010000 		.4byte	0x196
 4913 1f51 00       		.byte	0
 4914 1f52 08       		.uleb128 0x8
 4915 1f53 5F160000 		.4byte	.LASF522
 4916 1f57 24       		.byte	0x24
 4917 1f58 4501     		.2byte	0x145
 4918 1f5a 96010000 		.4byte	0x196
 4919 1f5e 01       		.byte	0x1
 4920 1f5f 08       		.uleb128 0x8
 4921 1f60 A0040000 		.4byte	.LASF523
ARM GAS  /tmp/cc4jIqrt.s 			page 94


 4922 1f64 24       		.byte	0x24
 4923 1f65 4601     		.2byte	0x146
 4924 1f67 8A180000 		.4byte	0x188a
 4925 1f6b 02       		.byte	0x2
 4926 1f6c 08       		.uleb128 0x8
 4927 1f6d 30010000 		.4byte	.LASF524
 4928 1f71 24       		.byte	0x24
 4929 1f72 4701     		.2byte	0x147
 4930 1f74 96010000 		.4byte	0x196
 4931 1f78 04       		.byte	0x4
 4932 1f79 08       		.uleb128 0x8
 4933 1f7a C3050000 		.4byte	.LASF525
 4934 1f7e 24       		.byte	0x24
 4935 1f7f 4801     		.2byte	0x148
 4936 1f81 96010000 		.4byte	0x196
 4937 1f85 05       		.byte	0x5
 4938 1f86 08       		.uleb128 0x8
 4939 1f87 40100000 		.4byte	.LASF526
 4940 1f8b 24       		.byte	0x24
 4941 1f8c 4901     		.2byte	0x149
 4942 1f8e 96010000 		.4byte	0x196
 4943 1f92 06       		.byte	0x6
 4944 1f93 08       		.uleb128 0x8
 4945 1f94 9B140000 		.4byte	.LASF527
 4946 1f98 24       		.byte	0x24
 4947 1f99 4A01     		.2byte	0x14a
 4948 1f9b 96010000 		.4byte	0x196
 4949 1f9f 07       		.byte	0x7
 4950 1fa0 08       		.uleb128 0x8
 4951 1fa1 E5030000 		.4byte	.LASF528
 4952 1fa5 24       		.byte	0x24
 4953 1fa6 4B01     		.2byte	0x14b
 4954 1fa8 8A180000 		.4byte	0x188a
 4955 1fac 08       		.byte	0x8
 4956 1fad 08       		.uleb128 0x8
 4957 1fae 50040000 		.4byte	.LASF529
 4958 1fb2 24       		.byte	0x24
 4959 1fb3 4C01     		.2byte	0x14c
 4960 1fb5 8A180000 		.4byte	0x188a
 4961 1fb9 0A       		.byte	0xa
 4962 1fba 08       		.uleb128 0x8
 4963 1fbb F8070000 		.4byte	.LASF530
 4964 1fbf 24       		.byte	0x24
 4965 1fc0 4D01     		.2byte	0x14d
 4966 1fc2 8A180000 		.4byte	0x188a
 4967 1fc6 0C       		.byte	0xc
 4968 1fc7 08       		.uleb128 0x8
 4969 1fc8 DA0C0000 		.4byte	.LASF531
 4970 1fcc 24       		.byte	0x24
 4971 1fcd 4E01     		.2byte	0x14e
 4972 1fcf 96010000 		.4byte	0x196
 4973 1fd3 0E       		.byte	0xe
 4974 1fd4 08       		.uleb128 0x8
 4975 1fd5 1D140000 		.4byte	.LASF532
 4976 1fd9 24       		.byte	0x24
 4977 1fda 4F01     		.2byte	0x14f
 4978 1fdc 96010000 		.4byte	0x196
ARM GAS  /tmp/cc4jIqrt.s 			page 95


 4979 1fe0 0F       		.byte	0xf
 4980 1fe1 08       		.uleb128 0x8
 4981 1fe2 A0190000 		.4byte	.LASF533
 4982 1fe6 24       		.byte	0x24
 4983 1fe7 5001     		.2byte	0x150
 4984 1fe9 96010000 		.4byte	0x196
 4985 1fed 10       		.byte	0x10
 4986 1fee 08       		.uleb128 0x8
 4987 1fef 790D0000 		.4byte	.LASF534
 4988 1ff3 24       		.byte	0x24
 4989 1ff4 5101     		.2byte	0x151
 4990 1ff6 96010000 		.4byte	0x196
 4991 1ffa 11       		.byte	0x11
 4992 1ffb 00       		.byte	0
 4993 1ffc 09       		.uleb128 0x9
 4994 1ffd DC150000 		.4byte	.LASF535
 4995 2001 24       		.byte	0x24
 4996 2002 5201     		.2byte	0x152
 4997 2004 381F0000 		.4byte	0x1f38
 4998 2008 07       		.uleb128 0x7
 4999 2009 05       		.byte	0x5
 5000 200a 24       		.byte	0x24
 5001 200b 7401     		.2byte	0x174
 5002 200d 9C1B0000 		.4byte	.LASF536
 5003 2011 4A200000 		.4byte	0x204a
 5004 2015 08       		.uleb128 0x8
 5005 2016 7C1B0000 		.4byte	.LASF521
 5006 201a 24       		.byte	0x24
 5007 201b 7501     		.2byte	0x175
 5008 201d 96010000 		.4byte	0x196
 5009 2021 00       		.byte	0
 5010 2022 08       		.uleb128 0x8
 5011 2023 5F160000 		.4byte	.LASF522
 5012 2027 24       		.byte	0x24
 5013 2028 7601     		.2byte	0x176
 5014 202a 96010000 		.4byte	0x196
 5015 202e 01       		.byte	0x1
 5016 202f 08       		.uleb128 0x8
 5017 2030 391B0000 		.4byte	.LASF537
 5018 2034 24       		.byte	0x24
 5019 2035 7701     		.2byte	0x177
 5020 2037 8A180000 		.4byte	0x188a
 5021 203b 02       		.byte	0x2
 5022 203c 08       		.uleb128 0x8
 5023 203d 00000000 		.4byte	.LASF538
 5024 2041 24       		.byte	0x24
 5025 2042 7801     		.2byte	0x178
 5026 2044 96010000 		.4byte	0x196
 5027 2048 04       		.byte	0x4
 5028 2049 00       		.byte	0
 5029 204a 09       		.uleb128 0x9
 5030 204b D10E0000 		.4byte	.LASF539
 5031 204f 24       		.byte	0x24
 5032 2050 7901     		.2byte	0x179
 5033 2052 08200000 		.4byte	0x2008
 5034 2056 07       		.uleb128 0x7
 5035 2057 09       		.byte	0x9
ARM GAS  /tmp/cc4jIqrt.s 			page 96


 5036 2058 24       		.byte	0x24
 5037 2059 A401     		.2byte	0x1a4
 5038 205b 9A150000 		.4byte	.LASF540
 5039 205f CC200000 		.4byte	0x20cc
 5040 2063 08       		.uleb128 0x8
 5041 2064 7C1B0000 		.4byte	.LASF521
 5042 2068 24       		.byte	0x24
 5043 2069 A501     		.2byte	0x1a5
 5044 206b 96010000 		.4byte	0x196
 5045 206f 00       		.byte	0
 5046 2070 08       		.uleb128 0x8
 5047 2071 5F160000 		.4byte	.LASF522
 5048 2075 24       		.byte	0x24
 5049 2076 A601     		.2byte	0x1a6
 5050 2078 96010000 		.4byte	0x196
 5051 207c 01       		.byte	0x1
 5052 207d 08       		.uleb128 0x8
 5053 207e 391B0000 		.4byte	.LASF537
 5054 2082 24       		.byte	0x24
 5055 2083 A701     		.2byte	0x1a7
 5056 2085 8A180000 		.4byte	0x188a
 5057 2089 02       		.byte	0x2
 5058 208a 08       		.uleb128 0x8
 5059 208b EE180000 		.4byte	.LASF541
 5060 208f 24       		.byte	0x24
 5061 2090 A801     		.2byte	0x1a8
 5062 2092 96010000 		.4byte	0x196
 5063 2096 04       		.byte	0x4
 5064 2097 08       		.uleb128 0x8
 5065 2098 0B180000 		.4byte	.LASF542
 5066 209c 24       		.byte	0x24
 5067 209d A901     		.2byte	0x1a9
 5068 209f 96010000 		.4byte	0x196
 5069 20a3 05       		.byte	0x5
 5070 20a4 08       		.uleb128 0x8
 5071 20a5 44140000 		.4byte	.LASF543
 5072 20a9 24       		.byte	0x24
 5073 20aa AA01     		.2byte	0x1aa
 5074 20ac 96010000 		.4byte	0x196
 5075 20b0 06       		.byte	0x6
 5076 20b1 08       		.uleb128 0x8
 5077 20b2 6D000000 		.4byte	.LASF544
 5078 20b6 24       		.byte	0x24
 5079 20b7 AB01     		.2byte	0x1ab
 5080 20b9 96010000 		.4byte	0x196
 5081 20bd 07       		.byte	0x7
 5082 20be 08       		.uleb128 0x8
 5083 20bf 1A1B0000 		.4byte	.LASF545
 5084 20c3 24       		.byte	0x24
 5085 20c4 AC01     		.2byte	0x1ac
 5086 20c6 96010000 		.4byte	0x196
 5087 20ca 08       		.byte	0x8
 5088 20cb 00       		.byte	0
 5089 20cc 09       		.uleb128 0x9
 5090 20cd FB000000 		.4byte	.LASF546
 5091 20d1 24       		.byte	0x24
 5092 20d2 AD01     		.2byte	0x1ad
ARM GAS  /tmp/cc4jIqrt.s 			page 97


 5093 20d4 56200000 		.4byte	0x2056
 5094 20d8 17       		.uleb128 0x17
 5095 20d9 14       		.byte	0x14
 5096 20da 25       		.byte	0x25
 5097 20db 4A       		.byte	0x4a
 5098 20dc 66180000 		.4byte	.LASF547
 5099 20e0 21210000 		.4byte	0x2121
 5100 20e4 14       		.uleb128 0x14
 5101 20e5 7E060000 		.4byte	.LASF548
 5102 20e9 25       		.byte	0x25
 5103 20ea 55       		.byte	0x55
 5104 20eb 26210000 		.4byte	0x2126
 5105 20ef 00       		.byte	0
 5106 20f0 14       		.uleb128 0x14
 5107 20f1 E41A0000 		.4byte	.LASF549
 5108 20f5 25       		.byte	0x25
 5109 20f6 62       		.byte	0x62
 5110 20f7 C90B0000 		.4byte	0xbc9
 5111 20fb 04       		.byte	0x4
 5112 20fc 14       		.uleb128 0x14
 5113 20fd 75050000 		.4byte	.LASF550
 5114 2101 25       		.byte	0x25
 5115 2102 6F       		.byte	0x6f
 5116 2103 26210000 		.4byte	0x2126
 5117 2107 08       		.byte	0x8
 5118 2108 14       		.uleb128 0x14
 5119 2109 93020000 		.4byte	.LASF551
 5120 210d 25       		.byte	0x25
 5121 210e 78       		.byte	0x78
 5122 210f 31210000 		.4byte	0x2131
 5123 2113 0C       		.byte	0xc
 5124 2114 14       		.uleb128 0x14
 5125 2115 EA0B0000 		.4byte	.LASF552
 5126 2119 25       		.byte	0x25
 5127 211a 7D       		.byte	0x7d
 5128 211b C90B0000 		.4byte	0xbc9
 5129 211f 10       		.byte	0x10
 5130 2120 00       		.byte	0
 5131 2121 4F       		.uleb128 0x4f
 5132 2122 5C180000 		.4byte	0x185c
 5133 2126 1C       		.uleb128 0x1c
 5134 2127 04       		.byte	0x4
 5135 2128 21210000 		.4byte	0x2121
 5136 212c 4F       		.uleb128 0x4f
 5137 212d 96010000 		.4byte	0x196
 5138 2131 1C       		.uleb128 0x1c
 5139 2132 04       		.byte	0x4
 5140 2133 2C210000 		.4byte	0x212c
 5141 2137 04       		.uleb128 0x4
 5142 2138 D3050000 		.4byte	.LASF553
 5143 213c 25       		.byte	0x25
 5144 213d 7E       		.byte	0x7e
 5145 213e D8200000 		.4byte	0x20d8
 5146 2142 17       		.uleb128 0x17
 5147 2143 08       		.byte	0x8
 5148 2144 26       		.byte	0x26
 5149 2145 64       		.byte	0x64
ARM GAS  /tmp/cc4jIqrt.s 			page 98


 5150 2146 9E0B0000 		.4byte	.LASF554
 5151 214a 67210000 		.4byte	0x2167
 5152 214e 14       		.uleb128 0x14
 5153 214f 94040000 		.4byte	.LASF555
 5154 2153 26       		.byte	0x26
 5155 2154 66       		.byte	0x66
 5156 2155 67210000 		.4byte	0x2167
 5157 2159 00       		.byte	0
 5158 215a 14       		.uleb128 0x14
 5159 215b 470F0000 		.4byte	.LASF556
 5160 215f 26       		.byte	0x26
 5161 2160 68       		.byte	0x68
 5162 2161 6D210000 		.4byte	0x216d
 5163 2165 04       		.byte	0x4
 5164 2166 00       		.byte	0
 5165 2167 1C       		.uleb128 0x1c
 5166 2168 04       		.byte	0x4
 5167 2169 CC200000 		.4byte	0x20cc
 5168 216d 1C       		.uleb128 0x1c
 5169 216e 04       		.byte	0x4
 5170 216f 73210000 		.4byte	0x2173
 5171 2173 1C       		.uleb128 0x1c
 5172 2174 04       		.byte	0x4
 5173 2175 37210000 		.4byte	0x2137
 5174 2179 04       		.uleb128 0x4
 5175 217a 570E0000 		.4byte	.LASF557
 5176 217e 26       		.byte	0x26
 5177 217f 69       		.byte	0x69
 5178 2180 42210000 		.4byte	0x2142
 5179 2184 17       		.uleb128 0x17
 5180 2185 0C       		.byte	0xc
 5181 2186 26       		.byte	0x26
 5182 2187 6F       		.byte	0x6f
 5183 2188 D2160000 		.4byte	.LASF558
 5184 218c B5210000 		.4byte	0x21b5
 5185 2190 14       		.uleb128 0x14
 5186 2191 09050000 		.4byte	.LASF559
 5187 2195 26       		.byte	0x26
 5188 2196 71       		.byte	0x71
 5189 2197 B5210000 		.4byte	0x21b5
 5190 219b 00       		.byte	0
 5191 219c 14       		.uleb128 0x14
 5192 219d 8D120000 		.4byte	.LASF560
 5193 21a1 26       		.byte	0x26
 5194 21a2 73       		.byte	0x73
 5195 21a3 BB210000 		.4byte	0x21bb
 5196 21a7 04       		.byte	0x4
 5197 21a8 14       		.uleb128 0x14
 5198 21a9 940A0000 		.4byte	.LASF561
 5199 21ad 26       		.byte	0x26
 5200 21ae 7C       		.byte	0x7c
 5201 21af C1210000 		.4byte	0x21c1
 5202 21b3 08       		.byte	0x8
 5203 21b4 00       		.byte	0
 5204 21b5 1C       		.uleb128 0x1c
 5205 21b6 04       		.byte	0x4
 5206 21b7 FC1F0000 		.4byte	0x1ffc
ARM GAS  /tmp/cc4jIqrt.s 			page 99


 5207 21bb 1C       		.uleb128 0x1c
 5208 21bc 04       		.byte	0x4
 5209 21bd 79210000 		.4byte	0x2179
 5210 21c1 1C       		.uleb128 0x1c
 5211 21c2 04       		.byte	0x4
 5212 21c3 4A200000 		.4byte	0x204a
 5213 21c7 04       		.uleb128 0x4
 5214 21c8 060D0000 		.4byte	.LASF562
 5215 21cc 26       		.byte	0x26
 5216 21cd 7D       		.byte	0x7d
 5217 21ce 84210000 		.4byte	0x2184
 5218 21d2 12       		.uleb128 0x12
 5219 21d3 CF0A0000 		.4byte	.LASF563
 5220 21d7 26       		.byte	0x26
 5221 21d8 80       		.byte	0x80
 5222 21d9 C7210000 		.4byte	0x21c7
 5223 21dd 17       		.uleb128 0x17
 5224 21de 18       		.byte	0x18
 5225 21df 27       		.byte	0x27
 5226 21e0 54       		.byte	0x54
 5227 21e1 A1120000 		.4byte	.LASF564
 5228 21e5 26220000 		.4byte	0x2226
 5229 21e9 1B       		.uleb128 0x1b
 5230 21ea 72657100 		.ascii	"req\000"
 5231 21ee 27       		.byte	0x27
 5232 21ef 57       		.byte	0x57
 5233 21f0 2C1F0000 		.4byte	0x1f2c
 5234 21f4 00       		.byte	0
 5235 21f5 14       		.uleb128 0x14
 5236 21f6 F3000000 		.4byte	.LASF565
 5237 21fa 27       		.byte	0x27
 5238 21fb 5B       		.byte	0x5b
 5239 21fc 26220000 		.4byte	0x2226
 5240 2200 08       		.byte	0x8
 5241 2201 14       		.uleb128 0x14
 5242 2202 94050000 		.4byte	.LASF566
 5243 2206 27       		.byte	0x27
 5244 2207 5E       		.byte	0x5e
 5245 2208 B6010000 		.4byte	0x1b6
 5246 220c 0C       		.byte	0xc
 5247 220d 14       		.uleb128 0x14
 5248 220e D6100000 		.4byte	.LASF567
 5249 2212 27       		.byte	0x27
 5250 2213 61       		.byte	0x61
 5251 2214 C90B0000 		.4byte	0xbc9
 5252 2218 10       		.byte	0x10
 5253 2219 14       		.uleb128 0x14
 5254 221a 54170000 		.4byte	.LASF568
 5255 221e 27       		.byte	0x27
 5256 221f 65       		.byte	0x65
 5257 2220 26210000 		.4byte	0x2126
 5258 2224 14       		.byte	0x14
 5259 2225 00       		.byte	0
 5260 2226 1C       		.uleb128 0x1c
 5261 2227 04       		.byte	0x4
 5262 2228 96010000 		.4byte	0x196
 5263 222c 04       		.uleb128 0x4
ARM GAS  /tmp/cc4jIqrt.s 			page 100


 5264 222d 1F050000 		.4byte	.LASF569
 5265 2231 27       		.byte	0x27
 5266 2232 66       		.byte	0x66
 5267 2233 DD210000 		.4byte	0x21dd
 5268 2237 12       		.uleb128 0x12
 5269 2238 3B000000 		.4byte	.LASF570
 5270 223c 27       		.byte	0x27
 5271 223d 67       		.byte	0x67
 5272 223e 2C220000 		.4byte	0x222c
 5273 2242 50       		.uleb128 0x50
 5274 2243 BE1B0000 		.4byte	0x1bbe
 5275 2247 02       		.byte	0x2
 5276 2248 20       		.byte	0x20
 5277 2249 05       		.uleb128 0x5
 5278 224a 03       		.byte	0x3
 5279 224b 00000000 		.4byte	g_APinDescription
 5280 224f 51       		.uleb128 0x51
 5281 2250 CE010000 		.4byte	.LASF571
 5282 2254 02       		.byte	0x2
 5283 2255 F7       		.byte	0xf7
 5284 2256 9B1C0000 		.4byte	0x1c9b
 5285 225a 05       		.uleb128 0x5
 5286 225b 03       		.byte	0x3
 5287 225c 00000000 		.4byte	rx_buffer1
 5288 2260 51       		.uleb128 0x51
 5289 2261 00130000 		.4byte	.LASF572
 5290 2265 02       		.byte	0x2
 5291 2266 F8       		.byte	0xf8
 5292 2267 9B1C0000 		.4byte	0x1c9b
 5293 226b 05       		.uleb128 0x5
 5294 226c 03       		.byte	0x3
 5295 226d 00000000 		.4byte	tx_buffer1
 5296 2271 51       		.uleb128 0x51
 5297 2272 11150000 		.4byte	.LASF573
 5298 2276 02       		.byte	0x2
 5299 2277 F9       		.byte	0xf9
 5300 2278 9B1C0000 		.4byte	0x1c9b
 5301 227c 05       		.uleb128 0x5
 5302 227d 03       		.byte	0x3
 5303 227e 00000000 		.4byte	rx_buffer2
 5304 2282 51       		.uleb128 0x51
 5305 2283 0B130000 		.4byte	.LASF574
 5306 2287 02       		.byte	0x2
 5307 2288 FA       		.byte	0xfa
 5308 2289 9B1C0000 		.4byte	0x1c9b
 5309 228d 05       		.uleb128 0x5
 5310 228e 03       		.byte	0x3
 5311 228f 00000000 		.4byte	tx_buffer2
 5312 2293 50       		.uleb128 0x50
 5313 2294 C71E0000 		.4byte	0x1ec7
 5314 2298 02       		.byte	0x2
 5315 2299 FC       		.byte	0xfc
 5316 229a 05       		.uleb128 0x5
 5317 229b 03       		.byte	0x3
 5318 229c 00000000 		.4byte	Serial
 5319 22a0 52       		.uleb128 0x52
 5320 22a1 D21E0000 		.4byte	0x1ed2
ARM GAS  /tmp/cc4jIqrt.s 			page 101


 5321 22a5 02       		.byte	0x2
 5322 22a6 0301     		.2byte	0x103
 5323 22a8 05       		.uleb128 0x5
 5324 22a9 03       		.byte	0x3
 5325 22aa 00000000 		.4byte	Serial1
 5326 22ae 53       		.uleb128 0x53
 5327 22af 1B110000 		.4byte	.LASF575
 5328 22b3 7B040000 		.4byte	0x47b
 5329 22b7 54       		.uleb128 0x54
 5330 22b8 F91A0000 		.4byte	.LASF620
 5331 22bc 00000000 		.4byte	.LFB549
 5332 22c0 98000000 		.4byte	.LFE549-.LFB549
 5333 22c4 01       		.uleb128 0x1
 5334 22c5 9C       		.byte	0x9c
 5335 22c6 CD230000 		.4byte	0x23cd
 5336 22ca 55       		.uleb128 0x55
 5337 22cb CD230000 		.4byte	0x23cd
 5338 22cf 04000000 		.4byte	.LBB61
 5339 22d3 00000000 		.4byte	.Ldebug_ranges0+0
 5340 22d7 02       		.byte	0x2
 5341 22d8 2E01     		.2byte	0x12e
 5342 22da 56       		.uleb128 0x56
 5343 22db D7230000 		.4byte	0x23d7
 5344 22df 01       		.byte	0x1
 5345 22e0 57       		.uleb128 0x57
 5346 22e1 E3230000 		.4byte	0x23e3
 5347 22e5 FFFF     		.2byte	0xffff
 5348 22e7 58       		.uleb128 0x58
 5349 22e8 14000000 		.4byte	.LVL20
 5350 22ec F7220000 		.4byte	0x22f7
 5351 22f0 59       		.uleb128 0x59
 5352 22f1 01       		.uleb128 0x1
 5353 22f2 50       		.byte	0x50
 5354 22f3 02       		.uleb128 0x2
 5355 22f4 79       		.byte	0x79
 5356 22f5 00       		.sleb128 0
 5357 22f6 00       		.byte	0
 5358 22f7 58       		.uleb128 0x58
 5359 22f8 20000000 		.4byte	.LVL21
 5360 22fc 07230000 		.4byte	0x2307
 5361 2300 59       		.uleb128 0x59
 5362 2301 01       		.uleb128 0x1
 5363 2302 50       		.byte	0x50
 5364 2303 02       		.uleb128 0x2
 5365 2304 75       		.byte	0x75
 5366 2305 00       		.sleb128 0
 5367 2306 00       		.byte	0
 5368 2307 58       		.uleb128 0x58
 5369 2308 26000000 		.4byte	.LVL22
 5370 230c 17230000 		.4byte	0x2317
 5371 2310 59       		.uleb128 0x59
 5372 2311 01       		.uleb128 0x1
 5373 2312 50       		.byte	0x50
 5374 2313 02       		.uleb128 0x2
 5375 2314 77       		.byte	0x77
 5376 2315 00       		.sleb128 0
 5377 2316 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 102


 5378 2317 58       		.uleb128 0x58
 5379 2318 2C000000 		.4byte	.LVL23
 5380 231c 27230000 		.4byte	0x2327
 5381 2320 59       		.uleb128 0x59
 5382 2321 01       		.uleb128 0x1
 5383 2322 50       		.byte	0x50
 5384 2323 02       		.uleb128 0x2
 5385 2324 78       		.byte	0x78
 5386 2325 00       		.sleb128 0
 5387 2326 00       		.byte	0
 5388 2327 58       		.uleb128 0x58
 5389 2328 42000000 		.4byte	.LVL24
 5390 232c 5B230000 		.4byte	0x235b
 5391 2330 59       		.uleb128 0x59
 5392 2331 01       		.uleb128 0x1
 5393 2332 50       		.byte	0x50
 5394 2333 02       		.uleb128 0x2
 5395 2334 74       		.byte	0x74
 5396 2335 00       		.sleb128 0
 5397 2336 59       		.uleb128 0x59
 5398 2337 01       		.uleb128 0x1
 5399 2338 51       		.byte	0x51
 5400 2339 05       		.uleb128 0x5
 5401 233a 0C       		.byte	0xc
 5402 233b 00080E40 		.4byte	0x400e0800
 5403 233f 59       		.uleb128 0x59
 5404 2340 01       		.uleb128 0x1
 5405 2341 52       		.byte	0x52
 5406 2342 01       		.uleb128 0x1
 5407 2343 37       		.byte	0x37
 5408 2344 59       		.uleb128 0x59
 5409 2345 01       		.uleb128 0x1
 5410 2346 53       		.byte	0x53
 5411 2347 01       		.uleb128 0x1
 5412 2348 37       		.byte	0x37
 5413 2349 59       		.uleb128 0x59
 5414 234a 02       		.uleb128 0x2
 5415 234b 7D       		.byte	0x7d
 5416 234c 00       		.sleb128 0
 5417 234d 02       		.uleb128 0x2
 5418 234e 79       		.byte	0x79
 5419 234f 00       		.sleb128 0
 5420 2350 59       		.uleb128 0x59
 5421 2351 02       		.uleb128 0x2
 5422 2352 7D       		.byte	0x7d
 5423 2353 04       		.sleb128 4
 5424 2354 05       		.uleb128 0x5
 5425 2355 03       		.byte	0x3
 5426 2356 00000000 		.4byte	.LANCHOR3
 5427 235a 00       		.byte	0
 5428 235b 5A       		.uleb128 0x5a
 5429 235c 4C000000 		.4byte	.LVL25
 5430 2360 9F280000 		.4byte	0x289f
 5431 2364 7B230000 		.4byte	0x237b
 5432 2368 59       		.uleb128 0x59
 5433 2369 01       		.uleb128 0x1
 5434 236a 50       		.byte	0x50
ARM GAS  /tmp/cc4jIqrt.s 			page 103


 5435 236b 02       		.uleb128 0x2
 5436 236c 74       		.byte	0x74
 5437 236d 00       		.sleb128 0
 5438 236e 59       		.uleb128 0x59
 5439 236f 01       		.uleb128 0x1
 5440 2370 51       		.byte	0x51
 5441 2371 02       		.uleb128 0x2
 5442 2372 75       		.byte	0x75
 5443 2373 00       		.sleb128 0
 5444 2374 59       		.uleb128 0x59
 5445 2375 01       		.uleb128 0x1
 5446 2376 52       		.byte	0x52
 5447 2377 02       		.uleb128 0x2
 5448 2378 76       		.byte	0x76
 5449 2379 00       		.sleb128 0
 5450 237a 00       		.byte	0
 5451 237b 58       		.uleb128 0x58
 5452 237c 60000000 		.4byte	.LVL26
 5453 2380 AC230000 		.4byte	0x23ac
 5454 2384 59       		.uleb128 0x59
 5455 2385 01       		.uleb128 0x1
 5456 2386 50       		.byte	0x50
 5457 2387 02       		.uleb128 0x2
 5458 2388 74       		.byte	0x74
 5459 2389 00       		.sleb128 0
 5460 238a 59       		.uleb128 0x59
 5461 238b 01       		.uleb128 0x1
 5462 238c 51       		.byte	0x51
 5463 238d 05       		.uleb128 0x5
 5464 238e 0C       		.byte	0xc
 5465 238f 000A0E40 		.4byte	0x400e0a00
 5466 2393 59       		.uleb128 0x59
 5467 2394 01       		.uleb128 0x1
 5468 2395 52       		.byte	0x52
 5469 2396 01       		.uleb128 0x1
 5470 2397 38       		.byte	0x38
 5471 2398 59       		.uleb128 0x59
 5472 2399 01       		.uleb128 0x1
 5473 239a 53       		.byte	0x53
 5474 239b 01       		.uleb128 0x1
 5475 239c 38       		.byte	0x38
 5476 239d 59       		.uleb128 0x59
 5477 239e 02       		.uleb128 0x2
 5478 239f 7D       		.byte	0x7d
 5479 23a0 00       		.sleb128 0
 5480 23a1 02       		.uleb128 0x2
 5481 23a2 77       		.byte	0x77
 5482 23a3 00       		.sleb128 0
 5483 23a4 59       		.uleb128 0x59
 5484 23a5 02       		.uleb128 0x2
 5485 23a6 7D       		.byte	0x7d
 5486 23a7 04       		.sleb128 4
 5487 23a8 02       		.uleb128 0x2
 5488 23a9 78       		.byte	0x78
 5489 23aa 00       		.sleb128 0
 5490 23ab 00       		.byte	0
 5491 23ac 5B       		.uleb128 0x5b
ARM GAS  /tmp/cc4jIqrt.s 			page 104


 5492 23ad 70000000 		.4byte	.LVL27
 5493 23b1 9F280000 		.4byte	0x289f
 5494 23b5 59       		.uleb128 0x59
 5495 23b6 01       		.uleb128 0x1
 5496 23b7 50       		.byte	0x50
 5497 23b8 05       		.uleb128 0x5
 5498 23b9 03       		.byte	0x3
 5499 23ba 00000000 		.4byte	.LANCHOR1
 5500 23be 59       		.uleb128 0x59
 5501 23bf 01       		.uleb128 0x1
 5502 23c0 51       		.byte	0x51
 5503 23c1 05       		.uleb128 0x5
 5504 23c2 03       		.byte	0x3
 5505 23c3 00000000 		.4byte	_ZN9UARTClassD1Ev
 5506 23c7 5C       		.uleb128 0x5c
 5507 23c8 01       		.uleb128 0x1
 5508 23c9 52       		.byte	0x52
 5509 23ca 00       		.byte	0
 5510 23cb 00       		.byte	0
 5511 23cc 00       		.byte	0
 5512 23cd 5D       		.uleb128 0x5d
 5513 23ce 45130000 		.4byte	.LASF621
 5514 23d2 01       		.byte	0x1
 5515 23d3 F0230000 		.4byte	0x23f0
 5516 23d7 5E       		.uleb128 0x5e
 5517 23d8 D8040000 		.4byte	.LASF576
 5518 23dc 02       		.byte	0x2
 5519 23dd 2E01     		.2byte	0x12e
 5520 23df 25000000 		.4byte	0x25
 5521 23e3 5E       		.uleb128 0x5e
 5522 23e4 75070000 		.4byte	.LASF577
 5523 23e8 02       		.byte	0x2
 5524 23e9 2E01     		.2byte	0x12e
 5525 23eb 25000000 		.4byte	0x25
 5526 23ef 00       		.byte	0
 5527 23f0 1C       		.uleb128 0x1c
 5528 23f1 04       		.byte	0x4
 5529 23f2 7E1D0000 		.4byte	0x1d7e
 5530 23f6 03       		.uleb128 0x3
 5531 23f7 F0230000 		.4byte	0x23f0
 5532 23fb 5F       		.uleb128 0x5f
 5533 23fc 8E1D0000 		.4byte	0x1d8e
 5534 2400 01       		.byte	0x1
 5535 2401 26       		.byte	0x26
 5536 2402 02       		.byte	0x2
 5537 2403 0B240000 		.4byte	0x240b
 5538 2407 1E240000 		.4byte	0x241e
 5539 240b 60       		.uleb128 0x60
 5540 240c 6C1B0000 		.4byte	.LASF578
 5541 2410 F6230000 		.4byte	0x23f6
 5542 2414 60       		.uleb128 0x60
 5543 2415 8B180000 		.4byte	.LASF579
 5544 2419 2C000000 		.4byte	0x2c
 5545 241d 00       		.byte	0
 5546 241e 61       		.uleb128 0x61
 5547 241f FB230000 		.4byte	0x23fb
 5548 2423 A40D0000 		.4byte	.LASF580
ARM GAS  /tmp/cc4jIqrt.s 			page 105


 5549 2427 3D240000 		.4byte	0x243d
 5550 242b 00000000 		.4byte	.LFB548
 5551 242f 0E000000 		.4byte	.LFE548-.LFB548
 5552 2433 01       		.uleb128 0x1
 5553 2434 9C       		.byte	0x9c
 5554 2435 3D240000 		.4byte	0x243d
 5555 2439 5D240000 		.4byte	0x245d
 5556 243d 62       		.uleb128 0x62
 5557 243e 0B240000 		.4byte	0x240b
 5558 2442 00000000 		.4byte	.LLST7
 5559 2446 63       		.uleb128 0x63
 5560 2447 0A000000 		.4byte	.LVL18
 5561 244b A8280000 		.4byte	0x28a8
 5562 244f 59       		.uleb128 0x59
 5563 2450 01       		.uleb128 0x1
 5564 2451 50       		.byte	0x50
 5565 2452 02       		.uleb128 0x2
 5566 2453 74       		.byte	0x74
 5567 2454 00       		.sleb128 0
 5568 2455 59       		.uleb128 0x59
 5569 2456 01       		.uleb128 0x1
 5570 2457 51       		.byte	0x51
 5571 2458 02       		.uleb128 0x2
 5572 2459 08       		.byte	0x8
 5573 245a 24       		.byte	0x24
 5574 245b 00       		.byte	0
 5575 245c 00       		.byte	0
 5576 245d 61       		.uleb128 0x61
 5577 245e FB230000 		.4byte	0x23fb
 5578 2462 DD0D0000 		.4byte	.LASF581
 5579 2466 7C240000 		.4byte	0x247c
 5580 246a 00000000 		.4byte	.LFB546
 5581 246e 02000000 		.4byte	.LFE546-.LFB546
 5582 2472 01       		.uleb128 0x1
 5583 2473 9C       		.byte	0x9c
 5584 2474 7C240000 		.4byte	0x247c
 5585 2478 84240000 		.4byte	0x2484
 5586 247c 64       		.uleb128 0x64
 5587 247d 0B240000 		.4byte	0x240b
 5588 2481 01       		.uleb128 0x1
 5589 2482 50       		.byte	0x50
 5590 2483 00       		.byte	0
 5591 2484 1C       		.uleb128 0x1c
 5592 2485 04       		.byte	0x4
 5593 2486 EA1B0000 		.4byte	0x1bea
 5594 248a 03       		.uleb128 0x3
 5595 248b 84240000 		.4byte	0x2484
 5596 248f 5F       		.uleb128 0x5f
 5597 2490 FA1B0000 		.4byte	0x1bfa
 5598 2494 1E       		.byte	0x1e
 5599 2495 1A       		.byte	0x1a
 5600 2496 02       		.byte	0x2
 5601 2497 9F240000 		.4byte	0x249f
 5602 249b B2240000 		.4byte	0x24b2
 5603 249f 60       		.uleb128 0x60
 5604 24a0 6C1B0000 		.4byte	.LASF578
 5605 24a4 8A240000 		.4byte	0x248a
ARM GAS  /tmp/cc4jIqrt.s 			page 106


 5606 24a8 60       		.uleb128 0x60
 5607 24a9 8B180000 		.4byte	.LASF579
 5608 24ad 2C000000 		.4byte	0x2c
 5609 24b1 00       		.byte	0
 5610 24b2 65       		.uleb128 0x65
 5611 24b3 8F240000 		.4byte	0x248f
 5612 24b7 AB110000 		.4byte	.LASF582
 5613 24bb C3240000 		.4byte	0x24c3
 5614 24bf C9240000 		.4byte	0x24c9
 5615 24c3 66       		.uleb128 0x66
 5616 24c4 9F240000 		.4byte	0x249f
 5617 24c8 00       		.byte	0
 5618 24c9 65       		.uleb128 0x65
 5619 24ca 8F240000 		.4byte	0x248f
 5620 24ce AA160000 		.4byte	.LASF583
 5621 24d2 DA240000 		.4byte	0x24da
 5622 24d6 E0240000 		.4byte	0x24e0
 5623 24da 66       		.uleb128 0x66
 5624 24db 9F240000 		.4byte	0x249f
 5625 24df 00       		.byte	0
 5626 24e0 3D       		.uleb128 0x3d
 5627 24e1 C7010000 		.4byte	.LASF584
 5628 24e5 32250000 		.4byte	0x2532
 5629 24e9 4A       		.uleb128 0x4a
 5630 24ea 46070000 		.4byte	.LASF585
 5631 24ee FD180000 		.4byte	.LASF587
 5632 24f2 7B040000 		.4byte	0x47b
 5633 24f6 01       		.byte	0x1
 5634 24f7 E0240000 		.4byte	0x24e0
 5635 24fb 01       		.byte	0x1
 5636 24fc 04250000 		.4byte	0x2504
 5637 2500 0F250000 		.4byte	0x250f
 5638 2504 3F       		.uleb128 0x3f
 5639 2505 37250000 		.4byte	0x2537
 5640 2509 3F       		.uleb128 0x3f
 5641 250a 25000000 		.4byte	0x25
 5642 250e 00       		.byte	0
 5643 250f 67       		.uleb128 0x67
 5644 2510 16050000 		.4byte	.LASF622
 5645 2514 28       		.byte	0x28
 5646 2515 34       		.byte	0x34
 5647 2516 EF0A0000 		.4byte	.LASF623
 5648 251a 31000000 		.4byte	0x31
 5649 251e 01       		.byte	0x1
 5650 251f 02       		.uleb128 0x2
 5651 2520 10       		.byte	0x10
 5652 2521 08       		.uleb128 0x8
 5653 2522 E0240000 		.4byte	0x24e0
 5654 2526 01       		.byte	0x1
 5655 2527 2B250000 		.4byte	0x252b
 5656 252b 3F       		.uleb128 0x3f
 5657 252c 04280000 		.4byte	0x2804
 5658 2530 00       		.byte	0
 5659 2531 00       		.byte	0
 5660 2532 03       		.uleb128 0x3
 5661 2533 E0240000 		.4byte	0x24e0
 5662 2537 1C       		.uleb128 0x1c
ARM GAS  /tmp/cc4jIqrt.s 			page 107


 5663 2538 04       		.byte	0x4
 5664 2539 E0240000 		.4byte	0x24e0
 5665 253d 03       		.uleb128 0x3
 5666 253e 37250000 		.4byte	0x2537
 5667 2542 5F       		.uleb128 0x5f
 5668 2543 E9240000 		.4byte	0x24e9
 5669 2547 28       		.byte	0x28
 5670 2548 26       		.byte	0x26
 5671 2549 02       		.byte	0x2
 5672 254a 52250000 		.4byte	0x2552
 5673 254e 65250000 		.4byte	0x2565
 5674 2552 60       		.uleb128 0x60
 5675 2553 6C1B0000 		.4byte	.LASF578
 5676 2557 3D250000 		.4byte	0x253d
 5677 255b 60       		.uleb128 0x60
 5678 255c 8B180000 		.4byte	.LASF579
 5679 2560 2C000000 		.4byte	0x2c
 5680 2564 00       		.byte	0
 5681 2565 65       		.uleb128 0x65
 5682 2566 42250000 		.4byte	0x2542
 5683 256a 4A0A0000 		.4byte	.LASF588
 5684 256e 76250000 		.4byte	0x2576
 5685 2572 7C250000 		.4byte	0x257c
 5686 2576 66       		.uleb128 0x66
 5687 2577 52250000 		.4byte	0x2552
 5688 257b 00       		.byte	0
 5689 257c 65       		.uleb128 0x65
 5690 257d 42250000 		.4byte	0x2542
 5691 2581 7E100000 		.4byte	.LASF589
 5692 2585 8D250000 		.4byte	0x258d
 5693 2589 93250000 		.4byte	0x2593
 5694 258d 66       		.uleb128 0x66
 5695 258e 52250000 		.4byte	0x2552
 5696 2592 00       		.byte	0
 5697 2593 68       		.uleb128 0x68
 5698 2594 A8070000 		.4byte	.LASF590
 5699 2598 02       		.byte	0x2
 5700 2599 1101     		.2byte	0x111
 5701 259b 00000000 		.4byte	.LFB535
 5702 259f 9C000000 		.4byte	.LFE535-.LFB535
 5703 25a3 01       		.uleb128 0x1
 5704 25a4 9C       		.byte	0x9c
 5705 25a5 71270000 		.4byte	0x2771
 5706 25a9 69       		.uleb128 0x69
 5707 25aa 71270000 		.4byte	0x2771
 5708 25ae 02000000 		.4byte	.LBB47
 5709 25b2 12000000 		.4byte	.LBE47-.LBB47
 5710 25b6 02       		.byte	0x2
 5711 25b7 1601     		.2byte	0x116
 5712 25b9 EA250000 		.4byte	0x25ea
 5713 25bd 62       		.uleb128 0x62
 5714 25be 82270000 		.4byte	0x2782
 5715 25c2 1E000000 		.4byte	.LLST1
 5716 25c6 63       		.uleb128 0x63
 5717 25c7 14000000 		.4byte	.LVL7
 5718 25cb B5280000 		.4byte	0x28b5
 5719 25cf 59       		.uleb128 0x59
ARM GAS  /tmp/cc4jIqrt.s 			page 108


 5720 25d0 01       		.uleb128 0x1
 5721 25d1 50       		.byte	0x50
 5722 25d2 02       		.uleb128 0x2
 5723 25d3 74       		.byte	0x74
 5724 25d4 00       		.sleb128 0
 5725 25d5 59       		.uleb128 0x59
 5726 25d6 01       		.uleb128 0x1
 5727 25d7 51       		.byte	0x51
 5728 25d8 03       		.uleb128 0x3
 5729 25d9 40       		.byte	0x40
 5730 25da 47       		.byte	0x47
 5731 25db 24       		.byte	0x24
 5732 25dc 59       		.uleb128 0x59
 5733 25dd 01       		.uleb128 0x1
 5734 25de 52       		.byte	0x52
 5735 25df 03       		.uleb128 0x3
 5736 25e0 0A       		.byte	0xa
 5737 25e1 0006     		.2byte	0x600
 5738 25e3 59       		.uleb128 0x59
 5739 25e4 01       		.uleb128 0x1
 5740 25e5 53       		.byte	0x53
 5741 25e6 01       		.uleb128 0x1
 5742 25e7 30       		.byte	0x30
 5743 25e8 00       		.byte	0
 5744 25e9 00       		.byte	0
 5745 25ea 69       		.uleb128 0x69
 5746 25eb 71270000 		.4byte	0x2771
 5747 25ef 24000000 		.4byte	.LBB49
 5748 25f3 10000000 		.4byte	.LBE49-.LBB49
 5749 25f7 02       		.byte	0x2
 5750 25f8 2201     		.2byte	0x122
 5751 25fa 2B260000 		.4byte	0x262b
 5752 25fe 62       		.uleb128 0x62
 5753 25ff 82270000 		.4byte	0x2782
 5754 2603 36000000 		.4byte	.LLST2
 5755 2607 63       		.uleb128 0x63
 5756 2608 34000000 		.4byte	.LVL11
 5757 260c B5280000 		.4byte	0x28b5
 5758 2610 59       		.uleb128 0x59
 5759 2611 01       		.uleb128 0x1
 5760 2612 50       		.byte	0x50
 5761 2613 02       		.uleb128 0x2
 5762 2614 74       		.byte	0x74
 5763 2615 00       		.sleb128 0
 5764 2616 59       		.uleb128 0x59
 5765 2617 01       		.uleb128 0x1
 5766 2618 51       		.byte	0x51
 5767 2619 03       		.uleb128 0x3
 5768 261a 40       		.byte	0x40
 5769 261b 49       		.byte	0x49
 5770 261c 24       		.byte	0x24
 5771 261d 59       		.uleb128 0x59
 5772 261e 01       		.uleb128 0x1
 5773 261f 52       		.byte	0x52
 5774 2620 03       		.uleb128 0x3
 5775 2621 40       		.byte	0x40
 5776 2622 45       		.byte	0x45
ARM GAS  /tmp/cc4jIqrt.s 			page 109


 5777 2623 24       		.byte	0x24
 5778 2624 59       		.uleb128 0x59
 5779 2625 01       		.uleb128 0x1
 5780 2626 53       		.byte	0x53
 5781 2627 01       		.uleb128 0x1
 5782 2628 30       		.byte	0x30
 5783 2629 00       		.byte	0
 5784 262a 00       		.byte	0
 5785 262b 69       		.uleb128 0x69
 5786 262c 71270000 		.4byte	0x2771
 5787 2630 34000000 		.4byte	.LBB51
 5788 2634 10000000 		.4byte	.LBE51-.LBB51
 5789 2638 02       		.byte	0x2
 5790 2639 2301     		.2byte	0x123
 5791 263b 6D260000 		.4byte	0x266d
 5792 263f 62       		.uleb128 0x62
 5793 2640 82270000 		.4byte	0x2782
 5794 2644 4E000000 		.4byte	.LLST3
 5795 2648 63       		.uleb128 0x63
 5796 2649 44000000 		.4byte	.LVL12
 5797 264d B5280000 		.4byte	0x28b5
 5798 2651 59       		.uleb128 0x59
 5799 2652 01       		.uleb128 0x1
 5800 2653 50       		.byte	0x50
 5801 2654 02       		.uleb128 0x2
 5802 2655 74       		.byte	0x74
 5803 2656 00       		.sleb128 0
 5804 2657 59       		.uleb128 0x59
 5805 2658 01       		.uleb128 0x1
 5806 2659 51       		.byte	0x51
 5807 265a 03       		.uleb128 0x3
 5808 265b 48       		.byte	0x48
 5809 265c 48       		.byte	0x48
 5810 265d 24       		.byte	0x24
 5811 265e 59       		.uleb128 0x59
 5812 265f 01       		.uleb128 0x1
 5813 2660 52       		.byte	0x52
 5814 2661 04       		.uleb128 0x4
 5815 2662 42       		.byte	0x42
 5816 2663 49       		.byte	0x49
 5817 2664 24       		.byte	0x24
 5818 2665 1F       		.byte	0x1f
 5819 2666 59       		.uleb128 0x59
 5820 2667 01       		.uleb128 0x1
 5821 2668 53       		.byte	0x53
 5822 2669 01       		.uleb128 0x1
 5823 266a 31       		.byte	0x31
 5824 266b 00       		.byte	0
 5825 266c 00       		.byte	0
 5826 266d 69       		.uleb128 0x69
 5827 266e 71270000 		.4byte	0x2771
 5828 2672 44000000 		.4byte	.LBB53
 5829 2676 10000000 		.4byte	.LBE53-.LBB53
 5830 267a 02       		.byte	0x2
 5831 267b 2601     		.2byte	0x126
 5832 267d B1260000 		.4byte	0x26b1
 5833 2681 62       		.uleb128 0x62
ARM GAS  /tmp/cc4jIqrt.s 			page 110


 5834 2682 82270000 		.4byte	0x2782
 5835 2686 66000000 		.4byte	.LLST4
 5836 268a 63       		.uleb128 0x63
 5837 268b 54000000 		.4byte	.LVL13
 5838 268f B5280000 		.4byte	0x28b5
 5839 2693 59       		.uleb128 0x59
 5840 2694 01       		.uleb128 0x1
 5841 2695 50       		.byte	0x50
 5842 2696 05       		.uleb128 0x5
 5843 2697 0C       		.byte	0xc
 5844 2698 00120E40 		.4byte	0x400e1200
 5845 269c 59       		.uleb128 0x59
 5846 269d 01       		.uleb128 0x1
 5847 269e 51       		.byte	0x51
 5848 269f 03       		.uleb128 0x3
 5849 26a0 4C       		.byte	0x4c
 5850 26a1 49       		.byte	0x49
 5851 26a2 24       		.byte	0x24
 5852 26a3 59       		.uleb128 0x59
 5853 26a4 01       		.uleb128 0x1
 5854 26a5 52       		.byte	0x52
 5855 26a6 03       		.uleb128 0x3
 5856 26a7 0A       		.byte	0xa
 5857 26a8 0004     		.2byte	0x400
 5858 26aa 59       		.uleb128 0x59
 5859 26ab 01       		.uleb128 0x1
 5860 26ac 53       		.byte	0x53
 5861 26ad 01       		.uleb128 0x1
 5862 26ae 30       		.byte	0x30
 5863 26af 00       		.byte	0
 5864 26b0 00       		.byte	0
 5865 26b1 69       		.uleb128 0x69
 5866 26b2 71270000 		.4byte	0x2771
 5867 26b6 54000000 		.4byte	.LBB55
 5868 26ba 10000000 		.4byte	.LBE55-.LBB55
 5869 26be 02       		.byte	0x2
 5870 26bf 2701     		.2byte	0x127
 5871 26c1 F2260000 		.4byte	0x26f2
 5872 26c5 62       		.uleb128 0x62
 5873 26c6 82270000 		.4byte	0x2782
 5874 26ca 7E000000 		.4byte	.LLST5
 5875 26ce 63       		.uleb128 0x63
 5876 26cf 64000000 		.4byte	.LVL14
 5877 26d3 B5280000 		.4byte	0x28b5
 5878 26d7 59       		.uleb128 0x59
 5879 26d8 01       		.uleb128 0x1
 5880 26d9 50       		.byte	0x50
 5881 26da 02       		.uleb128 0x2
 5882 26db 74       		.byte	0x74
 5883 26dc 00       		.sleb128 0
 5884 26dd 59       		.uleb128 0x59
 5885 26de 01       		.uleb128 0x1
 5886 26df 51       		.byte	0x51
 5887 26e0 03       		.uleb128 0x3
 5888 26e1 44       		.byte	0x44
 5889 26e2 49       		.byte	0x49
 5890 26e3 24       		.byte	0x24
ARM GAS  /tmp/cc4jIqrt.s 			page 111


 5891 26e4 59       		.uleb128 0x59
 5892 26e5 01       		.uleb128 0x1
 5893 26e6 52       		.byte	0x52
 5894 26e7 03       		.uleb128 0x3
 5895 26e8 0A       		.byte	0xa
 5896 26e9 0040     		.2byte	0x4000
 5897 26eb 59       		.uleb128 0x59
 5898 26ec 01       		.uleb128 0x1
 5899 26ed 53       		.byte	0x53
 5900 26ee 01       		.uleb128 0x1
 5901 26ef 31       		.byte	0x31
 5902 26f0 00       		.byte	0
 5903 26f1 00       		.byte	0
 5904 26f2 69       		.uleb128 0x69
 5905 26f3 71270000 		.4byte	0x2771
 5906 26f7 64000000 		.4byte	.LBB57
 5907 26fb 10000000 		.4byte	.LBE57-.LBB57
 5908 26ff 02       		.byte	0x2
 5909 2700 2801     		.2byte	0x128
 5910 2702 36270000 		.4byte	0x2736
 5911 2706 62       		.uleb128 0x62
 5912 2707 82270000 		.4byte	0x2782
 5913 270b 96000000 		.4byte	.LLST6
 5914 270f 63       		.uleb128 0x63
 5915 2710 74000000 		.4byte	.LVL15
 5916 2714 B5280000 		.4byte	0x28b5
 5917 2718 59       		.uleb128 0x59
 5918 2719 01       		.uleb128 0x1
 5919 271a 50       		.byte	0x50
 5920 271b 05       		.uleb128 0x5
 5921 271c 0C       		.byte	0xc
 5922 271d 00140E40 		.4byte	0x400e1400
 5923 2721 59       		.uleb128 0x59
 5924 2722 01       		.uleb128 0x1
 5925 2723 51       		.byte	0x51
 5926 2724 03       		.uleb128 0x3
 5927 2725 40       		.byte	0x40
 5928 2726 47       		.byte	0x47
 5929 2727 24       		.byte	0x24
 5930 2728 59       		.uleb128 0x59
 5931 2729 01       		.uleb128 0x1
 5932 272a 52       		.byte	0x52
 5933 272b 03       		.uleb128 0x3
 5934 272c 0A       		.byte	0xa
 5935 272d FF03     		.2byte	0x3ff
 5936 272f 59       		.uleb128 0x59
 5937 2730 01       		.uleb128 0x1
 5938 2731 53       		.byte	0x53
 5939 2732 01       		.uleb128 0x1
 5940 2733 30       		.byte	0x30
 5941 2734 00       		.byte	0
 5942 2735 00       		.byte	0
 5943 2736 5A       		.uleb128 0x5a
 5944 2737 1C000000 		.4byte	.LVL8
 5945 273b C0280000 		.4byte	0x28c0
 5946 273f 4E270000 		.4byte	0x274e
 5947 2743 59       		.uleb128 0x59
ARM GAS  /tmp/cc4jIqrt.s 			page 112


 5948 2744 01       		.uleb128 0x1
 5949 2745 50       		.byte	0x50
 5950 2746 01       		.uleb128 0x1
 5951 2747 35       		.byte	0x35
 5952 2748 59       		.uleb128 0x59
 5953 2749 01       		.uleb128 0x1
 5954 274a 51       		.byte	0x51
 5955 274b 01       		.uleb128 0x1
 5956 274c 31       		.byte	0x31
 5957 274d 00       		.byte	0
 5958 274e 6A       		.uleb128 0x6a
 5959 274f 20000000 		.4byte	.LVL9
 5960 2753 CB280000 		.4byte	0x28cb
 5961 2757 6A       		.uleb128 0x6a
 5962 2758 24000000 		.4byte	.LVL10
 5963 275c DA280000 		.4byte	0x28da
 5964 2760 63       		.uleb128 0x63
 5965 2761 7A000000 		.4byte	.LVL16
 5966 2765 E9280000 		.4byte	0x28e9
 5967 2769 59       		.uleb128 0x59
 5968 276a 01       		.uleb128 0x1
 5969 276b 50       		.byte	0x50
 5970 276c 02       		.uleb128 0x2
 5971 276d 08       		.byte	0x8
 5972 276e 39       		.byte	0x39
 5973 276f 00       		.byte	0
 5974 2770 00       		.byte	0
 5975 2771 6B       		.uleb128 0x6b
 5976 2772 B4060000 		.4byte	.LASF591
 5977 2776 02       		.byte	0x2
 5978 2777 0C01     		.2byte	0x10c
 5979 2779 12170000 		.4byte	.LASF624
 5980 277d 01       		.byte	0x1
 5981 277e 8F270000 		.4byte	0x278f
 5982 2782 5E       		.uleb128 0x5e
 5983 2783 F0160000 		.4byte	.LASF592
 5984 2787 02       		.byte	0x2
 5985 2788 0C01     		.2byte	0x10c
 5986 278a 95270000 		.4byte	0x2795
 5987 278e 00       		.byte	0
 5988 278f 6C       		.uleb128 0x6c
 5989 2790 04       		.byte	0x4
 5990 2791 A81B0000 		.4byte	0x1ba8
 5991 2795 03       		.uleb128 0x3
 5992 2796 8F270000 		.4byte	0x278f
 5993 279a 68       		.uleb128 0x68
 5994 279b CB0B0000 		.4byte	.LASF593
 5995 279f 02       		.byte	0x2
 5996 27a0 0501     		.2byte	0x105
 5997 27a2 00000000 		.4byte	.LFB533
 5998 27a6 0C000000 		.4byte	.LFE533-.LFB533
 5999 27aa 01       		.uleb128 0x1
 6000 27ab 9C       		.byte	0x9c
 6001 27ac C4270000 		.4byte	0x27c4
 6002 27b0 5B       		.uleb128 0x5b
 6003 27b1 06000000 		.4byte	.LVL2
 6004 27b5 DA1D0000 		.4byte	0x1dda
ARM GAS  /tmp/cc4jIqrt.s 			page 113


 6005 27b9 59       		.uleb128 0x59
 6006 27ba 01       		.uleb128 0x1
 6007 27bb 50       		.byte	0x50
 6008 27bc 05       		.uleb128 0x5
 6009 27bd 03       		.byte	0x3
 6010 27be 00000000 		.4byte	.LANCHOR1
 6011 27c2 00       		.byte	0
 6012 27c3 00       		.byte	0
 6013 27c4 6D       		.uleb128 0x6d
 6014 27c5 B30B0000 		.4byte	.LASF594
 6015 27c9 02       		.byte	0x2
 6016 27ca FE       		.byte	0xfe
 6017 27cb 00000000 		.4byte	.LFB532
 6018 27cf 0C000000 		.4byte	.LFE532-.LFB532
 6019 27d3 01       		.uleb128 0x1
 6020 27d4 9C       		.byte	0x9c
 6021 27d5 ED270000 		.4byte	0x27ed
 6022 27d9 5B       		.uleb128 0x5b
 6023 27da 06000000 		.4byte	.LVL1
 6024 27de DA1D0000 		.4byte	0x1dda
 6025 27e2 59       		.uleb128 0x59
 6026 27e3 01       		.uleb128 0x1
 6027 27e4 50       		.byte	0x50
 6028 27e5 05       		.uleb128 0x5
 6029 27e6 03       		.byte	0x3
 6030 27e7 00000000 		.4byte	.LANCHOR0
 6031 27eb 00       		.byte	0
 6032 27ec 00       		.byte	0
 6033 27ed 6E       		.uleb128 0x6e
 6034 27ee B41D0000 		.4byte	0x1db4
 6035 27f2 FA270000 		.4byte	0x27fa
 6036 27f6 04280000 		.4byte	0x2804
 6037 27fa 60       		.uleb128 0x60
 6038 27fb 6C1B0000 		.4byte	.LASF578
 6039 27ff F6230000 		.4byte	0x23f6
 6040 2803 00       		.byte	0
 6041 2804 1C       		.uleb128 0x1c
 6042 2805 04       		.byte	0x4
 6043 2806 32250000 		.4byte	0x2532
 6044 280a 03       		.uleb128 0x3
 6045 280b 04280000 		.4byte	0x2804
 6046 280f 6E       		.uleb128 0x6e
 6047 2810 0F250000 		.4byte	0x250f
 6048 2814 1C280000 		.4byte	0x281c
 6049 2818 26280000 		.4byte	0x2826
 6050 281c 60       		.uleb128 0x60
 6051 281d 6C1B0000 		.4byte	.LASF578
 6052 2821 0A280000 		.4byte	0x280a
 6053 2825 00       		.byte	0
 6054 2826 6F       		.uleb128 0x6f
 6055 2827 4E1C0000 		.4byte	0x1c4e
 6056 282b 02       		.byte	0x2
 6057 282c 34280000 		.4byte	0x2834
 6058 2830 47280000 		.4byte	0x2847
 6059 2834 60       		.uleb128 0x60
 6060 2835 6C1B0000 		.4byte	.LASF578
 6061 2839 791C0000 		.4byte	0x1c79
ARM GAS  /tmp/cc4jIqrt.s 			page 114


 6062 283d 60       		.uleb128 0x60
 6063 283e 8B180000 		.4byte	.LASF579
 6064 2842 2C000000 		.4byte	0x2c
 6065 2846 00       		.byte	0
 6066 2847 65       		.uleb128 0x65
 6067 2848 26280000 		.4byte	0x2826
 6068 284c 18080000 		.4byte	.LASF595
 6069 2850 58280000 		.4byte	0x2858
 6070 2854 5E280000 		.4byte	0x285e
 6071 2858 66       		.uleb128 0x66
 6072 2859 34280000 		.4byte	0x2834
 6073 285d 00       		.byte	0
 6074 285e 65       		.uleb128 0x65
 6075 285f 26280000 		.4byte	0x2826
 6076 2863 BF0D0000 		.4byte	.LASF596
 6077 2867 6F280000 		.4byte	0x286f
 6078 286b 75280000 		.4byte	0x2875
 6079 286f 66       		.uleb128 0x66
 6080 2870 34280000 		.4byte	0x2834
 6081 2874 00       		.byte	0
 6082 2875 70       		.uleb128 0x70
 6083 2876 71270000 		.4byte	0x2771
 6084 287a 12170000 		.4byte	.LASF624
 6085 287e 00000000 		.4byte	.LFB534
 6086 2882 0C000000 		.4byte	.LFE534-.LFB534
 6087 2886 01       		.uleb128 0x1
 6088 2887 9C       		.byte	0x9c
 6089 2888 9F280000 		.4byte	0x289f
 6090 288c 62       		.uleb128 0x62
 6091 288d 82270000 		.4byte	0x2782
 6092 2891 AE000000 		.4byte	.LLST0
 6093 2895 71       		.uleb128 0x71
 6094 2896 0C000000 		.4byte	.LVL5
 6095 289a B5280000 		.4byte	0x28b5
 6096 289e 00       		.byte	0
 6097 289f 72       		.uleb128 0x72
 6098 28a0 E1160000 		.4byte	.LASF625
 6099 28a4 E1160000 		.4byte	.LASF625
 6100 28a8 73       		.uleb128 0x73
 6101 28a9 6F130000 		.4byte	.LASF626
 6102 28ad 8B140000 		.4byte	.LASF627
 6103 28b1 6F130000 		.4byte	.LASF626
 6104 28b5 74       		.uleb128 0x74
 6105 28b6 6A0E0000 		.4byte	.LASF597
 6106 28ba 6A0E0000 		.4byte	.LASF597
 6107 28be 1B       		.byte	0x1b
 6108 28bf 96       		.byte	0x96
 6109 28c0 74       		.uleb128 0x74
 6110 28c1 FD060000 		.4byte	.LASF598
 6111 28c5 FD060000 		.4byte	.LASF598
 6112 28c9 29       		.byte	0x29
 6113 28ca 59       		.byte	0x59
 6114 28cb 4C       		.uleb128 0x4c
 6115 28cc 4D090000 		.4byte	.LASF600
 6116 28d0 0E110000 		.4byte	.LASF602
 6117 28d4 2A       		.byte	0x2a
 6118 28d5 10       		.byte	0x10
ARM GAS  /tmp/cc4jIqrt.s 			page 115


 6119 28d6 4D090000 		.4byte	.LASF600
 6120 28da 4C       		.uleb128 0x4c
 6121 28db 1F0F0000 		.4byte	.LASF603
 6122 28df 3C0E0000 		.4byte	.LASF604
 6123 28e3 2B       		.byte	0x2b
 6124 28e4 17       		.byte	0x17
 6125 28e5 1F0F0000 		.4byte	.LASF603
 6126 28e9 74       		.uleb128 0x74
 6127 28ea 02080000 		.4byte	.LASF605
 6128 28ee 02080000 		.4byte	.LASF605
 6129 28f2 2C       		.byte	0x2c
 6130 28f3 DB       		.byte	0xdb
 6131 28f4 00       		.byte	0
 6132              		.section	.debug_abbrev,"",%progbits
 6133              	.Ldebug_abbrev0:
 6134 0000 01       		.uleb128 0x1
 6135 0001 11       		.uleb128 0x11
 6136 0002 01       		.byte	0x1
 6137 0003 25       		.uleb128 0x25
 6138 0004 0E       		.uleb128 0xe
 6139 0005 13       		.uleb128 0x13
 6140 0006 0B       		.uleb128 0xb
 6141 0007 03       		.uleb128 0x3
 6142 0008 0E       		.uleb128 0xe
 6143 0009 1B       		.uleb128 0x1b
 6144 000a 0E       		.uleb128 0xe
 6145 000b 55       		.uleb128 0x55
 6146 000c 17       		.uleb128 0x17
 6147 000d 11       		.uleb128 0x11
 6148 000e 01       		.uleb128 0x1
 6149 000f 10       		.uleb128 0x10
 6150 0010 17       		.uleb128 0x17
 6151 0011 00       		.byte	0
 6152 0012 00       		.byte	0
 6153 0013 02       		.uleb128 0x2
 6154 0014 24       		.uleb128 0x24
 6155 0015 00       		.byte	0
 6156 0016 0B       		.uleb128 0xb
 6157 0017 0B       		.uleb128 0xb
 6158 0018 3E       		.uleb128 0x3e
 6159 0019 0B       		.uleb128 0xb
 6160 001a 03       		.uleb128 0x3
 6161 001b 08       		.uleb128 0x8
 6162 001c 00       		.byte	0
 6163 001d 00       		.byte	0
 6164 001e 03       		.uleb128 0x3
 6165 001f 26       		.uleb128 0x26
 6166 0020 00       		.byte	0
 6167 0021 49       		.uleb128 0x49
 6168 0022 13       		.uleb128 0x13
 6169 0023 00       		.byte	0
 6170 0024 00       		.byte	0
 6171 0025 04       		.uleb128 0x4
 6172 0026 16       		.uleb128 0x16
 6173 0027 00       		.byte	0
 6174 0028 03       		.uleb128 0x3
 6175 0029 0E       		.uleb128 0xe
ARM GAS  /tmp/cc4jIqrt.s 			page 116


 6176 002a 3A       		.uleb128 0x3a
 6177 002b 0B       		.uleb128 0xb
 6178 002c 3B       		.uleb128 0x3b
 6179 002d 0B       		.uleb128 0xb
 6180 002e 49       		.uleb128 0x49
 6181 002f 13       		.uleb128 0x13
 6182 0030 00       		.byte	0
 6183 0031 00       		.byte	0
 6184 0032 05       		.uleb128 0x5
 6185 0033 35       		.uleb128 0x35
 6186 0034 00       		.byte	0
 6187 0035 49       		.uleb128 0x49
 6188 0036 13       		.uleb128 0x13
 6189 0037 00       		.byte	0
 6190 0038 00       		.byte	0
 6191 0039 06       		.uleb128 0x6
 6192 003a 24       		.uleb128 0x24
 6193 003b 00       		.byte	0
 6194 003c 0B       		.uleb128 0xb
 6195 003d 0B       		.uleb128 0xb
 6196 003e 3E       		.uleb128 0x3e
 6197 003f 0B       		.uleb128 0xb
 6198 0040 03       		.uleb128 0x3
 6199 0041 0E       		.uleb128 0xe
 6200 0042 00       		.byte	0
 6201 0043 00       		.byte	0
 6202 0044 07       		.uleb128 0x7
 6203 0045 13       		.uleb128 0x13
 6204 0046 01       		.byte	0x1
 6205 0047 0B       		.uleb128 0xb
 6206 0048 0B       		.uleb128 0xb
 6207 0049 3A       		.uleb128 0x3a
 6208 004a 0B       		.uleb128 0xb
 6209 004b 3B       		.uleb128 0x3b
 6210 004c 05       		.uleb128 0x5
 6211 004d 6E       		.uleb128 0x6e
 6212 004e 0E       		.uleb128 0xe
 6213 004f 01       		.uleb128 0x1
 6214 0050 13       		.uleb128 0x13
 6215 0051 00       		.byte	0
 6216 0052 00       		.byte	0
 6217 0053 08       		.uleb128 0x8
 6218 0054 0D       		.uleb128 0xd
 6219 0055 00       		.byte	0
 6220 0056 03       		.uleb128 0x3
 6221 0057 0E       		.uleb128 0xe
 6222 0058 3A       		.uleb128 0x3a
 6223 0059 0B       		.uleb128 0xb
 6224 005a 3B       		.uleb128 0x3b
 6225 005b 05       		.uleb128 0x5
 6226 005c 49       		.uleb128 0x49
 6227 005d 13       		.uleb128 0x13
 6228 005e 38       		.uleb128 0x38
 6229 005f 0B       		.uleb128 0xb
 6230 0060 00       		.byte	0
 6231 0061 00       		.byte	0
 6232 0062 09       		.uleb128 0x9
ARM GAS  /tmp/cc4jIqrt.s 			page 117


 6233 0063 16       		.uleb128 0x16
 6234 0064 00       		.byte	0
 6235 0065 03       		.uleb128 0x3
 6236 0066 0E       		.uleb128 0xe
 6237 0067 3A       		.uleb128 0x3a
 6238 0068 0B       		.uleb128 0xb
 6239 0069 3B       		.uleb128 0x3b
 6240 006a 05       		.uleb128 0x5
 6241 006b 49       		.uleb128 0x49
 6242 006c 13       		.uleb128 0x13
 6243 006d 00       		.byte	0
 6244 006e 00       		.byte	0
 6245 006f 0A       		.uleb128 0xa
 6246 0070 3B       		.uleb128 0x3b
 6247 0071 00       		.byte	0
 6248 0072 03       		.uleb128 0x3
 6249 0073 0E       		.uleb128 0xe
 6250 0074 00       		.byte	0
 6251 0075 00       		.byte	0
 6252 0076 0B       		.uleb128 0xb
 6253 0077 04       		.uleb128 0x4
 6254 0078 01       		.byte	0x1
 6255 0079 03       		.uleb128 0x3
 6256 007a 0E       		.uleb128 0xe
 6257 007b 0B       		.uleb128 0xb
 6258 007c 0B       		.uleb128 0xb
 6259 007d 49       		.uleb128 0x49
 6260 007e 13       		.uleb128 0x13
 6261 007f 3A       		.uleb128 0x3a
 6262 0080 0B       		.uleb128 0xb
 6263 0081 3B       		.uleb128 0x3b
 6264 0082 0B       		.uleb128 0xb
 6265 0083 01       		.uleb128 0x1
 6266 0084 13       		.uleb128 0x13
 6267 0085 00       		.byte	0
 6268 0086 00       		.byte	0
 6269 0087 0C       		.uleb128 0xc
 6270 0088 28       		.uleb128 0x28
 6271 0089 00       		.byte	0
 6272 008a 03       		.uleb128 0x3
 6273 008b 0E       		.uleb128 0xe
 6274 008c 1C       		.uleb128 0x1c
 6275 008d 0D       		.uleb128 0xd
 6276 008e 00       		.byte	0
 6277 008f 00       		.byte	0
 6278 0090 0D       		.uleb128 0xd
 6279 0091 28       		.uleb128 0x28
 6280 0092 00       		.byte	0
 6281 0093 03       		.uleb128 0x3
 6282 0094 0E       		.uleb128 0xe
 6283 0095 1C       		.uleb128 0x1c
 6284 0096 0B       		.uleb128 0xb
 6285 0097 00       		.byte	0
 6286 0098 00       		.byte	0
 6287 0099 0E       		.uleb128 0xe
 6288 009a 0F       		.uleb128 0xf
 6289 009b 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 118


 6290 009c 0B       		.uleb128 0xb
 6291 009d 0B       		.uleb128 0xb
 6292 009e 00       		.byte	0
 6293 009f 00       		.byte	0
 6294 00a0 0F       		.uleb128 0xf
 6295 00a1 01       		.uleb128 0x1
 6296 00a2 01       		.byte	0x1
 6297 00a3 49       		.uleb128 0x49
 6298 00a4 13       		.uleb128 0x13
 6299 00a5 01       		.uleb128 0x1
 6300 00a6 13       		.uleb128 0x13
 6301 00a7 00       		.byte	0
 6302 00a8 00       		.byte	0
 6303 00a9 10       		.uleb128 0x10
 6304 00aa 21       		.uleb128 0x21
 6305 00ab 00       		.byte	0
 6306 00ac 49       		.uleb128 0x49
 6307 00ad 13       		.uleb128 0x13
 6308 00ae 2F       		.uleb128 0x2f
 6309 00af 0B       		.uleb128 0xb
 6310 00b0 00       		.byte	0
 6311 00b1 00       		.byte	0
 6312 00b2 11       		.uleb128 0x11
 6313 00b3 34       		.uleb128 0x34
 6314 00b4 00       		.byte	0
 6315 00b5 03       		.uleb128 0x3
 6316 00b6 0E       		.uleb128 0xe
 6317 00b7 3A       		.uleb128 0x3a
 6318 00b8 0B       		.uleb128 0xb
 6319 00b9 3B       		.uleb128 0x3b
 6320 00ba 05       		.uleb128 0x5
 6321 00bb 49       		.uleb128 0x49
 6322 00bc 13       		.uleb128 0x13
 6323 00bd 3F       		.uleb128 0x3f
 6324 00be 19       		.uleb128 0x19
 6325 00bf 3C       		.uleb128 0x3c
 6326 00c0 19       		.uleb128 0x19
 6327 00c1 00       		.byte	0
 6328 00c2 00       		.byte	0
 6329 00c3 12       		.uleb128 0x12
 6330 00c4 34       		.uleb128 0x34
 6331 00c5 00       		.byte	0
 6332 00c6 03       		.uleb128 0x3
 6333 00c7 0E       		.uleb128 0xe
 6334 00c8 3A       		.uleb128 0x3a
 6335 00c9 0B       		.uleb128 0xb
 6336 00ca 3B       		.uleb128 0x3b
 6337 00cb 0B       		.uleb128 0xb
 6338 00cc 49       		.uleb128 0x49
 6339 00cd 13       		.uleb128 0x13
 6340 00ce 3F       		.uleb128 0x3f
 6341 00cf 19       		.uleb128 0x19
 6342 00d0 3C       		.uleb128 0x3c
 6343 00d1 19       		.uleb128 0x19
 6344 00d2 00       		.byte	0
 6345 00d3 00       		.byte	0
 6346 00d4 13       		.uleb128 0x13
ARM GAS  /tmp/cc4jIqrt.s 			page 119


 6347 00d5 13       		.uleb128 0x13
 6348 00d6 01       		.byte	0x1
 6349 00d7 0B       		.uleb128 0xb
 6350 00d8 05       		.uleb128 0x5
 6351 00d9 3A       		.uleb128 0x3a
 6352 00da 0B       		.uleb128 0xb
 6353 00db 3B       		.uleb128 0x3b
 6354 00dc 0B       		.uleb128 0xb
 6355 00dd 6E       		.uleb128 0x6e
 6356 00de 0E       		.uleb128 0xe
 6357 00df 01       		.uleb128 0x1
 6358 00e0 13       		.uleb128 0x13
 6359 00e1 00       		.byte	0
 6360 00e2 00       		.byte	0
 6361 00e3 14       		.uleb128 0x14
 6362 00e4 0D       		.uleb128 0xd
 6363 00e5 00       		.byte	0
 6364 00e6 03       		.uleb128 0x3
 6365 00e7 0E       		.uleb128 0xe
 6366 00e8 3A       		.uleb128 0x3a
 6367 00e9 0B       		.uleb128 0xb
 6368 00ea 3B       		.uleb128 0x3b
 6369 00eb 0B       		.uleb128 0xb
 6370 00ec 49       		.uleb128 0x49
 6371 00ed 13       		.uleb128 0x13
 6372 00ee 38       		.uleb128 0x38
 6373 00ef 0B       		.uleb128 0xb
 6374 00f0 00       		.byte	0
 6375 00f1 00       		.byte	0
 6376 00f2 15       		.uleb128 0x15
 6377 00f3 0D       		.uleb128 0xd
 6378 00f4 00       		.byte	0
 6379 00f5 03       		.uleb128 0x3
 6380 00f6 0E       		.uleb128 0xe
 6381 00f7 3A       		.uleb128 0x3a
 6382 00f8 0B       		.uleb128 0xb
 6383 00f9 3B       		.uleb128 0x3b
 6384 00fa 0B       		.uleb128 0xb
 6385 00fb 49       		.uleb128 0x49
 6386 00fc 13       		.uleb128 0x13
 6387 00fd 38       		.uleb128 0x38
 6388 00fe 05       		.uleb128 0x5
 6389 00ff 00       		.byte	0
 6390 0100 00       		.byte	0
 6391 0101 16       		.uleb128 0x16
 6392 0102 16       		.uleb128 0x16
 6393 0103 00       		.byte	0
 6394 0104 03       		.uleb128 0x3
 6395 0105 08       		.uleb128 0x8
 6396 0106 3A       		.uleb128 0x3a
 6397 0107 0B       		.uleb128 0xb
 6398 0108 3B       		.uleb128 0x3b
 6399 0109 0B       		.uleb128 0xb
 6400 010a 49       		.uleb128 0x49
 6401 010b 13       		.uleb128 0x13
 6402 010c 00       		.byte	0
 6403 010d 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 120


 6404 010e 17       		.uleb128 0x17
 6405 010f 13       		.uleb128 0x13
 6406 0110 01       		.byte	0x1
 6407 0111 0B       		.uleb128 0xb
 6408 0112 0B       		.uleb128 0xb
 6409 0113 3A       		.uleb128 0x3a
 6410 0114 0B       		.uleb128 0xb
 6411 0115 3B       		.uleb128 0x3b
 6412 0116 0B       		.uleb128 0xb
 6413 0117 6E       		.uleb128 0x6e
 6414 0118 0E       		.uleb128 0xe
 6415 0119 01       		.uleb128 0x1
 6416 011a 13       		.uleb128 0x13
 6417 011b 00       		.byte	0
 6418 011c 00       		.byte	0
 6419 011d 18       		.uleb128 0x18
 6420 011e 17       		.uleb128 0x17
 6421 011f 01       		.byte	0x1
 6422 0120 0B       		.uleb128 0xb
 6423 0121 0B       		.uleb128 0xb
 6424 0122 3A       		.uleb128 0x3a
 6425 0123 0B       		.uleb128 0xb
 6426 0124 3B       		.uleb128 0x3b
 6427 0125 0B       		.uleb128 0xb
 6428 0126 01       		.uleb128 0x1
 6429 0127 13       		.uleb128 0x13
 6430 0128 00       		.byte	0
 6431 0129 00       		.byte	0
 6432 012a 19       		.uleb128 0x19
 6433 012b 0D       		.uleb128 0xd
 6434 012c 00       		.byte	0
 6435 012d 03       		.uleb128 0x3
 6436 012e 0E       		.uleb128 0xe
 6437 012f 3A       		.uleb128 0x3a
 6438 0130 0B       		.uleb128 0xb
 6439 0131 3B       		.uleb128 0x3b
 6440 0132 0B       		.uleb128 0xb
 6441 0133 49       		.uleb128 0x49
 6442 0134 13       		.uleb128 0x13
 6443 0135 00       		.byte	0
 6444 0136 00       		.byte	0
 6445 0137 1A       		.uleb128 0x1a
 6446 0138 13       		.uleb128 0x13
 6447 0139 01       		.byte	0x1
 6448 013a 03       		.uleb128 0x3
 6449 013b 0E       		.uleb128 0xe
 6450 013c 0B       		.uleb128 0xb
 6451 013d 0B       		.uleb128 0xb
 6452 013e 3A       		.uleb128 0x3a
 6453 013f 0B       		.uleb128 0xb
 6454 0140 3B       		.uleb128 0x3b
 6455 0141 0B       		.uleb128 0xb
 6456 0142 01       		.uleb128 0x1
 6457 0143 13       		.uleb128 0x13
 6458 0144 00       		.byte	0
 6459 0145 00       		.byte	0
 6460 0146 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc4jIqrt.s 			page 121


 6461 0147 0D       		.uleb128 0xd
 6462 0148 00       		.byte	0
 6463 0149 03       		.uleb128 0x3
 6464 014a 08       		.uleb128 0x8
 6465 014b 3A       		.uleb128 0x3a
 6466 014c 0B       		.uleb128 0xb
 6467 014d 3B       		.uleb128 0x3b
 6468 014e 0B       		.uleb128 0xb
 6469 014f 49       		.uleb128 0x49
 6470 0150 13       		.uleb128 0x13
 6471 0151 38       		.uleb128 0x38
 6472 0152 0B       		.uleb128 0xb
 6473 0153 00       		.byte	0
 6474 0154 00       		.byte	0
 6475 0155 1C       		.uleb128 0x1c
 6476 0156 0F       		.uleb128 0xf
 6477 0157 00       		.byte	0
 6478 0158 0B       		.uleb128 0xb
 6479 0159 0B       		.uleb128 0xb
 6480 015a 49       		.uleb128 0x49
 6481 015b 13       		.uleb128 0x13
 6482 015c 00       		.byte	0
 6483 015d 00       		.byte	0
 6484 015e 1D       		.uleb128 0x1d
 6485 015f 13       		.uleb128 0x13
 6486 0160 01       		.byte	0x1
 6487 0161 03       		.uleb128 0x3
 6488 0162 0E       		.uleb128 0xe
 6489 0163 0B       		.uleb128 0xb
 6490 0164 05       		.uleb128 0x5
 6491 0165 3A       		.uleb128 0x3a
 6492 0166 0B       		.uleb128 0xb
 6493 0167 3B       		.uleb128 0x3b
 6494 0168 0B       		.uleb128 0xb
 6495 0169 01       		.uleb128 0x1
 6496 016a 13       		.uleb128 0x13
 6497 016b 00       		.byte	0
 6498 016c 00       		.byte	0
 6499 016d 1E       		.uleb128 0x1e
 6500 016e 15       		.uleb128 0x15
 6501 016f 00       		.byte	0
 6502 0170 00       		.byte	0
 6503 0171 00       		.byte	0
 6504 0172 1F       		.uleb128 0x1f
 6505 0173 15       		.uleb128 0x15
 6506 0174 01       		.byte	0x1
 6507 0175 49       		.uleb128 0x49
 6508 0176 13       		.uleb128 0x13
 6509 0177 01       		.uleb128 0x1
 6510 0178 13       		.uleb128 0x13
 6511 0179 00       		.byte	0
 6512 017a 00       		.byte	0
 6513 017b 20       		.uleb128 0x20
 6514 017c 05       		.uleb128 0x5
 6515 017d 00       		.byte	0
 6516 017e 49       		.uleb128 0x49
 6517 017f 13       		.uleb128 0x13
ARM GAS  /tmp/cc4jIqrt.s 			page 122


 6518 0180 00       		.byte	0
 6519 0181 00       		.byte	0
 6520 0182 21       		.uleb128 0x21
 6521 0183 13       		.uleb128 0x13
 6522 0184 01       		.byte	0x1
 6523 0185 03       		.uleb128 0x3
 6524 0186 0E       		.uleb128 0xe
 6525 0187 0B       		.uleb128 0xb
 6526 0188 05       		.uleb128 0x5
 6527 0189 3A       		.uleb128 0x3a
 6528 018a 0B       		.uleb128 0xb
 6529 018b 3B       		.uleb128 0x3b
 6530 018c 05       		.uleb128 0x5
 6531 018d 01       		.uleb128 0x1
 6532 018e 13       		.uleb128 0x13
 6533 018f 00       		.byte	0
 6534 0190 00       		.byte	0
 6535 0191 22       		.uleb128 0x22
 6536 0192 17       		.uleb128 0x17
 6537 0193 01       		.byte	0x1
 6538 0194 0B       		.uleb128 0xb
 6539 0195 0B       		.uleb128 0xb
 6540 0196 3A       		.uleb128 0x3a
 6541 0197 0B       		.uleb128 0xb
 6542 0198 3B       		.uleb128 0x3b
 6543 0199 05       		.uleb128 0x5
 6544 019a 01       		.uleb128 0x1
 6545 019b 13       		.uleb128 0x13
 6546 019c 00       		.byte	0
 6547 019d 00       		.byte	0
 6548 019e 23       		.uleb128 0x23
 6549 019f 13       		.uleb128 0x13
 6550 01a0 01       		.byte	0x1
 6551 01a1 0B       		.uleb128 0xb
 6552 01a2 0B       		.uleb128 0xb
 6553 01a3 3A       		.uleb128 0x3a
 6554 01a4 0B       		.uleb128 0xb
 6555 01a5 3B       		.uleb128 0x3b
 6556 01a6 05       		.uleb128 0x5
 6557 01a7 01       		.uleb128 0x1
 6558 01a8 13       		.uleb128 0x13
 6559 01a9 00       		.byte	0
 6560 01aa 00       		.byte	0
 6561 01ab 24       		.uleb128 0x24
 6562 01ac 0D       		.uleb128 0xd
 6563 01ad 00       		.byte	0
 6564 01ae 03       		.uleb128 0x3
 6565 01af 0E       		.uleb128 0xe
 6566 01b0 3A       		.uleb128 0x3a
 6567 01b1 0B       		.uleb128 0xb
 6568 01b2 3B       		.uleb128 0x3b
 6569 01b3 05       		.uleb128 0x5
 6570 01b4 49       		.uleb128 0x49
 6571 01b5 13       		.uleb128 0x13
 6572 01b6 00       		.byte	0
 6573 01b7 00       		.byte	0
 6574 01b8 25       		.uleb128 0x25
ARM GAS  /tmp/cc4jIqrt.s 			page 123


 6575 01b9 0D       		.uleb128 0xd
 6576 01ba 00       		.byte	0
 6577 01bb 03       		.uleb128 0x3
 6578 01bc 0E       		.uleb128 0xe
 6579 01bd 3A       		.uleb128 0x3a
 6580 01be 0B       		.uleb128 0xb
 6581 01bf 3B       		.uleb128 0x3b
 6582 01c0 05       		.uleb128 0x5
 6583 01c1 49       		.uleb128 0x49
 6584 01c2 13       		.uleb128 0x13
 6585 01c3 38       		.uleb128 0x38
 6586 01c4 05       		.uleb128 0x5
 6587 01c5 00       		.byte	0
 6588 01c6 00       		.byte	0
 6589 01c7 26       		.uleb128 0x26
 6590 01c8 13       		.uleb128 0x13
 6591 01c9 01       		.byte	0x1
 6592 01ca 03       		.uleb128 0x3
 6593 01cb 0E       		.uleb128 0xe
 6594 01cc 0B       		.uleb128 0xb
 6595 01cd 0B       		.uleb128 0xb
 6596 01ce 3A       		.uleb128 0x3a
 6597 01cf 0B       		.uleb128 0xb
 6598 01d0 3B       		.uleb128 0x3b
 6599 01d1 05       		.uleb128 0x5
 6600 01d2 01       		.uleb128 0x1
 6601 01d3 13       		.uleb128 0x13
 6602 01d4 00       		.byte	0
 6603 01d5 00       		.byte	0
 6604 01d6 27       		.uleb128 0x27
 6605 01d7 15       		.uleb128 0x15
 6606 01d8 01       		.byte	0x1
 6607 01d9 01       		.uleb128 0x1
 6608 01da 13       		.uleb128 0x13
 6609 01db 00       		.byte	0
 6610 01dc 00       		.byte	0
 6611 01dd 28       		.uleb128 0x28
 6612 01de 39       		.uleb128 0x39
 6613 01df 01       		.byte	0x1
 6614 01e0 03       		.uleb128 0x3
 6615 01e1 08       		.uleb128 0x8
 6616 01e2 3A       		.uleb128 0x3a
 6617 01e3 0B       		.uleb128 0xb
 6618 01e4 3B       		.uleb128 0x3b
 6619 01e5 0B       		.uleb128 0xb
 6620 01e6 01       		.uleb128 0x1
 6621 01e7 13       		.uleb128 0x13
 6622 01e8 00       		.byte	0
 6623 01e9 00       		.byte	0
 6624 01ea 29       		.uleb128 0x29
 6625 01eb 39       		.uleb128 0x39
 6626 01ec 00       		.byte	0
 6627 01ed 03       		.uleb128 0x3
 6628 01ee 0E       		.uleb128 0xe
 6629 01ef 3A       		.uleb128 0x3a
 6630 01f0 0B       		.uleb128 0xb
 6631 01f1 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc4jIqrt.s 			page 124


 6632 01f2 0B       		.uleb128 0xb
 6633 01f3 00       		.byte	0
 6634 01f4 00       		.byte	0
 6635 01f5 2A       		.uleb128 0x2a
 6636 01f6 3A       		.uleb128 0x3a
 6637 01f7 00       		.byte	0
 6638 01f8 3A       		.uleb128 0x3a
 6639 01f9 0B       		.uleb128 0xb
 6640 01fa 3B       		.uleb128 0x3b
 6641 01fb 0B       		.uleb128 0xb
 6642 01fc 18       		.uleb128 0x18
 6643 01fd 13       		.uleb128 0x13
 6644 01fe 00       		.byte	0
 6645 01ff 00       		.byte	0
 6646 0200 2B       		.uleb128 0x2b
 6647 0201 08       		.uleb128 0x8
 6648 0202 00       		.byte	0
 6649 0203 3A       		.uleb128 0x3a
 6650 0204 0B       		.uleb128 0xb
 6651 0205 3B       		.uleb128 0x3b
 6652 0206 0B       		.uleb128 0xb
 6653 0207 18       		.uleb128 0x18
 6654 0208 13       		.uleb128 0x13
 6655 0209 00       		.byte	0
 6656 020a 00       		.byte	0
 6657 020b 2C       		.uleb128 0x2c
 6658 020c 08       		.uleb128 0x8
 6659 020d 00       		.byte	0
 6660 020e 3A       		.uleb128 0x3a
 6661 020f 0B       		.uleb128 0xb
 6662 0210 3B       		.uleb128 0x3b
 6663 0211 05       		.uleb128 0x5
 6664 0212 18       		.uleb128 0x18
 6665 0213 13       		.uleb128 0x13
 6666 0214 00       		.byte	0
 6667 0215 00       		.byte	0
 6668 0216 2D       		.uleb128 0x2d
 6669 0217 2E       		.uleb128 0x2e
 6670 0218 01       		.byte	0x1
 6671 0219 3F       		.uleb128 0x3f
 6672 021a 19       		.uleb128 0x19
 6673 021b 03       		.uleb128 0x3
 6674 021c 08       		.uleb128 0x8
 6675 021d 3A       		.uleb128 0x3a
 6676 021e 0B       		.uleb128 0xb
 6677 021f 3B       		.uleb128 0x3b
 6678 0220 0B       		.uleb128 0xb
 6679 0221 6E       		.uleb128 0x6e
 6680 0222 0E       		.uleb128 0xe
 6681 0223 49       		.uleb128 0x49
 6682 0224 13       		.uleb128 0x13
 6683 0225 3C       		.uleb128 0x3c
 6684 0226 19       		.uleb128 0x19
 6685 0227 01       		.uleb128 0x1
 6686 0228 13       		.uleb128 0x13
 6687 0229 00       		.byte	0
 6688 022a 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 125


 6689 022b 2E       		.uleb128 0x2e
 6690 022c 2E       		.uleb128 0x2e
 6691 022d 01       		.byte	0x1
 6692 022e 3F       		.uleb128 0x3f
 6693 022f 19       		.uleb128 0x19
 6694 0230 03       		.uleb128 0x3
 6695 0231 0E       		.uleb128 0xe
 6696 0232 3A       		.uleb128 0x3a
 6697 0233 0B       		.uleb128 0xb
 6698 0234 3B       		.uleb128 0x3b
 6699 0235 05       		.uleb128 0x5
 6700 0236 6E       		.uleb128 0x6e
 6701 0237 0E       		.uleb128 0xe
 6702 0238 49       		.uleb128 0x49
 6703 0239 13       		.uleb128 0x13
 6704 023a 3C       		.uleb128 0x3c
 6705 023b 19       		.uleb128 0x19
 6706 023c 01       		.uleb128 0x1
 6707 023d 13       		.uleb128 0x13
 6708 023e 00       		.byte	0
 6709 023f 00       		.byte	0
 6710 0240 2F       		.uleb128 0x2f
 6711 0241 39       		.uleb128 0x39
 6712 0242 01       		.byte	0x1
 6713 0243 03       		.uleb128 0x3
 6714 0244 0E       		.uleb128 0xe
 6715 0245 3A       		.uleb128 0x3a
 6716 0246 0B       		.uleb128 0xb
 6717 0247 3B       		.uleb128 0x3b
 6718 0248 0B       		.uleb128 0xb
 6719 0249 01       		.uleb128 0x1
 6720 024a 13       		.uleb128 0x13
 6721 024b 00       		.byte	0
 6722 024c 00       		.byte	0
 6723 024d 30       		.uleb128 0x30
 6724 024e 2E       		.uleb128 0x2e
 6725 024f 01       		.byte	0x1
 6726 0250 3F       		.uleb128 0x3f
 6727 0251 19       		.uleb128 0x19
 6728 0252 03       		.uleb128 0x3
 6729 0253 08       		.uleb128 0x8
 6730 0254 3A       		.uleb128 0x3a
 6731 0255 0B       		.uleb128 0xb
 6732 0256 3B       		.uleb128 0x3b
 6733 0257 0B       		.uleb128 0xb
 6734 0258 6E       		.uleb128 0x6e
 6735 0259 0E       		.uleb128 0xe
 6736 025a 49       		.uleb128 0x49
 6737 025b 13       		.uleb128 0x13
 6738 025c 3C       		.uleb128 0x3c
 6739 025d 19       		.uleb128 0x19
 6740 025e 00       		.byte	0
 6741 025f 00       		.byte	0
 6742 0260 31       		.uleb128 0x31
 6743 0261 26       		.uleb128 0x26
 6744 0262 00       		.byte	0
 6745 0263 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 126


 6746 0264 00       		.byte	0
 6747 0265 32       		.uleb128 0x32
 6748 0266 2E       		.uleb128 0x2e
 6749 0267 01       		.byte	0x1
 6750 0268 3F       		.uleb128 0x3f
 6751 0269 19       		.uleb128 0x19
 6752 026a 03       		.uleb128 0x3
 6753 026b 0E       		.uleb128 0xe
 6754 026c 3A       		.uleb128 0x3a
 6755 026d 0B       		.uleb128 0xb
 6756 026e 3B       		.uleb128 0x3b
 6757 026f 0B       		.uleb128 0xb
 6758 0270 49       		.uleb128 0x49
 6759 0271 13       		.uleb128 0x13
 6760 0272 3C       		.uleb128 0x3c
 6761 0273 19       		.uleb128 0x19
 6762 0274 01       		.uleb128 0x1
 6763 0275 13       		.uleb128 0x13
 6764 0276 00       		.byte	0
 6765 0277 00       		.byte	0
 6766 0278 33       		.uleb128 0x33
 6767 0279 2E       		.uleb128 0x2e
 6768 027a 01       		.byte	0x1
 6769 027b 3F       		.uleb128 0x3f
 6770 027c 19       		.uleb128 0x19
 6771 027d 03       		.uleb128 0x3
 6772 027e 08       		.uleb128 0x8
 6773 027f 3A       		.uleb128 0x3a
 6774 0280 0B       		.uleb128 0xb
 6775 0281 3B       		.uleb128 0x3b
 6776 0282 0B       		.uleb128 0xb
 6777 0283 49       		.uleb128 0x49
 6778 0284 13       		.uleb128 0x13
 6779 0285 3C       		.uleb128 0x3c
 6780 0286 19       		.uleb128 0x19
 6781 0287 01       		.uleb128 0x1
 6782 0288 13       		.uleb128 0x13
 6783 0289 00       		.byte	0
 6784 028a 00       		.byte	0
 6785 028b 34       		.uleb128 0x34
 6786 028c 2E       		.uleb128 0x2e
 6787 028d 01       		.byte	0x1
 6788 028e 3F       		.uleb128 0x3f
 6789 028f 19       		.uleb128 0x19
 6790 0290 03       		.uleb128 0x3
 6791 0291 0E       		.uleb128 0xe
 6792 0292 3A       		.uleb128 0x3a
 6793 0293 0B       		.uleb128 0xb
 6794 0294 3B       		.uleb128 0x3b
 6795 0295 0B       		.uleb128 0xb
 6796 0296 3C       		.uleb128 0x3c
 6797 0297 19       		.uleb128 0x19
 6798 0298 01       		.uleb128 0x1
 6799 0299 13       		.uleb128 0x13
 6800 029a 00       		.byte	0
 6801 029b 00       		.byte	0
 6802 029c 35       		.uleb128 0x35
ARM GAS  /tmp/cc4jIqrt.s 			page 127


 6803 029d 2E       		.uleb128 0x2e
 6804 029e 00       		.byte	0
 6805 029f 3F       		.uleb128 0x3f
 6806 02a0 19       		.uleb128 0x19
 6807 02a1 03       		.uleb128 0x3
 6808 02a2 0E       		.uleb128 0xe
 6809 02a3 3A       		.uleb128 0x3a
 6810 02a4 0B       		.uleb128 0xb
 6811 02a5 3B       		.uleb128 0x3b
 6812 02a6 0B       		.uleb128 0xb
 6813 02a7 49       		.uleb128 0x49
 6814 02a8 13       		.uleb128 0x13
 6815 02a9 3C       		.uleb128 0x3c
 6816 02aa 19       		.uleb128 0x19
 6817 02ab 00       		.byte	0
 6818 02ac 00       		.byte	0
 6819 02ad 36       		.uleb128 0x36
 6820 02ae 2E       		.uleb128 0x2e
 6821 02af 01       		.byte	0x1
 6822 02b0 3F       		.uleb128 0x3f
 6823 02b1 19       		.uleb128 0x19
 6824 02b2 03       		.uleb128 0x3
 6825 02b3 0E       		.uleb128 0xe
 6826 02b4 3A       		.uleb128 0x3a
 6827 02b5 0B       		.uleb128 0xb
 6828 02b6 3B       		.uleb128 0x3b
 6829 02b7 05       		.uleb128 0x5
 6830 02b8 49       		.uleb128 0x49
 6831 02b9 13       		.uleb128 0x13
 6832 02ba 3C       		.uleb128 0x3c
 6833 02bb 19       		.uleb128 0x19
 6834 02bc 01       		.uleb128 0x1
 6835 02bd 13       		.uleb128 0x13
 6836 02be 00       		.byte	0
 6837 02bf 00       		.byte	0
 6838 02c0 37       		.uleb128 0x37
 6839 02c1 34       		.uleb128 0x34
 6840 02c2 00       		.byte	0
 6841 02c3 03       		.uleb128 0x3
 6842 02c4 0E       		.uleb128 0xe
 6843 02c5 3A       		.uleb128 0x3a
 6844 02c6 0B       		.uleb128 0xb
 6845 02c7 3B       		.uleb128 0x3b
 6846 02c8 0B       		.uleb128 0xb
 6847 02c9 49       		.uleb128 0x49
 6848 02ca 13       		.uleb128 0x13
 6849 02cb 02       		.uleb128 0x2
 6850 02cc 18       		.uleb128 0x18
 6851 02cd 00       		.byte	0
 6852 02ce 00       		.byte	0
 6853 02cf 38       		.uleb128 0x38
 6854 02d0 04       		.uleb128 0x4
 6855 02d1 01       		.byte	0x1
 6856 02d2 03       		.uleb128 0x3
 6857 02d3 0E       		.uleb128 0xe
 6858 02d4 0B       		.uleb128 0xb
 6859 02d5 0B       		.uleb128 0xb
ARM GAS  /tmp/cc4jIqrt.s 			page 128


 6860 02d6 49       		.uleb128 0x49
 6861 02d7 13       		.uleb128 0x13
 6862 02d8 3A       		.uleb128 0x3a
 6863 02d9 0B       		.uleb128 0xb
 6864 02da 3B       		.uleb128 0x3b
 6865 02db 05       		.uleb128 0x5
 6866 02dc 01       		.uleb128 0x1
 6867 02dd 13       		.uleb128 0x13
 6868 02de 00       		.byte	0
 6869 02df 00       		.byte	0
 6870 02e0 39       		.uleb128 0x39
 6871 02e1 28       		.uleb128 0x28
 6872 02e2 00       		.byte	0
 6873 02e3 03       		.uleb128 0x3
 6874 02e4 0E       		.uleb128 0xe
 6875 02e5 1C       		.uleb128 0x1c
 6876 02e6 06       		.uleb128 0x6
 6877 02e7 00       		.byte	0
 6878 02e8 00       		.byte	0
 6879 02e9 3A       		.uleb128 0x3a
 6880 02ea 34       		.uleb128 0x34
 6881 02eb 00       		.byte	0
 6882 02ec 03       		.uleb128 0x3
 6883 02ed 0E       		.uleb128 0xe
 6884 02ee 3A       		.uleb128 0x3a
 6885 02ef 0B       		.uleb128 0xb
 6886 02f0 3B       		.uleb128 0x3b
 6887 02f1 0B       		.uleb128 0xb
 6888 02f2 49       		.uleb128 0x49
 6889 02f3 13       		.uleb128 0x13
 6890 02f4 1C       		.uleb128 0x1c
 6891 02f5 0D       		.uleb128 0xd
 6892 02f6 00       		.byte	0
 6893 02f7 00       		.byte	0
 6894 02f8 3B       		.uleb128 0x3b
 6895 02f9 28       		.uleb128 0x28
 6896 02fa 00       		.byte	0
 6897 02fb 03       		.uleb128 0x3
 6898 02fc 08       		.uleb128 0x8
 6899 02fd 1C       		.uleb128 0x1c
 6900 02fe 0B       		.uleb128 0xb
 6901 02ff 00       		.byte	0
 6902 0300 00       		.byte	0
 6903 0301 3C       		.uleb128 0x3c
 6904 0302 21       		.uleb128 0x21
 6905 0303 00       		.byte	0
 6906 0304 00       		.byte	0
 6907 0305 00       		.byte	0
 6908 0306 3D       		.uleb128 0x3d
 6909 0307 02       		.uleb128 0x2
 6910 0308 01       		.byte	0x1
 6911 0309 03       		.uleb128 0x3
 6912 030a 0E       		.uleb128 0xe
 6913 030b 3C       		.uleb128 0x3c
 6914 030c 19       		.uleb128 0x19
 6915 030d 01       		.uleb128 0x1
 6916 030e 13       		.uleb128 0x13
ARM GAS  /tmp/cc4jIqrt.s 			page 129


 6917 030f 00       		.byte	0
 6918 0310 00       		.byte	0
 6919 0311 3E       		.uleb128 0x3e
 6920 0312 2E       		.uleb128 0x2e
 6921 0313 01       		.byte	0x1
 6922 0314 3F       		.uleb128 0x3f
 6923 0315 19       		.uleb128 0x19
 6924 0316 03       		.uleb128 0x3
 6925 0317 0E       		.uleb128 0xe
 6926 0318 6E       		.uleb128 0x6e
 6927 0319 0E       		.uleb128 0xe
 6928 031a 49       		.uleb128 0x49
 6929 031b 13       		.uleb128 0x13
 6930 031c 4C       		.uleb128 0x4c
 6931 031d 0B       		.uleb128 0xb
 6932 031e 1D       		.uleb128 0x1d
 6933 031f 13       		.uleb128 0x13
 6934 0320 34       		.uleb128 0x34
 6935 0321 19       		.uleb128 0x19
 6936 0322 32       		.uleb128 0x32
 6937 0323 0B       		.uleb128 0xb
 6938 0324 3C       		.uleb128 0x3c
 6939 0325 19       		.uleb128 0x19
 6940 0326 64       		.uleb128 0x64
 6941 0327 13       		.uleb128 0x13
 6942 0328 00       		.byte	0
 6943 0329 00       		.byte	0
 6944 032a 3F       		.uleb128 0x3f
 6945 032b 05       		.uleb128 0x5
 6946 032c 00       		.byte	0
 6947 032d 49       		.uleb128 0x49
 6948 032e 13       		.uleb128 0x13
 6949 032f 34       		.uleb128 0x34
 6950 0330 19       		.uleb128 0x19
 6951 0331 00       		.byte	0
 6952 0332 00       		.byte	0
 6953 0333 40       		.uleb128 0x40
 6954 0334 2E       		.uleb128 0x2e
 6955 0335 01       		.byte	0x1
 6956 0336 3F       		.uleb128 0x3f
 6957 0337 19       		.uleb128 0x19
 6958 0338 03       		.uleb128 0x3
 6959 0339 0E       		.uleb128 0xe
 6960 033a 3A       		.uleb128 0x3a
 6961 033b 0B       		.uleb128 0xb
 6962 033c 3B       		.uleb128 0x3b
 6963 033d 0B       		.uleb128 0xb
 6964 033e 6E       		.uleb128 0x6e
 6965 033f 0E       		.uleb128 0xe
 6966 0340 49       		.uleb128 0x49
 6967 0341 13       		.uleb128 0x13
 6968 0342 32       		.uleb128 0x32
 6969 0343 0B       		.uleb128 0xb
 6970 0344 3C       		.uleb128 0x3c
 6971 0345 19       		.uleb128 0x19
 6972 0346 64       		.uleb128 0x64
 6973 0347 13       		.uleb128 0x13
ARM GAS  /tmp/cc4jIqrt.s 			page 130


 6974 0348 01       		.uleb128 0x1
 6975 0349 13       		.uleb128 0x13
 6976 034a 00       		.byte	0
 6977 034b 00       		.byte	0
 6978 034c 41       		.uleb128 0x41
 6979 034d 2E       		.uleb128 0x2e
 6980 034e 01       		.byte	0x1
 6981 034f 3F       		.uleb128 0x3f
 6982 0350 19       		.uleb128 0x19
 6983 0351 03       		.uleb128 0x3
 6984 0352 0E       		.uleb128 0xe
 6985 0353 3A       		.uleb128 0x3a
 6986 0354 0B       		.uleb128 0xb
 6987 0355 3B       		.uleb128 0x3b
 6988 0356 0B       		.uleb128 0xb
 6989 0357 6E       		.uleb128 0x6e
 6990 0358 0E       		.uleb128 0xe
 6991 0359 49       		.uleb128 0x49
 6992 035a 13       		.uleb128 0x13
 6993 035b 4C       		.uleb128 0x4c
 6994 035c 0B       		.uleb128 0xb
 6995 035d 1D       		.uleb128 0x1d
 6996 035e 13       		.uleb128 0x13
 6997 035f 32       		.uleb128 0x32
 6998 0360 0B       		.uleb128 0xb
 6999 0361 3C       		.uleb128 0x3c
 7000 0362 19       		.uleb128 0x19
 7001 0363 64       		.uleb128 0x64
 7002 0364 13       		.uleb128 0x13
 7003 0365 00       		.byte	0
 7004 0366 00       		.byte	0
 7005 0367 42       		.uleb128 0x42
 7006 0368 02       		.uleb128 0x2
 7007 0369 00       		.byte	0
 7008 036a 03       		.uleb128 0x3
 7009 036b 0E       		.uleb128 0xe
 7010 036c 3C       		.uleb128 0x3c
 7011 036d 19       		.uleb128 0x19
 7012 036e 00       		.byte	0
 7013 036f 00       		.byte	0
 7014 0370 43       		.uleb128 0x43
 7015 0371 34       		.uleb128 0x34
 7016 0372 00       		.byte	0
 7017 0373 03       		.uleb128 0x3
 7018 0374 0E       		.uleb128 0xe
 7019 0375 3A       		.uleb128 0x3a
 7020 0376 0B       		.uleb128 0xb
 7021 0377 3B       		.uleb128 0x3b
 7022 0378 0B       		.uleb128 0xb
 7023 0379 49       		.uleb128 0x49
 7024 037a 13       		.uleb128 0x13
 7025 037b 1C       		.uleb128 0x1c
 7026 037c 05       		.uleb128 0x5
 7027 037d 00       		.byte	0
 7028 037e 00       		.byte	0
 7029 037f 44       		.uleb128 0x44
 7030 0380 02       		.uleb128 0x2
ARM GAS  /tmp/cc4jIqrt.s 			page 131


 7031 0381 01       		.byte	0x1
 7032 0382 03       		.uleb128 0x3
 7033 0383 0E       		.uleb128 0xe
 7034 0384 0B       		.uleb128 0xb
 7035 0385 05       		.uleb128 0x5
 7036 0386 3A       		.uleb128 0x3a
 7037 0387 0B       		.uleb128 0xb
 7038 0388 3B       		.uleb128 0x3b
 7039 0389 0B       		.uleb128 0xb
 7040 038a 01       		.uleb128 0x1
 7041 038b 13       		.uleb128 0x13
 7042 038c 00       		.byte	0
 7043 038d 00       		.byte	0
 7044 038e 45       		.uleb128 0x45
 7045 038f 0D       		.uleb128 0xd
 7046 0390 00       		.byte	0
 7047 0391 03       		.uleb128 0x3
 7048 0392 0E       		.uleb128 0xe
 7049 0393 3A       		.uleb128 0x3a
 7050 0394 0B       		.uleb128 0xb
 7051 0395 3B       		.uleb128 0x3b
 7052 0396 0B       		.uleb128 0xb
 7053 0397 49       		.uleb128 0x49
 7054 0398 13       		.uleb128 0x13
 7055 0399 38       		.uleb128 0x38
 7056 039a 0B       		.uleb128 0xb
 7057 039b 32       		.uleb128 0x32
 7058 039c 0B       		.uleb128 0xb
 7059 039d 00       		.byte	0
 7060 039e 00       		.byte	0
 7061 039f 46       		.uleb128 0x46
 7062 03a0 0D       		.uleb128 0xd
 7063 03a1 00       		.byte	0
 7064 03a2 03       		.uleb128 0x3
 7065 03a3 0E       		.uleb128 0xe
 7066 03a4 3A       		.uleb128 0x3a
 7067 03a5 0B       		.uleb128 0xb
 7068 03a6 3B       		.uleb128 0x3b
 7069 03a7 0B       		.uleb128 0xb
 7070 03a8 49       		.uleb128 0x49
 7071 03a9 13       		.uleb128 0x13
 7072 03aa 38       		.uleb128 0x38
 7073 03ab 05       		.uleb128 0x5
 7074 03ac 32       		.uleb128 0x32
 7075 03ad 0B       		.uleb128 0xb
 7076 03ae 00       		.byte	0
 7077 03af 00       		.byte	0
 7078 03b0 47       		.uleb128 0x47
 7079 03b1 2E       		.uleb128 0x2e
 7080 03b2 01       		.byte	0x1
 7081 03b3 3F       		.uleb128 0x3f
 7082 03b4 19       		.uleb128 0x19
 7083 03b5 03       		.uleb128 0x3
 7084 03b6 0E       		.uleb128 0xe
 7085 03b7 3A       		.uleb128 0x3a
 7086 03b8 0B       		.uleb128 0xb
 7087 03b9 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc4jIqrt.s 			page 132


 7088 03ba 0B       		.uleb128 0xb
 7089 03bb 6E       		.uleb128 0x6e
 7090 03bc 0E       		.uleb128 0xe
 7091 03bd 32       		.uleb128 0x32
 7092 03be 0B       		.uleb128 0xb
 7093 03bf 3C       		.uleb128 0x3c
 7094 03c0 19       		.uleb128 0x19
 7095 03c1 64       		.uleb128 0x64
 7096 03c2 13       		.uleb128 0x13
 7097 03c3 01       		.uleb128 0x1
 7098 03c4 13       		.uleb128 0x13
 7099 03c5 00       		.byte	0
 7100 03c6 00       		.byte	0
 7101 03c7 48       		.uleb128 0x48
 7102 03c8 2E       		.uleb128 0x2e
 7103 03c9 01       		.byte	0x1
 7104 03ca 3F       		.uleb128 0x3f
 7105 03cb 19       		.uleb128 0x19
 7106 03cc 03       		.uleb128 0x3
 7107 03cd 0E       		.uleb128 0xe
 7108 03ce 3A       		.uleb128 0x3a
 7109 03cf 0B       		.uleb128 0xb
 7110 03d0 3B       		.uleb128 0x3b
 7111 03d1 0B       		.uleb128 0xb
 7112 03d2 6E       		.uleb128 0x6e
 7113 03d3 0E       		.uleb128 0xe
 7114 03d4 49       		.uleb128 0x49
 7115 03d5 13       		.uleb128 0x13
 7116 03d6 32       		.uleb128 0x32
 7117 03d7 0B       		.uleb128 0xb
 7118 03d8 3C       		.uleb128 0x3c
 7119 03d9 19       		.uleb128 0x19
 7120 03da 64       		.uleb128 0x64
 7121 03db 13       		.uleb128 0x13
 7122 03dc 00       		.byte	0
 7123 03dd 00       		.byte	0
 7124 03de 49       		.uleb128 0x49
 7125 03df 21       		.uleb128 0x21
 7126 03e0 00       		.byte	0
 7127 03e1 49       		.uleb128 0x49
 7128 03e2 13       		.uleb128 0x13
 7129 03e3 2F       		.uleb128 0x2f
 7130 03e4 05       		.uleb128 0x5
 7131 03e5 00       		.byte	0
 7132 03e6 00       		.byte	0
 7133 03e7 4A       		.uleb128 0x4a
 7134 03e8 2E       		.uleb128 0x2e
 7135 03e9 01       		.byte	0x1
 7136 03ea 3F       		.uleb128 0x3f
 7137 03eb 19       		.uleb128 0x19
 7138 03ec 03       		.uleb128 0x3
 7139 03ed 0E       		.uleb128 0xe
 7140 03ee 6E       		.uleb128 0x6e
 7141 03ef 0E       		.uleb128 0xe
 7142 03f0 49       		.uleb128 0x49
 7143 03f1 13       		.uleb128 0x13
 7144 03f2 4C       		.uleb128 0x4c
ARM GAS  /tmp/cc4jIqrt.s 			page 133


 7145 03f3 0B       		.uleb128 0xb
 7146 03f4 1D       		.uleb128 0x1d
 7147 03f5 13       		.uleb128 0x13
 7148 03f6 34       		.uleb128 0x34
 7149 03f7 19       		.uleb128 0x19
 7150 03f8 32       		.uleb128 0x32
 7151 03f9 0B       		.uleb128 0xb
 7152 03fa 3C       		.uleb128 0x3c
 7153 03fb 19       		.uleb128 0x19
 7154 03fc 64       		.uleb128 0x64
 7155 03fd 13       		.uleb128 0x13
 7156 03fe 01       		.uleb128 0x1
 7157 03ff 13       		.uleb128 0x13
 7158 0400 00       		.byte	0
 7159 0401 00       		.byte	0
 7160 0402 4B       		.uleb128 0x4b
 7161 0403 2E       		.uleb128 0x2e
 7162 0404 01       		.byte	0x1
 7163 0405 3F       		.uleb128 0x3f
 7164 0406 19       		.uleb128 0x19
 7165 0407 03       		.uleb128 0x3
 7166 0408 0E       		.uleb128 0xe
 7167 0409 3A       		.uleb128 0x3a
 7168 040a 0B       		.uleb128 0xb
 7169 040b 3B       		.uleb128 0x3b
 7170 040c 0B       		.uleb128 0xb
 7171 040d 6E       		.uleb128 0x6e
 7172 040e 0E       		.uleb128 0xe
 7173 040f 49       		.uleb128 0x49
 7174 0410 13       		.uleb128 0x13
 7175 0411 4C       		.uleb128 0x4c
 7176 0412 0B       		.uleb128 0xb
 7177 0413 4D       		.uleb128 0x4d
 7178 0414 18       		.uleb128 0x18
 7179 0415 1D       		.uleb128 0x1d
 7180 0416 13       		.uleb128 0x13
 7181 0417 32       		.uleb128 0x32
 7182 0418 0B       		.uleb128 0xb
 7183 0419 3C       		.uleb128 0x3c
 7184 041a 19       		.uleb128 0x19
 7185 041b 64       		.uleb128 0x64
 7186 041c 13       		.uleb128 0x13
 7187 041d 01       		.uleb128 0x1
 7188 041e 13       		.uleb128 0x13
 7189 041f 00       		.byte	0
 7190 0420 00       		.byte	0
 7191 0421 4C       		.uleb128 0x4c
 7192 0422 2E       		.uleb128 0x2e
 7193 0423 00       		.byte	0
 7194 0424 3F       		.uleb128 0x3f
 7195 0425 19       		.uleb128 0x19
 7196 0426 3C       		.uleb128 0x3c
 7197 0427 19       		.uleb128 0x19
 7198 0428 6E       		.uleb128 0x6e
 7199 0429 0E       		.uleb128 0xe
 7200 042a 03       		.uleb128 0x3
 7201 042b 0E       		.uleb128 0xe
ARM GAS  /tmp/cc4jIqrt.s 			page 134


 7202 042c 3A       		.uleb128 0x3a
 7203 042d 0B       		.uleb128 0xb
 7204 042e 3B       		.uleb128 0x3b
 7205 042f 0B       		.uleb128 0xb
 7206 0430 6E       		.uleb128 0x6e
 7207 0431 0E       		.uleb128 0xe
 7208 0432 00       		.byte	0
 7209 0433 00       		.byte	0
 7210 0434 4D       		.uleb128 0x4d
 7211 0435 34       		.uleb128 0x34
 7212 0436 00       		.byte	0
 7213 0437 03       		.uleb128 0x3
 7214 0438 0E       		.uleb128 0xe
 7215 0439 3A       		.uleb128 0x3a
 7216 043a 0B       		.uleb128 0xb
 7217 043b 3B       		.uleb128 0x3b
 7218 043c 0B       		.uleb128 0xb
 7219 043d 49       		.uleb128 0x49
 7220 043e 13       		.uleb128 0x13
 7221 043f 1C       		.uleb128 0x1c
 7222 0440 0B       		.uleb128 0xb
 7223 0441 00       		.byte	0
 7224 0442 00       		.byte	0
 7225 0443 4E       		.uleb128 0x4e
 7226 0444 34       		.uleb128 0x34
 7227 0445 00       		.byte	0
 7228 0446 03       		.uleb128 0x3
 7229 0447 0E       		.uleb128 0xe
 7230 0448 3A       		.uleb128 0x3a
 7231 0449 0B       		.uleb128 0xb
 7232 044a 3B       		.uleb128 0x3b
 7233 044b 0B       		.uleb128 0xb
 7234 044c 49       		.uleb128 0x49
 7235 044d 13       		.uleb128 0x13
 7236 044e 1C       		.uleb128 0x1c
 7237 044f 06       		.uleb128 0x6
 7238 0450 00       		.byte	0
 7239 0451 00       		.byte	0
 7240 0452 4F       		.uleb128 0x4f
 7241 0453 15       		.uleb128 0x15
 7242 0454 00       		.byte	0
 7243 0455 49       		.uleb128 0x49
 7244 0456 13       		.uleb128 0x13
 7245 0457 00       		.byte	0
 7246 0458 00       		.byte	0
 7247 0459 50       		.uleb128 0x50
 7248 045a 34       		.uleb128 0x34
 7249 045b 00       		.byte	0
 7250 045c 47       		.uleb128 0x47
 7251 045d 13       		.uleb128 0x13
 7252 045e 3A       		.uleb128 0x3a
 7253 045f 0B       		.uleb128 0xb
 7254 0460 3B       		.uleb128 0x3b
 7255 0461 0B       		.uleb128 0xb
 7256 0462 02       		.uleb128 0x2
 7257 0463 18       		.uleb128 0x18
 7258 0464 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 135


 7259 0465 00       		.byte	0
 7260 0466 51       		.uleb128 0x51
 7261 0467 34       		.uleb128 0x34
 7262 0468 00       		.byte	0
 7263 0469 03       		.uleb128 0x3
 7264 046a 0E       		.uleb128 0xe
 7265 046b 3A       		.uleb128 0x3a
 7266 046c 0B       		.uleb128 0xb
 7267 046d 3B       		.uleb128 0x3b
 7268 046e 0B       		.uleb128 0xb
 7269 046f 49       		.uleb128 0x49
 7270 0470 13       		.uleb128 0x13
 7271 0471 3F       		.uleb128 0x3f
 7272 0472 19       		.uleb128 0x19
 7273 0473 02       		.uleb128 0x2
 7274 0474 18       		.uleb128 0x18
 7275 0475 00       		.byte	0
 7276 0476 00       		.byte	0
 7277 0477 52       		.uleb128 0x52
 7278 0478 34       		.uleb128 0x34
 7279 0479 00       		.byte	0
 7280 047a 47       		.uleb128 0x47
 7281 047b 13       		.uleb128 0x13
 7282 047c 3A       		.uleb128 0x3a
 7283 047d 0B       		.uleb128 0xb
 7284 047e 3B       		.uleb128 0x3b
 7285 047f 05       		.uleb128 0x5
 7286 0480 02       		.uleb128 0x2
 7287 0481 18       		.uleb128 0x18
 7288 0482 00       		.byte	0
 7289 0483 00       		.byte	0
 7290 0484 53       		.uleb128 0x53
 7291 0485 34       		.uleb128 0x34
 7292 0486 00       		.byte	0
 7293 0487 03       		.uleb128 0x3
 7294 0488 0E       		.uleb128 0xe
 7295 0489 49       		.uleb128 0x49
 7296 048a 13       		.uleb128 0x13
 7297 048b 3F       		.uleb128 0x3f
 7298 048c 19       		.uleb128 0x19
 7299 048d 34       		.uleb128 0x34
 7300 048e 19       		.uleb128 0x19
 7301 048f 3C       		.uleb128 0x3c
 7302 0490 19       		.uleb128 0x19
 7303 0491 00       		.byte	0
 7304 0492 00       		.byte	0
 7305 0493 54       		.uleb128 0x54
 7306 0494 2E       		.uleb128 0x2e
 7307 0495 01       		.byte	0x1
 7308 0496 03       		.uleb128 0x3
 7309 0497 0E       		.uleb128 0xe
 7310 0498 34       		.uleb128 0x34
 7311 0499 19       		.uleb128 0x19
 7312 049a 11       		.uleb128 0x11
 7313 049b 01       		.uleb128 0x1
 7314 049c 12       		.uleb128 0x12
 7315 049d 06       		.uleb128 0x6
ARM GAS  /tmp/cc4jIqrt.s 			page 136


 7316 049e 40       		.uleb128 0x40
 7317 049f 18       		.uleb128 0x18
 7318 04a0 9742     		.uleb128 0x2117
 7319 04a2 19       		.uleb128 0x19
 7320 04a3 01       		.uleb128 0x1
 7321 04a4 13       		.uleb128 0x13
 7322 04a5 00       		.byte	0
 7323 04a6 00       		.byte	0
 7324 04a7 55       		.uleb128 0x55
 7325 04a8 1D       		.uleb128 0x1d
 7326 04a9 01       		.byte	0x1
 7327 04aa 31       		.uleb128 0x31
 7328 04ab 13       		.uleb128 0x13
 7329 04ac 52       		.uleb128 0x52
 7330 04ad 01       		.uleb128 0x1
 7331 04ae 55       		.uleb128 0x55
 7332 04af 17       		.uleb128 0x17
 7333 04b0 58       		.uleb128 0x58
 7334 04b1 0B       		.uleb128 0xb
 7335 04b2 59       		.uleb128 0x59
 7336 04b3 05       		.uleb128 0x5
 7337 04b4 00       		.byte	0
 7338 04b5 00       		.byte	0
 7339 04b6 56       		.uleb128 0x56
 7340 04b7 05       		.uleb128 0x5
 7341 04b8 00       		.byte	0
 7342 04b9 31       		.uleb128 0x31
 7343 04ba 13       		.uleb128 0x13
 7344 04bb 1C       		.uleb128 0x1c
 7345 04bc 0B       		.uleb128 0xb
 7346 04bd 00       		.byte	0
 7347 04be 00       		.byte	0
 7348 04bf 57       		.uleb128 0x57
 7349 04c0 05       		.uleb128 0x5
 7350 04c1 00       		.byte	0
 7351 04c2 31       		.uleb128 0x31
 7352 04c3 13       		.uleb128 0x13
 7353 04c4 1C       		.uleb128 0x1c
 7354 04c5 05       		.uleb128 0x5
 7355 04c6 00       		.byte	0
 7356 04c7 00       		.byte	0
 7357 04c8 58       		.uleb128 0x58
 7358 04c9 898201   		.uleb128 0x4109
 7359 04cc 01       		.byte	0x1
 7360 04cd 11       		.uleb128 0x11
 7361 04ce 01       		.uleb128 0x1
 7362 04cf 01       		.uleb128 0x1
 7363 04d0 13       		.uleb128 0x13
 7364 04d1 00       		.byte	0
 7365 04d2 00       		.byte	0
 7366 04d3 59       		.uleb128 0x59
 7367 04d4 8A8201   		.uleb128 0x410a
 7368 04d7 00       		.byte	0
 7369 04d8 02       		.uleb128 0x2
 7370 04d9 18       		.uleb128 0x18
 7371 04da 9142     		.uleb128 0x2111
 7372 04dc 18       		.uleb128 0x18
ARM GAS  /tmp/cc4jIqrt.s 			page 137


 7373 04dd 00       		.byte	0
 7374 04de 00       		.byte	0
 7375 04df 5A       		.uleb128 0x5a
 7376 04e0 898201   		.uleb128 0x4109
 7377 04e3 01       		.byte	0x1
 7378 04e4 11       		.uleb128 0x11
 7379 04e5 01       		.uleb128 0x1
 7380 04e6 31       		.uleb128 0x31
 7381 04e7 13       		.uleb128 0x13
 7382 04e8 01       		.uleb128 0x1
 7383 04e9 13       		.uleb128 0x13
 7384 04ea 00       		.byte	0
 7385 04eb 00       		.byte	0
 7386 04ec 5B       		.uleb128 0x5b
 7387 04ed 898201   		.uleb128 0x4109
 7388 04f0 01       		.byte	0x1
 7389 04f1 11       		.uleb128 0x11
 7390 04f2 01       		.uleb128 0x1
 7391 04f3 9542     		.uleb128 0x2115
 7392 04f5 19       		.uleb128 0x19
 7393 04f6 31       		.uleb128 0x31
 7394 04f7 13       		.uleb128 0x13
 7395 04f8 00       		.byte	0
 7396 04f9 00       		.byte	0
 7397 04fa 5C       		.uleb128 0x5c
 7398 04fb 8A8201   		.uleb128 0x410a
 7399 04fe 00       		.byte	0
 7400 04ff 02       		.uleb128 0x2
 7401 0500 18       		.uleb128 0x18
 7402 0501 00       		.byte	0
 7403 0502 00       		.byte	0
 7404 0503 5D       		.uleb128 0x5d
 7405 0504 2E       		.uleb128 0x2e
 7406 0505 01       		.byte	0x1
 7407 0506 03       		.uleb128 0x3
 7408 0507 0E       		.uleb128 0xe
 7409 0508 34       		.uleb128 0x34
 7410 0509 19       		.uleb128 0x19
 7411 050a 20       		.uleb128 0x20
 7412 050b 0B       		.uleb128 0xb
 7413 050c 01       		.uleb128 0x1
 7414 050d 13       		.uleb128 0x13
 7415 050e 00       		.byte	0
 7416 050f 00       		.byte	0
 7417 0510 5E       		.uleb128 0x5e
 7418 0511 05       		.uleb128 0x5
 7419 0512 00       		.byte	0
 7420 0513 03       		.uleb128 0x3
 7421 0514 0E       		.uleb128 0xe
 7422 0515 3A       		.uleb128 0x3a
 7423 0516 0B       		.uleb128 0xb
 7424 0517 3B       		.uleb128 0x3b
 7425 0518 05       		.uleb128 0x5
 7426 0519 49       		.uleb128 0x49
 7427 051a 13       		.uleb128 0x13
 7428 051b 00       		.byte	0
 7429 051c 00       		.byte	0
ARM GAS  /tmp/cc4jIqrt.s 			page 138


 7430 051d 5F       		.uleb128 0x5f
 7431 051e 2E       		.uleb128 0x2e
 7432 051f 01       		.byte	0x1
 7433 0520 47       		.uleb128 0x47
 7434 0521 13       		.uleb128 0x13
 7435 0522 3A       		.uleb128 0x3a
 7436 0523 0B       		.uleb128 0xb
 7437 0524 3B       		.uleb128 0x3b
 7438 0525 0B       		.uleb128 0xb
 7439 0526 20       		.uleb128 0x20
 7440 0527 0B       		.uleb128 0xb
 7441 0528 64       		.uleb128 0x64
 7442 0529 13       		.uleb128 0x13
 7443 052a 01       		.uleb128 0x1
 7444 052b 13       		.uleb128 0x13
 7445 052c 00       		.byte	0
 7446 052d 00       		.byte	0
 7447 052e 60       		.uleb128 0x60
 7448 052f 05       		.uleb128 0x5
 7449 0530 00       		.byte	0
 7450 0531 03       		.uleb128 0x3
 7451 0532 0E       		.uleb128 0xe
 7452 0533 49       		.uleb128 0x49
 7453 0534 13       		.uleb128 0x13
 7454 0535 34       		.uleb128 0x34
 7455 0536 19       		.uleb128 0x19
 7456 0537 00       		.byte	0
 7457 0538 00       		.byte	0
 7458 0539 61       		.uleb128 0x61
 7459 053a 2E       		.uleb128 0x2e
 7460 053b 01       		.byte	0x1
 7461 053c 31       		.uleb128 0x31
 7462 053d 13       		.uleb128 0x13
 7463 053e 6E       		.uleb128 0x6e
 7464 053f 0E       		.uleb128 0xe
 7465 0540 64       		.uleb128 0x64
 7466 0541 13       		.uleb128 0x13
 7467 0542 11       		.uleb128 0x11
 7468 0543 01       		.uleb128 0x1
 7469 0544 12       		.uleb128 0x12
 7470 0545 06       		.uleb128 0x6
 7471 0546 40       		.uleb128 0x40
 7472 0547 18       		.uleb128 0x18
 7473 0548 64       		.uleb128 0x64
 7474 0549 13       		.uleb128 0x13
 7475 054a 9742     		.uleb128 0x2117
 7476 054c 19       		.uleb128 0x19
 7477 054d 01       		.uleb128 0x1
 7478 054e 13       		.uleb128 0x13
 7479 054f 00       		.byte	0
 7480 0550 00       		.byte	0
 7481 0551 62       		.uleb128 0x62
 7482 0552 05       		.uleb128 0x5
 7483 0553 00       		.byte	0
 7484 0554 31       		.uleb128 0x31
 7485 0555 13       		.uleb128 0x13
 7486 0556 02       		.uleb128 0x2
ARM GAS  /tmp/cc4jIqrt.s 			page 139


 7487 0557 17       		.uleb128 0x17
 7488 0558 00       		.byte	0
 7489 0559 00       		.byte	0
 7490 055a 63       		.uleb128 0x63
 7491 055b 898201   		.uleb128 0x4109
 7492 055e 01       		.byte	0x1
 7493 055f 11       		.uleb128 0x11
 7494 0560 01       		.uleb128 0x1
 7495 0561 31       		.uleb128 0x31
 7496 0562 13       		.uleb128 0x13
 7497 0563 00       		.byte	0
 7498 0564 00       		.byte	0
 7499 0565 64       		.uleb128 0x64
 7500 0566 05       		.uleb128 0x5
 7501 0567 00       		.byte	0
 7502 0568 31       		.uleb128 0x31
 7503 0569 13       		.uleb128 0x13
 7504 056a 02       		.uleb128 0x2
 7505 056b 18       		.uleb128 0x18
 7506 056c 00       		.byte	0
 7507 056d 00       		.byte	0
 7508 056e 65       		.uleb128 0x65
 7509 056f 2E       		.uleb128 0x2e
 7510 0570 01       		.byte	0x1
 7511 0571 31       		.uleb128 0x31
 7512 0572 13       		.uleb128 0x13
 7513 0573 6E       		.uleb128 0x6e
 7514 0574 0E       		.uleb128 0xe
 7515 0575 64       		.uleb128 0x64
 7516 0576 13       		.uleb128 0x13
 7517 0577 01       		.uleb128 0x1
 7518 0578 13       		.uleb128 0x13
 7519 0579 00       		.byte	0
 7520 057a 00       		.byte	0
 7521 057b 66       		.uleb128 0x66
 7522 057c 05       		.uleb128 0x5
 7523 057d 00       		.byte	0
 7524 057e 31       		.uleb128 0x31
 7525 057f 13       		.uleb128 0x13
 7526 0580 00       		.byte	0
 7527 0581 00       		.byte	0
 7528 0582 67       		.uleb128 0x67
 7529 0583 2E       		.uleb128 0x2e
 7530 0584 01       		.byte	0x1
 7531 0585 3F       		.uleb128 0x3f
 7532 0586 19       		.uleb128 0x19
 7533 0587 03       		.uleb128 0x3
 7534 0588 0E       		.uleb128 0xe
 7535 0589 3A       		.uleb128 0x3a
 7536 058a 0B       		.uleb128 0xb
 7537 058b 3B       		.uleb128 0x3b
 7538 058c 0B       		.uleb128 0xb
 7539 058d 6E       		.uleb128 0x6e
 7540 058e 0E       		.uleb128 0xe
 7541 058f 49       		.uleb128 0x49
 7542 0590 13       		.uleb128 0x13
 7543 0591 4C       		.uleb128 0x4c
ARM GAS  /tmp/cc4jIqrt.s 			page 140


 7544 0592 0B       		.uleb128 0xb
 7545 0593 4D       		.uleb128 0x4d
 7546 0594 18       		.uleb128 0x18
 7547 0595 1D       		.uleb128 0x1d
 7548 0596 13       		.uleb128 0x13
 7549 0597 32       		.uleb128 0x32
 7550 0598 0B       		.uleb128 0xb
 7551 0599 3C       		.uleb128 0x3c
 7552 059a 19       		.uleb128 0x19
 7553 059b 64       		.uleb128 0x64
 7554 059c 13       		.uleb128 0x13
 7555 059d 00       		.byte	0
 7556 059e 00       		.byte	0
 7557 059f 68       		.uleb128 0x68
 7558 05a0 2E       		.uleb128 0x2e
 7559 05a1 01       		.byte	0x1
 7560 05a2 3F       		.uleb128 0x3f
 7561 05a3 19       		.uleb128 0x19
 7562 05a4 03       		.uleb128 0x3
 7563 05a5 0E       		.uleb128 0xe
 7564 05a6 3A       		.uleb128 0x3a
 7565 05a7 0B       		.uleb128 0xb
 7566 05a8 3B       		.uleb128 0x3b
 7567 05a9 05       		.uleb128 0x5
 7568 05aa 11       		.uleb128 0x11
 7569 05ab 01       		.uleb128 0x1
 7570 05ac 12       		.uleb128 0x12
 7571 05ad 06       		.uleb128 0x6
 7572 05ae 40       		.uleb128 0x40
 7573 05af 18       		.uleb128 0x18
 7574 05b0 9742     		.uleb128 0x2117
 7575 05b2 19       		.uleb128 0x19
 7576 05b3 01       		.uleb128 0x1
 7577 05b4 13       		.uleb128 0x13
 7578 05b5 00       		.byte	0
 7579 05b6 00       		.byte	0
 7580 05b7 69       		.uleb128 0x69
 7581 05b8 1D       		.uleb128 0x1d
 7582 05b9 01       		.byte	0x1
 7583 05ba 31       		.uleb128 0x31
 7584 05bb 13       		.uleb128 0x13
 7585 05bc 11       		.uleb128 0x11
 7586 05bd 01       		.uleb128 0x1
 7587 05be 12       		.uleb128 0x12
 7588 05bf 06       		.uleb128 0x6
 7589 05c0 58       		.uleb128 0x58
 7590 05c1 0B       		.uleb128 0xb
 7591 05c2 59       		.uleb128 0x59
 7592 05c3 05       		.uleb128 0x5
 7593 05c4 01       		.uleb128 0x1
 7594 05c5 13       		.uleb128 0x13
 7595 05c6 00       		.byte	0
 7596 05c7 00       		.byte	0
 7597 05c8 6A       		.uleb128 0x6a
 7598 05c9 898201   		.uleb128 0x4109
 7599 05cc 00       		.byte	0
 7600 05cd 11       		.uleb128 0x11
ARM GAS  /tmp/cc4jIqrt.s 			page 141


 7601 05ce 01       		.uleb128 0x1
 7602 05cf 31       		.uleb128 0x31
 7603 05d0 13       		.uleb128 0x13
 7604 05d1 00       		.byte	0
 7605 05d2 00       		.byte	0
 7606 05d3 6B       		.uleb128 0x6b
 7607 05d4 2E       		.uleb128 0x2e
 7608 05d5 01       		.byte	0x1
 7609 05d6 3F       		.uleb128 0x3f
 7610 05d7 19       		.uleb128 0x19
 7611 05d8 03       		.uleb128 0x3
 7612 05d9 0E       		.uleb128 0xe
 7613 05da 3A       		.uleb128 0x3a
 7614 05db 0B       		.uleb128 0xb
 7615 05dc 3B       		.uleb128 0x3b
 7616 05dd 05       		.uleb128 0x5
 7617 05de 6E       		.uleb128 0x6e
 7618 05df 0E       		.uleb128 0xe
 7619 05e0 20       		.uleb128 0x20
 7620 05e1 0B       		.uleb128 0xb
 7621 05e2 01       		.uleb128 0x1
 7622 05e3 13       		.uleb128 0x13
 7623 05e4 00       		.byte	0
 7624 05e5 00       		.byte	0
 7625 05e6 6C       		.uleb128 0x6c
 7626 05e7 10       		.uleb128 0x10
 7627 05e8 00       		.byte	0
 7628 05e9 0B       		.uleb128 0xb
 7629 05ea 0B       		.uleb128 0xb
 7630 05eb 49       		.uleb128 0x49
 7631 05ec 13       		.uleb128 0x13
 7632 05ed 00       		.byte	0
 7633 05ee 00       		.byte	0
 7634 05ef 6D       		.uleb128 0x6d
 7635 05f0 2E       		.uleb128 0x2e
 7636 05f1 01       		.byte	0x1
 7637 05f2 3F       		.uleb128 0x3f
 7638 05f3 19       		.uleb128 0x19
 7639 05f4 03       		.uleb128 0x3
 7640 05f5 0E       		.uleb128 0xe
 7641 05f6 3A       		.uleb128 0x3a
 7642 05f7 0B       		.uleb128 0xb
 7643 05f8 3B       		.uleb128 0x3b
 7644 05f9 0B       		.uleb128 0xb
 7645 05fa 11       		.uleb128 0x11
 7646 05fb 01       		.uleb128 0x1
 7647 05fc 12       		.uleb128 0x12
 7648 05fd 06       		.uleb128 0x6
 7649 05fe 40       		.uleb128 0x40
 7650 05ff 18       		.uleb128 0x18
 7651 0600 9742     		.uleb128 0x2117
 7652 0602 19       		.uleb128 0x19
 7653 0603 01       		.uleb128 0x1
 7654 0604 13       		.uleb128 0x13
 7655 0605 00       		.byte	0
 7656 0606 00       		.byte	0
 7657 0607 6E       		.uleb128 0x6e
ARM GAS  /tmp/cc4jIqrt.s 			page 142


 7658 0608 2E       		.uleb128 0x2e
 7659 0609 01       		.byte	0x1
 7660 060a 47       		.uleb128 0x47
 7661 060b 13       		.uleb128 0x13
 7662 060c 64       		.uleb128 0x64
 7663 060d 13       		.uleb128 0x13
 7664 060e 01       		.uleb128 0x1
 7665 060f 13       		.uleb128 0x13
 7666 0610 00       		.byte	0
 7667 0611 00       		.byte	0
 7668 0612 6F       		.uleb128 0x6f
 7669 0613 2E       		.uleb128 0x2e
 7670 0614 01       		.byte	0x1
 7671 0615 47       		.uleb128 0x47
 7672 0616 13       		.uleb128 0x13
 7673 0617 20       		.uleb128 0x20
 7674 0618 0B       		.uleb128 0xb
 7675 0619 64       		.uleb128 0x64
 7676 061a 13       		.uleb128 0x13
 7677 061b 01       		.uleb128 0x1
 7678 061c 13       		.uleb128 0x13
 7679 061d 00       		.byte	0
 7680 061e 00       		.byte	0
 7681 061f 70       		.uleb128 0x70
 7682 0620 2E       		.uleb128 0x2e
 7683 0621 01       		.byte	0x1
 7684 0622 31       		.uleb128 0x31
 7685 0623 13       		.uleb128 0x13
 7686 0624 6E       		.uleb128 0x6e
 7687 0625 0E       		.uleb128 0xe
 7688 0626 11       		.uleb128 0x11
 7689 0627 01       		.uleb128 0x1
 7690 0628 12       		.uleb128 0x12
 7691 0629 06       		.uleb128 0x6
 7692 062a 40       		.uleb128 0x40
 7693 062b 18       		.uleb128 0x18
 7694 062c 9742     		.uleb128 0x2117
 7695 062e 19       		.uleb128 0x19
 7696 062f 01       		.uleb128 0x1
 7697 0630 13       		.uleb128 0x13
 7698 0631 00       		.byte	0
 7699 0632 00       		.byte	0
 7700 0633 71       		.uleb128 0x71
 7701 0634 898201   		.uleb128 0x4109
 7702 0637 00       		.byte	0
 7703 0638 11       		.uleb128 0x11
 7704 0639 01       		.uleb128 0x1
 7705 063a 9542     		.uleb128 0x2115
 7706 063c 19       		.uleb128 0x19
 7707 063d 31       		.uleb128 0x31
 7708 063e 13       		.uleb128 0x13
 7709 063f 00       		.byte	0
 7710 0640 00       		.byte	0
 7711 0641 72       		.uleb128 0x72
 7712 0642 2E       		.uleb128 0x2e
 7713 0643 00       		.byte	0
 7714 0644 3F       		.uleb128 0x3f
ARM GAS  /tmp/cc4jIqrt.s 			page 143


 7715 0645 19       		.uleb128 0x19
 7716 0646 3C       		.uleb128 0x3c
 7717 0647 19       		.uleb128 0x19
 7718 0648 6E       		.uleb128 0x6e
 7719 0649 0E       		.uleb128 0xe
 7720 064a 03       		.uleb128 0x3
 7721 064b 0E       		.uleb128 0xe
 7722 064c 00       		.byte	0
 7723 064d 00       		.byte	0
 7724 064e 73       		.uleb128 0x73
 7725 064f 2E       		.uleb128 0x2e
 7726 0650 00       		.byte	0
 7727 0651 3F       		.uleb128 0x3f
 7728 0652 19       		.uleb128 0x19
 7729 0653 3C       		.uleb128 0x3c
 7730 0654 19       		.uleb128 0x19
 7731 0655 6E       		.uleb128 0x6e
 7732 0656 0E       		.uleb128 0xe
 7733 0657 03       		.uleb128 0x3
 7734 0658 0E       		.uleb128 0xe
 7735 0659 6E       		.uleb128 0x6e
 7736 065a 0E       		.uleb128 0xe
 7737 065b 00       		.byte	0
 7738 065c 00       		.byte	0
 7739 065d 74       		.uleb128 0x74
 7740 065e 2E       		.uleb128 0x2e
 7741 065f 00       		.byte	0
 7742 0660 3F       		.uleb128 0x3f
 7743 0661 19       		.uleb128 0x19
 7744 0662 3C       		.uleb128 0x3c
 7745 0663 19       		.uleb128 0x19
 7746 0664 6E       		.uleb128 0x6e
 7747 0665 0E       		.uleb128 0xe
 7748 0666 03       		.uleb128 0x3
 7749 0667 0E       		.uleb128 0xe
 7750 0668 3A       		.uleb128 0x3a
 7751 0669 0B       		.uleb128 0xb
 7752 066a 3B       		.uleb128 0x3b
 7753 066b 0B       		.uleb128 0xb
 7754 066c 00       		.byte	0
 7755 066d 00       		.byte	0
 7756 066e 00       		.byte	0
 7757              		.section	.debug_loc,"",%progbits
 7758              	.Ldebug_loc0:
 7759              	.LLST7:
 7760 0000 00000000 		.4byte	.LVL17
 7761 0004 09000000 		.4byte	.LVL18-1
 7762 0008 0100     		.2byte	0x1
 7763 000a 50       		.byte	0x50
 7764 000b 09000000 		.4byte	.LVL18-1
 7765 000f 0E000000 		.4byte	.LFE548
 7766 0013 0100     		.2byte	0x1
 7767 0015 54       		.byte	0x54
 7768 0016 00000000 		.4byte	0
 7769 001a 00000000 		.4byte	0
 7770              	.LLST1:
 7771 001e 00000000 		.4byte	.LVL6
ARM GAS  /tmp/cc4jIqrt.s 			page 144


 7772 0022 14000000 		.4byte	.LVL7
 7773 0026 0600     		.2byte	0x6
 7774 0028 03       		.byte	0x3
 7775 0029 20060000 		.4byte	g_APinDescription+1568
 7776 002d 9F       		.byte	0x9f
 7777 002e 00000000 		.4byte	0
 7778 0032 00000000 		.4byte	0
 7779              	.LLST2:
 7780 0036 24000000 		.4byte	.LVL10
 7781 003a 34000000 		.4byte	.LVL11
 7782 003e 0600     		.2byte	0x6
 7783 0040 03       		.byte	0x3
 7784 0041 94050000 		.4byte	g_APinDescription+1428
 7785 0045 9F       		.byte	0x9f
 7786 0046 00000000 		.4byte	0
 7787 004a 00000000 		.4byte	0
 7788              	.LLST3:
 7789 004e 34000000 		.4byte	.LVL11
 7790 0052 44000000 		.4byte	.LVL12
 7791 0056 0600     		.2byte	0x6
 7792 0058 03       		.byte	0x3
 7793 0059 B0050000 		.4byte	g_APinDescription+1456
 7794 005d 9F       		.byte	0x9f
 7795 005e 00000000 		.4byte	0
 7796 0062 00000000 		.4byte	0
 7797              	.LLST4:
 7798 0066 44000000 		.4byte	.LVL12
 7799 006a 54000000 		.4byte	.LVL13
 7800 006e 0600     		.2byte	0x6
 7801 0070 03       		.byte	0x3
 7802 0071 E8050000 		.4byte	g_APinDescription+1512
 7803 0075 9F       		.byte	0x9f
 7804 0076 00000000 		.4byte	0
 7805 007a 00000000 		.4byte	0
 7806              	.LLST5:
 7807 007e 54000000 		.4byte	.LVL13
 7808 0082 64000000 		.4byte	.LVL14
 7809 0086 0600     		.2byte	0x6
 7810 0088 03       		.byte	0x3
 7811 0089 CC050000 		.4byte	g_APinDescription+1484
 7812 008d 9F       		.byte	0x9f
 7813 008e 00000000 		.4byte	0
 7814 0092 00000000 		.4byte	0
 7815              	.LLST6:
 7816 0096 64000000 		.4byte	.LVL14
 7817 009a 74000000 		.4byte	.LVL15
 7818 009e 0600     		.2byte	0x6
 7819 00a0 03       		.byte	0x3
 7820 00a1 04060000 		.4byte	g_APinDescription+1540
 7821 00a5 9F       		.byte	0x9f
 7822 00a6 00000000 		.4byte	0
 7823 00aa 00000000 		.4byte	0
 7824              	.LLST0:
 7825 00ae 00000000 		.4byte	.LVL3
 7826 00b2 08000000 		.4byte	.LVL4
 7827 00b6 0100     		.2byte	0x1
 7828 00b8 50       		.byte	0x50
ARM GAS  /tmp/cc4jIqrt.s 			page 145


 7829 00b9 08000000 		.4byte	.LVL4
 7830 00bd 0C000000 		.4byte	.LFE534
 7831 00c1 0400     		.2byte	0x4
 7832 00c3 F3       		.byte	0xf3
 7833 00c4 01       		.uleb128 0x1
 7834 00c5 50       		.byte	0x50
 7835 00c6 9F       		.byte	0x9f
 7836 00c7 00000000 		.4byte	0
 7837 00cb 00000000 		.4byte	0
 7838              		.section	.debug_aranges,"",%progbits
 7839 0000 4C000000 		.4byte	0x4c
 7840 0004 0200     		.2byte	0x2
 7841 0006 00000000 		.4byte	.Ldebug_info0
 7842 000a 04       		.byte	0x4
 7843 000b 00       		.byte	0
 7844 000c 0000     		.2byte	0
 7845 000e 0000     		.2byte	0
 7846 0010 00000000 		.4byte	.LFB546
 7847 0014 02000000 		.4byte	.LFE546-.LFB546
 7848 0018 00000000 		.4byte	.LFB532
 7849 001c 0C000000 		.4byte	.LFE532-.LFB532
 7850 0020 00000000 		.4byte	.LFB533
 7851 0024 0C000000 		.4byte	.LFE533-.LFB533
 7852 0028 00000000 		.4byte	.LFB534
 7853 002c 0C000000 		.4byte	.LFE534-.LFB534
 7854 0030 00000000 		.4byte	.LFB535
 7855 0034 9C000000 		.4byte	.LFE535-.LFB535
 7856 0038 00000000 		.4byte	.LFB548
 7857 003c 0E000000 		.4byte	.LFE548-.LFB548
 7858 0040 00000000 		.4byte	.LFB549
 7859 0044 98000000 		.4byte	.LFE549-.LFB549
 7860 0048 00000000 		.4byte	0
 7861 004c 00000000 		.4byte	0
 7862              		.section	.debug_ranges,"",%progbits
 7863              	.Ldebug_ranges0:
 7864 0000 04000000 		.4byte	.LBB61
 7865 0004 08000000 		.4byte	.LBE61
 7866 0008 0A000000 		.4byte	.LBB65
 7867 000c 66000000 		.4byte	.LBE65
 7868 0010 6C000000 		.4byte	.LBB66
 7869 0014 98000000 		.4byte	.LBE66
 7870 0018 00000000 		.4byte	0
 7871 001c 00000000 		.4byte	0
 7872 0020 00000000 		.4byte	.LFB546
 7873 0024 02000000 		.4byte	.LFE546
 7874 0028 00000000 		.4byte	.LFB532
 7875 002c 0C000000 		.4byte	.LFE532
 7876 0030 00000000 		.4byte	.LFB533
 7877 0034 0C000000 		.4byte	.LFE533
 7878 0038 00000000 		.4byte	.LFB534
 7879 003c 0C000000 		.4byte	.LFE534
 7880 0040 00000000 		.4byte	.LFB535
 7881 0044 9C000000 		.4byte	.LFE535
 7882 0048 00000000 		.4byte	.LFB548
 7883 004c 0E000000 		.4byte	.LFE548
 7884 0050 00000000 		.4byte	.LFB549
 7885 0054 98000000 		.4byte	.LFE549
ARM GAS  /tmp/cc4jIqrt.s 			page 146


 7886 0058 00000000 		.4byte	0
 7887 005c 00000000 		.4byte	0
 7888              		.section	.debug_line,"",%progbits
 7889              	.Ldebug_line0:
 7890 0000 F5060000 		.section	.debug_str,"MS",%progbits,1
 7890      02004706 
 7890      00000201 
 7890      FB0E0D00 
 7890      01010101 
 7891              	.LASF538:
 7892 0000 624E756D 		.ascii	"bNumDeviceCaps\000"
 7892      44657669 
 7892      63654361 
 7892      707300
 7893              	.LASF486:
 7894 000f 73746F72 		.ascii	"store_char\000"
 7894      655F6368 
 7894      617200
 7895              	.LASF114:
 7896 001a 5443375F 		.ascii	"TC7_IRQn\000"
 7896      4952516E 
 7896      00
 7897              	.LASF615:
 7898 0023 5F5A4E31 		.ascii	"_ZN14HardwareSerialD4Ev\000"
 7898      34486172 
 7898      64776172 
 7898      65536572 
 7898      69616C44 
 7899              	.LASF570:
 7900 003b 7564645F 		.ascii	"udd_g_ctrlreq\000"
 7900      675F6374 
 7900      726C7265 
 7900      7100
 7901              	.LASF75:
 7902 0049 4546435F 		.ascii	"EFC_IRQn\000"
 7902      4952516E 
 7902      00
 7903              	.LASF28:
 7904 0052 5F5F696E 		.ascii	"__int_least64_t\000"
 7904      745F6C65 
 7904      61737436 
 7904      345F7400 
 7905              	.LASF97:
 7906 0062 41464543 		.ascii	"AFEC0_IRQn\000"
 7906      305F4952 
 7906      516E00
 7907              	.LASF544:
 7908 006d 626D4174 		.ascii	"bmAttributes\000"
 7908      74726962 
 7908      75746573 
 7908      00
 7909              	.LASF165:
 7910 007a 50494F5F 		.ascii	"PIO_PPDER\000"
 7910      50504445 
 7910      5200
 7911              	.LASF113:
 7912 0084 5443365F 		.ascii	"TC6_IRQn\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 147


 7912      4952516E 
 7912      00
 7913              	.LASF299:
 7914 008d 5F737464 		.ascii	"_stdout\000"
 7914      6F757400 
 7915              	.LASF497:
 7916 0095 4150494E 		.ascii	"APIN_UART0_RXD\000"
 7916      5F554152 
 7916      54305F52 
 7916      584400
 7917              	.LASF379:
 7918 00a4 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 7918      6C69626D 
 7918      5F786F70 
 7918      656E00
 7919              	.LASF9:
 7920 00b3 5F5F7569 		.ascii	"__uint8_t\000"
 7920      6E74385F 
 7920      7400
 7921              	.LASF109:
 7922 00bd 51535049 		.ascii	"QSPI_IRQn\000"
 7922      5F495251 
 7922      6E00
 7923              	.LASF502:
 7924 00c7 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 7924      5F48534D 
 7924      43495F43 
 7924      4C4F434B 
 7924      00
 7925              	.LASF337:
 7926 00d8 376C6C64 		.ascii	"7lldiv_t\000"
 7926      69765F74 
 7926      00
 7927              	.LASF66:
 7928 00e1 44656275 		.ascii	"DebugMonitor_IRQn\000"
 7928      674D6F6E 
 7928      69746F72 
 7928      5F495251 
 7928      6E00
 7929              	.LASF565:
 7930 00f3 7061796C 		.ascii	"payload\000"
 7930      6F616400 
 7931              	.LASF546:
 7932 00fb 7573625F 		.ascii	"usb_conf_desc_t\000"
 7932      636F6E66 
 7932      5F646573 
 7932      635F7400 
 7933              	.LASF272:
 7934 010b 5F6D6273 		.ascii	"_mbstate\000"
 7934      74617465 
 7934      00
 7935              	.LASF483:
 7936 0114 5F5A4E31 		.ascii	"_ZN10RingBufferC4Ev\000"
 7936      3052696E 
 7936      67427566 
 7936      66657243 
 7936      34457600 
ARM GAS  /tmp/cc4jIqrt.s 			page 148


 7937              	.LASF251:
 7938 0128 5F617465 		.ascii	"_atexit\000"
 7938      78697400 
 7939              	.LASF524:
 7940 0130 62446576 		.ascii	"bDeviceClass\000"
 7940      69636543 
 7940      6C617373 
 7940      00
 7941              	.LASF218:
 7942 013d 55617274 		.ascii	"Uart\000"
 7942      00
 7943              	.LASF462:
 7944 0142 756C5065 		.ascii	"ulPeripheralId\000"
 7944      72697068 
 7944      6572616C 
 7944      496400
 7945              	.LASF147:
 7946 0151 50494F5F 		.ascii	"PIO_IDR\000"
 7946      49445200 
 7947              	.LASF162:
 7948 0159 50494F5F 		.ascii	"PIO_IFSCSR\000"
 7948      49465343 
 7948      535200
 7949              	.LASF607:
 7950 0164 2E2E2F76 		.ascii	"../variants/same70/variant.cpp\000"
 7950      61726961 
 7950      6E74732F 
 7950      73616D65 
 7950      37302F76 
 7951              	.LASF241:
 7952 0183 5F5F746D 		.ascii	"__tm_mon\000"
 7952      5F6D6F6E 
 7952      00
 7953              	.LASF249:
 7954 018c 5F666E74 		.ascii	"_fntypes\000"
 7954      79706573 
 7954      00
 7955              	.LASF301:
 7956 0195 5F696E63 		.ascii	"_inc\000"
 7956      00
 7957              	.LASF252:
 7958 019a 5F696E64 		.ascii	"_ind\000"
 7958      00
 7959              	.LASF126:
 7960 019f 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 7960      50485F43 
 7960      4F554E54 
 7960      5F495251 
 7960      6E00
 7961              	.LASF163:
 7962 01b1 50494F5F 		.ascii	"PIO_SCDR\000"
 7962      53434452 
 7962      00
 7963              	.LASF54:
 7964 01ba 696E745F 		.ascii	"int_fast32_t\000"
 7964      66617374 
 7964      33325F74 
ARM GAS  /tmp/cc4jIqrt.s 			page 149


 7964      00
 7965              	.LASF584:
 7966 01c7 53747265 		.ascii	"Stream\000"
 7966      616D00
 7967              	.LASF571:
 7968 01ce 72785F62 		.ascii	"rx_buffer1\000"
 7968      75666665 
 7968      723100
 7969              	.LASF146:
 7970 01d9 50494F5F 		.ascii	"PIO_IER\000"
 7970      49455200 
 7971              	.LASF35:
 7972 01e1 75696E74 		.ascii	"uint16_t\000"
 7972      31365F74 
 7972      00
 7973              	.LASF169:
 7974 01ea 50494F5F 		.ascii	"PIO_OWDR\000"
 7974      4F574452 
 7974      00
 7975              	.LASF418:
 7976 01f3 5443325F 		.ascii	"TC2_CHA6\000"
 7976      43484136 
 7976      00
 7977              	.LASF420:
 7978 01fc 5443325F 		.ascii	"TC2_CHA7\000"
 7978      43484137 
 7978      00
 7979              	.LASF422:
 7980 0205 5443325F 		.ascii	"TC2_CHA8\000"
 7980      43484138 
 7980      00
 7981              	.LASF478:
 7982 020e 5F617563 		.ascii	"_aucBuffer\000"
 7982      42756666 
 7982      657200
 7983              	.LASF258:
 7984 0219 5F666C61 		.ascii	"_flags\000"
 7984      677300
 7985              	.LASF373:
 7986 0220 666C6F61 		.ascii	"float_t\000"
 7986      745F7400 
 7987              	.LASF102:
 7988 0228 55534248 		.ascii	"USBHS_IRQn\000"
 7988      535F4952 
 7988      516E00
 7989              	.LASF188:
 7990 0233 50494F5F 		.ascii	"PIO_SCHMITT\000"
 7990      5343484D 
 7990      49545400 
 7991              	.LASF311:
 7992 023f 5F637674 		.ascii	"_cvtlen\000"
 7992      6C656E00 
 7993              	.LASF412:
 7994 0247 5443315F 		.ascii	"TC1_CHA3\000"
 7994      43484133 
 7994      00
 7995              	.LASF365:
ARM GAS  /tmp/cc4jIqrt.s 			page 150


 7996 0250 73747274 		.ascii	"strtof\000"
 7996      6F6600
 7997              	.LASF378:
 7998 0257 5F5F6664 		.ascii	"__fdlibm_svid\000"
 7998      6C69626D 
 7998      5F737669 
 7998      6400
 7999              	.LASF315:
 8000 0265 5F736967 		.ascii	"_sig_func\000"
 8000      5F66756E 
 8000      6300
 8001              	.LASF168:
 8002 026f 50494F5F 		.ascii	"PIO_OWER\000"
 8002      4F574552 
 8002      00
 8003              	.LASF419:
 8004 0278 5443325F 		.ascii	"TC2_CHB6\000"
 8004      43484236 
 8004      00
 8005              	.LASF421:
 8006 0281 5443325F 		.ascii	"TC2_CHB7\000"
 8006      43484237 
 8006      00
 8007              	.LASF423:
 8008 028a 5443325F 		.ascii	"TC2_CHB8\000"
 8008      43484238 
 8008      00
 8009              	.LASF551:
 8010 0293 67657473 		.ascii	"getsetting\000"
 8010      65747469 
 8010      6E6700
 8011              	.LASF55:
 8012 029e 75696E74 		.ascii	"uint_fast32_t\000"
 8012      5F666173 
 8012      7433325F 
 8012      7400
 8013              	.LASF504:
 8014 02ac 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 8014      5F474D41 
 8014      435F5048 
 8014      595F494E 
 8014      54455252 
 8015              	.LASF508:
 8016 02c4 50776D46 		.ascii	"PwmFastClock\000"
 8016      61737443 
 8016      6C6F636B 
 8016      00
 8017              	.LASF425:
 8018 02d1 416E616C 		.ascii	"AnalogChannelNumber\000"
 8018      6F674368 
 8018      616E6E65 
 8018      6C4E756D 
 8018      62657200 
 8019              	.LASF271:
 8020 02e5 5F6C6F63 		.ascii	"_lock\000"
 8020      6B00
 8021              	.LASF267:
ARM GAS  /tmp/cc4jIqrt.s 			page 151


 8022 02eb 5F6E6275 		.ascii	"_nbuf\000"
 8022      6600
 8023              	.LASF296:
 8024 02f1 5F756E75 		.ascii	"_unused\000"
 8024      73656400 
 8025              	.LASF122:
 8026 02f9 4953495F 		.ascii	"ISI_IRQn\000"
 8026      4952516E 
 8026      00
 8027              	.LASF406:
 8028 0302 5443305F 		.ascii	"TC0_CHA0\000"
 8028      43484130 
 8028      00
 8029              	.LASF408:
 8030 030b 5443305F 		.ascii	"TC0_CHA1\000"
 8030      43484131 
 8030      00
 8031              	.LASF410:
 8032 0314 5443305F 		.ascii	"TC0_CHA2\000"
 8032      43484132 
 8032      00
 8033              	.LASF618:
 8034 031d 6F706572 		.ascii	"operator bool\000"
 8034      61746F72 
 8034      20626F6F 
 8034      6C00
 8035              	.LASF413:
 8036 032b 5443315F 		.ascii	"TC1_CHB3\000"
 8036      43484233 
 8036      00
 8037              	.LASF415:
 8038 0334 5443315F 		.ascii	"TC1_CHB4\000"
 8038      43484234 
 8038      00
 8039              	.LASF417:
 8040 033d 5443315F 		.ascii	"TC1_CHB5\000"
 8040      43484235 
 8040      00
 8041              	.LASF207:
 8042 0346 55415254 		.ascii	"UART_CR\000"
 8042      5F435200 
 8043              	.LASF2:
 8044 034e 5F5F6D61 		.ascii	"__max_align_ld\000"
 8044      785F616C 
 8044      69676E5F 
 8044      6C6400
 8045              	.LASF342:
 8046 035d 61746F66 		.ascii	"atof\000"
 8046      00
 8047              	.LASF344:
 8048 0362 61746F69 		.ascii	"atoi\000"
 8048      00
 8049              	.LASF1:
 8050 0367 5F5F6D61 		.ascii	"__max_align_ll\000"
 8050      785F616C 
 8050      69676E5F 
 8050      6C6C00
ARM GAS  /tmp/cc4jIqrt.s 			page 152


 8051              	.LASF345:
 8052 0376 61746F6C 		.ascii	"atol\000"
 8052      00
 8053              	.LASF304:
 8054 037b 5F637572 		.ascii	"_current_locale\000"
 8054      72656E74 
 8054      5F6C6F63 
 8054      616C6500 
 8055              	.LASF407:
 8056 038b 5443305F 		.ascii	"TC0_CHB0\000"
 8056      43484230 
 8056      00
 8057              	.LASF409:
 8058 0394 5443305F 		.ascii	"TC0_CHB1\000"
 8058      43484231 
 8058      00
 8059              	.LASF411:
 8060 039d 5443305F 		.ascii	"TC0_CHB2\000"
 8060      43484232 
 8060      00
 8061              	.LASF36:
 8062 03a6 696E7433 		.ascii	"int32_t\000"
 8062      325F7400 
 8063              	.LASF58:
 8064 03ae 696E746D 		.ascii	"intmax_t\000"
 8064      61785F74 
 8064      00
 8065              	.LASF520:
 8066 03b7 31347573 		.ascii	"14usb_dev_desc_t\000"
 8066      625F6465 
 8066      765F6465 
 8066      73635F74 
 8066      00
 8067              	.LASF326:
 8068 03c8 5F616464 		.ascii	"_add\000"
 8068      00
 8069              	.LASF59:
 8070 03cd 75696E74 		.ascii	"uintmax_t\000"
 8070      6D61785F 
 8070      7400
 8071              	.LASF512:
 8072 03d7 31316D61 		.ascii	"11max_align_t\000"
 8072      785F616C 
 8072      69676E5F 
 8072      7400
 8073              	.LASF528:
 8074 03e5 69645665 		.ascii	"idVendor\000"
 8074      6E646F72 
 8074      00
 8075              	.LASF27:
 8076 03ee 5F5F7569 		.ascii	"__uint_least32_t\000"
 8076      6E745F6C 
 8076      65617374 
 8076      33325F74 
 8076      00
 8077              	.LASF260:
 8078 03ff 5F6C6266 		.ascii	"_lbfsize\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 153


 8078      73697A65 
 8078      00
 8079              	.LASF335:
 8080 0408 366C6469 		.ascii	"6ldiv_t\000"
 8080      765F7400 
 8081              	.LASF197:
 8082 0410 50494F5F 		.ascii	"PIO_PCRHR\000"
 8082      50435248 
 8082      5200
 8083              	.LASF48:
 8084 041a 696E745F 		.ascii	"int_least64_t\000"
 8084      6C656173 
 8084      7436345F 
 8084      7400
 8085              	.LASF65:
 8086 0428 53564361 		.ascii	"SVCall_IRQn\000"
 8086      6C6C5F49 
 8086      52516E00 
 8087              	.LASF360:
 8088 0434 7763746F 		.ascii	"wctomb\000"
 8088      6D6200
 8089              	.LASF472:
 8090 043b 48617264 		.ascii	"HardwareSerial\000"
 8090      77617265 
 8090      53657269 
 8090      616C00
 8091              	.LASF270:
 8092 044a 5F646174 		.ascii	"_data\000"
 8092      6100
 8093              	.LASF529:
 8094 0450 69645072 		.ascii	"idProduct\000"
 8094      6F647563 
 8094      7400
 8095              	.LASF71:
 8096 045a 5254435F 		.ascii	"RTC_IRQn\000"
 8096      4952516E 
 8096      00
 8097              	.LASF370:
 8098 0463 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 8098      6972715F 
 8098      63726974 
 8098      6963616C 
 8098      5F736563 
 8099              	.LASF460:
 8100 0484 70506F72 		.ascii	"pPort\000"
 8100      7400
 8101              	.LASF494:
 8102 048a 5F646179 		.ascii	"_daylight\000"
 8102      6C696768 
 8102      7400
 8103              	.LASF555:
 8104 0494 64657363 		.ascii	"desc\000"
 8104      00
 8105              	.LASF274:
 8106 0499 5F726565 		.ascii	"_reent\000"
 8106      6E7400
 8107              	.LASF523:
ARM GAS  /tmp/cc4jIqrt.s 			page 154


 8108 04a0 62636455 		.ascii	"bcdUSB\000"
 8108      534200
 8109              	.LASF459:
 8110 04a7 50696E44 		.ascii	"PinDescription\000"
 8110      65736372 
 8110      69707469 
 8110      6F6E00
 8111              	.LASF503:
 8112 04b6 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 8112      5F48534D 
 8112      43495F44 
 8112      41544100 
 8113              	.LASF317:
 8114 04c6 5F5F7366 		.ascii	"__sf\000"
 8114      00
 8115              	.LASF42:
 8116 04cb 696E745F 		.ascii	"int_least8_t\000"
 8116      6C656173 
 8116      74385F74 
 8116      00
 8117              	.LASF576:
 8118 04d8 5F5F696E 		.ascii	"__initialize_p\000"
 8118      69746961 
 8118      6C697A65 
 8118      5F7000
 8119              	.LASF283:
 8120 04e7 5F6D6274 		.ascii	"_mbtowc_state\000"
 8120      6F77635F 
 8120      73746174 
 8120      6500
 8121              	.LASF120:
 8122 04f5 54524E47 		.ascii	"TRNG_IRQn\000"
 8122      5F495251 
 8122      6E00
 8123              	.LASF330:
 8124 04ff 5F5F676E 		.ascii	"__gnu_cxx\000"
 8124      755F6378 
 8124      7800
 8125              	.LASF559:
 8126 0509 636F6E66 		.ascii	"confdev_lsfs\000"
 8126      6465765F 
 8126      6C736673 
 8126      00
 8127              	.LASF622:
 8128 0516 63616E57 		.ascii	"canWrite\000"
 8128      72697465 
 8128      00
 8129              	.LASF569:
 8130 051f 7564645F 		.ascii	"udd_ctrl_request_t\000"
 8130      6374726C 
 8130      5F726571 
 8130      75657374 
 8130      5F7400
 8131              	.LASF236:
 8132 0532 5F5F746D 		.ascii	"__tm\000"
 8132      00
 8133              	.LASF463:
ARM GAS  /tmp/cc4jIqrt.s 			page 155


 8134 0537 756C5069 		.ascii	"ulPinType\000"
 8134      6E547970 
 8134      6500
 8135              	.LASF179:
 8136 0541 52657365 		.ascii	"Reserved10\000"
 8136      72766564 
 8136      313000
 8137              	.LASF183:
 8138 054c 52657365 		.ascii	"Reserved11\000"
 8138      72766564 
 8138      313100
 8139              	.LASF187:
 8140 0557 52657365 		.ascii	"Reserved12\000"
 8140      72766564 
 8140      313200
 8141              	.LASF189:
 8142 0562 52657365 		.ascii	"Reserved13\000"
 8142      72766564 
 8142      313300
 8143              	.LASF148:
 8144 056d 50494F5F 		.ascii	"PIO_IMR\000"
 8144      494D5200 
 8145              	.LASF550:
 8146 0575 73657475 		.ascii	"setup\000"
 8146      7000
 8147              	.LASF361:
 8148 057b 6C6C6469 		.ascii	"lldiv\000"
 8148      7600
 8149              	.LASF244:
 8150 0581 5F5F746D 		.ascii	"__tm_yday\000"
 8150      5F796461 
 8150      7900
 8151              	.LASF93:
 8152 058b 5443325F 		.ascii	"TC2_IRQn\000"
 8152      4952516E 
 8152      00
 8153              	.LASF566:
 8154 0594 7061796C 		.ascii	"payload_size\000"
 8154      6F61645F 
 8154      73697A65 
 8154      00
 8155              	.LASF11:
 8156 05a1 5F5F696E 		.ascii	"__int16_t\000"
 8156      7431365F 
 8156      7400
 8157              	.LASF13:
 8158 05ab 5F5F7569 		.ascii	"__uint16_t\000"
 8158      6E743136 
 8158      5F7400
 8159              	.LASF275:
 8160 05b6 5F756E75 		.ascii	"_unused_rand\000"
 8160      7365645F 
 8160      72616E64 
 8160      00
 8161              	.LASF525:
 8162 05c3 62446576 		.ascii	"bDeviceSubClass\000"
 8162      69636553 
ARM GAS  /tmp/cc4jIqrt.s 			page 156


 8162      7562436C 
 8162      61737300 
 8163              	.LASF553:
 8164 05d3 7564695F 		.ascii	"udi_api_t\000"
 8164      6170695F 
 8164      7400
 8165              	.LASF92:
 8166 05dd 5443315F 		.ascii	"TC1_IRQn\000"
 8166      4952516E 
 8166      00
 8167              	.LASF498:
 8168 05e6 4150494E 		.ascii	"APIN_UART0_TXD\000"
 8168      5F554152 
 8168      54305F54 
 8168      584400
 8169              	.LASF142:
 8170 05f5 50494F5F 		.ascii	"PIO_SODR\000"
 8170      534F4452 
 8170      00
 8171              	.LASF601:
 8172 05fe 49727148 		.ascii	"IrqHandler\000"
 8172      616E646C 
 8172      657200
 8173              	.LASF30:
 8174 0609 5F5F696E 		.ascii	"__intptr_t\000"
 8174      74707472 
 8174      5F7400
 8175              	.LASF374:
 8176 0614 646F7562 		.ascii	"double_t\000"
 8176      6C655F74 
 8176      00
 8177              	.LASF466:
 8178 061d 756C4144 		.ascii	"ulADCChannelNumber\000"
 8178      43436861 
 8178      6E6E656C 
 8178      4E756D62 
 8178      657200
 8179              	.LASF308:
 8180 0630 5F726573 		.ascii	"_result_k\000"
 8180      756C745F 
 8180      6B00
 8181              	.LASF300:
 8182 063a 5F737464 		.ascii	"_stderr\000"
 8182      65727200 
 8183              	.LASF307:
 8184 0642 5F726573 		.ascii	"_result\000"
 8184      756C7400 
 8185              	.LASF193:
 8186 064a 50494F5F 		.ascii	"PIO_PCIER\000"
 8186      50434945 
 8186      5200
 8187              	.LASF190:
 8188 0654 50494F5F 		.ascii	"PIO_DRIVER\000"
 8188      44524956 
 8188      455200
 8189              	.LASF248:
 8190 065f 5F64736F 		.ascii	"_dso_handle\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 157


 8190      5F68616E 
 8190      646C6500 
 8191              	.LASF215:
 8192 066b 55415254 		.ascii	"UART_BRGR\000"
 8192      5F425247 
 8192      5200
 8193              	.LASF91:
 8194 0675 5443305F 		.ascii	"TC0_IRQn\000"
 8194      4952516E 
 8194      00
 8195              	.LASF548:
 8196 067e 656E6162 		.ascii	"enable\000"
 8196      6C6500
 8197              	.LASF243:
 8198 0685 5F5F746D 		.ascii	"__tm_wday\000"
 8198      5F776461 
 8198      7900
 8199              	.LASF245:
 8200 068f 5F5F746D 		.ascii	"__tm_isdst\000"
 8200      5F697364 
 8200      737400
 8201              	.LASF611:
 8202 069a 5F5A5374 		.ascii	"_ZSt3absx\000"
 8202      33616273 
 8202      7800
 8203              	.LASF381:
 8204 06a4 5F5F6664 		.ascii	"__fdlib_version\000"
 8204      6C69625F 
 8204      76657273 
 8204      696F6E00 
 8205              	.LASF591:
 8206 06b4 436F6E66 		.ascii	"ConfigurePin\000"
 8206      69677572 
 8206      6550696E 
 8206      00
 8207              	.LASF10:
 8208 06c1 756E7369 		.ascii	"unsigned char\000"
 8208      676E6564 
 8208      20636861 
 8208      7200
 8209              	.LASF166:
 8210 06cf 50494F5F 		.ascii	"PIO_PPDSR\000"
 8210      50504453 
 8210      5200
 8211              	.LASF471:
 8212 06d9 5F637479 		.ascii	"_ctype_\000"
 8212      70655F00 
 8213              	.LASF290:
 8214 06e1 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 8214      72746F77 
 8214      63735F73 
 8214      74617465 
 8214      00
 8215              	.LASF234:
 8216 06f2 5F776473 		.ascii	"_wds\000"
 8216      00
 8217              	.LASF366:
ARM GAS  /tmp/cc4jIqrt.s 			page 158


 8218 06f7 666C6F61 		.ascii	"float\000"
 8218      7400
 8219              	.LASF598:
 8220 06fd 73657450 		.ascii	"setPullup\000"
 8220      756C6C75 
 8220      7000
 8221              	.LASF256:
 8222 0707 5F73697A 		.ascii	"_size\000"
 8222      6500
 8223              	.LASF151:
 8224 070d 50494F5F 		.ascii	"PIO_MDDR\000"
 8224      4D444452 
 8224      00
 8225              	.LASF208:
 8226 0716 55415254 		.ascii	"UART_MR\000"
 8226      5F4D5200 
 8227              	.LASF217:
 8228 071e 55415254 		.ascii	"UART_WPMR\000"
 8228      5F57504D 
 8228      5200
 8229              	.LASF47:
 8230 0728 75696E74 		.ascii	"uint_least32_t\000"
 8230      5F6C6561 
 8230      73743332 
 8230      5F7400
 8231              	.LASF61:
 8232 0737 48617264 		.ascii	"HardFault_IRQn\000"
 8232      4661756C 
 8232      745F4952 
 8232      516E00
 8233              	.LASF585:
 8234 0746 7E537472 		.ascii	"~Stream\000"
 8234      65616D00 
 8235              	.LASF505:
 8236 074e 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 8236      5F474D41 
 8236      435F5048 
 8236      595F5245 
 8236      53455400 
 8237              	.LASF263:
 8238 0762 5F777269 		.ascii	"_write\000"
 8238      746500
 8239              	.LASF87:
 8240 0769 54574948 		.ascii	"TWIHS0_IRQn\000"
 8240      53305F49 
 8240      52516E00 
 8241              	.LASF577:
 8242 0775 5F5F7072 		.ascii	"__priority\000"
 8242      696F7269 
 8242      747900
 8243              	.LASF150:
 8244 0780 50494F5F 		.ascii	"PIO_MDER\000"
 8244      4D444552 
 8244      00
 8245              	.LASF404:
 8246 0789 5F455443 		.ascii	"_ETCChannel\000"
 8246      4368616E 
ARM GAS  /tmp/cc4jIqrt.s 			page 159


 8246      6E656C00 
 8247              	.LASF388:
 8248 0795 50494F5F 		.ascii	"PIO_INPUT\000"
 8248      494E5055 
 8248      5400
 8249              	.LASF39:
 8250 079f 75696E74 		.ascii	"uint64_t\000"
 8250      36345F74 
 8250      00
 8251              	.LASF590:
 8252 07a8 696E6974 		.ascii	"init\000"
 8252      00
 8253              	.LASF81:
 8254 07ad 55534152 		.ascii	"USART0_IRQn\000"
 8254      54305F49 
 8254      52516E00 
 8255              	.LASF149:
 8256 07b9 50494F5F 		.ascii	"PIO_ISR\000"
 8256      49535200 
 8257              	.LASF428:
 8258 07c1 41444331 		.ascii	"ADC1\000"
 8258      00
 8259              	.LASF429:
 8260 07c6 41444332 		.ascii	"ADC2\000"
 8260      00
 8261              	.LASF430:
 8262 07cb 41444333 		.ascii	"ADC3\000"
 8262      00
 8263              	.LASF431:
 8264 07d0 41444334 		.ascii	"ADC4\000"
 8264      00
 8265              	.LASF432:
 8266 07d5 41444335 		.ascii	"ADC5\000"
 8266      00
 8267              	.LASF433:
 8268 07da 41444336 		.ascii	"ADC6\000"
 8268      00
 8269              	.LASF434:
 8270 07df 41444337 		.ascii	"ADC7\000"
 8270      00
 8271              	.LASF435:
 8272 07e4 41444338 		.ascii	"ADC8\000"
 8272      00
 8273              	.LASF436:
 8274 07e9 41444339 		.ascii	"ADC9\000"
 8274      00
 8275              	.LASF242:
 8276 07ee 5F5F746D 		.ascii	"__tm_year\000"
 8276      5F796561 
 8276      7200
 8277              	.LASF530:
 8278 07f8 62636444 		.ascii	"bcdDevice\000"
 8278      65766963 
 8278      6500
 8279              	.LASF605:
 8280 0802 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 8280      656E6162 
ARM GAS  /tmp/cc4jIqrt.s 			page 160


 8280      6C655F70 
 8280      65726970 
 8280      685F636C 
 8281              	.LASF595:
 8282 0818 5F5A4E35 		.ascii	"_ZN5PrintD0Ev\000"
 8282      5072696E 
 8282      74443045 
 8282      7600
 8283              	.LASF367:
 8284 0826 73747274 		.ascii	"strtold\000"
 8284      6F6C6400 
 8285              	.LASF325:
 8286 082e 5F6D756C 		.ascii	"_mult\000"
 8286      7400
 8287              	.LASF198:
 8288 0834 54524E47 		.ascii	"TRNG_CR\000"
 8288      5F435200 
 8289              	.LASF363:
 8290 083c 73747274 		.ascii	"strtoll\000"
 8290      6F6C6C00 
 8291              	.LASF329:
 8292 0844 6D6F6466 		.ascii	"modf\000"
 8292      00
 8293              	.LASF341:
 8294 0849 61746578 		.ascii	"atexit\000"
 8294      697400
 8295              	.LASF170:
 8296 0850 50494F5F 		.ascii	"PIO_OWSR\000"
 8296      4F575352 
 8296      00
 8297              	.LASF392:
 8298 0859 4E6F5069 		.ascii	"NoPin\000"
 8298      6E00
 8299              	.LASF437:
 8300 085f 41444331 		.ascii	"ADC10\000"
 8300      3000
 8301              	.LASF438:
 8302 0865 41444331 		.ascii	"ADC11\000"
 8302      3100
 8303              	.LASF439:
 8304 086b 41444331 		.ascii	"ADC12\000"
 8304      3200
 8305              	.LASF440:
 8306 0871 41444331 		.ascii	"ADC13\000"
 8306      3300
 8307              	.LASF441:
 8308 0877 41444331 		.ascii	"ADC14\000"
 8308      3400
 8309              	.LASF442:
 8310 087d 41444331 		.ascii	"ADC15\000"
 8310      3500
 8311              	.LASF443:
 8312 0883 41444331 		.ascii	"ADC16\000"
 8312      3600
 8313              	.LASF22:
 8314 0889 5F5F696E 		.ascii	"__int_least8_t\000"
 8314      745F6C65 
ARM GAS  /tmp/cc4jIqrt.s 			page 161


 8314      61737438 
 8314      5F7400
 8315              	.LASF445:
 8316 0898 41444331 		.ascii	"ADC18\000"
 8316      3800
 8317              	.LASF446:
 8318 089e 41444331 		.ascii	"ADC19\000"
 8318      3900
 8319              	.LASF184:
 8320 08a4 50494F5F 		.ascii	"PIO_LOCKSR\000"
 8320      4C4F434B 
 8320      535200
 8321              	.LASF298:
 8322 08af 5F737464 		.ascii	"_stdin\000"
 8322      696E00
 8323              	.LASF295:
 8324 08b6 5F6E6D61 		.ascii	"_nmalloc\000"
 8324      6C6C6F63 
 8324      00
 8325              	.LASF108:
 8326 08bf 53504931 		.ascii	"SPI1_IRQn\000"
 8326      5F495251 
 8326      6E00
 8327              	.LASF368:
 8328 08c9 675F696E 		.ascii	"g_interrupt_enabled\000"
 8328      74657272 
 8328      7570745F 
 8328      656E6162 
 8328      6C656400 
 8329              	.LASF112:
 8330 08dd 55415254 		.ascii	"UART4_IRQn\000"
 8330      345F4952 
 8330      516E00
 8331              	.LASF447:
 8332 08e8 41444332 		.ascii	"ADC20\000"
 8332      3000
 8333              	.LASF448:
 8334 08ee 41444332 		.ascii	"ADC21\000"
 8334      3100
 8335              	.LASF449:
 8336 08f4 41444332 		.ascii	"ADC22\000"
 8336      3200
 8337              	.LASF450:
 8338 08fa 41444332 		.ascii	"ADC23\000"
 8338      3300
 8339              	.LASF451:
 8340 0900 41444332 		.ascii	"ADC24\000"
 8340      3400
 8341              	.LASF452:
 8342 0906 41444332 		.ascii	"ADC25\000"
 8342      3500
 8343              	.LASF453:
 8344 090c 41444332 		.ascii	"ADC26\000"
 8344      3600
 8345              	.LASF454:
 8346 0912 41444332 		.ascii	"ADC27\000"
 8346      3700
ARM GAS  /tmp/cc4jIqrt.s 			page 162


 8347              	.LASF455:
 8348 0918 41444332 		.ascii	"ADC28\000"
 8348      3800
 8349              	.LASF456:
 8350 091e 41444332 		.ascii	"ADC29\000"
 8350      3900
 8351              	.LASF610:
 8352 0924 3350696F 		.ascii	"3Pio\000"
 8352      00
 8353              	.LASF500:
 8354 0929 4150494E 		.ascii	"APIN_UART1_RXD\000"
 8354      5F554152 
 8354      54315F52 
 8354      584400
 8355              	.LASF89:
 8356 0938 53504930 		.ascii	"SPI0_IRQn\000"
 8356      5F495251 
 8356      6E00
 8357              	.LASF111:
 8358 0942 55415254 		.ascii	"UART3_IRQn\000"
 8358      335F4952 
 8358      516E00
 8359              	.LASF600:
 8360 094d 5F5A3132 		.ascii	"_Z12AnalogInInitv\000"
 8360      416E616C 
 8360      6F67496E 
 8360      496E6974 
 8360      7600
 8361              	.LASF485:
 8362 095f 5F5A4E31 		.ascii	"_ZN10RingBuffer10storeBlockEPKhj\000"
 8362      3052696E 
 8362      67427566 
 8362      66657231 
 8362      3073746F 
 8363              	.LASF457:
 8364 0980 41444333 		.ascii	"ADC30\000"
 8364      3000
 8365              	.LASF458:
 8366 0986 41444333 		.ascii	"ADC31\000"
 8366      3100
 8367              	.LASF220:
 8368 098c 5F6F6666 		.ascii	"_off_t\000"
 8368      5F7400
 8369              	.LASF84:
 8370 0993 50494F44 		.ascii	"PIOD_IRQn\000"
 8370      5F495251 
 8370      6E00
 8371              	.LASF509:
 8372 099d 50776D53 		.ascii	"PwmSlowClock\000"
 8372      6C6F7743 
 8372      6C6F636B 
 8372      00
 8373              	.LASF5:
 8374 09aa 73697A65 		.ascii	"size_t\000"
 8374      5F7400
 8375              	.LASF278:
 8376 09b1 5F6C6F63 		.ascii	"_localtime_buf\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 163


 8376      616C7469 
 8376      6D655F62 
 8376      756600
 8377              	.LASF154:
 8378 09c0 50494F5F 		.ascii	"PIO_PUDR\000"
 8378      50554452 
 8378      00
 8379              	.LASF226:
 8380 09c9 5F5F636F 		.ascii	"__count\000"
 8380      756E7400 
 8381              	.LASF33:
 8382 09d1 75696E74 		.ascii	"uint8_t\000"
 8382      385F7400 
 8383              	.LASF333:
 8384 09d9 71756F74 		.ascii	"quot\000"
 8384      00
 8385              	.LASF110:
 8386 09de 55415254 		.ascii	"UART2_IRQn\000"
 8386      325F4952 
 8386      516E00
 8387              	.LASF195:
 8388 09e9 50494F5F 		.ascii	"PIO_PCIMR\000"
 8388      5043494D 
 8388      5200
 8389              	.LASF393:
 8390 09f3 5F455057 		.ascii	"_EPWMChannel\000"
 8390      4D436861 
 8390      6E6E656C 
 8390      00
 8391              	.LASF480:
 8392 0a00 5F695461 		.ascii	"_iTail\000"
 8392      696C00
 8393              	.LASF212:
 8394 0a07 55415254 		.ascii	"UART_SR\000"
 8394      5F535200 
 8395              	.LASF492:
 8396 0a0f 7E554152 		.ascii	"~UARTClass\000"
 8396      54436C61 
 8396      737300
 8397              	.LASF80:
 8398 0a1a 50494F43 		.ascii	"PIOC_IRQn\000"
 8398      5F495251 
 8398      6E00
 8399              	.LASF405:
 8400 0a24 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 8400      4F4E5F54 
 8400      494D4552 
 8400      00
 8401              	.LASF200:
 8402 0a31 54524E47 		.ascii	"TRNG_IDR\000"
 8402      5F494452 
 8402      00
 8403              	.LASF26:
 8404 0a3a 5F5F696E 		.ascii	"__int_least32_t\000"
 8404      745F6C65 
 8404      61737433 
 8404      325F7400 
ARM GAS  /tmp/cc4jIqrt.s 			page 164


 8405              	.LASF588:
 8406 0a4a 5F5A4E36 		.ascii	"_ZN6StreamD0Ev\000"
 8406      53747265 
 8406      616D4430 
 8406      457600
 8407              	.LASF155:
 8408 0a59 50494F5F 		.ascii	"PIO_PUER\000"
 8408      50554552 
 8408      00
 8409              	.LASF312:
 8410 0a62 5F637674 		.ascii	"_cvtbuf\000"
 8410      62756600 
 8411              	.LASF519:
 8412 0a6a 7573625F 		.ascii	"usb_setup_req_t\000"
 8412      73657475 
 8412      705F7265 
 8412      715F7400 
 8413              	.LASF216:
 8414 0a7a 55415254 		.ascii	"UART_CMPR\000"
 8414      5F434D50 
 8414      5200
 8415              	.LASF79:
 8416 0a84 50494F42 		.ascii	"PIOB_IRQn\000"
 8416      5F495251 
 8416      6E00
 8417              	.LASF473:
 8418 0a8e 5072696E 		.ascii	"Print\000"
 8418      7400
 8419              	.LASF561:
 8420 0a94 636F6E66 		.ascii	"conf_bos\000"
 8420      5F626F73 
 8420      00
 8421              	.LASF199:
 8422 0a9d 54524E47 		.ascii	"TRNG_IER\000"
 8422      5F494552 
 8422      00
 8423              	.LASF225:
 8424 0aa6 5F5F7763 		.ascii	"__wchb\000"
 8424      686200
 8425              	.LASF289:
 8426 0aad 5F6D6272 		.ascii	"_mbrtowc_state\000"
 8426      746F7763 
 8426      5F737461 
 8426      746500
 8427              	.LASF239:
 8428 0abc 5F5F746D 		.ascii	"__tm_hour\000"
 8428      5F686F75 
 8428      7200
 8429              	.LASF185:
 8430 0ac6 50494F5F 		.ascii	"PIO_WPMR\000"
 8430      57504D52 
 8430      00
 8431              	.LASF563:
 8432 0acf 7564635F 		.ascii	"udc_config\000"
 8432      636F6E66 
 8432      696700
 8433              	.LASF338:
ARM GAS  /tmp/cc4jIqrt.s 			page 165


 8434 0ada 6C6C6469 		.ascii	"lldiv_t\000"
 8434      765F7400 
 8435              	.LASF222:
 8436 0ae2 77696E74 		.ascii	"wint_t\000"
 8436      5F7400
 8437              	.LASF349:
 8438 0ae9 6D626C65 		.ascii	"mblen\000"
 8438      6E00
 8439              	.LASF623:
 8440 0aef 5F5A4E4B 		.ascii	"_ZNK6Stream8canWriteEv\000"
 8440      36537472 
 8440      65616D38 
 8440      63616E57 
 8440      72697465 
 8441              	.LASF313:
 8442 0b06 5F6E6577 		.ascii	"_new\000"
 8442      00
 8443              	.LASF477:
 8444 0b0b 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 8444      414C5F42 
 8444      55464645 
 8444      525F5349 
 8444      5A4500
 8445              	.LASF321:
 8446 0b1e 5F6E696F 		.ascii	"_niobs\000"
 8446      627300
 8447              	.LASF104:
 8448 0b25 4D43414E 		.ascii	"MCAN1_IRQn\000"
 8448      315F4952 
 8448      516E00
 8449              	.LASF90:
 8450 0b30 5353435F 		.ascii	"SSC_IRQn\000"
 8450      4952516E 
 8450      00
 8451              	.LASF297:
 8452 0b39 5F657272 		.ascii	"_errno\000"
 8452      6E6F00
 8453              	.LASF489:
 8454 0b40 5F5A4E4B 		.ascii	"_ZNK10RingBuffer8roomLeftEv\000"
 8454      31305269 
 8454      6E674275 
 8454      66666572 
 8454      38726F6F 
 8455              	.LASF240:
 8456 0b5c 5F5F746D 		.ascii	"__tm_mday\000"
 8456      5F6D6461 
 8456      7900
 8457              	.LASF116:
 8458 0b66 5443395F 		.ascii	"TC9_IRQn\000"
 8458      4952516E 
 8458      00
 8459              	.LASF247:
 8460 0b6f 5F666E61 		.ascii	"_fnargs\000"
 8460      72677300 
 8461              	.LASF158:
 8462 0b77 50494F5F 		.ascii	"PIO_ABCDSR\000"
 8462      41424344 
ARM GAS  /tmp/cc4jIqrt.s 			page 166


 8462      535200
 8463              	.LASF223:
 8464 0b82 31305F6D 		.ascii	"10_mbstate_t\000"
 8464      62737461 
 8464      74655F74 
 8464      00
 8465              	.LASF206:
 8466 0b8f 34556172 		.ascii	"4Uart\000"
 8466      7400
 8467              	.LASF178:
 8468 0b95 50494F5F 		.ascii	"PIO_ELSR\000"
 8468      454C5352 
 8468      00
 8469              	.LASF554:
 8470 0b9e 31387564 		.ascii	"18udc_config_speed_t\000"
 8470      635F636F 
 8470      6E666967 
 8470      5F737065 
 8470      65645F74 
 8471              	.LASF594:
 8472 0bb3 55415254 		.ascii	"UART0_Handler\000"
 8472      305F4861 
 8472      6E646C65 
 8472      7200
 8473              	.LASF19:
 8474 0bc1 5F5F696E 		.ascii	"__int64_t\000"
 8474      7436345F 
 8474      7400
 8475              	.LASF593:
 8476 0bcb 55415254 		.ascii	"UART1_Handler\000"
 8476      315F4861 
 8476      6E646C65 
 8476      7200
 8477              	.LASF20:
 8478 0bd9 5F5F7569 		.ascii	"__uint64_t\000"
 8478      6E743634 
 8478      5F7400
 8479              	.LASF231:
 8480 0be4 5F6E6578 		.ascii	"_next\000"
 8480      7400
 8481              	.LASF552:
 8482 0bea 736F665F 		.ascii	"sof_notify\000"
 8482      6E6F7469 
 8482      667900
 8483              	.LASF286:
 8484 0bf5 5F736967 		.ascii	"_signal_buf\000"
 8484      6E616C5F 
 8484      62756600 
 8485              	.LASF261:
 8486 0c01 5F636F6F 		.ascii	"_cookie\000"
 8486      6B696500 
 8487              	.LASF495:
 8488 0c09 5F747A6E 		.ascii	"_tzname\000"
 8488      616D6500 
 8489              	.LASF49:
 8490 0c11 75696E74 		.ascii	"uint_least64_t\000"
 8490      5F6C6561 
ARM GAS  /tmp/cc4jIqrt.s 			page 167


 8490      73743634 
 8490      5F7400
 8491              	.LASF395:
 8492 0c20 50574D5F 		.ascii	"PWM_CH0\000"
 8492      43483000 
 8493              	.LASF396:
 8494 0c28 50574D5F 		.ascii	"PWM_CH1\000"
 8494      43483100 
 8495              	.LASF397:
 8496 0c30 50574D5F 		.ascii	"PWM_CH2\000"
 8496      43483200 
 8497              	.LASF398:
 8498 0c38 50574D5F 		.ascii	"PWM_CH3\000"
 8498      43483300 
 8499              	.LASF399:
 8500 0c40 50574D5F 		.ascii	"PWM_CH4\000"
 8500      43483400 
 8501              	.LASF400:
 8502 0c48 50574D5F 		.ascii	"PWM_CH5\000"
 8502      43483500 
 8503              	.LASF401:
 8504 0c50 50574D5F 		.ascii	"PWM_CH6\000"
 8504      43483600 
 8505              	.LASF402:
 8506 0c58 50574D5F 		.ascii	"PWM_CH7\000"
 8506      43483700 
 8507              	.LASF481:
 8508 0c60 52696E67 		.ascii	"RingBuffer\000"
 8508      42756666 
 8508      657200
 8509              	.LASF609:
 8510 0c6b 6465636C 		.ascii	"decltype(nullptr)\000"
 8510      74797065 
 8510      286E756C 
 8510      6C707472 
 8510      2900
 8511              	.LASF518:
 8512 0c7d 774C656E 		.ascii	"wLength\000"
 8512      67746800 
 8513              	.LASF105:
 8514 0c85 474D4143 		.ascii	"GMAC_IRQn\000"
 8514      5F495251 
 8514      6E00
 8515              	.LASF491:
 8516 0c8f 7E507269 		.ascii	"~Print\000"
 8516      6E7400
 8517              	.LASF125:
 8518 0c96 52535744 		.ascii	"RSWDT_IRQn\000"
 8518      545F4952 
 8518      516E00
 8519              	.LASF357:
 8520 0ca1 73747274 		.ascii	"strtoul\000"
 8520      6F756C00 
 8521              	.LASF444:
 8522 0ca9 41444331 		.ascii	"ADC17\000"
 8522      3700
 8523              	.LASF196:
ARM GAS  /tmp/cc4jIqrt.s 			page 168


 8524 0caf 50494F5F 		.ascii	"PIO_PCISR\000"
 8524      50434953 
 8524      5200
 8525              	.LASF336:
 8526 0cb9 6C646976 		.ascii	"ldiv_t\000"
 8526      5F7400
 8527              	.LASF389:
 8528 0cc0 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 8528      4F555450 
 8528      55545F30 
 8528      00
 8529              	.LASF390:
 8530 0ccd 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 8530      4F555450 
 8530      55545F31 
 8530      00
 8531              	.LASF531:
 8532 0cda 694D616E 		.ascii	"iManufacturer\000"
 8532      75666163 
 8532      74757265 
 8532      7200
 8533              	.LASF117:
 8534 0ce8 54433130 		.ascii	"TC10_IRQn\000"
 8534      5F495251 
 8534      6E00
 8535              	.LASF461:
 8536 0cf2 756C5069 		.ascii	"ulPin\000"
 8536      6E00
 8537              	.LASF383:
 8538 0cf8 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 8538      4E4F545F 
 8538      415F5049 
 8538      4E00
 8539              	.LASF562:
 8540 0d06 7564635F 		.ascii	"udc_config_t\000"
 8540      636F6E66 
 8540      69675F74 
 8540      00
 8541              	.LASF237:
 8542 0d13 5F5F746D 		.ascii	"__tm_sec\000"
 8542      5F736563 
 8542      00
 8543              	.LASF384:
 8544 0d1c 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 8544      50455249 
 8544      50485F41 
 8544      00
 8545              	.LASF385:
 8546 0d29 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 8546      50455249 
 8546      50485F42 
 8546      00
 8547              	.LASF359:
 8548 0d36 77637374 		.ascii	"wcstombs\000"
 8548      6F6D6273 
 8548      00
 8549              	.LASF387:
ARM GAS  /tmp/cc4jIqrt.s 			page 169


 8550 0d3f 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 8550      50455249 
 8550      50485F44 
 8550      00
 8551              	.LASF246:
 8552 0d4c 5F6F6E5F 		.ascii	"_on_exit_args\000"
 8552      65786974 
 8552      5F617267 
 8552      7300
 8553              	.LASF64:
 8554 0d5a 55736167 		.ascii	"UsageFault_IRQn\000"
 8554      65466175 
 8554      6C745F49 
 8554      52516E00 
 8555              	.LASF144:
 8556 0d6a 50494F5F 		.ascii	"PIO_ODSR\000"
 8556      4F445352 
 8556      00
 8557              	.LASF255:
 8558 0d73 5F626173 		.ascii	"_base\000"
 8558      6500
 8559              	.LASF534:
 8560 0d79 624E756D 		.ascii	"bNumConfigurations\000"
 8560      436F6E66 
 8560      69677572 
 8560      6174696F 
 8560      6E7300
 8561              	.LASF52:
 8562 0d8c 696E745F 		.ascii	"int_fast16_t\000"
 8562      66617374 
 8562      31365F74 
 8562      00
 8563              	.LASF181:
 8564 0d99 50494F5F 		.ascii	"PIO_REHLSR\000"
 8564      5245484C 
 8564      535200
 8565              	.LASF580:
 8566 0da4 5F5A4E39 		.ascii	"_ZN9UARTClassD0Ev\000"
 8566      55415254 
 8566      436C6173 
 8566      73443045 
 8566      7600
 8567              	.LASF186:
 8568 0db6 50494F5F 		.ascii	"PIO_WPSR\000"
 8568      57505352 
 8568      00
 8569              	.LASF596:
 8570 0dbf 5F5A4E35 		.ascii	"_ZN5PrintD2Ev\000"
 8570      5072696E 
 8570      74443245 
 8570      7600
 8571              	.LASF143:
 8572 0dcd 50494F5F 		.ascii	"PIO_CODR\000"
 8572      434F4452 
 8572      00
 8573              	.LASF32:
 8574 0dd6 696E7438 		.ascii	"int8_t\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 170


 8574      5F7400
 8575              	.LASF581:
 8576 0ddd 5F5A4E39 		.ascii	"_ZN9UARTClassD2Ev\000"
 8576      55415254 
 8576      436C6173 
 8576      73443245 
 8576      7600
 8577              	.LASF230:
 8578 0def 5F5F554C 		.ascii	"__ULong\000"
 8578      6F6E6700 
 8579              	.LASF152:
 8580 0df7 50494F5F 		.ascii	"PIO_MDSR\000"
 8580      4D445352 
 8580      00
 8581              	.LASF53:
 8582 0e00 75696E74 		.ascii	"uint_fast16_t\000"
 8582      5F666173 
 8582      7431365F 
 8582      7400
 8583              	.LASF46:
 8584 0e0e 696E745F 		.ascii	"int_least32_t\000"
 8584      6C656173 
 8584      7433325F 
 8584      7400
 8585              	.LASF354:
 8586 0e1c 7372616E 		.ascii	"srand\000"
 8586      6400
 8587              	.LASF201:
 8588 0e22 54524E47 		.ascii	"TRNG_IMR\000"
 8588      5F494D52 
 8588      00
 8589              	.LASF205:
 8590 0e2b 3454726E 		.ascii	"4Trng\000"
 8590      6700
 8591              	.LASF191:
 8592 0e31 52657365 		.ascii	"Reserved14\000"
 8592      72766564 
 8592      313400
 8593              	.LASF604:
 8594 0e3c 416E616C 		.ascii	"AnalogOutInit\000"
 8594      6F674F75 
 8594      74496E69 
 8594      7400
 8595              	.LASF276:
 8596 0e4a 5F737472 		.ascii	"_strtok_last\000"
 8596      746F6B5F 
 8596      6C617374 
 8596      00
 8597              	.LASF557:
 8598 0e57 7564635F 		.ascii	"udc_config_speed_t\000"
 8598      636F6E66 
 8598      69675F73 
 8598      70656564 
 8598      5F7400
 8599              	.LASF597:
 8600 0e6a 70696F5F 		.ascii	"pio_configure\000"
 8600      636F6E66 
ARM GAS  /tmp/cc4jIqrt.s 			page 171


 8600      69677572 
 8600      6500
 8601              	.LASF139:
 8602 0e78 50494F5F 		.ascii	"PIO_IFDR\000"
 8602      49464452 
 8602      00
 8603              	.LASF127:
 8604 0e81 73697A65 		.ascii	"sizetype\000"
 8604      74797065 
 8604      00
 8605              	.LASF324:
 8606 0e8a 5F736565 		.ascii	"_seed\000"
 8606      6400
 8607              	.LASF62:
 8608 0e90 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 8608      72794D61 
 8608      6E616765 
 8608      6D656E74 
 8608      5F495251 
 8609              	.LASF264:
 8610 0ea6 5F736565 		.ascii	"_seek\000"
 8610      6B00
 8611              	.LASF501:
 8612 0eac 4150494E 		.ascii	"APIN_UART1_TXD\000"
 8612      5F554152 
 8612      54315F54 
 8612      584400
 8613              	.LASF6:
 8614 0ebb 6D61785F 		.ascii	"max_align_t\000"
 8614      616C6967 
 8614      6E5F7400 
 8615              	.LASF70:
 8616 0ec7 52535443 		.ascii	"RSTC_IRQn\000"
 8616      5F495251 
 8616      6E00
 8617              	.LASF539:
 8618 0ed1 7573625F 		.ascii	"usb_dev_bos_desc_t\000"
 8618      6465765F 
 8618      626F735F 
 8618      64657363 
 8618      5F7400
 8619              	.LASF72:
 8620 0ee4 5254545F 		.ascii	"RTT_IRQn\000"
 8620      4952516E 
 8620      00
 8621              	.LASF358:
 8622 0eed 73797374 		.ascii	"system\000"
 8622      656D00
 8623              	.LASF34:
 8624 0ef4 696E7431 		.ascii	"int16_t\000"
 8624      365F7400 
 8625              	.LASF515:
 8626 0efc 62526571 		.ascii	"bRequest\000"
 8626      75657374 
 8626      00
 8627              	.LASF426:
 8628 0f05 4E4F5F41 		.ascii	"NO_ADC\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 172


 8628      444300
 8629              	.LASF14:
 8630 0f0c 73686F72 		.ascii	"short unsigned int\000"
 8630      7420756E 
 8630      7369676E 
 8630      65642069 
 8630      6E7400
 8631              	.LASF603:
 8632 0f1f 5F5A3133 		.ascii	"_Z13AnalogOutInitv\000"
 8632      416E616C 
 8632      6F674F75 
 8632      74496E69 
 8632      747600
 8633              	.LASF8:
 8634 0f32 7369676E 		.ascii	"signed char\000"
 8634      65642063 
 8634      68617200 
 8635              	.LASF138:
 8636 0f3e 50494F5F 		.ascii	"PIO_IFER\000"
 8636      49464552 
 8636      00
 8637              	.LASF556:
 8638 0f47 7564695F 		.ascii	"udi_apis\000"
 8638      61706973 
 8638      00
 8639              	.LASF377:
 8640 0f50 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 8640      6C69626D 
 8640      5F696565 
 8640      6500
 8641              	.LASF606:
 8642 0f5e 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 8642      432B2B31 
 8642      3420362E 
 8642      332E3120 
 8642      32303137 
 8643 0f91 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 8643      66707635 
 8643      2D643136 
 8643      202D6D66 
 8643      6C6F6174 
 8644 0fc4 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 8644      6374696F 
 8644      6E2D7365 
 8644      6374696F 
 8644      6E73202D 
 8645 0ff7 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 8645      69637320 
 8645      2D666E6F 
 8645      2D727474 
 8645      69202D66 
 8646 102a 6E2D636F 		.ascii	"n-constant\000"
 8646      6E737461 
 8646      6E7400
 8647              	.LASF391:
 8648 1035 70696F5F 		.ascii	"pio_type_t\000"
 8648      74797065 
ARM GAS  /tmp/cc4jIqrt.s 			page 173


 8648      5F7400
 8649              	.LASF526:
 8650 1040 62446576 		.ascii	"bDeviceProtocol\000"
 8650      69636550 
 8650      726F746F 
 8650      636F6C00 
 8651              	.LASF464:
 8652 1050 756C5069 		.ascii	"ulPinConfiguration\000"
 8652      6E436F6E 
 8652      66696775 
 8652      72617469 
 8652      6F6E00
 8653              	.LASF310:
 8654 1063 5F667265 		.ascii	"_freelist\000"
 8654      656C6973 
 8654      7400
 8655              	.LASF25:
 8656 106d 5F5F7569 		.ascii	"__uint_least16_t\000"
 8656      6E745F6C 
 8656      65617374 
 8656      31365F74 
 8656      00
 8657              	.LASF589:
 8658 107e 5F5A4E36 		.ascii	"_ZN6StreamD2Ev\000"
 8658      53747265 
 8658      616D4432 
 8658      457600
 8659              	.LASF351:
 8660 108d 77636861 		.ascii	"wchar_t\000"
 8660      725F7400 
 8661              	.LASF269:
 8662 1095 5F6F6666 		.ascii	"_offset\000"
 8662      73657400 
 8663              	.LASF129:
 8664 109d 53797374 		.ascii	"SystemCoreClock\000"
 8664      656D436F 
 8664      7265436C 
 8664      6F636B00 
 8665              	.LASF372:
 8666 10ad 6C653136 		.ascii	"le16_t\000"
 8666      5F7400
 8667              	.LASF254:
 8668 10b4 5F5F7362 		.ascii	"__sbuf\000"
 8668      756600
 8669              	.LASF350:
 8670 10bb 6D627374 		.ascii	"mbstowcs\000"
 8670      6F776373 
 8670      00
 8671              	.LASF285:
 8672 10c4 5F6C3634 		.ascii	"_l64a_buf\000"
 8672      615F6275 
 8672      6600
 8673              	.LASF177:
 8674 10ce 50494F5F 		.ascii	"PIO_LSR\000"
 8674      4C535200 
 8675              	.LASF567:
 8676 10d6 63616C6C 		.ascii	"callback\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 174


 8676      6261636B 
 8676      00
 8677              	.LASF277:
 8678 10df 5F617363 		.ascii	"_asctime_buf\000"
 8678      74696D65 
 8678      5F627566 
 8678      00
 8679              	.LASF599:
 8680 10ec 5F5A4E39 		.ascii	"_ZN9UARTClass10IrqHandlerEv\000"
 8680      55415254 
 8680      436C6173 
 8680      73313049 
 8680      72714861 
 8681              	.LASF224:
 8682 1108 5F5F7763 		.ascii	"__wch\000"
 8682      6800
 8683              	.LASF602:
 8684 110e 416E616C 		.ascii	"AnalogInInit\000"
 8684      6F67496E 
 8684      496E6974 
 8684      00
 8685              	.LASF575:
 8686 111b 5F5F6473 		.ascii	"__dso_handle\000"
 8686      6F5F6861 
 8686      6E646C65 
 8686      00
 8687              	.LASF476:
 8688 1128 53657269 		.ascii	"SerialUSB\000"
 8688      616C5553 
 8688      4200
 8689              	.LASF96:
 8690 1132 5443355F 		.ascii	"TC5_IRQn\000"
 8690      4952516E 
 8690      00
 8691              	.LASF292:
 8692 113b 5F776373 		.ascii	"_wcsrtombs_state\000"
 8692      72746F6D 
 8692      62735F73 
 8692      74617465 
 8692      00
 8693              	.LASF156:
 8694 114c 50494F5F 		.ascii	"PIO_PUSR\000"
 8694      50555352 
 8694      00
 8695              	.LASF219:
 8696 1155 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 8696      4B5F5245 
 8696      43555253 
 8696      4956455F 
 8696      5400
 8697              	.LASF376:
 8698 1167 5F5F6664 		.ascii	"__fdlibm_version\000"
 8698      6C69626D 
 8698      5F766572 
 8698      73696F6E 
 8698      00
 8699              	.LASF617:
ARM GAS  /tmp/cc4jIqrt.s 			page 175


 8700 1178 53657269 		.ascii	"SerialCDC\000"
 8700      616C4344 
 8700      4300
 8701              	.LASF95:
 8702 1182 5443345F 		.ascii	"TC4_IRQn\000"
 8702      4952516E 
 8702      00
 8703              	.LASF16:
 8704 118b 6C6F6E67 		.ascii	"long int\000"
 8704      20696E74 
 8704      00
 8705              	.LASF202:
 8706 1194 54524E47 		.ascii	"TRNG_ISR\000"
 8706      5F495352 
 8706      00
 8707              	.LASF284:
 8708 119d 5F776374 		.ascii	"_wctomb_state\000"
 8708      6F6D625F 
 8708      73746174 
 8708      6500
 8709              	.LASF582:
 8710 11ab 5F5A4E31 		.ascii	"_ZN14HardwareSerialD0Ev\000"
 8710      34486172 
 8710      64776172 
 8710      65536572 
 8710      69616C44 
 8711              	.LASF74:
 8712 11c3 504D435F 		.ascii	"PMC_IRQn\000"
 8712      4952516E 
 8712      00
 8713              	.LASF86:
 8714 11cc 48534D43 		.ascii	"HSMCI_IRQn\000"
 8714      495F4952 
 8714      516E00
 8715              	.LASF23:
 8716 11d7 5F5F7569 		.ascii	"__uint_least8_t\000"
 8716      6E745F6C 
 8716      65617374 
 8716      385F7400 
 8717              	.LASF204:
 8718 11e7 54726E67 		.ascii	"Trng\000"
 8718      00
 8719              	.LASF94:
 8720 11ec 5443335F 		.ascii	"TC3_IRQn\000"
 8720      4952516E 
 8720      00
 8721              	.LASF100:
 8722 11f5 49434D5F 		.ascii	"ICM_IRQn\000"
 8722      4952516E 
 8722      00
 8723              	.LASF135:
 8724 11fe 50494F5F 		.ascii	"PIO_ODR\000"
 8724      4F445200 
 8725              	.LASF322:
 8726 1206 5F696F62 		.ascii	"_iobs\000"
 8726      7300
 8727              	.LASF302:
ARM GAS  /tmp/cc4jIqrt.s 			page 176


 8728 120c 5F656D65 		.ascii	"_emergency\000"
 8728      7267656E 
 8728      637900
 8729              	.LASF123:
 8730 1217 50574D31 		.ascii	"PWM1_IRQn\000"
 8730      5F495251 
 8730      6E00
 8731              	.LASF288:
 8732 1221 5F6D6272 		.ascii	"_mbrlen_state\000"
 8732      6C656E5F 
 8732      73746174 
 8732      6500
 8733              	.LASF294:
 8734 122f 5F6E6578 		.ascii	"_nextf\000"
 8734      746600
 8735              	.LASF475:
 8736 1236 77726974 		.ascii	"write\000"
 8736      6500
 8737              	.LASF280:
 8738 123c 5F72616E 		.ascii	"_rand_next\000"
 8738      645F6E65 
 8738      787400
 8739              	.LASF40:
 8740 1247 696E7470 		.ascii	"intptr_t\000"
 8740      74725F74 
 8740      00
 8741              	.LASF37:
 8742 1250 75696E74 		.ascii	"uint32_t\000"
 8742      33325F74 
 8742      00
 8743              	.LASF134:
 8744 1259 50494F5F 		.ascii	"PIO_OER\000"
 8744      4F455200 
 8745              	.LASF232:
 8746 1261 5F6D6178 		.ascii	"_maxwds\000"
 8746      77647300 
 8747              	.LASF355:
 8748 1269 73747274 		.ascii	"strtod\000"
 8748      6F6400
 8749              	.LASF41:
 8750 1270 75696E74 		.ascii	"uintptr_t\000"
 8750      7074725F 
 8750      7400
 8751              	.LASF356:
 8752 127a 73747274 		.ascii	"strtol\000"
 8752      6F6C00
 8753              	.LASF4:
 8754 1281 6C6F6E67 		.ascii	"long double\000"
 8754      20646F75 
 8754      626C6500 
 8755              	.LASF560:
 8756 128d 636F6E66 		.ascii	"conf_lsfs\000"
 8756      5F6C7366 
 8756      7300
 8757              	.LASF340:
 8758 1297 7375626F 		.ascii	"suboptarg\000"
 8758      70746172 
ARM GAS  /tmp/cc4jIqrt.s 			page 177


 8758      6700
 8759              	.LASF564:
 8760 12a1 31387564 		.ascii	"18udd_ctrl_request_t\000"
 8760      645F6374 
 8760      726C5F72 
 8760      65717565 
 8760      73745F74 
 8761              	.LASF394:
 8762 12b6 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 8762      4F4E5F50 
 8762      574D00
 8763              	.LASF119:
 8764 12c1 4145535F 		.ascii	"AES_IRQn\000"
 8764      4952516E 
 8764      00
 8765              	.LASF18:
 8766 12ca 6C6F6E67 		.ascii	"long unsigned int\000"
 8766      20756E73 
 8766      69676E65 
 8766      6420696E 
 8766      7400
 8767              	.LASF369:
 8768 12dc 626F6F6C 		.ascii	"bool\000"
 8768      00
 8769              	.LASF265:
 8770 12e1 5F636C6F 		.ascii	"_close\000"
 8770      736500
 8771              	.LASF619:
 8772 12e8 5F5A4E39 		.ascii	"_ZN9UARTClasscvbEv\000"
 8772      55415254 
 8772      436C6173 
 8772      73637662 
 8772      457600
 8773              	.LASF318:
 8774 12fb 63686172 		.ascii	"char\000"
 8774      00
 8775              	.LASF572:
 8776 1300 74785F62 		.ascii	"tx_buffer1\000"
 8776      75666665 
 8776      723100
 8777              	.LASF574:
 8778 130b 74785F62 		.ascii	"tx_buffer2\000"
 8778      75666665 
 8778      723200
 8779              	.LASF320:
 8780 1316 5F676C75 		.ascii	"_glue\000"
 8780      6500
 8781              	.LASF107:
 8782 131c 54574948 		.ascii	"TWIHS2_IRQn\000"
 8782      53325F49 
 8782      52516E00 
 8783              	.LASF616:
 8784 1328 5F5A4E35 		.ascii	"_ZN5PrintD4Ev\000"
 8784      5072696E 
 8784      74443445 
 8784      7600
 8785              	.LASF45:
ARM GAS  /tmp/cc4jIqrt.s 			page 178


 8786 1336 75696E74 		.ascii	"uint_least16_t\000"
 8786      5F6C6561 
 8786      73743136 
 8786      5F7400
 8787              	.LASF621:
 8788 1345 5F5F7374 		.ascii	"__static_initialization_and_destruction_0\000"
 8788      61746963 
 8788      5F696E69 
 8788      7469616C 
 8788      697A6174 
 8789              	.LASF626:
 8790 136f 5F5A646C 		.ascii	"_ZdlPvj\000"
 8790      50766A00 
 8791              	.LASF83:
 8792 1377 55534152 		.ascii	"USART2_IRQn\000"
 8792      54325F49 
 8792      52516E00 
 8793              	.LASF88:
 8794 1383 54574948 		.ascii	"TWIHS1_IRQn\000"
 8794      53315F49 
 8794      52516E00 
 8795              	.LASF118:
 8796 138f 54433131 		.ascii	"TC11_IRQn\000"
 8796      5F495251 
 8796      6E00
 8797              	.LASF235:
 8798 1399 5F426967 		.ascii	"_Bigint\000"
 8798      696E7400 
 8799              	.LASF56:
 8800 13a1 696E745F 		.ascii	"int_fast64_t\000"
 8800      66617374 
 8800      36345F74 
 8800      00
 8801              	.LASF31:
 8802 13ae 5F5F7569 		.ascii	"__uintptr_t\000"
 8802      6E747074 
 8802      725F7400 
 8803              	.LASF82:
 8804 13ba 55534152 		.ascii	"USART1_IRQn\000"
 8804      54315F49 
 8804      52516E00 
 8805              	.LASF469:
 8806 13c6 675F4150 		.ascii	"g_APinDescription\000"
 8806      696E4465 
 8806      73637269 
 8806      7074696F 
 8806      6E00
 8807              	.LASF314:
 8808 13d8 5F617465 		.ascii	"_atexit0\000"
 8808      78697430 
 8808      00
 8809              	.LASF213:
 8810 13e1 55415254 		.ascii	"UART_RHR\000"
 8810      5F524852 
 8810      00
 8811              	.LASF287:
 8812 13ea 5F676574 		.ascii	"_getdate_err\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 179


 8812      64617465 
 8812      5F657272 
 8812      00
 8813              	.LASF98:
 8814 13f7 44414343 		.ascii	"DACC_IRQn\000"
 8814      5F495251 
 8814      6E00
 8815              	.LASF362:
 8816 1401 61746F6C 		.ascii	"atoll\000"
 8816      6C00
 8817              	.LASF131:
 8818 1407 50494F5F 		.ascii	"PIO_PDR\000"
 8818      50445200 
 8819              	.LASF57:
 8820 140f 75696E74 		.ascii	"uint_fast64_t\000"
 8820      5F666173 
 8820      7436345F 
 8820      7400
 8821              	.LASF532:
 8822 141d 6950726F 		.ascii	"iProduct\000"
 8822      64756374 
 8822      00
 8823              	.LASF69:
 8824 1426 53555043 		.ascii	"SUPC_IRQn\000"
 8824      5F495251 
 8824      6E00
 8825              	.LASF346:
 8826 1430 62736561 		.ascii	"bsearch\000"
 8826      72636800 
 8827              	.LASF496:
 8828 1438 4150494E 		.ascii	"APINS_UART0\000"
 8828      535F5541 
 8828      52543000 
 8829              	.LASF543:
 8830 1444 69436F6E 		.ascii	"iConfiguration\000"
 8830      66696775 
 8830      72617469 
 8830      6F6E00
 8831              	.LASF470:
 8832 1453 5F5F6374 		.ascii	"__ctype_ptr__\000"
 8832      7970655F 
 8832      7074725F 
 8832      5F00
 8833              	.LASF130:
 8834 1461 50494F5F 		.ascii	"PIO_PER\000"
 8834      50455200 
 8835              	.LASF386:
 8836 1469 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 8836      50455249 
 8836      50485F43 
 8836      00
 8837              	.LASF327:
 8838 1476 5F696D70 		.ascii	"_impure_ptr\000"
 8838      7572655F 
 8838      70747200 
 8839              	.LASF268:
 8840 1482 5F626C6B 		.ascii	"_blksize\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 180


 8840      73697A65 
 8840      00
 8841              	.LASF627:
 8842 148b 6F706572 		.ascii	"operator delete\000"
 8842      61746F72 
 8842      2064656C 
 8842      65746500 
 8843              	.LASF527:
 8844 149b 624D6178 		.ascii	"bMaxPacketSize0\000"
 8844      5061636B 
 8844      65745369 
 8844      7A653000 
 8845              	.LASF266:
 8846 14ab 5F756275 		.ascii	"_ubuf\000"
 8846      6600
 8847              	.LASF282:
 8848 14b1 5F6D626C 		.ascii	"_mblen_state\000"
 8848      656E5F73 
 8848      74617465 
 8848      00
 8849              	.LASF316:
 8850 14be 5F5F7367 		.ascii	"__sglue\000"
 8850      6C756500 
 8851              	.LASF375:
 8852 14c6 4952516E 		.ascii	"IRQn\000"
 8852      00
 8853              	.LASF510:
 8854 14cb 53657269 		.ascii	"Serial\000"
 8854      616C00
 8855              	.LASF487:
 8856 14d2 726F6F6D 		.ascii	"roomLeft\000"
 8856      4C656674 
 8856      00
 8857              	.LASF306:
 8858 14db 5F5F636C 		.ascii	"__cleanup\000"
 8858      65616E75 
 8858      7000
 8859              	.LASF38:
 8860 14e5 696E7436 		.ascii	"int64_t\000"
 8860      345F7400 
 8861              	.LASF514:
 8862 14ed 626D5265 		.ascii	"bmRequestType\000"
 8862      71756573 
 8862      74547970 
 8862      6500
 8863              	.LASF465:
 8864 14fb 756C5069 		.ascii	"ulPinAttribute\000"
 8864      6E417474 
 8864      72696275 
 8864      746500
 8865              	.LASF516:
 8866 150a 7756616C 		.ascii	"wValue\000"
 8866      756500
 8867              	.LASF573:
 8868 1511 72785F62 		.ascii	"rx_buffer2\000"
 8868      75666665 
 8868      723200
ARM GAS  /tmp/cc4jIqrt.s 			page 181


 8869              	.LASF192:
 8870 151c 50494F5F 		.ascii	"PIO_PCMR\000"
 8870      50434D52 
 8870      00
 8871              	.LASF221:
 8872 1525 5F66706F 		.ascii	"_fpos_t\000"
 8872      735F7400 
 8873              	.LASF259:
 8874 152d 5F66696C 		.ascii	"_file\000"
 8874      6500
 8875              	.LASF43:
 8876 1533 75696E74 		.ascii	"uint_least8_t\000"
 8876      5F6C6561 
 8876      7374385F 
 8876      7400
 8877              	.LASF348:
 8878 1541 6C646976 		.ascii	"ldiv\000"
 8878      00
 8879              	.LASF257:
 8880 1546 5F5F7346 		.ascii	"__sFILE\000"
 8880      494C4500 
 8881              	.LASF468:
 8882 154e 756C5443 		.ascii	"ulTCChannel\000"
 8882      4368616E 
 8882      6E656C00 
 8883              	.LASF507:
 8884 155a 4D617850 		.ascii	"MaxPinNumber\000"
 8884      696E4E75 
 8884      6D626572 
 8884      00
 8885              	.LASF343:
 8886 1567 646F7562 		.ascii	"double\000"
 8886      6C6500
 8887              	.LASF253:
 8888 156e 5F666E73 		.ascii	"_fns\000"
 8888      00
 8889              	.LASF140:
 8890 1573 50494F5F 		.ascii	"PIO_IFSR\000"
 8890      49465352 
 8890      00
 8891              	.LASF85:
 8892 157c 50494F45 		.ascii	"PIOE_IRQn\000"
 8892      5F495251 
 8892      6E00
 8893              	.LASF228:
 8894 1586 5F6D6273 		.ascii	"_mbstate_t\000"
 8894      74617465 
 8894      5F7400
 8895              	.LASF293:
 8896 1591 5F685F65 		.ascii	"_h_errno\000"
 8896      72726E6F 
 8896      00
 8897              	.LASF540:
 8898 159a 31357573 		.ascii	"15usb_conf_desc_t\000"
 8898      625F636F 
 8898      6E665F64 
 8898      6573635F 
ARM GAS  /tmp/cc4jIqrt.s 			page 182


 8898      7400
 8899              	.LASF99:
 8900 15ac 50574D30 		.ascii	"PWM0_IRQn\000"
 8900      5F495251 
 8900      6E00
 8901              	.LASF29:
 8902 15b6 5F5F7569 		.ascii	"__uint_least64_t\000"
 8902      6E745F6C 
 8902      65617374 
 8902      36345F74 
 8902      00
 8903              	.LASF210:
 8904 15c7 55415254 		.ascii	"UART_IDR\000"
 8904      5F494452 
 8904      00
 8905              	.LASF124:
 8906 15d0 53445241 		.ascii	"SDRAMC_IRQn\000"
 8906      4D435F49 
 8906      52516E00 
 8907              	.LASF535:
 8908 15dc 7573625F 		.ascii	"usb_dev_desc_t\000"
 8908      6465765F 
 8908      64657363 
 8908      5F7400
 8909              	.LASF15:
 8910 15eb 5F5F696E 		.ascii	"__int32_t\000"
 8910      7433325F 
 8910      7400
 8911              	.LASF17:
 8912 15f5 5F5F7569 		.ascii	"__uint32_t\000"
 8912      6E743332 
 8912      5F7400
 8913              	.LASF353:
 8914 1600 71736F72 		.ascii	"qsort\000"
 8914      7400
 8915              	.LASF24:
 8916 1606 5F5F696E 		.ascii	"__int_least16_t\000"
 8916      745F6C65 
 8916      61737431 
 8916      365F7400 
 8917              	.LASF173:
 8918 1616 50494F5F 		.ascii	"PIO_AIMDR\000"
 8918      41494D44 
 8918      5200
 8919              	.LASF68:
 8920 1620 53797354 		.ascii	"SysTick_IRQn\000"
 8920      69636B5F 
 8920      4952516E 
 8920      00
 8921              	.LASF227:
 8922 162d 5F5F7661 		.ascii	"__value\000"
 8922      6C756500 
 8923              	.LASF250:
 8924 1635 5F69735F 		.ascii	"_is_cxa\000"
 8924      63786100 
 8925              	.LASF209:
 8926 163d 55415254 		.ascii	"UART_IER\000"
ARM GAS  /tmp/cc4jIqrt.s 			page 183


 8926      5F494552 
 8926      00
 8927              	.LASF73:
 8928 1646 5744545F 		.ascii	"WDT_IRQn\000"
 8928      4952516E 
 8928      00
 8929              	.LASF160:
 8930 164f 50494F5F 		.ascii	"PIO_IFSCDR\000"
 8930      49465343 
 8930      445200
 8931              	.LASF309:
 8932 165a 5F703573 		.ascii	"_p5s\000"
 8932      00
 8933              	.LASF522:
 8934 165f 62446573 		.ascii	"bDescriptorType\000"
 8934      63726970 
 8934      746F7254 
 8934      79706500 
 8935              	.LASF414:
 8936 166f 5443315F 		.ascii	"TC1_CHA4\000"
 8936      43484134 
 8936      00
 8937              	.LASF416:
 8938 1678 5443315F 		.ascii	"TC1_CHA5\000"
 8938      43484135 
 8938      00
 8939              	.LASF172:
 8940 1681 50494F5F 		.ascii	"PIO_AIMER\000"
 8940      41494D45 
 8940      5200
 8941              	.LASF60:
 8942 168b 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 8942      61736B61 
 8942      626C6549 
 8942      6E745F49 
 8942      52516E00 
 8943              	.LASF121:
 8944 169f 58444D41 		.ascii	"XDMAC_IRQn\000"
 8944      435F4952 
 8944      516E00
 8945              	.LASF583:
 8946 16aa 5F5A4E31 		.ascii	"_ZN14HardwareSerialD2Ev\000"
 8946      34486172 
 8946      64776172 
 8946      65536572 
 8946      69616C44 
 8947              	.LASF474:
 8948 16c2 7E486172 		.ascii	"~HardwareSerial\000"
 8948      64776172 
 8948      65536572 
 8948      69616C00 
 8949              	.LASF558:
 8950 16d2 31327564 		.ascii	"12udc_config_t\000"
 8950      635F636F 
 8950      6E666967 
 8950      5F7400
 8951              	.LASF625:
ARM GAS  /tmp/cc4jIqrt.s 			page 184


 8952 16e1 5F5F6165 		.ascii	"__aeabi_atexit\000"
 8952      6162695F 
 8952      61746578 
 8952      697400
 8953              	.LASF592:
 8954 16f0 70696E44 		.ascii	"pinDesc\000"
 8954      65736300 
 8955              	.LASF291:
 8956 16f8 5F776372 		.ascii	"_wcrtomb_state\000"
 8956      746F6D62 
 8956      5F737461 
 8956      746500
 8957              	.LASF161:
 8958 1707 50494F5F 		.ascii	"PIO_IFSCER\000"
 8958      49465343 
 8958      455200
 8959              	.LASF624:
 8960 1712 5F5A3132 		.ascii	"_Z12ConfigurePinRK14PinDescription\000"
 8960      436F6E66 
 8960      69677572 
 8960      6550696E 
 8960      524B3134 
 8961              	.LASF332:
 8962 1735 35646976 		.ascii	"5div_t\000"
 8962      5F7400
 8963              	.LASF334:
 8964 173c 6469765F 		.ascii	"div_t\000"
 8964      7400
 8965              	.LASF513:
 8966 1742 31357573 		.ascii	"15usb_setup_req_t\000"
 8966      625F7365 
 8966      7475705F 
 8966      7265715F 
 8966      7400
 8967              	.LASF568:
 8968 1754 6F766572 		.ascii	"over_under_run\000"
 8968      5F756E64 
 8968      65725F72 
 8968      756E00
 8969              	.LASF352:
 8970 1763 6D62746F 		.ascii	"mbtowc\000"
 8970      776300
 8971              	.LASF427:
 8972 176a 41444330 		.ascii	"ADC0\000"
 8972      00
 8973              	.LASF493:
 8974 176f 5F74696D 		.ascii	"_timezone\000"
 8974      657A6F6E 
 8974      6500
 8975              	.LASF128:
 8976 1779 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8976      52784275 
 8976      66666572 
 8976      00
 8977              	.LASF180:
 8978 1786 50494F5F 		.ascii	"PIO_FELLSR\000"
 8978      46454C4C 
ARM GAS  /tmp/cc4jIqrt.s 			page 185


 8978      535200
 8979              	.LASF21:
 8980 1791 6C6F6E67 		.ascii	"long long unsigned int\000"
 8980      206C6F6E 
 8980      6720756E 
 8980      7369676E 
 8980      65642069 
 8981              	.LASF101:
 8982 17a8 4143435F 		.ascii	"ACC_IRQn\000"
 8982      4952516E 
 8982      00
 8983              	.LASF339:
 8984 17b1 5F5F636F 		.ascii	"__compar_fn_t\000"
 8984      6D706172 
 8984      5F666E5F 
 8984      7400
 8985              	.LASF279:
 8986 17bf 5F67616D 		.ascii	"_gamma_signgam\000"
 8986      6D615F73 
 8986      69676E67 
 8986      616D00
 8987              	.LASF424:
 8988 17ce 45544343 		.ascii	"ETCChannel\000"
 8988      68616E6E 
 8988      656C00
 8989              	.LASF612:
 8990 17d9 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 8990      346D6F64 
 8990      66655065 
 8990      00
 8991              	.LASF303:
 8992 17e6 5F637572 		.ascii	"_current_category\000"
 8992      72656E74 
 8992      5F636174 
 8992      65676F72 
 8992      7900
 8993              	.LASF328:
 8994 17f8 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8994      62616C5F 
 8994      696D7075 
 8994      72655F70 
 8994      747200
 8995              	.LASF542:
 8996 180b 62436F6E 		.ascii	"bConfigurationValue\000"
 8996      66696775 
 8996      72617469 
 8996      6F6E5661 
 8996      6C756500 
 8997              	.LASF136:
 8998 181f 50494F5F 		.ascii	"PIO_OSR\000"
 8998      4F535200 
 8999              	.LASF586:
 9000 1827 5F5A4E39 		.ascii	"_ZN9UARTClassD4Ev\000"
 9000      55415254 
 9000      436C6173 
 9000      73443445 
 9000      7600
ARM GAS  /tmp/cc4jIqrt.s 			page 186


 9001              	.LASF50:
 9002 1839 696E745F 		.ascii	"int_fast8_t\000"
 9002      66617374 
 9002      385F7400 
 9003              	.LASF347:
 9004 1845 67657465 		.ascii	"getenv\000"
 9004      6E7600
 9005              	.LASF305:
 9006 184c 5F5F7364 		.ascii	"__sdidinit\000"
 9006      6964696E 
 9006      697400
 9007              	.LASF380:
 9008 1857 5F5F6664 		.ascii	"__fdlibm_posix\000"
 9008      6C69626D 
 9008      5F706F73 
 9008      697800
 9009              	.LASF547:
 9010 1866 39756469 		.ascii	"9udi_api_t\000"
 9010      5F617069 
 9010      5F7400
 9011              	.LASF614:
 9012 1871 72616E64 		.ascii	"rand\000"
 9012      00
 9013              	.LASF229:
 9014 1876 5F666C6F 		.ascii	"_flock_t\000"
 9014      636B5F74 
 9014      00
 9015              	.LASF67:
 9016 187f 50656E64 		.ascii	"PendSV_IRQn\000"
 9016      53565F49 
 9016      52516E00 
 9017              	.LASF579:
 9018 188b 5F5F696E 		.ascii	"__in_chrg\000"
 9018      5F636872 
 9018      6700
 9019              	.LASF490:
 9020 1895 55415254 		.ascii	"UARTClass\000"
 9020      436C6173 
 9020      7300
 9021              	.LASF3:
 9022 189f 6C6F6E67 		.ascii	"long long int\000"
 9022      206C6F6E 
 9022      6720696E 
 9022      7400
 9023              	.LASF176:
 9024 18ad 50494F5F 		.ascii	"PIO_ESR\000"
 9024      45535200 
 9025              	.LASF273:
 9026 18b5 5F666C61 		.ascii	"_flags2\000"
 9026      67733200 
 9027              	.LASF194:
 9028 18bd 50494F5F 		.ascii	"PIO_PCIDR\000"
 9028      50434944 
 9028      5200
 9029              	.LASF488:
 9030 18c7 5F5A4E31 		.ascii	"_ZN10RingBuffer10store_charEh\000"
 9030      3052696E 
ARM GAS  /tmp/cc4jIqrt.s 			page 187


 9030      67427566 
 9030      66657231 
 9030      3073746F 
 9031              	.LASF214:
 9032 18e5 55415254 		.ascii	"UART_THR\000"
 9032      5F544852 
 9032      00
 9033              	.LASF541:
 9034 18ee 624E756D 		.ascii	"bNumInterfaces\000"
 9034      496E7465 
 9034      72666163 
 9034      657300
 9035              	.LASF587:
 9036 18fd 5F5A4E36 		.ascii	"_ZN6StreamD4Ev\000"
 9036      53747265 
 9036      616D4434 
 9036      457600
 9037              	.LASF517:
 9038 190c 77496E64 		.ascii	"wIndex\000"
 9038      657800
 9039              	.LASF203:
 9040 1913 54524E47 		.ascii	"TRNG_ODATA\000"
 9040      5F4F4441 
 9040      544100
 9041              	.LASF499:
 9042 191e 4150494E 		.ascii	"APINS_UART1\000"
 9042      535F5541 
 9042      52543100 
 9043              	.LASF211:
 9044 192a 55415254 		.ascii	"UART_IMR\000"
 9044      5F494D52 
 9044      00
 9045              	.LASF44:
 9046 1933 696E745F 		.ascii	"int_least16_t\000"
 9046      6C656173 
 9046      7431365F 
 9046      7400
 9047              	.LASF613:
 9048 1941 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 9048      5F5F676E 
 9048      755F6378 
 9048      78336469 
 9048      76457878 
 9049              	.LASF479:
 9050 1956 5F694865 		.ascii	"_iHead\000"
 9050      616400
 9051              	.LASF371:
 9052 195d 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 9052      6972715F 
 9052      70726576 
 9052      5F696E74 
 9052      65727275 
 9053              	.LASF77:
 9054 197a 55415254 		.ascii	"UART1_IRQn\000"
 9054      315F4952 
 9054      516E00
 9055              	.LASF174:
ARM GAS  /tmp/cc4jIqrt.s 			page 188


 9056 1985 50494F5F 		.ascii	"PIO_AIMMR\000"
 9056      41494D4D 
 9056      5200
 9057              	.LASF382:
 9058 198f 5F70696F 		.ascii	"_pio_type\000"
 9058      5F747970 
 9058      6500
 9059              	.LASF319:
 9060 1999 5F5F4649 		.ascii	"__FILE\000"
 9060      4C4500
 9061              	.LASF533:
 9062 19a0 69536572 		.ascii	"iSerialNumber\000"
 9062      69616C4E 
 9062      756D6265 
 9062      7200
 9063              	.LASF403:
 9064 19ae 4550574D 		.ascii	"EPWMChannel\000"
 9064      4368616E 
 9064      6E656C00 
 9065              	.LASF76:
 9066 19ba 55415254 		.ascii	"UART0_IRQn\000"
 9066      305F4952 
 9066      516E00
 9067              	.LASF364:
 9068 19c5 73747274 		.ascii	"strtoull\000"
 9068      6F756C6C 
 9068      00
 9069              	.LASF482:
 9070 19ce 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 9070      5072696E 
 9070      74357772 
 9070      69746545 
 9070      504B636A 
 9071              	.LASF233:
 9072 19e3 5F736967 		.ascii	"_sign\000"
 9072      6E00
 9073              	.LASF7:
 9074 19e9 5F5F696E 		.ascii	"__int8_t\000"
 9074      74385F74 
 9074      00
 9075              	.LASF145:
 9076 19f2 50494F5F 		.ascii	"PIO_PDSR\000"
 9076      50445352 
 9076      00
 9077              	.LASF238:
 9078 19fb 5F5F746D 		.ascii	"__tm_min\000"
 9078      5F6D696E 
 9078      00
 9079              	.LASF78:
 9080 1a04 50494F41 		.ascii	"PIOA_IRQn\000"
 9080      5F495251 
 9080      6E00
 9081              	.LASF608:
 9082 1a0e 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 9082      652F746F 
 9082      72626A6F 
 9082      726E2F65 
ARM GAS  /tmp/cc4jIqrt.s 			page 189


 9082      636C6970 
 9083              	.LASF182:
 9084 1a3d 50494F5F 		.ascii	"PIO_FRLHSR\000"
 9084      46524C48 
 9084      535200
 9085              	.LASF133:
 9086 1a48 52657365 		.ascii	"Reserved1\000"
 9086      72766564 
 9086      3100
 9087              	.LASF137:
 9088 1a52 52657365 		.ascii	"Reserved2\000"
 9088      72766564 
 9088      3200
 9089              	.LASF141:
 9090 1a5c 52657365 		.ascii	"Reserved3\000"
 9090      72766564 
 9090      3300
 9091              	.LASF153:
 9092 1a66 52657365 		.ascii	"Reserved4\000"
 9092      72766564 
 9092      3400
 9093              	.LASF157:
 9094 1a70 52657365 		.ascii	"Reserved5\000"
 9094      72766564 
 9094      3500
 9095              	.LASF159:
 9096 1a7a 52657365 		.ascii	"Reserved6\000"
 9096      72766564 
 9096      3600
 9097              	.LASF167:
 9098 1a84 52657365 		.ascii	"Reserved7\000"
 9098      72766564 
 9098      3700
 9099              	.LASF171:
 9100 1a8e 52657365 		.ascii	"Reserved8\000"
 9100      72766564 
 9100      3800
 9101              	.LASF175:
 9102 1a98 52657365 		.ascii	"Reserved9\000"
 9102      72766564 
 9102      3900
 9103              	.LASF0:
 9104 1aa2 756E7369 		.ascii	"unsigned int\000"
 9104      676E6564 
 9104      20696E74 
 9104      00
 9105              	.LASF281:
 9106 1aaf 5F723438 		.ascii	"_r48\000"
 9106      00
 9107              	.LASF484:
 9108 1ab4 73746F72 		.ascii	"storeBlock\000"
 9108      65426C6F 
 9108      636B00
 9109              	.LASF132:
 9110 1abf 50494F5F 		.ascii	"PIO_PSR\000"
 9110      50535200 
 9111              	.LASF511:
ARM GAS  /tmp/cc4jIqrt.s 			page 190


 9112 1ac7 53657269 		.ascii	"Serial1\000"
 9112      616C3100 
 9113              	.LASF467:
 9114 1acf 756C5057 		.ascii	"ulPWMChannel\000"
 9114      4D436861 
 9114      6E6E656C 
 9114      00
 9115              	.LASF331:
 9116 1adc 5F5F6378 		.ascii	"__cxx11\000"
 9116      78313100 
 9117              	.LASF549:
 9118 1ae4 64697361 		.ascii	"disable\000"
 9118      626C6500 
 9119              	.LASF51:
 9120 1aec 75696E74 		.ascii	"uint_fast8_t\000"
 9120      5F666173 
 9120      74385F74 
 9120      00
 9121              	.LASF620:
 9122 1af9 5F474C4F 		.ascii	"_GLOBAL__sub_I_g_APinDescription\000"
 9122      42414C5F 
 9122      5F737562 
 9122      5F495F67 
 9122      5F415069 
 9123              	.LASF545:
 9124 1b1a 624D6178 		.ascii	"bMaxPower\000"
 9124      506F7765 
 9124      7200
 9125              	.LASF12:
 9126 1b24 73686F72 		.ascii	"short int\000"
 9126      7420696E 
 9126      7400
 9127              	.LASF103:
 9128 1b2e 4D43414E 		.ascii	"MCAN0_IRQn\000"
 9128      305F4952 
 9128      516E00
 9129              	.LASF537:
 9130 1b39 77546F74 		.ascii	"wTotalLength\000"
 9130      616C4C65 
 9130      6E677468 
 9130      00
 9131              	.LASF262:
 9132 1b46 5F726561 		.ascii	"_read\000"
 9132      6400
 9133              	.LASF323:
 9134 1b4c 5F72616E 		.ascii	"_rand48\000"
 9134      64343800 
 9135              	.LASF506:
 9136 1b54 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 9136      535F474D 
 9136      41435F50 
 9136      485900
 9137              	.LASF115:
 9138 1b63 5443385F 		.ascii	"TC8_IRQn\000"
 9138      4952516E 
 9138      00
 9139              	.LASF578:
ARM GAS  /tmp/cc4jIqrt.s 			page 191


 9140 1b6c 74686973 		.ascii	"this\000"
 9140      00
 9141              	.LASF106:
 9142 1b71 41464543 		.ascii	"AFEC1_IRQn\000"
 9142      315F4952 
 9142      516E00
 9143              	.LASF521:
 9144 1b7c 624C656E 		.ascii	"bLength\000"
 9144      67746800 
 9145              	.LASF164:
 9146 1b84 50494F5F 		.ascii	"PIO_PPDDR\000"
 9146      50504444 
 9146      5200
 9147              	.LASF63:
 9148 1b8e 42757346 		.ascii	"BusFault_IRQn\000"
 9148      61756C74 
 9148      5F495251 
 9148      6E00
 9149              	.LASF536:
 9150 1b9c 31387573 		.ascii	"18usb_dev_bos_desc_t\000"
 9150      625F6465 
 9150      765F626F 
 9150      735F6465 
 9150      73635F74 
 9151              		.hidden	__dso_handle
 9152              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
