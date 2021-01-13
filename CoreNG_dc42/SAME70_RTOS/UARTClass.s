ARM GAS  /tmp/cc5e0BXI.s 			page 1


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
  12              		.file	"UARTClass.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  17              		.align	1
  18              		.p2align 2,,3
  19              		.weak	_ZN9UARTClasscvbEv
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	_ZN9UARTClasscvbEv, %function
  25              	_ZN9UARTClasscvbEv:
  26              	.LFB262:
  27              		.file 1 "../cores/arduino/UARTClass.h"
   1:../cores/arduino/UARTClass.h **** /*
   2:../cores/arduino/UARTClass.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/UARTClass.h **** 
   4:../cores/arduino/UARTClass.h ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/UARTClass.h ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/UARTClass.h ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/UARTClass.h ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/UARTClass.h **** 
   9:../cores/arduino/UARTClass.h ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/UARTClass.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/UARTClass.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/UARTClass.h ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/UARTClass.h **** 
  14:../cores/arduino/UARTClass.h ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/UARTClass.h ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/UARTClass.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/UARTClass.h **** */
  18:../cores/arduino/UARTClass.h **** 
  19:../cores/arduino/UARTClass.h **** #ifndef _UART_CLASS_
  20:../cores/arduino/UARTClass.h **** #define _UART_CLASS_
  21:../cores/arduino/UARTClass.h **** 
  22:../cores/arduino/UARTClass.h **** #include "HardwareSerial.h"
  23:../cores/arduino/UARTClass.h **** #include "RingBuffer.h"
  24:../cores/arduino/UARTClass.h **** 
  25:../cores/arduino/UARTClass.h **** #if SAM4E || SAME70
  26:../cores/arduino/UARTClass.h **** #include "component/usart.h"
  27:../cores/arduino/UARTClass.h **** #else
  28:../cores/arduino/UARTClass.h **** #include "component/component_usart.h"
  29:../cores/arduino/UARTClass.h **** #endif
  30:../cores/arduino/UARTClass.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 2


  31:../cores/arduino/UARTClass.h **** #define SERIAL_8N1 UARTClass::Mode_8N1
  32:../cores/arduino/UARTClass.h **** #define SERIAL_8E1 UARTClass::Mode_8E1
  33:../cores/arduino/UARTClass.h **** #define SERIAL_8O1 UARTClass::Mode_8O1
  34:../cores/arduino/UARTClass.h **** #define SERIAL_8M1 UARTClass::Mode_8M1
  35:../cores/arduino/UARTClass.h **** #define SERIAL_8S1 UARTClass::Mode_8S1
  36:../cores/arduino/UARTClass.h **** 
  37:../cores/arduino/UARTClass.h **** 
  38:../cores/arduino/UARTClass.h **** class UARTClass : public HardwareSerial
  39:../cores/arduino/UARTClass.h **** {
  40:../cores/arduino/UARTClass.h ****   public:
  41:../cores/arduino/UARTClass.h ****     enum UARTModes {
  42:../cores/arduino/UARTClass.h ****       Mode_8N1 = US_MR_CHRL_8_BIT | US_MR_NBSTOP_1_BIT | UART_MR_PAR_NO,
  43:../cores/arduino/UARTClass.h ****       Mode_8E1 = US_MR_CHRL_8_BIT | US_MR_NBSTOP_1_BIT | UART_MR_PAR_EVEN,
  44:../cores/arduino/UARTClass.h ****       Mode_8O1 = US_MR_CHRL_8_BIT | US_MR_NBSTOP_1_BIT | UART_MR_PAR_ODD,
  45:../cores/arduino/UARTClass.h ****       Mode_8M1 = US_MR_CHRL_8_BIT | US_MR_NBSTOP_1_BIT | UART_MR_PAR_MARK,
  46:../cores/arduino/UARTClass.h ****       Mode_8S1 = US_MR_CHRL_8_BIT | US_MR_NBSTOP_1_BIT | UART_MR_PAR_SPACE,
  47:../cores/arduino/UARTClass.h ****     };
  48:../cores/arduino/UARTClass.h ****     UARTClass(Uart* pUart, IRQn_Type dwIrq, uint32_t dwId, RingBuffer* pRx_buffer, RingBuffer* pTx_
  49:../cores/arduino/UARTClass.h **** 
  50:../cores/arduino/UARTClass.h ****     void begin(const uint32_t dwBaudRate);
  51:../cores/arduino/UARTClass.h ****     void begin(const uint32_t dwBaudRate, const UARTModes config);
  52:../cores/arduino/UARTClass.h ****     void end(void);
  53:../cores/arduino/UARTClass.h ****     int available(void);
  54:../cores/arduino/UARTClass.h ****     int availableForWrite(void);
  55:../cores/arduino/UARTClass.h ****     int peek(void);
  56:../cores/arduino/UARTClass.h ****     int read(void);
  57:../cores/arduino/UARTClass.h ****     void flush(void);
  58:../cores/arduino/UARTClass.h ****     size_t write(const uint8_t c) override;
  59:../cores/arduino/UARTClass.h ****     size_t write(const uint8_t *buffer, size_t size) override;
  60:../cores/arduino/UARTClass.h **** 
  61:../cores/arduino/UARTClass.h ****     using Print::write; // pull in write(str) and write(buf, size) from Print
  62:../cores/arduino/UARTClass.h ****     size_t canWrite( void ) const override;	//***** DC42 added for Duet
  63:../cores/arduino/UARTClass.h **** 
  64:../cores/arduino/UARTClass.h ****     void setInterruptPriority(uint32_t priority);
  65:../cores/arduino/UARTClass.h ****     uint32_t getInterruptPriority();
  66:../cores/arduino/UARTClass.h **** 
  67:../cores/arduino/UARTClass.h ****     void IrqHandler(void);
  68:../cores/arduino/UARTClass.h **** 
  69:../cores/arduino/UARTClass.h ****     operator bool() { return true; }; // UART always active
  28              		.loc 1 69 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  34              		.loc 1 69 0
  35 0000 0120     		movs	r0, #1
  36              	.LVL1:
  37 0002 7047     		bx	lr
  38              		.cfi_endproc
  39              	.LFE262:
  40              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  41              		.section	.text._ZN9UARTClass9availableEv,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN9UARTClass9availableEv
  45              		.syntax unified
ARM GAS  /tmp/cc5e0BXI.s 			page 3


  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv5-d16
  49              		.type	_ZN9UARTClass9availableEv, %function
  50              	_ZN9UARTClass9availableEv:
  51              	.LFB283:
  52              		.file 2 "../cores/arduino/UARTClass.cpp"
   1:../cores/arduino/UARTClass.cpp **** /*
   2:../cores/arduino/UARTClass.cpp ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/UARTClass.cpp **** 
   4:../cores/arduino/UARTClass.cpp ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/UARTClass.cpp ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/UARTClass.cpp ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/UARTClass.cpp ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/UARTClass.cpp **** 
   9:../cores/arduino/UARTClass.cpp ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/UARTClass.cpp ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/UARTClass.cpp ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/UARTClass.cpp ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/UARTClass.cpp **** 
  14:../cores/arduino/UARTClass.cpp ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/UARTClass.cpp ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/UARTClass.cpp ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/UARTClass.cpp **** */
  18:../cores/arduino/UARTClass.cpp **** 
  19:../cores/arduino/UARTClass.cpp **** #include <cstdlib>
  20:../cores/arduino/UARTClass.cpp **** #include <cstring>
  21:../cores/arduino/UARTClass.cpp **** 
  22:../cores/arduino/UARTClass.cpp **** #include "asf.h"
  23:../cores/arduino/UARTClass.cpp **** #include "UARTClass.h"
  24:../cores/arduino/UARTClass.cpp **** 
  25:../cores/arduino/UARTClass.cpp **** // Constructors ////////////////////////////////////////////////////////////////
  26:../cores/arduino/UARTClass.cpp **** 
  27:../cores/arduino/UARTClass.cpp **** UARTClass::UARTClass( Uart *pUart, IRQn_Type dwIrq, uint32_t dwId, RingBuffer *pRx_buffer, RingBuff
  28:../cores/arduino/UARTClass.cpp **** {
  29:../cores/arduino/UARTClass.cpp ****   _rx_buffer = pRx_buffer;
  30:../cores/arduino/UARTClass.cpp ****   _tx_buffer = pTx_buffer;
  31:../cores/arduino/UARTClass.cpp **** 
  32:../cores/arduino/UARTClass.cpp ****   _pUart=pUart;
  33:../cores/arduino/UARTClass.cpp ****   _dwIrq=dwIrq;
  34:../cores/arduino/UARTClass.cpp ****   _dwId=dwId;
  35:../cores/arduino/UARTClass.cpp **** }
  36:../cores/arduino/UARTClass.cpp **** 
  37:../cores/arduino/UARTClass.cpp **** // Public Methods //////////////////////////////////////////////////////////////
  38:../cores/arduino/UARTClass.cpp **** 
  39:../cores/arduino/UARTClass.cpp **** void UARTClass::begin(const uint32_t dwBaudRate)
  40:../cores/arduino/UARTClass.cpp **** {
  41:../cores/arduino/UARTClass.cpp ****   begin(dwBaudRate, Mode_8N1);
  42:../cores/arduino/UARTClass.cpp **** }
  43:../cores/arduino/UARTClass.cpp **** 
  44:../cores/arduino/UARTClass.cpp **** void UARTClass::begin(const uint32_t dwBaudRate, const UARTModes config)
  45:../cores/arduino/UARTClass.cpp **** {
  46:../cores/arduino/UARTClass.cpp ****   uint32_t modeReg = static_cast<uint32_t>(config) & 0x00000E00;
  47:../cores/arduino/UARTClass.cpp ****   init(dwBaudRate, modeReg | UART_MR_CHMODE_NORMAL);
  48:../cores/arduino/UARTClass.cpp **** }
  49:../cores/arduino/UARTClass.cpp **** 
  50:../cores/arduino/UARTClass.cpp **** void UARTClass::init(const uint32_t dwBaudRate, const uint32_t modeReg)
ARM GAS  /tmp/cc5e0BXI.s 			page 4


  51:../cores/arduino/UARTClass.cpp **** {
  52:../cores/arduino/UARTClass.cpp ****   // Configure PMC
  53:../cores/arduino/UARTClass.cpp ****   pmc_enable_periph_clk( _dwId );
  54:../cores/arduino/UARTClass.cpp **** 
  55:../cores/arduino/UARTClass.cpp **** #if !SAME70
  56:../cores/arduino/UARTClass.cpp ****   // Disable PDC channel
  57:../cores/arduino/UARTClass.cpp ****   _pUart->UART_PTCR = UART_PTCR_RXTDIS | UART_PTCR_TXTDIS;
  58:../cores/arduino/UARTClass.cpp **** #endif
  59:../cores/arduino/UARTClass.cpp **** 
  60:../cores/arduino/UARTClass.cpp ****   // Reset and disable receiver and transmitter
  61:../cores/arduino/UARTClass.cpp ****   _pUart->UART_CR = UART_CR_RSTRX | UART_CR_RSTTX | UART_CR_RXDIS | UART_CR_TXDIS;
  62:../cores/arduino/UARTClass.cpp **** 
  63:../cores/arduino/UARTClass.cpp ****   // Configure mode
  64:../cores/arduino/UARTClass.cpp ****   _pUart->UART_MR = modeReg;
  65:../cores/arduino/UARTClass.cpp **** 
  66:../cores/arduino/UARTClass.cpp ****   // Configure baudrate (asynchronous, no oversampling)
  67:../cores/arduino/UARTClass.cpp ****   const uint32_t br16 = dwBaudRate * 16;
  68:../cores/arduino/UARTClass.cpp ****   _pUart->UART_BRGR = (SystemCoreClock + (br16/2) - 1) / br16;
  69:../cores/arduino/UARTClass.cpp **** 
  70:../cores/arduino/UARTClass.cpp ****   // Make sure both ring buffers are initialized back to empty.
  71:../cores/arduino/UARTClass.cpp ****   _rx_buffer->_iHead = _rx_buffer->_iTail = 0;
  72:../cores/arduino/UARTClass.cpp ****   _tx_buffer->_iHead = _tx_buffer->_iTail = 0;
  73:../cores/arduino/UARTClass.cpp **** 
  74:../cores/arduino/UARTClass.cpp ****   // Configure interrupts
  75:../cores/arduino/UARTClass.cpp ****   _pUart->UART_IDR = 0xFFFFFFFF;
  76:../cores/arduino/UARTClass.cpp ****   _pUart->UART_IER = UART_IER_RXRDY | UART_IER_OVRE | UART_IER_FRAME;
  77:../cores/arduino/UARTClass.cpp **** 
  78:../cores/arduino/UARTClass.cpp ****   // Enable UART interrupt in NVIC
  79:../cores/arduino/UARTClass.cpp ****   NVIC_EnableIRQ(_dwIrq);
  80:../cores/arduino/UARTClass.cpp **** 
  81:../cores/arduino/UARTClass.cpp ****   // Enable receiver and transmitter
  82:../cores/arduino/UARTClass.cpp ****   _pUart->UART_CR = UART_CR_RXEN | UART_CR_TXEN;
  83:../cores/arduino/UARTClass.cpp **** }
  84:../cores/arduino/UARTClass.cpp **** 
  85:../cores/arduino/UARTClass.cpp **** void UARTClass::end( void )
  86:../cores/arduino/UARTClass.cpp **** {
  87:../cores/arduino/UARTClass.cpp ****   // Clear any received data
  88:../cores/arduino/UARTClass.cpp ****   _rx_buffer->_iHead = _rx_buffer->_iTail;
  89:../cores/arduino/UARTClass.cpp **** 
  90:../cores/arduino/UARTClass.cpp ****   // Wait for any outstanding data to be sent
  91:../cores/arduino/UARTClass.cpp ****   flush();
  92:../cores/arduino/UARTClass.cpp **** 
  93:../cores/arduino/UARTClass.cpp ****   // Disable UART interrupt in NVIC
  94:../cores/arduino/UARTClass.cpp ****   NVIC_DisableIRQ( _dwIrq );
  95:../cores/arduino/UARTClass.cpp **** 
  96:../cores/arduino/UARTClass.cpp ****   pmc_disable_periph_clk( _dwId );
  97:../cores/arduino/UARTClass.cpp **** }
  98:../cores/arduino/UARTClass.cpp **** 
  99:../cores/arduino/UARTClass.cpp **** void UARTClass::setInterruptPriority(uint32_t priority)
 100:../cores/arduino/UARTClass.cpp **** {
 101:../cores/arduino/UARTClass.cpp ****   NVIC_SetPriority(_dwIrq, priority & 0x0F);
 102:../cores/arduino/UARTClass.cpp **** }
 103:../cores/arduino/UARTClass.cpp **** 
 104:../cores/arduino/UARTClass.cpp **** uint32_t UARTClass::getInterruptPriority()
 105:../cores/arduino/UARTClass.cpp **** {
 106:../cores/arduino/UARTClass.cpp ****   return NVIC_GetPriority(_dwIrq);
 107:../cores/arduino/UARTClass.cpp **** }
ARM GAS  /tmp/cc5e0BXI.s 			page 5


 108:../cores/arduino/UARTClass.cpp **** 
 109:../cores/arduino/UARTClass.cpp **** int UARTClass::available( void )
 110:../cores/arduino/UARTClass.cpp **** {
  53              		.loc 2 110 0
  54              		.cfi_startproc
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
  58              	.LVL2:
 111:../cores/arduino/UARTClass.cpp ****   return (SERIAL_BUFFER_SIZE + _rx_buffer->_iHead - _rx_buffer->_iTail) % SERIAL_BUFFER_SIZE;
  59              		.loc 2 111 0
  60 0000 0369     		ldr	r3, [r0, #16]
  61 0002 D3F80002 		ldr	r0, [r3, #512]
  62              	.LVL3:
  63 0006 D3F80432 		ldr	r3, [r3, #516]
  64 000a C01A     		subs	r0, r0, r3
 112:../cores/arduino/UARTClass.cpp **** }
  65              		.loc 2 112 0
  66 000c C0F30800 		ubfx	r0, r0, #0, #9
  67 0010 7047     		bx	lr
  68              		.cfi_endproc
  69              	.LFE283:
  70              		.size	_ZN9UARTClass9availableEv, .-_ZN9UARTClass9availableEv
  71 0012 00BF     		.section	.text._ZN9UARTClass4peekEv,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_ZN9UARTClass4peekEv
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv5-d16
  79              		.type	_ZN9UARTClass4peekEv, %function
  80              	_ZN9UARTClass4peekEv:
  81              	.LFB285:
 113:../cores/arduino/UARTClass.cpp **** 
 114:../cores/arduino/UARTClass.cpp **** int UARTClass::availableForWrite(void)
 115:../cores/arduino/UARTClass.cpp **** {
 116:../cores/arduino/UARTClass.cpp ****   size_t head = _tx_buffer->_iHead;
 117:../cores/arduino/UARTClass.cpp ****   size_t tail = _tx_buffer->_iTail;
 118:../cores/arduino/UARTClass.cpp ****   if (head >= tail)
 119:../cores/arduino/UARTClass.cpp ****   {
 120:../cores/arduino/UARTClass.cpp **** 	  return SERIAL_BUFFER_SIZE - 1 - head + tail;
 121:../cores/arduino/UARTClass.cpp ****   }
 122:../cores/arduino/UARTClass.cpp ****   return tail - head - 1;
 123:../cores/arduino/UARTClass.cpp **** }
 124:../cores/arduino/UARTClass.cpp **** 
 125:../cores/arduino/UARTClass.cpp **** int UARTClass::peek( void )
 126:../cores/arduino/UARTClass.cpp **** {
  82              		.loc 2 126 0
  83              		.cfi_startproc
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87              	.LVL4:
 127:../cores/arduino/UARTClass.cpp ****   if ( _rx_buffer->_iHead == _rx_buffer->_iTail )
  88              		.loc 2 127 0
  89 0000 0369     		ldr	r3, [r0, #16]
ARM GAS  /tmp/cc5e0BXI.s 			page 6


  90 0002 D3F80012 		ldr	r1, [r3, #512]
  91 0006 D3F80422 		ldr	r2, [r3, #516]
  92 000a 9142     		cmp	r1, r2
  93 000c 04D0     		beq	.L5
 128:../cores/arduino/UARTClass.cpp ****   {
 129:../cores/arduino/UARTClass.cpp ****     return -1;
 130:../cores/arduino/UARTClass.cpp ****   }
 131:../cores/arduino/UARTClass.cpp **** 
 132:../cores/arduino/UARTClass.cpp ****   return _rx_buffer->_aucBuffer[_rx_buffer->_iTail];
  94              		.loc 2 132 0
  95 000e D3F80422 		ldr	r2, [r3, #516]
  96 0012 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
  97              	.LVL5:
  98 0014 C0B2     		uxtb	r0, r0
  99 0016 7047     		bx	lr
 100              	.LVL6:
 101              	.L5:
 129:../cores/arduino/UARTClass.cpp ****   }
 102              		.loc 2 129 0
 103 0018 4FF0FF30 		mov	r0, #-1
 104              	.LVL7:
 133:../cores/arduino/UARTClass.cpp **** }
 105              		.loc 2 133 0
 106 001c 7047     		bx	lr
 107              		.cfi_endproc
 108              	.LFE285:
 109              		.size	_ZN9UARTClass4peekEv, .-_ZN9UARTClass4peekEv
 110 001e 00BF     		.section	.text._ZN9UARTClass4readEv,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN9UARTClass4readEv
 114              		.syntax unified
 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv5-d16
 118              		.type	_ZN9UARTClass4readEv, %function
 119              	_ZN9UARTClass4readEv:
 120              	.LFB286:
 134:../cores/arduino/UARTClass.cpp **** 
 135:../cores/arduino/UARTClass.cpp **** int UARTClass::read( void )
 136:../cores/arduino/UARTClass.cpp **** {
 121              		.loc 2 136 0
 122              		.cfi_startproc
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126              	.LVL8:
 137:../cores/arduino/UARTClass.cpp ****   // if the head isn't ahead of the tail, we don't have any characters
 138:../cores/arduino/UARTClass.cpp ****   if ( _rx_buffer->_iHead == _rx_buffer->_iTail )
 127              		.loc 2 138 0
 128 0000 0369     		ldr	r3, [r0, #16]
 129 0002 D3F80012 		ldr	r1, [r3, #512]
 130 0006 D3F80422 		ldr	r2, [r3, #516]
 131 000a 9142     		cmp	r1, r2
 132 000c 0AD0     		beq	.L9
 139:../cores/arduino/UARTClass.cpp ****   {
 140:../cores/arduino/UARTClass.cpp ****     return -1;
ARM GAS  /tmp/cc5e0BXI.s 			page 7


 141:../cores/arduino/UARTClass.cpp ****   }
 142:../cores/arduino/UARTClass.cpp **** 
 143:../cores/arduino/UARTClass.cpp ****   uint8_t uc = _rx_buffer->_aucBuffer[_rx_buffer->_iTail];
 133              		.loc 2 143 0
 134 000e D3F80422 		ldr	r2, [r3, #516]
 135 0012 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
 136              	.LVL9:
 144:../cores/arduino/UARTClass.cpp ****   _rx_buffer->_iTail = (_rx_buffer->_iTail + 1) % SERIAL_BUFFER_SIZE;
 137              		.loc 2 144 0
 138 0014 D3F80422 		ldr	r2, [r3, #516]
 139 0018 0132     		adds	r2, r2, #1
 140 001a C2F30802 		ubfx	r2, r2, #0, #9
 141 001e C3F80422 		str	r2, [r3, #516]
 145:../cores/arduino/UARTClass.cpp ****   return uc;
 142              		.loc 2 145 0
 143 0022 7047     		bx	lr
 144              	.LVL10:
 145              	.L9:
 140:../cores/arduino/UARTClass.cpp ****   }
 146              		.loc 2 140 0
 147 0024 4FF0FF30 		mov	r0, #-1
 148              	.LVL11:
 146:../cores/arduino/UARTClass.cpp **** }
 149              		.loc 2 146 0
 150 0028 7047     		bx	lr
 151              		.cfi_endproc
 152              	.LFE286:
 153              		.size	_ZN9UARTClass4readEv, .-_ZN9UARTClass4readEv
 154 002a 00BF     		.section	.text._ZN9UARTClass5flushEv,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	_ZN9UARTClass5flushEv
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv5-d16
 162              		.type	_ZN9UARTClass5flushEv, %function
 163              	_ZN9UARTClass5flushEv:
 164              	.LFB287:
 147:../cores/arduino/UARTClass.cpp **** 
 148:../cores/arduino/UARTClass.cpp **** void UARTClass::flush( void )
 149:../cores/arduino/UARTClass.cpp **** {
 165              		.loc 2 149 0
 166              		.cfi_startproc
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              		@ link register save eliminated.
 170              	.LVL12:
 171 0000 4369     		ldr	r3, [r0, #20]
 172              	.L11:
 150:../cores/arduino/UARTClass.cpp ****   while (_tx_buffer->_iHead != _tx_buffer->_iTail); //wait for transmit data to be sent
 173              		.loc 2 150 0
 174 0002 D3F80012 		ldr	r1, [r3, #512]
 175 0006 D3F80422 		ldr	r2, [r3, #516]
 176 000a 9142     		cmp	r1, r2
 177 000c F9D1     		bne	.L11
 178 000e 8269     		ldr	r2, [r0, #24]
ARM GAS  /tmp/cc5e0BXI.s 			page 8


 179              	.L12:
 151:../cores/arduino/UARTClass.cpp ****   // Wait for transmission to complete
 152:../cores/arduino/UARTClass.cpp ****   while ((_pUart->UART_SR & UART_SR_TXRDY) != UART_SR_TXRDY)
 180              		.loc 2 152 0
 181 0010 5369     		ldr	r3, [r2, #20]
 182 0012 9B07     		lsls	r3, r3, #30
 183 0014 FCD5     		bpl	.L12
 153:../cores/arduino/UARTClass.cpp ****    ;
 154:../cores/arduino/UARTClass.cpp **** }
 184              		.loc 2 154 0
 185 0016 7047     		bx	lr
 186              		.cfi_endproc
 187              	.LFE287:
 188              		.size	_ZN9UARTClass5flushEv, .-_ZN9UARTClass5flushEv
 189              		.section	.text._ZN9UARTClass5writeEh,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_ZN9UARTClass5writeEh
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv5-d16
 197              		.type	_ZN9UARTClass5writeEh, %function
 198              	_ZN9UARTClass5writeEh:
 199              	.LFB288:
 155:../cores/arduino/UARTClass.cpp **** 
 156:../cores/arduino/UARTClass.cpp **** size_t UARTClass::write( const uint8_t uc_data )
 157:../cores/arduino/UARTClass.cpp **** {
 200              		.loc 2 157 0
 201              		.cfi_startproc
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205              	.LVL13:
 206 0000 30B4     		push	{r4, r5}
 207              		.cfi_def_cfa_offset 8
 208              		.cfi_offset 4, -8
 209              		.cfi_offset 5, -4
 210              	.LBB72:
 158:../cores/arduino/UARTClass.cpp ****   // Is the hardware currently busy?
 159:../cores/arduino/UARTClass.cpp ****   if ((_pUart->UART_SR & UART_SR_TXRDY) != UART_SR_TXRDY || _tx_buffer->_iTail != _tx_buffer->_iHea
 211              		.loc 2 159 0
 212 0002 8469     		ldr	r4, [r0, #24]
 213 0004 4069     		ldr	r0, [r0, #20]
 214              	.LVL14:
 215 0006 6369     		ldr	r3, [r4, #20]
 216 0008 9B07     		lsls	r3, r3, #30
 217 000a 05D5     		bpl	.L18
 218              		.loc 2 159 0 is_stmt 0 discriminator 2
 219 000c D0F80422 		ldr	r2, [r0, #516]
 220 0010 D0F80032 		ldr	r3, [r0, #512]
 221 0014 9A42     		cmp	r2, r3
 222 0016 12D0     		beq	.L27
 223              	.L18:
 224              	.LBB73:
 160:../cores/arduino/UARTClass.cpp ****   {
 161:../cores/arduino/UARTClass.cpp ****     // If busy we buffer
ARM GAS  /tmp/cc5e0BXI.s 			page 9


 162:../cores/arduino/UARTClass.cpp ****     const size_t hn = (_tx_buffer->_iHead + 1) % SERIAL_BUFFER_SIZE;
 225              		.loc 2 162 0 is_stmt 1
 226 0018 D0F80022 		ldr	r2, [r0, #512]
 227 001c 0132     		adds	r2, r2, #1
 228 001e C2F30802 		ubfx	r2, r2, #0, #9
 229              	.LVL15:
 230              	.L20:
 163:../cores/arduino/UARTClass.cpp ****     while (_tx_buffer->_iTail == hn)
 231              		.loc 2 163 0
 232 0022 D0F80432 		ldr	r3, [r0, #516]
 233 0026 9A42     		cmp	r2, r3
 234 0028 FBD0     		beq	.L20
 164:../cores/arduino/UARTClass.cpp ****       ; // Spin locks if we're about to overwrite the buffer. This continues once the data is sent
 165:../cores/arduino/UARTClass.cpp **** 
 166:../cores/arduino/UARTClass.cpp ****     _tx_buffer->_aucBuffer[_tx_buffer->_iHead] = uc_data;
 235              		.loc 2 166 0
 236 002a D0F80052 		ldr	r5, [r0, #512]
 167:../cores/arduino/UARTClass.cpp ****     _tx_buffer->_iHead = hn;
 168:../cores/arduino/UARTClass.cpp ****     // Make sure TX interrupt is enabled
 169:../cores/arduino/UARTClass.cpp ****     _pUart->UART_IER = UART_IER_TXRDY;
 237              		.loc 2 169 0
 238 002e 0223     		movs	r3, #2
 166:../cores/arduino/UARTClass.cpp ****     _tx_buffer->_iHead = hn;
 239              		.loc 2 166 0
 240 0030 4155     		strb	r1, [r0, r5]
 167:../cores/arduino/UARTClass.cpp ****     _tx_buffer->_iHead = hn;
 241              		.loc 2 167 0
 242 0032 C0F80022 		str	r2, [r0, #512]
 243              	.LBE73:
 244              	.LBE72:
 170:../cores/arduino/UARTClass.cpp ****   }
 171:../cores/arduino/UARTClass.cpp ****   else 
 172:../cores/arduino/UARTClass.cpp ****   {
 173:../cores/arduino/UARTClass.cpp ****      // Bypass buffering and send character directly
 174:../cores/arduino/UARTClass.cpp ****      _pUart->UART_THR = uc_data;
 175:../cores/arduino/UARTClass.cpp ****   }
 176:../cores/arduino/UARTClass.cpp ****   return 1;
 177:../cores/arduino/UARTClass.cpp **** }
 245              		.loc 2 177 0
 246 0036 0120     		movs	r0, #1
 247              	.LBB75:
 248              	.LBB74:
 169:../cores/arduino/UARTClass.cpp ****   }
 249              		.loc 2 169 0
 250 0038 A360     		str	r3, [r4, #8]
 251              	.LBE74:
 252              	.LBE75:
 253              		.loc 2 177 0
 254 003a 30BC     		pop	{r4, r5}
 255              		.cfi_remember_state
 256              		.cfi_restore 5
 257              		.cfi_restore 4
 258              		.cfi_def_cfa_offset 0
 259 003c 7047     		bx	lr
 260              	.LVL16:
 261              	.L27:
 262              		.cfi_restore_state
ARM GAS  /tmp/cc5e0BXI.s 			page 10


 263              	.LBB76:
 174:../cores/arduino/UARTClass.cpp ****   }
 264              		.loc 2 174 0
 265 003e E161     		str	r1, [r4, #28]
 266              	.LBE76:
 267              		.loc 2 177 0
 268 0040 0120     		movs	r0, #1
 269 0042 30BC     		pop	{r4, r5}
 270              		.cfi_restore 4
 271              		.cfi_restore 5
 272              		.cfi_def_cfa_offset 0
 273 0044 7047     		bx	lr
 274              		.cfi_endproc
 275              	.LFE288:
 276              		.size	_ZN9UARTClass5writeEh, .-_ZN9UARTClass5writeEh
 277 0046 00BF     		.section	.text._ZNK9UARTClass8canWriteEv,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZNK9UARTClass8canWriteEv
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv5-d16
 285              		.type	_ZNK9UARTClass8canWriteEv, %function
 286              	_ZNK9UARTClass8canWriteEv:
 287              	.LFB290:
 178:../cores/arduino/UARTClass.cpp **** 
 179:../cores/arduino/UARTClass.cpp **** size_t UARTClass::write(const uint8_t *buffer, size_t size)
 180:../cores/arduino/UARTClass.cpp **** {
 181:../cores/arduino/UARTClass.cpp **** 	size_t ret = size;
 182:../cores/arduino/UARTClass.cpp **** 	while (size != 0)
 183:../cores/arduino/UARTClass.cpp **** 	{
 184:../cores/arduino/UARTClass.cpp **** 		size_t written = _tx_buffer->storeBlock(buffer, size);
 185:../cores/arduino/UARTClass.cpp **** 		buffer += written;
 186:../cores/arduino/UARTClass.cpp **** 		size -= written;
 187:../cores/arduino/UARTClass.cpp **** 	    _pUart->UART_IER = UART_IER_TXRDY;
 188:../cores/arduino/UARTClass.cpp **** 	}
 189:../cores/arduino/UARTClass.cpp **** 	return ret;
 190:../cores/arduino/UARTClass.cpp **** }
 191:../cores/arduino/UARTClass.cpp **** 
 192:../cores/arduino/UARTClass.cpp **** size_t UARTClass::canWrite() const
 193:../cores/arduino/UARTClass.cpp **** {
 288              		.loc 2 193 0
 289              		.cfi_startproc
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293              	.LVL17:
 194:../cores/arduino/UARTClass.cpp **** 	return _tx_buffer->roomLeft();		// we may also be able to write 1 more byte direct to the UART, bu
 294              		.loc 2 194 0
 295 0000 4369     		ldr	r3, [r0, #20]
 296              	.LVL18:
 297              	.LBB77:
 298              	.LBB78:
 299              		.file 3 "../cores/arduino/RingBuffer.h"
   1:../cores/arduino/RingBuffer.h **** /*
   2:../cores/arduino/RingBuffer.h ****   Copyright (c) 2011 Arduino.  All right reserved.
ARM GAS  /tmp/cc5e0BXI.s 			page 11


   3:../cores/arduino/RingBuffer.h **** 
   4:../cores/arduino/RingBuffer.h ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/RingBuffer.h ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/RingBuffer.h ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/RingBuffer.h ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/RingBuffer.h **** 
   9:../cores/arduino/RingBuffer.h ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/RingBuffer.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/RingBuffer.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/RingBuffer.h ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/RingBuffer.h **** 
  14:../cores/arduino/RingBuffer.h ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/RingBuffer.h ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/RingBuffer.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/RingBuffer.h **** */
  18:../cores/arduino/RingBuffer.h **** 
  19:../cores/arduino/RingBuffer.h **** #ifndef _RING_BUFFER_
  20:../cores/arduino/RingBuffer.h **** #define _RING_BUFFER_
  21:../cores/arduino/RingBuffer.h **** 
  22:../cores/arduino/RingBuffer.h **** #include <cstdint>
  23:../cores/arduino/RingBuffer.h **** #include <cstddef>
  24:../cores/arduino/RingBuffer.h **** 
  25:../cores/arduino/RingBuffer.h **** // Define constants and variables for buffering incoming serial data.  We're
  26:../cores/arduino/RingBuffer.h **** // using a ring buffer, in which head is the index of the location
  27:../cores/arduino/RingBuffer.h **** // to which to write the next incoming character and tail is the index of the
  28:../cores/arduino/RingBuffer.h **** // location from which to read.
  29:../cores/arduino/RingBuffer.h **** const size_t SERIAL_BUFFER_SIZE = 512;
  30:../cores/arduino/RingBuffer.h **** 
  31:../cores/arduino/RingBuffer.h **** class RingBuffer
  32:../cores/arduino/RingBuffer.h **** {
  33:../cores/arduino/RingBuffer.h ****   public:
  34:../cores/arduino/RingBuffer.h ****     volatile uint8_t _aucBuffer[SERIAL_BUFFER_SIZE];
  35:../cores/arduino/RingBuffer.h ****     volatile size_t _iHead;
  36:../cores/arduino/RingBuffer.h ****     volatile size_t _iTail;
  37:../cores/arduino/RingBuffer.h **** 
  38:../cores/arduino/RingBuffer.h ****   public:
  39:../cores/arduino/RingBuffer.h ****     RingBuffer();
  40:../cores/arduino/RingBuffer.h ****     void store_char(uint8_t c);
  41:../cores/arduino/RingBuffer.h ****     size_t storeBlock(const uint8_t *data, size_t len);
  42:../cores/arduino/RingBuffer.h ****     size_t roomLeft() const;
  43:../cores/arduino/RingBuffer.h **** };
  44:../cores/arduino/RingBuffer.h **** 
  45:../cores/arduino/RingBuffer.h **** inline void RingBuffer::store_char(uint8_t c)
  46:../cores/arduino/RingBuffer.h **** {
  47:../cores/arduino/RingBuffer.h ****   size_t i = (_iHead + 1) % SERIAL_BUFFER_SIZE;
  48:../cores/arduino/RingBuffer.h **** 
  49:../cores/arduino/RingBuffer.h ****   // if we should be storing the received character into the location
  50:../cores/arduino/RingBuffer.h ****   // just before the tail (meaning that the head would advance to the
  51:../cores/arduino/RingBuffer.h ****   // current location of the tail), we're about to overflow the buffer
  52:../cores/arduino/RingBuffer.h ****   // and so we don't write the character or advance the head.
  53:../cores/arduino/RingBuffer.h ****   if (i != _iTail)
  54:../cores/arduino/RingBuffer.h ****   {
  55:../cores/arduino/RingBuffer.h ****     _aucBuffer[_iHead] = c;
  56:../cores/arduino/RingBuffer.h ****     _iHead = i;
  57:../cores/arduino/RingBuffer.h ****   }
  58:../cores/arduino/RingBuffer.h ****   else
  59:../cores/arduino/RingBuffer.h ****   {
ARM GAS  /tmp/cc5e0BXI.s 			page 12


  60:../cores/arduino/RingBuffer.h **** 	  _aucBuffer[(_iHead - 1) % SERIAL_BUFFER_SIZE] = 0x7F;		// replace the previous character by DEL 
  61:../cores/arduino/RingBuffer.h ****   }
  62:../cores/arduino/RingBuffer.h **** }
  63:../cores/arduino/RingBuffer.h **** 
  64:../cores/arduino/RingBuffer.h **** inline size_t RingBuffer::roomLeft() const
  65:../cores/arduino/RingBuffer.h **** {
  66:../cores/arduino/RingBuffer.h **** 	return (_iTail + (SERIAL_BUFFER_SIZE - 1) - _iHead) % SERIAL_BUFFER_SIZE;
 300              		.loc 3 66 0
 301 0002 D3F80402 		ldr	r0, [r3, #516]
 302              	.LVL19:
 303 0006 D3F80032 		ldr	r3, [r3, #512]
 304              	.LVL20:
 305 000a 00F2FF10 		addw	r0, r0, #511
 306 000e C01A     		subs	r0, r0, r3
 307              	.LBE78:
 308              	.LBE77:
 195:../cores/arduino/UARTClass.cpp **** }
 309              		.loc 2 195 0
 310 0010 C0F30800 		ubfx	r0, r0, #0, #9
 311 0014 7047     		bx	lr
 312              		.cfi_endproc
 313              	.LFE290:
 314              		.size	_ZNK9UARTClass8canWriteEv, .-_ZNK9UARTClass8canWriteEv
 315 0016 00BF     		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 316              		.align	1
 317              		.p2align 2,,3
 318              		.weak	_ZN9UARTClassD2Ev
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv5-d16
 323              		.type	_ZN9UARTClassD2Ev, %function
 324              	_ZN9UARTClassD2Ev:
 325              	.LFB293:
  38:../cores/arduino/UARTClass.h **** {
 326              		.loc 1 38 0
 327              		.cfi_startproc
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330              		@ link register save eliminated.
 331              	.LVL21:
  38:../cores/arduino/UARTClass.h **** {
 332              		.loc 1 38 0
 333 0000 7047     		bx	lr
 334              		.cfi_endproc
 335              	.LFE293:
 336              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
 337              		.weak	_ZN9UARTClassD1Ev
 338              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
 339 0002 00BF     		.section	.text._ZN9UARTClass3endEv,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN9UARTClass3endEv
 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv5-d16
ARM GAS  /tmp/cc5e0BXI.s 			page 13


 347              		.type	_ZN9UARTClass3endEv, %function
 348              	_ZN9UARTClass3endEv:
 349              	.LFB280:
  86:../cores/arduino/UARTClass.cpp ****   // Clear any received data
 350              		.loc 2 86 0
 351              		.cfi_startproc
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354              	.LVL22:
  88:../cores/arduino/UARTClass.cpp **** 
 355              		.loc 2 88 0
 356 0000 0369     		ldr	r3, [r0, #16]
  91:../cores/arduino/UARTClass.cpp **** 
 357              		.loc 2 91 0
 358 0002 0268     		ldr	r2, [r0]
  88:../cores/arduino/UARTClass.cpp **** 
 359              		.loc 2 88 0
 360 0004 D3F80412 		ldr	r1, [r3, #516]
  91:../cores/arduino/UARTClass.cpp **** 
 361              		.loc 2 91 0
 362 0008 D269     		ldr	r2, [r2, #28]
  86:../cores/arduino/UARTClass.cpp ****   // Clear any received data
 363              		.loc 2 86 0
 364 000a 10B5     		push	{r4, lr}
 365              		.cfi_def_cfa_offset 8
 366              		.cfi_offset 4, -8
 367              		.cfi_offset 14, -4
  86:../cores/arduino/UARTClass.cpp ****   // Clear any received data
 368              		.loc 2 86 0
 369 000c 0446     		mov	r4, r0
  88:../cores/arduino/UARTClass.cpp **** 
 370              		.loc 2 88 0
 371 000e C3F80012 		str	r1, [r3, #512]
  91:../cores/arduino/UARTClass.cpp **** 
 372              		.loc 2 91 0
 373 0012 9047     		blx	r2
 374              	.LVL23:
 375              	.LBB79:
 376              	.LBB80:
 377              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @file     core_cm7.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @brief    CMSIS Cortex-M7 Core Peripheral Access Layer Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @date     01. September 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions in binary form must reproduce the above copyright
ARM GAS  /tmp/cc5e0BXI.s 			page 14


  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __ICCARM__ )
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #pragma system_include  /* treat file as system include file for MISRA check */
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_GENERIC
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_GENERIC
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   CMSIS violates the following MISRA-C:2004 rules:
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function definitions in header files are used to allow 'inlining'.
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Unions are used for effective representation of core registers.
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function-like macros are used to allow more efficient code.
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 CMSIS definitions
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup Cortex_M7
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  CMSIS CM7 definitions */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_MAIN  (0x04)                                   /*!< [31:16] CMSIS HAL m
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_SUB   (0x00)                                   /*!< [15:0]  CMSIS HAL s
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION       ((__CM7_CMSIS_VERSION_MAIN << 16) | \
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                                     __CM7_CMSIS_VERSION_SUB          )     /*!< CMSIS HAL version n
ARM GAS  /tmp/cc5e0BXI.s 			page 15


  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORTEX_M                (0x07)                                   /*!< Cortex-M Core      
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if   defined ( __CC_ARM )
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __packed
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                    /*use -pc99 on compile line !<
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** __FPU_USED indicates whether an FPU is used or not.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __CC_ARM )
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TARGET_FPU_VFP
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
ARM GAS  /tmp/cc5e0BXI.s 			page 16


 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __ARMVFP__
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TI_VFP_SUPPORT__
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __FPU_VFP__
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )		/* Cosmic */
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if ( __CSMC__ & 0x400)		// FPU present for parser
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <stdint.h>                      /* standard types definitions                      */
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmInstr.h>                /* Core Instruction Access                         */
ARM GAS  /tmp/cc5e0BXI.s 			page 17


 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmFunc.h>                 /* Core Function Access                            */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmSimd.h>                 /* Compiler specific SIMD Intrinsics               */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif /* __CORE_CM7_H_GENERIC */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CMSIS_GENERIC
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_DEPENDANT
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_DEPENDANT
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* check device defines and use defaults */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined __CHECK_DEVICE_DEFINES
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __CM7_REV
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __CM7_REV               0x0000
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__CM7_REV not defined in device header file; using default!"
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __FPU_PRESENT
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_PRESENT             0
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __MPU_PRESENT
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __MPU_PRESENT             0
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __ICACHE_PRESENT
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __ICACHE_PRESENT          0
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__ICACHE_PRESENT not defined in device header file; using default!"
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DCACHE_PRESENT
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DCACHE_PRESENT          0
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DCACHE_PRESENT not defined in device header file; using default!"
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DTCM_PRESENT
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DTCM_PRESENT            0
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DTCM_PRESENT        not defined in device header file; using default!"
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __NVIC_PRIO_BITS
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __NVIC_PRIO_BITS          3
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __Vendor_SysTickConfig
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __Vendor_SysTickConfig    0
ARM GAS  /tmp/cc5e0BXI.s 			page 18


 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* IO definitions (access restrictions to peripheral registers) */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     <strong>IO Type Qualifiers</strong> are used
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li to specify the access to peripheral variables.
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li for automatic generation of peripheral register debug information.
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions                 */
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions                 */
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __O     volatile             /*!< Defines 'write only' permissions                */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions              */
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group Cortex_M7 */
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 Register Abstraction
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Register contain:
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Register
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SCB Register
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Register
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Register
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core MPU Register
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core FPU Register
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_core_register Defines and Type Definitions
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief Type definitions and defines for Cortex-M processor based devices.
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_CORE  Status and Control Registers
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief  Core Register type definitions.
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Application Program Status Register (APSR).
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved                           */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved                           */
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved                           */
ARM GAS  /tmp/cc5e0BXI.s 			page 19


 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } APSR_Type;
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } IPSR_Type;
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved                           */
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved                           */
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved                           */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } xPSR_Type;
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Control Registers (CONTROL).
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
ARM GAS  /tmp/cc5e0BXI.s 			page 20


 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CONTROL_Type;
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CORE */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the NVIC Registers
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register   
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[24];
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RSERVED1[24];
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register  
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[24];
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[24];
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register   
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[56];
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[644];
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }  NVIC_Type;
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Software Triggered Interrupt Register Definitions */
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Pos                 0                                          /*!< STIR: I
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL << NVIC_STIR_INTID_Pos)            /*!< STIR: I
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_NVIC */
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCB     System Control Block (SCB)
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control Block Registers
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control Block (SCB).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register             
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register    
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register         
ARM GAS  /tmp/cc5e0BXI.s 			page 21


 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register  
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  SHPR[12];                /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register       
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register     
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register       
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_PFR[2];               /*!< Offset: 0x040 (R/ )  Processor Feature Register      
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_DFR;                  /*!< Offset: 0x048 (R/ )  Debug Feature Register          
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_AFR;                  /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register      
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_MFR[4];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register   
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_ISAR[5];              /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CLIDR;                   /*!< Offset: 0x078 (R/ )  Cache Level ID register         
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CTR;                     /*!< Offset: 0x07C (R/ )  Cache Type register             
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CCSIDR;                  /*!< Offset: 0x080 (R/ )  Cache Size ID Register          
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSSELR;                  /*!< Offset: 0x084 (R/W)  Cache Size Selection Register   
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[93];
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0x200 ( /W)  Software Triggered Interrupt Reg
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[15];
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x240 (R/ )  Media and VFP Feature Register 0
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x244 (R/ )  Media and VFP Feature Register 1
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x248 (R/ )  Media and VFP Feature Register 1
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[1];
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIALLU;                 /*!< Offset: 0x250 ( /W)  I-Cache Invalidate All to PoU   
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED6[1];
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIMVAU;                 /*!< Offset: 0x258 ( /W)  I-Cache Invalidate by MVA to PoU
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCIMVAU;                 /*!< Offset: 0x25C ( /W)  D-Cache Invalidate by MVA to PoC
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCISW;                   /*!< Offset: 0x260 ( /W)  D-Cache Invalidate by Set-way   
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAU;                 /*!< Offset: 0x264 ( /W)  D-Cache Clean by MVA to PoU     
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAC;                 /*!< Offset: 0x268 ( /W)  D-Cache Clean by MVA to PoC     
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCSW;                   /*!< Offset: 0x26C ( /W)  D-Cache Clean by Set-way        
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCIMVAC;                /*!< Offset: 0x270 ( /W)  D-Cache Clean and Invalidate by 
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCISW;                  /*!< Offset: 0x274 ( /W)  D-Cache Clean and Invalidate by 
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[6];
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCMCR;                  /*!< Offset: 0x290 (R/W)  Instruction Tightly-Coupled Memo
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DTCMCR;                  /*!< Offset: 0x294 (R/W)  Data Tightly-Coupled Memory Cont
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBPCR;                  /*!< Offset: 0x298 (R/W)  AHBP Control Register           
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CACR;                    /*!< Offset: 0x29C (R/W)  L1 Cache Control Register       
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBSCR;                  /*!< Offset: 0x2A0 (R/W)  AHB Slave Control Register      
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED8[1];
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ABFSR;                   /*!< Offset: 0x2A8 (R/W)  Auxiliary Bus Fault Status Regis
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCB_Type;
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB CPUID Register Definitions */
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 22


 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Interrupt Control State Register Definitions */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Pos             11                                             /*!< SCB 
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Vector Table Offset Register Definitions */
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Pos                 7                                             /*!< SCB 
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Pos              8                                             /*!< SCB 
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 23


 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Pos             0                                             /*!< SCB 
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL << SCB_AIRCR_VECTRESET_Pos)               /*!< SCB 
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Control Register Definitions */
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configuration Control Register Definitions */
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Pos                      18                                            /*!< SCB 
 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Msk                     (1UL << SCB_CCR_BP_Pos)                        /*!< SCB 
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Pos                      17                                            /*!< SCB 
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Msk                     (1UL << SCB_CCR_IC_Pos)                        /*!< SCB 
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Pos                      16                                            /*!< SCB 
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Msk                     (1UL << SCB_CCR_DC_Pos)                        /*!< SCB 
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Pos               8                                             /*!< SCB 
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Pos               4                                             /*!< SCB 
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Pos            1                                             /*!< SCB 
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0                                             /*!< SCB 
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL << SCB_CCR_NONBASETHRDENA_Pos)            /*!< SCB 
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Handler Control and State Register Definitions */
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18                                             /*!< SCB 
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17                                             /*!< SCB 
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16                                             /*!< SCB 
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 24


 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14                                             /*!< SCB 
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13                                             /*!< SCB 
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12                                             /*!< SCB 
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11                                             /*!< SCB 
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Pos            10                                             /*!< SCB 
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Pos            8                                             /*!< SCB 
 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Pos             7                                             /*!< SCB 
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3                                             /*!< SCB 
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1                                             /*!< SCB 
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0                                             /*!< SCB 
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL << SCB_SHCSR_MEMFAULTACT_Pos)             /*!< SCB 
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configurable Fault Status Registers Definitions */
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Pos            16                                             /*!< SCB 
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8                                             /*!< SCB 
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0                                             /*!< SCB 
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL << SCB_CFSR_MEMFAULTSR_Pos)            /*!< SCB 
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Hard Fault Status Registers Definitions */
 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Pos              31                                             /*!< SCB 
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Pos                30                                             /*!< SCB 
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Pos                1                                             /*!< SCB 
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Debug Fault Status Register Definitions */
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 25


 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Msk                (1UL << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Level ID register */
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Pos                 27                                             /*!< SCB 
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Msk                 (7UL << SCB_CLIDR_LOUU_Pos)                    /*!< SCB 
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Pos                  24                                             /*!< SCB 
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Msk                  (7UL << SCB_CLIDR_FORMAT_Pos)                  /*!< SCB 
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Type register */
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Pos                 29                                             /*!< SCB 
 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Msk                 (7UL << SCB_CTR_FORMAT_Pos)                    /*!< SCB 
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Pos                    24                                             /*!< SCB 
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Msk                    (0xFUL << SCB_CTR_CWG_Pos)                     /*!< SCB 
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Pos                    20                                             /*!< SCB 
 669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Msk                    (0xFUL << SCB_CTR_ERG_Pos)                     /*!< SCB 
 670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Pos               16                                             /*!< SCB 
 672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Msk               (0xFUL << SCB_CTR_DMINLINE_Pos)                /*!< SCB 
 673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Pos                0                                             /*!< SCB 
 675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Msk               (0xFUL << SCB_CTR_IMINLINE_Pos)                /*!< SCB 
 676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register */
 678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Pos                  31                                             /*!< SCB 
 679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Msk                  (7UL << SCB_CCSIDR_WT_Pos)                     /*!< SCB 
 680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Pos                  30                                             /*!< SCB 
 682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Msk                  (7UL << SCB_CCSIDR_WB_Pos)                     /*!< SCB 
 683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Pos                  29                                             /*!< SCB 
 685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Msk                  (7UL << SCB_CCSIDR_RA_Pos)                     /*!< SCB 
 686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Pos                  28                                             /*!< SCB 
 688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Msk                  (7UL << SCB_CCSIDR_WA_Pos)                     /*!< SCB 
 689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Pos             13                                             /*!< SCB 
 691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Msk             (0x7FFFUL << SCB_CCSIDR_NUMSETS_Pos)           /*!< SCB 
 692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Pos        3                                             /*!< SCB 
 694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Msk       (0x3FFUL << SCB_CCSIDR_ASSOCIATIVITY_Pos)      /*!< SCB 
 695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Pos             0                                             /*!< SCB 
 697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Msk            (7UL << SCB_CCSIDR_LINESIZE_Pos)               /*!< SCB 
 698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size Selection Register */
 700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Pos                0                                             /*!< SCB 
 701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Msk               (1UL << SCB_CSSELR_LEVEL_Pos)                    /*!< SC
ARM GAS  /tmp/cc5e0BXI.s 			page 26


 702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Pos                  0                                             /*!< SCB 
 704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Msk                 (1UL << SCB_CSSELR_IND_Pos)                    /*!< SCB 
 705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Software Triggered Interrupt Register */
 707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Pos                  0                                             /*!< SCB 
 708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Msk                 (0x1FFUL << SCB_STIR_INTID_Pos)                /*!< SCB 
 709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Instruction Tightly-Coupled Memory Control Register*/
 711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Pos                   3                                             /*!< SCB 
 712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Msk                  (0xFUL << SCB_ITCMCR_SZ_Pos)                   /*!< SCB 
 713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Pos                2                                             /*!< SCB 
 715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Msk               (0x1UL << SCB_ITCMCR_RETEN_Pos)                /*!< SCB 
 716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Pos                  1                                             /*!< SCB 
 718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Msk                 (0x1UL << SCB_ITCMCR_RMW_Pos)                  /*!< SCB 
 719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Pos                   0                                             /*!< SCB 
 721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Msk                  (0x1UL << SCB_ITCMCR_EN_Pos)                   /*!< SCB 
 722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Data Tightly-Coupled Memory Control Registers */
 724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Pos                   3                                             /*!< SCB 
 725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Msk                  (0xFUL << SCB_DTCMCR_SZ_Pos)                   /*!< SCB 
 726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Pos                2                                             /*!< SCB 
 728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Msk               (1UL << SCB_DTCMCR_RETEN_Pos)                   /*!< SCB
 729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Pos                  1                                             /*!< SCB 
 731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Msk                 (1UL << SCB_DTCMCR_RMW_Pos)                    /*!< SCB 
 732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Pos                   0                                             /*!< SCB 
 734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Msk                  (1UL << SCB_DTCMCR_EN_Pos)                     /*!< SCB 
 735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBP Control Register */
 737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Pos                   1                                             /*!< SCB 
 738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Msk                  (7UL << SCB_AHBPCR_SZ_Pos)                     /*!< SCB 
 739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Pos                   0                                             /*!< SCB 
 741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Msk                  (1UL << SCB_AHBPCR_EN_Pos)                     /*!< SCB 
 742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* L1 Cache Control Register */
 744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Pos                2                                             /*!< SCB 
 745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Msk               (1UL << SCB_CACR_FORCEWT_Pos)                  /*!< SCB 
 746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Pos                  1                                             /*!< SCB 
 748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Msk                 (1UL << SCB_CACR_ECCEN_Pos)                    /*!< SCB 
 749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Pos                   0                                             /*!< SCB 
 751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Msk                  (1UL << SCB_CACR_SIWT_Pos)                     /*!< SCB 
 752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBS control register */
 754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Pos           11                                             /*!< SCB 
 755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Msk           (0x1FUL << SCB_AHBPCR_INITCOUNT_Pos)           /*!< SCB 
 756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Pos                 2                                             /*!< SCB 
 758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Msk                (0x1FFUL << SCB_AHBPCR_TPRI_Pos)               /*!< SCB 
ARM GAS  /tmp/cc5e0BXI.s 			page 27


 759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Pos                  0                                             /*!< SCB 
 761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Msk                 (3UL << SCB_AHBPCR_CTL_Pos)                    /*!< SCB 
 762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Bus Fault Status Register */
 764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Pos              8                                             /*!< SCB 
 765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Msk             (3UL << SCB_ABFSR_AXIMTYPE_Pos)                /*!< SCB 
 766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Pos                  4                                             /*!< SCB 
 768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Msk                 (1UL << SCB_ABFSR_EPPB_Pos)                    /*!< SCB 
 769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Pos                  3                                             /*!< SCB 
 771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Msk                 (1UL << SCB_ABFSR_AXIM_Pos)                    /*!< SCB 
 772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Pos                  2                                             /*!< SCB 
 774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Msk                 (1UL << SCB_ABFSR_AHBP_Pos)                    /*!< SCB 
 775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Pos                  1                                             /*!< SCB 
 777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Msk                 (1UL << SCB_ABFSR_DTCM_Pos)                    /*!< SCB 
 778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Pos                  0                                             /*!< SCB 
 780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Msk                 (1UL << SCB_ABFSR_ITCM_Pos)                    /*!< SCB 
 781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCB */
 783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control and ID Register not in the SCB
 788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 791:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control and ID Register not in the SCB.
 792:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 793:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 794:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 795:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 796:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ICTR;                    /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 797:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACTLR;                   /*!< Offset: 0x008 (R/W)  Auxiliary Control Register      
 798:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCnSCB_Type;
 799:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 800:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Interrupt Controller Type Register Definitions */
 801:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0                                          /*!< ICTR: I
 802:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL << SCnSCB_ICTR_INTLINESNUM_Pos)      /*!< ICTR: I
 803:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 804:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Control Register Definitions */
 805:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Pos    12                                          /*!< ACTLR: 
 806:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Msk    (1UL << SCnSCB_ACTLR_DISITMATBFLUSH_Pos)    /*!< ACTLR: 
 807:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 808:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Pos         11                                          /*!< ACTLR: 
 809:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Msk         (1UL << SCnSCB_ACTLR_DISRAMODE_Pos)         /*!< ACTLR: 
 810:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 811:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Pos         10                                          /*!< ACTLR: 
 812:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Msk         (1UL << SCnSCB_ACTLR_FPEXCODIS_Pos)         /*!< ACTLR: 
 813:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 814:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2                                          /*!< ACTLR: 
 815:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
ARM GAS  /tmp/cc5e0BXI.s 			page 28


 816:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 817:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0                                          /*!< ACTLR: 
 818:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL << SCnSCB_ACTLR_DISMCYCINT_Pos)        /*!< ACTLR: 
 819:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 820:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCnotSCB */
 821:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 822:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 823:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 824:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 825:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Timer Registers.
 826:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 827:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 828:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 829:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Timer (SysTick).
 830:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 831:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 832:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 833:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 834:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register   
 835:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register  
 836:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register    
 837:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SysTick_Type;
 838:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 839:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Control / Status Register Definitions */
 840:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 841:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 842:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 843:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 844:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 845:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 846:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 847:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 848:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 849:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 850:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 851:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 852:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Reload Register Definitions */
 853:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 854:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 855:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 856:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Current Register Definitions */
 857:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 858:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 859:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 860:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Calibration Register Definitions */
 861:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 862:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 863:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 864:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 865:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 866:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 867:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 868:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_CALIB_TENMS_Pos)        /*!< SysT
 869:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 870:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SysTick */
 871:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 872:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 29


 873:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 874:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 875:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Instrumentation Trace Macrocell (ITM)
 876:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 877:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 878:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 879:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 880:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 881:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 882:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 883:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  union
 884:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 885:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint8_t    u8;                  /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit         
 886:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint16_t   u16;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit        
 887:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint32_t   u32;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit        
 888:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   }  PORT [32];                          /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers     
 889:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[864];
 890:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TER;                     /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register       
 891:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[15];
 892:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TPR;                     /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register    
 893:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[15];
 894:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TCR;                     /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register      
 895:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[29];
 896:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t IWR;                     /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register  
 897:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t IRR;                     /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register   
 898:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IMCR;                    /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 899:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[43];
 900:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register        
 901:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register        
 902:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[6];
 903:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID4;                    /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 904:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID5;                    /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 905:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID6;                    /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 906:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID7;                    /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 907:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID0;                    /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 908:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID1;                    /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 909:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID2;                    /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 910:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID3;                    /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 911:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID0;                    /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 912:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID1;                    /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 913:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID2;                    /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
 914:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID3;                    /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 915:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } ITM_Type;
 916:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 917:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Privilege Register Definitions */
 918:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Pos                0                                             /*!< ITM 
 919:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL << ITM_TPR_PRIVMASK_Pos)                /*!< ITM 
 920:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 921:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Control Register Definitions */
 922:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Pos                   23                                             /*!< ITM 
 923:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 924:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 925:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Pos             16                                             /*!< ITM 
 926:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 927:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 928:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Pos                10                                             /*!< ITM 
 929:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
ARM GAS  /tmp/cc5e0BXI.s 			page 30


 930:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 931:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Pos              8                                             /*!< ITM 
 932:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 933:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 934:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Pos                  4                                             /*!< ITM 
 935:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 936:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 937:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Pos                  3                                             /*!< ITM 
 938:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 939:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 940:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Pos                 2                                             /*!< ITM 
 941:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 942:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 943:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Pos                   1                                             /*!< ITM 
 944:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 945:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 946:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Pos                  0                                             /*!< ITM 
 947:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Msk                 (1UL << ITM_TCR_ITMENA_Pos)                    /*!< ITM 
 948:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 949:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Write Register Definitions */
 950:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Pos                0                                             /*!< ITM 
 951:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL << ITM_IWR_ATVALIDM_Pos)                  /*!< ITM 
 952:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 953:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Read Register Definitions */
 954:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Pos                0                                             /*!< ITM 
 955:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Msk               (1UL << ITM_IRR_ATREADYM_Pos)                  /*!< ITM 
 956:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 957:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Mode Control Register Definitions */
 958:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Pos            0                                             /*!< ITM 
 959:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL << ITM_IMCR_INTEGRATION_Pos)              /*!< ITM 
 960:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 961:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Lock Status Register Definitions */
 962:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Pos                 2                                             /*!< ITM 
 963:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 964:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 965:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Pos                  1                                             /*!< ITM 
 966:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 967:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 968:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Pos                 0                                             /*!< ITM 
 969:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Msk                (1UL << ITM_LSR_Present_Pos)                   /*!< ITM 
 970:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 971:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_ITM */
 972:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 973:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 974:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 975:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 976:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Data Watchpoint and Trace (DWT)
 977:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 978:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 979:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 980:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 981:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 982:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 983:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 984:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  Control Register                
 985:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CYCCNT;                  /*!< Offset: 0x004 (R/W)  Cycle Count Register            
 986:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPICNT;                  /*!< Offset: 0x008 (R/W)  CPI Count Register              
ARM GAS  /tmp/cc5e0BXI.s 			page 31


 987:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t EXCCNT;                  /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 988:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SLEEPCNT;                /*!< Offset: 0x010 (R/W)  Sleep Count Register            
 989:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LSUCNT;                  /*!< Offset: 0x014 (R/W)  LSU Count Register              
 990:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FOLDCNT;                 /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 991:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PCSR;                    /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 992:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP0;                   /*!< Offset: 0x020 (R/W)  Comparator Register 0           
 993:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK0;                   /*!< Offset: 0x024 (R/W)  Mask Register 0                 
 994:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION0;               /*!< Offset: 0x028 (R/W)  Function Register 0             
 995:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 996:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP1;                   /*!< Offset: 0x030 (R/W)  Comparator Register 1           
 997:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK1;                   /*!< Offset: 0x034 (R/W)  Mask Register 1                 
 998:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION1;               /*!< Offset: 0x038 (R/W)  Function Register 1             
 999:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[1];
1000:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP2;                   /*!< Offset: 0x040 (R/W)  Comparator Register 2           
1001:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK2;                   /*!< Offset: 0x044 (R/W)  Mask Register 2                 
1002:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION2;               /*!< Offset: 0x048 (R/W)  Function Register 2             
1003:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[1];
1004:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP3;                   /*!< Offset: 0x050 (R/W)  Comparator Register 3           
1005:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK3;                   /*!< Offset: 0x054 (R/W)  Mask Register 3                 
1006:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION3;               /*!< Offset: 0x058 (R/W)  Function Register 3             
1007:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[981];
1008:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 (  W)  Lock Access Register            
1009:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R  )  Lock Status Register            
1010:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } DWT_Type;
1011:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1012:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Control Register Definitions */
1013:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Pos               28                                          /*!< DWT CTR
1014:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
1015:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1016:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Pos              27                                          /*!< DWT CTR
1017:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
1018:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1019:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26                                          /*!< DWT CTR
1020:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
1021:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1022:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Pos              25                                          /*!< DWT CTR
1023:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
1024:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1025:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Pos              24                                          /*!< DWT CTR
1026:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
1027:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1028:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Pos             22                                          /*!< DWT CTR
1029:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
1030:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1031:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21                                          /*!< DWT CTR
1032:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
1033:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1034:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Pos             20                                          /*!< DWT CTR
1035:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
1036:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1037:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19                                          /*!< DWT CTR
1038:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
1039:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1040:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Pos             18                                          /*!< DWT CTR
1041:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
1042:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1043:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Pos             17                                          /*!< DWT CTR
ARM GAS  /tmp/cc5e0BXI.s 			page 32


1044:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
1045:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1046:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Pos             16                                          /*!< DWT CTR
1047:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
1048:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1049:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12                                          /*!< DWT CTR
1050:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
1051:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1052:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Pos               10                                          /*!< DWT CTR
1053:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
1054:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1055:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Pos                 9                                          /*!< DWT CTR
1056:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
1057:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1058:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Pos               5                                          /*!< DWT CTR
1059:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
1060:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1061:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Pos             1                                          /*!< DWT CTR
1062:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
1063:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1064:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Pos              0                                          /*!< DWT CTR
1065:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL << DWT_CTRL_CYCCNTENA_Pos)           /*!< DWT CTR
1066:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1067:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT CPI Count Register Definitions */
1068:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Pos               0                                          /*!< DWT CPI
1069:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL << DWT_CPICNT_CPICNT_Pos)           /*!< DWT CPI
1070:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1071:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Exception Overhead Count Register Definitions */
1072:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Pos               0                                          /*!< DWT EXC
1073:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL << DWT_EXCCNT_EXCCNT_Pos)           /*!< DWT EXC
1074:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1075:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Sleep Count Register Definitions */
1076:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0                                          /*!< DWT SLE
1077:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL << DWT_SLEEPCNT_SLEEPCNT_Pos)       /*!< DWT SLE
1078:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1079:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT LSU Count Register Definitions */
1080:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Pos               0                                          /*!< DWT LSU
1081:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL << DWT_LSUCNT_LSUCNT_Pos)           /*!< DWT LSU
1082:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1083:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Folded-instruction Count Register Definitions */
1084:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0                                          /*!< DWT FOL
1085:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL << DWT_FOLDCNT_FOLDCNT_Pos)         /*!< DWT FOL
1086:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1087:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Mask Register Definitions */
1088:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Pos                   0                                          /*!< DWT MAS
1089:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL << DWT_MASK_MASK_Pos)               /*!< DWT MAS
1090:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1091:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Function Register Definitions */
1092:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Pos           24                                          /*!< DWT FUN
1093:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1094:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1095:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16                                          /*!< DWT FUN
1096:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1097:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1098:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12                                          /*!< DWT FUN
1099:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
1100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 33


1101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10                                          /*!< DWT FUN
1102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9                                          /*!< DWT FUN
1105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8                                          /*!< DWT FUN
1108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7                                          /*!< DWT FUN
1111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5                                          /*!< DWT FUN
1114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Pos           0                                          /*!< DWT FUN
1117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL << DWT_FUNCTION_FUNCTION_Pos)        /*!< DWT FUN
1118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_DWT */
1120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Trace Port Interface (TPI)
1125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Trace Port Interface Register (TPI).
1129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SSPSR;                   /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSPSR;                   /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[2];
1135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACPR;                    /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[55];
1137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SPPR;                    /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[131];
1139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FFSR;                    /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FFCR;                    /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FSCR;                    /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
1142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[759];
1143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TRIGGER;                 /*!< Offset: 0xEE8 (R/ )  TRIGGER */
1144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO0;                   /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR2;               /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[1];
1147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR0;               /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO1;                   /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCTRL;                  /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[39];
1151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMSET;                /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMCLR;                /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[8];
1154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVID;                   /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVTYPE;                 /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } TPI_Type;
1157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 34


1158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Pos              0                                          /*!< TPI ACP
1160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL << TPI_ACPR_PRESCALER_Pos)        /*!< TPI ACP
1161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Selected Pin Protocol Register Definitions */
1163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Pos                 0                                          /*!< TPI SPP
1164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL << TPI_SPPR_TXMODE_Pos)              /*!< TPI SPP
1165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Status Register Definitions */
1167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Pos              3                                          /*!< TPI FFS
1168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Pos              2                                          /*!< TPI FFS
1171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Pos              1                                          /*!< TPI FFS
1174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Pos               0                                          /*!< TPI FFS
1177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL << TPI_FFSR_FlInProg_Pos)            /*!< TPI FFS
1178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Control Register Definitions */
1180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Pos                 8                                          /*!< TPI FFC
1181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Pos                1                                          /*!< TPI FFC
1184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI TRIGGER Register Definitions */
1187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Pos             0                                          /*!< TPI TRI
1188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL << TPI_TRIGGER_TRIGGER_Pos)          /*!< TPI TRI
1189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
1199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Pos                 16                                          /*!< TPI FIF
1204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Pos                  8                                          /*!< TPI FIF
1207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Pos                  0                                          /*!< TPI FIF
1210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL << TPI_FIFO0_ETM0_Pos)              /*!< TPI FIF
1211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR2 Register Definitions */
1213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0                                          /*!< TPI ITA
1214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL << TPI_ITATBCTR2_ATREADY_Pos)        /*!< TPI ITA
ARM GAS  /tmp/cc5e0BXI.s 			page 35


1215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Pos                 16                                          /*!< TPI FIF
1230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Pos                  8                                          /*!< TPI FIF
1233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Pos                  0                                          /*!< TPI FIF
1236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL << TPI_FIFO1_ITM0_Pos)              /*!< TPI FIF
1237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR0 Register Definitions */
1239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0                                          /*!< TPI ITA
1240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL << TPI_ITATBCTR0_ATREADY_Pos)        /*!< TPI ITA
1241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration Mode Control Register Definitions */
1243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Pos                 0                                          /*!< TPI ITC
1244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL << TPI_ITCTRL_Mode_Pos)              /*!< TPI ITC
1245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVID Register Definitions */
1247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Pos             11                                          /*!< TPI DEV
1248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Pos            10                                          /*!< TPI DEV
1251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Pos             9                                          /*!< TPI DEV
1254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Pos              6                                          /*!< TPI DEV
1257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Pos             5                                          /*!< TPI DEV
1260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Pos          0                                          /*!< TPI DEV
1263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL << TPI_DEVID_NrTraceInput_Pos)      /*!< TPI DEV
1264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVTYPE Register Definitions */
1266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Pos             0                                          /*!< TPI DEV
1267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL << TPI_DEVTYPE_SubType_Pos)          /*!< TPI DEV
1268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Pos           4                                          /*!< TPI DEV
1270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 36


1272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_TPI */
1273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Memory Protection Unit (MPU)
1279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Memory Protection Unit (MPU).
1283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TYPE;                    /*!< Offset: 0x000 (R/ )  MPU Type Register               
1287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x004 (R/W)  MPU Control Register            
1288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RNR;                     /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register      
1289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR;                    /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR;                    /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A1;                 /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A1;                 /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A2;                 /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A2;                 /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A3;                 /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A3;                 /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } MPU_Type;
1298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Type Register */
1300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Pos               16                                             /*!< MPU 
1301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Pos                8                                             /*!< MPU 
1304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Pos               0                                             /*!< MPU 
1307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL << MPU_TYPE_SEPARATE_Pos)                 /*!< MPU 
1308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Control Register */
1310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2                                             /*!< MPU 
1311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Pos               1                                             /*!< MPU 
1314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Pos                 0                                             /*!< MPU 
1317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Msk                (1UL << MPU_CTRL_ENABLE_Pos)                   /*!< MPU 
1318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Number Register */
1320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Pos                  0                                             /*!< MPU 
1321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL << MPU_RNR_REGION_Pos)                 /*!< MPU 
1322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Base Address Register */
1324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Pos                   5                                             /*!< MPU 
1325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Pos                  4                                             /*!< MPU 
1328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
ARM GAS  /tmp/cc5e0BXI.s 			page 37


1329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Pos                 0                                             /*!< MPU 
1331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Msk                (0xFUL << MPU_RBAR_REGION_Pos)                 /*!< MPU 
1332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Attribute and Size Register */
1334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Pos                 16                                             /*!< MPU 
1335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Pos                    28                                             /*!< MPU 
1338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Pos                    24                                             /*!< MPU 
1341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Pos                   19                                             /*!< MPU 
1344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Pos                     18                                             /*!< MPU 
1347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Pos                     17                                             /*!< MPU 
1350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Pos                     16                                             /*!< MPU 
1353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Pos                    8                                             /*!< MPU 
1356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Pos                   1                                             /*!< MPU 
1359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Pos                 0                                             /*!< MPU 
1362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Msk                (1UL << MPU_RASR_ENABLE_Pos)                   /*!< MPU 
1363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_MPU */
1365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Floating Point Unit (FPU)
1372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Floating Point Unit (FPU).
1376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
1380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCCR;                   /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCAR;                   /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPDSCR;                  /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
1385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x018 (R/ )  Media and FP Feature Register 2 
ARM GAS  /tmp/cc5e0BXI.s 			page 38


1386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } FPU_Type;
1387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Control Register */
1389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Pos                31                                             /*!< FPCC
1390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Pos                30                                             /*!< FPCC
1393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Pos                8                                             /*!< FPCC
1396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Pos                 6                                             /*!< FPCC
1399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Pos                 5                                             /*!< FPCC
1402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Pos                 4                                             /*!< FPCC
1405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Pos                3                                             /*!< FPCC
1408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Pos                  1                                             /*!< FPCC
1411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Pos                0                                             /*!< FPCC
1414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL << FPU_FPCCR_LSPACT_Pos)                  /*!< FPCC
1415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Address Register */
1417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Pos               3                                             /*!< FPCA
1418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Default Status Control Register */
1421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Pos                 26                                             /*!< FPDS
1422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Pos                  25                                             /*!< FPDS
1425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Pos                  24                                             /*!< FPDS
1428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Pos               22                                             /*!< FPDS
1431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 0 */
1434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28                                             /*!< MVFR
1435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Pos        24                                             /*!< MVFR
1438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Pos          20                                             /*!< MVFR
1441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
1442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 39


1443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Pos               16                                             /*!< MVFR
1444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12                                             /*!< MVFR
1447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Pos      8                                             /*!< MVFR
1450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Pos      4                                             /*!< MVFR
1453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0                                             /*!< MVFR
1456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL << FPU_MVFR0_A_SIMD_registers_Pos)      /*!< MVFR
1457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 1 */
1459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28                                             /*!< MVFR
1460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Pos              24                                             /*!< MVFR
1463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4                                             /*!< MVFR
1466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Pos              0                                             /*!< MVFR
1469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL << FPU_MVFR1_FtZ_mode_Pos)              /*!< MVFR
1470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 2 */
1472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_FPU */
1474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Core Debug Registers
1480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Core Debug Register (CoreDebug).
1484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DHCSR;                   /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCRSR;                   /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DCRDR;                   /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DEMCR;                   /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CoreDebug_Type;
1492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Halting Control and Status Register */
1494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
1495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
1498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 40


1500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
1501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
1504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
1507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
1510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
1513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5                                             /*!< Core
1516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
1519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
1522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
1525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
1528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
1529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Core Register Selector Register */
1531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
1532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
1535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
1536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Exception and Monitor Control Register */
1538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24                                             /*!< Core
1539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19                                             /*!< Core
1542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18                                             /*!< Core
1545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17                                             /*!< Core
1548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16                                             /*!< Core
1551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
1554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9                                             /*!< Core
ARM GAS  /tmp/cc5e0BXI.s 			page 41


1557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8                                             /*!< Core
1560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7                                             /*!< Core
1563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6                                             /*!< Core
1566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5                                             /*!< Core
1569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4                                             /*!< Core
1572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
1575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
1576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CoreDebug */
1578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
1581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_core_base     Core Definitions
1582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Definitions for base addresses, unions, and structures.
1583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Memory mapping of Cortex-M4 Hardware */
1587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address        
1589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address        
1590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address        
1591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address    
1593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address       
1594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
1598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit  
1607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit  
1608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU_BASE          (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit     
1612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU               ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit     
1613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
ARM GAS  /tmp/cc5e0BXI.s 			page 42


1614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} */
1616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
1620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                Hardware Abstraction Layer
1621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Function Interface contains:
1622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Functions
1623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Functions
1624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Functions
1625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register Access Functions
1626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
1627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
1629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##########################   NVIC functions  #################################### */
1633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
1634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that manage interrupts and exceptions via the NVIC.
1636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     @{
1637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Priority Grouping
1640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function sets the priority grouping field using the required unlock sequence.
1642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Only values from 0..7 are used.
1644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   In case of a conflict between priority grouping and available
1645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      PriorityGroup  Priority grouping field.
1648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t reg_value;
1652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 a
1653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
1655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to chan
1656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  (reg_value                                 |
1657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
1658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 (PriorityGroupTmp << 8));                                     /* Insert write key a
1659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SCB->AIRCR =  reg_value;
1660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Priority Grouping
1664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function reads the priority grouping field from the NVIC Interrupt Controller.
1666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
1670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
ARM GAS  /tmp/cc5e0BXI.s 			page 43


1671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return ((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos);   /* read priority grou
1672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Enable External Interrupt
1676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function enables a device-specific interrupt in the NVIC interrupt controller.
1678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  enable interrupt */
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32
1685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Disable External Interrupt
1689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function disables a device-specific interrupt in the NVIC interrupt controller.
1691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
 378              		.loc 4 1696 0
 379 0014 0121     		movs	r1, #1
 380              	.LBE80:
 381              	.LBE79:
  94:../cores/arduino/UARTClass.cpp **** 
 382              		.loc 2 94 0
 383 0016 94F91C30 		ldrsb	r3, [r4, #28]
 384              	.LVL24:
 385              	.LBB82:
 386              	.LBB81:
 387              		.loc 4 1696 0
 388 001a 0748     		ldr	r0, .L32
 389 001c 5A09     		lsrs	r2, r3, #5
 390 001e 03F01F03 		and	r3, r3, #31
 391              	.LVL25:
 392 0022 2032     		adds	r2, r2, #32
 393 0024 01FA03F3 		lsl	r3, r1, r3
 394 0028 40F82230 		str	r3, [r0, r2, lsl #2]
 395              	.LVL26:
 396              	.LBE81:
 397              	.LBE82:
  96:../cores/arduino/UARTClass.cpp **** }
 398              		.loc 2 96 0
 399 002c 206A     		ldr	r0, [r4, #32]
  97:../cores/arduino/UARTClass.cpp **** 
 400              		.loc 2 97 0
 401 002e BDE81040 		pop	{r4, lr}
 402              		.cfi_restore 14
 403              		.cfi_restore 4
 404              		.cfi_def_cfa_offset 0
 405              	.LVL27:
ARM GAS  /tmp/cc5e0BXI.s 			page 44


  96:../cores/arduino/UARTClass.cpp **** }
 406              		.loc 2 96 0
 407 0032 FFF7FEBF 		b	pmc_disable_periph_clk
 408              	.LVL28:
 409              	.L33:
 410 0036 00BF     		.align	2
 411              	.L32:
 412 0038 00E100E0 		.word	-536813312
 413              		.cfi_endproc
 414              	.LFE280:
 415              		.size	_ZN9UARTClass3endEv, .-_ZN9UARTClass3endEv
 416              		.section	.text._ZN9UARTClass5writeEPKhj,"ax",%progbits
 417              		.align	1
 418              		.p2align 2,,3
 419              		.global	_ZN9UARTClass5writeEPKhj
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu fpv5-d16
 424              		.type	_ZN9UARTClass5writeEPKhj, %function
 425              	_ZN9UARTClass5writeEPKhj:
 426              	.LFB289:
 180:../cores/arduino/UARTClass.cpp **** 	size_t ret = size;
 427              		.loc 2 180 0
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              	.LVL29:
 432 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 433              		.cfi_def_cfa_offset 24
 434              		.cfi_offset 4, -24
 435              		.cfi_offset 5, -20
 436              		.cfi_offset 6, -16
 437              		.cfi_offset 7, -12
 438              		.cfi_offset 8, -8
 439              		.cfi_offset 14, -4
 182:../cores/arduino/UARTClass.cpp **** 	{
 440              		.loc 2 182 0
 441 0004 9046     		mov	r8, r2
 442 0006 6AB1     		cbz	r2, .L39
 443 0008 0646     		mov	r6, r0
 444 000a 0D46     		mov	r5, r1
 445 000c 1446     		mov	r4, r2
 446              	.LBB83:
 187:../cores/arduino/UARTClass.cpp **** 	}
 447              		.loc 2 187 0
 448 000e 0227     		movs	r7, #2
 449              	.LVL30:
 450              	.L37:
 184:../cores/arduino/UARTClass.cpp **** 		buffer += written;
 451              		.loc 2 184 0
 452 0010 2246     		mov	r2, r4
 453 0012 2946     		mov	r1, r5
 454 0014 7069     		ldr	r0, [r6, #20]
 455 0016 FFF7FEFF 		bl	_ZN10RingBuffer10storeBlockEPKhj
 456              	.LVL31:
 187:../cores/arduino/UARTClass.cpp **** 	}
ARM GAS  /tmp/cc5e0BXI.s 			page 45


 457              		.loc 2 187 0
 458 001a B369     		ldr	r3, [r6, #24]
 459              	.LBE83:
 182:../cores/arduino/UARTClass.cpp **** 	{
 460              		.loc 2 182 0
 461 001c 241A     		subs	r4, r4, r0
 462              	.LVL32:
 463              	.LBB84:
 185:../cores/arduino/UARTClass.cpp **** 		size -= written;
 464              		.loc 2 185 0
 465 001e 0544     		add	r5, r5, r0
 466              	.LVL33:
 187:../cores/arduino/UARTClass.cpp **** 	}
 467              		.loc 2 187 0
 468 0020 9F60     		str	r7, [r3, #8]
 469              	.LBE84:
 182:../cores/arduino/UARTClass.cpp **** 	{
 470              		.loc 2 182 0
 471 0022 F5D1     		bne	.L37
 472              	.LVL34:
 473              	.L39:
 190:../cores/arduino/UARTClass.cpp **** 
 474              		.loc 2 190 0
 475 0024 4046     		mov	r0, r8
 476 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 477              		.cfi_endproc
 478              	.LFE289:
 479              		.size	_ZN9UARTClass5writeEPKhj, .-_ZN9UARTClass5writeEPKhj
 480 002a 00BF     		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 481              		.align	1
 482              		.p2align 2,,3
 483              		.weak	_ZN9UARTClassD0Ev
 484              		.syntax unified
 485              		.thumb
 486              		.thumb_func
 487              		.fpu fpv5-d16
 488              		.type	_ZN9UARTClassD0Ev, %function
 489              	_ZN9UARTClassD0Ev:
 490              	.LFB295:
  38:../cores/arduino/UARTClass.h **** {
 491              		.loc 1 38 0
 492              		.cfi_startproc
 493              		@ args = 0, pretend = 0, frame = 0
 494              		@ frame_needed = 0, uses_anonymous_args = 0
 495              	.LVL35:
 496 0000 10B5     		push	{r4, lr}
 497              		.cfi_def_cfa_offset 8
 498              		.cfi_offset 4, -8
 499              		.cfi_offset 14, -4
  38:../cores/arduino/UARTClass.h **** {
 500              		.loc 1 38 0
 501 0002 0446     		mov	r4, r0
 502 0004 2421     		movs	r1, #36
 503 0006 FFF7FEFF 		bl	_ZdlPvj
 504              	.LVL36:
 505 000a 2046     		mov	r0, r4
 506 000c 10BD     		pop	{r4, pc}
ARM GAS  /tmp/cc5e0BXI.s 			page 46


 507              		.cfi_endproc
 508              	.LFE295:
 509              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 510 000e 00BF     		.section	.text._ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_,"ax",%progbits
 511              		.align	1
 512              		.p2align 2,,3
 513              		.global	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu fpv5-d16
 518              		.type	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, %function
 519              	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_:
 520              	.LFB275:
  27:../cores/arduino/UARTClass.cpp **** {
 521              		.loc 2 27 0
 522              		.cfi_startproc
 523              		@ args = 8, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526              	.LVL37:
 527 0000 F0B4     		push	{r4, r5, r6, r7}
 528              		.cfi_def_cfa_offset 16
 529              		.cfi_offset 4, -16
 530              		.cfi_offset 5, -12
 531              		.cfi_offset 6, -8
 532              		.cfi_offset 7, -4
 533              	.LBB85:
 534              	.LBB86:
 535              	.LBB87:
 536              	.LBB88:
 537              	.LBB89:
 538              	.LBB90:
 539              		.file 5 "../cores/arduino/Print.h"
   1:../cores/arduino/Print.h **** /*
   2:../cores/arduino/Print.h ****   Print.h - Base class that provides print() and println()
   3:../cores/arduino/Print.h ****   Copyright (c) 2008 David A. Mellis.  All right reserved.
   4:../cores/arduino/Print.h **** 
   5:../cores/arduino/Print.h ****   This library is free software; you can redistribute it and/or
   6:../cores/arduino/Print.h ****   modify it under the terms of the GNU Lesser General Public
   7:../cores/arduino/Print.h ****   License as published by the Free Software Foundation; either
   8:../cores/arduino/Print.h ****   version 2.1 of the License, or (at your option) any later version.
   9:../cores/arduino/Print.h **** 
  10:../cores/arduino/Print.h ****   This library is distributed in the hope that it will be useful,
  11:../cores/arduino/Print.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:../cores/arduino/Print.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  13:../cores/arduino/Print.h ****   Lesser General Public License for more details.
  14:../cores/arduino/Print.h **** 
  15:../cores/arduino/Print.h ****   You should have received a copy of the GNU Lesser General Public
  16:../cores/arduino/Print.h ****   License along with this library; if not, write to the Free Software
  17:../cores/arduino/Print.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  18:../cores/arduino/Print.h **** */
  19:../cores/arduino/Print.h **** 
  20:../cores/arduino/Print.h **** #ifndef Print_h
  21:../cores/arduino/Print.h **** #define Print_h
  22:../cores/arduino/Print.h **** 
  23:../cores/arduino/Print.h **** #include <inttypes.h>
ARM GAS  /tmp/cc5e0BXI.s 			page 47


  24:../cores/arduino/Print.h **** #include <stdio.h> // for size_t
  25:../cores/arduino/Print.h **** #include <string.h>
  26:../cores/arduino/Print.h **** 
  27:../cores/arduino/Print.h **** #include "Printable.h"
  28:../cores/arduino/Print.h **** 
  29:../cores/arduino/Print.h **** #define DEC 10
  30:../cores/arduino/Print.h **** #define HEX 16
  31:../cores/arduino/Print.h **** #define OCT 8
  32:../cores/arduino/Print.h **** #define BIN 2
  33:../cores/arduino/Print.h **** 
  34:../cores/arduino/Print.h **** class Print
  35:../cores/arduino/Print.h **** {
  36:../cores/arduino/Print.h **** private:
  37:../cores/arduino/Print.h **** 	int write_error;
  38:../cores/arduino/Print.h **** 	size_t printNumber(unsigned long, uint8_t);
  39:../cores/arduino/Print.h **** 	size_t printFloat(double, uint8_t);
  40:../cores/arduino/Print.h **** 
  41:../cores/arduino/Print.h **** protected:
  42:../cores/arduino/Print.h **** 	void setWriteError(int err = 1) { write_error = err; }
  43:../cores/arduino/Print.h **** 
  44:../cores/arduino/Print.h **** public:
  45:../cores/arduino/Print.h ****     Print() : write_error(0) {}
 540              		.loc 5 45 0
 541 0002 0025     		movs	r5, #0
 542              	.LBE90:
 543              	.LBE89:
 544              		.file 6 "../cores/arduino/Stream.h"
   1:../cores/arduino/Stream.h **** /*
   2:../cores/arduino/Stream.h ****   Stream.h - base class for character-based streams.
   3:../cores/arduino/Stream.h ****   Copyright (c) 2010 David A. Mellis.  All right reserved.
   4:../cores/arduino/Stream.h **** 
   5:../cores/arduino/Stream.h ****   This library is free software; you can redistribute it and/or
   6:../cores/arduino/Stream.h ****   modify it under the terms of the GNU Lesser General Public
   7:../cores/arduino/Stream.h ****   License as published by the Free Software Foundation; either
   8:../cores/arduino/Stream.h ****   version 2.1 of the License, or (at your option) any later version.
   9:../cores/arduino/Stream.h **** 
  10:../cores/arduino/Stream.h ****   This library is distributed in the hope that it will be useful,
  11:../cores/arduino/Stream.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:../cores/arduino/Stream.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  13:../cores/arduino/Stream.h ****   Lesser General Public License for more details.
  14:../cores/arduino/Stream.h **** 
  15:../cores/arduino/Stream.h ****   You should have received a copy of the GNU Lesser General Public
  16:../cores/arduino/Stream.h ****   License along with this library; if not, write to the Free Software
  17:../cores/arduino/Stream.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  18:../cores/arduino/Stream.h **** 
  19:../cores/arduino/Stream.h ****   parsing functions based on TextFinder library by Michael Margolis
  20:../cores/arduino/Stream.h **** */
  21:../cores/arduino/Stream.h **** 
  22:../cores/arduino/Stream.h **** #ifndef Stream_h
  23:../cores/arduino/Stream.h **** #define Stream_h
  24:../cores/arduino/Stream.h **** 
  25:../cores/arduino/Stream.h **** #include <inttypes.h>
  26:../cores/arduino/Stream.h **** #include "Print.h"
  27:../cores/arduino/Stream.h **** 
  28:../cores/arduino/Stream.h **** // compatability macros for testing
  29:../cores/arduino/Stream.h **** /*
  30:../cores/arduino/Stream.h **** #define   getInt()            parseInt()
ARM GAS  /tmp/cc5e0BXI.s 			page 48


  31:../cores/arduino/Stream.h **** #define   getInt(skipChar)    parseInt(skipchar)
  32:../cores/arduino/Stream.h **** #define   getFloat()          parseFloat()
  33:../cores/arduino/Stream.h **** #define   getFloat(skipChar)  parseFloat(skipChar)
  34:../cores/arduino/Stream.h **** #define   getString( pre_string, post_string, buffer, length)
  35:../cores/arduino/Stream.h **** readBytesBetween( pre_string, terminator, buffer, length)
  36:../cores/arduino/Stream.h **** */
  37:../cores/arduino/Stream.h **** 
  38:../cores/arduino/Stream.h **** class Stream : public Print
  39:../cores/arduino/Stream.h **** {
  40:../cores/arduino/Stream.h **** protected:
  41:../cores/arduino/Stream.h **** 	unsigned long _timeout;      // number of milliseconds to wait for the next char before aborting t
  42:../cores/arduino/Stream.h **** 	unsigned long _startMillis;  // used for timeout measurement
  43:../cores/arduino/Stream.h **** 	int timedRead();    // private method to read stream with timeout
  44:../cores/arduino/Stream.h **** 	int timedPeek();    // private method to peek stream with timeout
  45:../cores/arduino/Stream.h **** 	int peekNextDigit(); // returns the next numeric digit in the stream or -1 if timeout
  46:../cores/arduino/Stream.h **** 
  47:../cores/arduino/Stream.h **** public:
  48:../cores/arduino/Stream.h **** 	virtual int available() = 0;
  49:../cores/arduino/Stream.h **** 	virtual int read() = 0;
  50:../cores/arduino/Stream.h **** 	virtual int peek() = 0;
  51:../cores/arduino/Stream.h **** 	virtual void flush() = 0;
  52:../cores/arduino/Stream.h **** 	virtual size_t canWrite() const { return 1; }	// DC42 added for Duet
  53:../cores/arduino/Stream.h **** 
  54:../cores/arduino/Stream.h **** 	Stream() : _timeout(1000), _startMillis(0) {}
 545              		.loc 6 54 0
 546 0004 4FF47A77 		mov	r7, #1000
 547              	.LBE88:
 548              	.LBE87:
 549              	.LBE86:
  27:../cores/arduino/UARTClass.cpp **** {
 550              		.loc 2 27 0
 551 0008 064E     		ldr	r6, .L47
  32:../cores/arduino/UARTClass.cpp ****   _dwIrq=dwIrq;
 552              		.loc 2 32 0
 553 000a 8161     		str	r1, [r0, #24]
  33:../cores/arduino/UARTClass.cpp ****   _dwId=dwId;
 554              		.loc 2 33 0
 555 000c 0277     		strb	r2, [r0, #28]
 556              	.LBE85:
  27:../cores/arduino/UARTClass.cpp **** {
 557              		.loc 2 27 0
 558 000e 0499     		ldr	r1, [sp, #16]
 559              	.LVL38:
 560 0010 059A     		ldr	r2, [sp, #20]
 561              	.LVL39:
 562              	.LBB99:
 563              	.LBB97:
 564              	.LBB95:
 565              	.LBB93:
 566              		.loc 6 54 0
 567 0012 8760     		str	r7, [r0, #8]
 568              	.LBE93:
 569              	.LBE95:
 570              	.LBE97:
  27:../cores/arduino/UARTClass.cpp **** {
 571              		.loc 2 27 0
 572 0014 0660     		str	r6, [r0]
ARM GAS  /tmp/cc5e0BXI.s 			page 49


 573              	.LBB98:
 574              	.LBB96:
 575              	.LBB94:
 576              	.LBB92:
 577              	.LBB91:
 578              		.loc 5 45 0
 579 0016 4560     		str	r5, [r0, #4]
 580              	.LVL40:
 581              	.LBE91:
 582              	.LBE92:
 583              		.loc 6 54 0
 584 0018 C560     		str	r5, [r0, #12]
 585              	.LVL41:
 586              	.LBE94:
 587              	.LBE96:
 588              	.LBE98:
  34:../cores/arduino/UARTClass.cpp **** }
 589              		.loc 2 34 0
 590 001a 0362     		str	r3, [r0, #32]
  29:../cores/arduino/UARTClass.cpp ****   _tx_buffer = pTx_buffer;
 591              		.loc 2 29 0
 592 001c 0161     		str	r1, [r0, #16]
  30:../cores/arduino/UARTClass.cpp **** 
 593              		.loc 2 30 0
 594 001e 4261     		str	r2, [r0, #20]
 595              	.LBE99:
  35:../cores/arduino/UARTClass.cpp **** 
 596              		.loc 2 35 0
 597 0020 F0BC     		pop	{r4, r5, r6, r7}
 598              		.cfi_restore 7
 599              		.cfi_restore 6
 600              		.cfi_restore 5
 601              		.cfi_restore 4
 602              		.cfi_def_cfa_offset 0
 603              	.LVL42:
 604 0022 7047     		bx	lr
 605              	.L48:
 606              		.align	2
 607              	.L47:
 608 0024 08000000 		.word	.LANCHOR0+8
 609              		.cfi_endproc
 610              	.LFE275:
 611              		.size	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, .-_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 612              		.global	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 613              		.thumb_set _ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_,_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS
 614              		.section	.text._ZN9UARTClass4initEmm,"ax",%progbits
 615              		.align	1
 616              		.p2align 2,,3
 617              		.global	_ZN9UARTClass4initEmm
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
 621              		.fpu fpv5-d16
 622              		.type	_ZN9UARTClass4initEmm, %function
 623              	_ZN9UARTClass4initEmm:
 624              	.LFB279:
  51:../cores/arduino/UARTClass.cpp ****   // Configure PMC
ARM GAS  /tmp/cc5e0BXI.s 			page 50


 625              		.loc 2 51 0
 626              		.cfi_startproc
 627              		@ args = 0, pretend = 0, frame = 0
 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629              	.LVL43:
 630 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 631              		.cfi_def_cfa_offset 24
 632              		.cfi_offset 4, -24
 633              		.cfi_offset 5, -20
 634              		.cfi_offset 6, -16
 635              		.cfi_offset 7, -12
 636              		.cfi_offset 8, -8
 637              		.cfi_offset 14, -4
  51:../cores/arduino/UARTClass.cpp ****   // Configure PMC
 638              		.loc 2 51 0
 639 0004 0446     		mov	r4, r0
  53:../cores/arduino/UARTClass.cpp **** 
 640              		.loc 2 53 0
 641 0006 006A     		ldr	r0, [r0, #32]
 642              	.LVL44:
  51:../cores/arduino/UARTClass.cpp ****   // Configure PMC
 643              		.loc 2 51 0
 644 0008 0D46     		mov	r5, r1
 645 000a 9046     		mov	r8, r2
  53:../cores/arduino/UARTClass.cpp **** 
 646              		.loc 2 53 0
 647 000c FFF7FEFF 		bl	pmc_enable_periph_clk
 648              	.LVL45:
  68:../cores/arduino/UARTClass.cpp **** 
 649              		.loc 2 68 0
 650 0010 174B     		ldr	r3, .L51
  67:../cores/arduino/UARTClass.cpp ****   _pUart->UART_BRGR = (SystemCoreClock + (br16/2) - 1) / br16;
 651              		.loc 2 67 0
 652 0012 2801     		lsls	r0, r5, #4
 653              	.LVL46:
  79:../cores/arduino/UARTClass.cpp **** 
 654              		.loc 2 79 0
 655 0014 94F91C60 		ldrsb	r6, [r4, #28]
 656              	.LVL47:
  68:../cores/arduino/UARTClass.cpp **** 
 657              		.loc 2 68 0
 658 0018 1968     		ldr	r1, [r3]
  61:../cores/arduino/UARTClass.cpp **** 
 659              		.loc 2 61 0
 660 001a AC22     		movs	r2, #172
 661 001c A369     		ldr	r3, [r4, #24]
 662              	.LBB100:
 663              	.LBB101:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 664              		.loc 4 1684 0
 665 001e 06F01F0E 		and	lr, r6, #31
 666              	.LBE101:
 667              	.LBE100:
  68:../cores/arduino/UARTClass.cpp **** 
 668              		.loc 2 68 0
 669 0022 0139     		subs	r1, r1, #1
 670              	.LBB107:
ARM GAS  /tmp/cc5e0BXI.s 			page 51


 671              	.LBB102:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 672              		.loc 4 1684 0
 673 0024 0125     		movs	r5, #1
 674              	.LVL48:
 675              	.LBE102:
 676              	.LBE107:
  61:../cores/arduino/UARTClass.cpp **** 
 677              		.loc 2 61 0
 678 0026 1A60     		str	r2, [r3]
 679              	.LBB108:
 680              	.LBB103:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 681              		.loc 4 1684 0
 682 0028 7709     		lsrs	r7, r6, #5
 683              	.LBE103:
 684              	.LBE108:
  68:../cores/arduino/UARTClass.cpp **** 
 685              		.loc 2 68 0
 686 002a 01EB5001 		add	r1, r1, r0, lsr #1
  64:../cores/arduino/UARTClass.cpp **** 
 687              		.loc 2 64 0
 688 002e C3F80480 		str	r8, [r3, #4]
  71:../cores/arduino/UARTClass.cpp ****   _tx_buffer->_iHead = _tx_buffer->_iTail = 0;
 689              		.loc 2 71 0
 690 0032 2669     		ldr	r6, [r4, #16]
 691              	.LVL49:
 692 0034 0022     		movs	r2, #0
  72:../cores/arduino/UARTClass.cpp **** 
 693              		.loc 2 72 0
 694 0036 6469     		ldr	r4, [r4, #20]
 695              	.LVL50:
 696              	.LBB109:
 697              	.LBB104:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 698              		.loc 4 1684 0
 699 0038 05FA0EF5 		lsl	r5, r5, lr
 700              	.LBE104:
 701              	.LBE109:
  75:../cores/arduino/UARTClass.cpp ****   _pUart->UART_IER = UART_IER_RXRDY | UART_IER_OVRE | UART_IER_FRAME;
 702              		.loc 2 75 0
 703 003c 4FF0FF3C 		mov	ip, #-1
  76:../cores/arduino/UARTClass.cpp **** 
 704              		.loc 2 76 0
 705 0040 4FF0610E 		mov	lr, #97
  68:../cores/arduino/UARTClass.cpp **** 
 706              		.loc 2 68 0
 707 0044 B1FBF0F1 		udiv	r1, r1, r0
 708              	.LBB110:
 709              	.LBB105:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 710              		.loc 4 1684 0
 711 0048 0A48     		ldr	r0, .L51+4
 712              	.LVL51:
 713              	.LBE105:
 714              	.LBE110:
  68:../cores/arduino/UARTClass.cpp **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 52


 715              		.loc 2 68 0
 716 004a 1962     		str	r1, [r3, #32]
  82:../cores/arduino/UARTClass.cpp **** }
 717              		.loc 2 82 0
 718 004c 5021     		movs	r1, #80
  71:../cores/arduino/UARTClass.cpp ****   _tx_buffer->_iHead = _tx_buffer->_iTail = 0;
 719              		.loc 2 71 0
 720 004e C6F80422 		str	r2, [r6, #516]
 721 0052 C6F80022 		str	r2, [r6, #512]
  72:../cores/arduino/UARTClass.cpp **** 
 722              		.loc 2 72 0
 723 0056 C4F80422 		str	r2, [r4, #516]
 724 005a C4F80022 		str	r2, [r4, #512]
  75:../cores/arduino/UARTClass.cpp ****   _pUart->UART_IER = UART_IER_RXRDY | UART_IER_OVRE | UART_IER_FRAME;
 725              		.loc 2 75 0
 726 005e C3F80CC0 		str	ip, [r3, #12]
  76:../cores/arduino/UARTClass.cpp **** 
 727              		.loc 2 76 0
 728 0062 C3F808E0 		str	lr, [r3, #8]
 729              	.LBB111:
 730              	.LBB106:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 731              		.loc 4 1684 0
 732 0066 40F82750 		str	r5, [r0, r7, lsl #2]
 733              	.LVL52:
 734              	.LBE106:
 735              	.LBE111:
  82:../cores/arduino/UARTClass.cpp **** }
 736              		.loc 2 82 0
 737 006a 1960     		str	r1, [r3]
 738 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 739              	.LVL53:
 740              	.L52:
 741              		.align	2
 742              	.L51:
 743 0070 00000000 		.word	SystemCoreClock
 744 0074 00E100E0 		.word	-536813312
 745              		.cfi_endproc
 746              	.LFE279:
 747              		.size	_ZN9UARTClass4initEmm, .-_ZN9UARTClass4initEmm
 748              		.section	.text._ZN9UARTClass5beginEmNS_9UARTModesE,"ax",%progbits
 749              		.align	1
 750              		.p2align 2,,3
 751              		.global	_ZN9UARTClass5beginEmNS_9UARTModesE
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu fpv5-d16
 756              		.type	_ZN9UARTClass5beginEmNS_9UARTModesE, %function
 757              	_ZN9UARTClass5beginEmNS_9UARTModesE:
 758              	.LFB278:
  45:../cores/arduino/UARTClass.cpp ****   uint32_t modeReg = static_cast<uint32_t>(config) & 0x00000E00;
 759              		.loc 2 45 0
 760              		.cfi_startproc
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763              		@ link register save eliminated.
ARM GAS  /tmp/cc5e0BXI.s 			page 53


 764              	.LVL54:
  47:../cores/arduino/UARTClass.cpp **** }
 765              		.loc 2 47 0
 766 0000 02F46062 		and	r2, r2, #3584
 767              	.LVL55:
 768 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 769              	.LVL56:
 770              		.cfi_endproc
 771              	.LFE278:
 772              		.size	_ZN9UARTClass5beginEmNS_9UARTModesE, .-_ZN9UARTClass5beginEmNS_9UARTModesE
 773              		.section	.text._ZN9UARTClass5beginEm,"ax",%progbits
 774              		.align	1
 775              		.p2align 2,,3
 776              		.global	_ZN9UARTClass5beginEm
 777              		.syntax unified
 778              		.thumb
 779              		.thumb_func
 780              		.fpu fpv5-d16
 781              		.type	_ZN9UARTClass5beginEm, %function
 782              	_ZN9UARTClass5beginEm:
 783              	.LFB277:
  40:../cores/arduino/UARTClass.cpp ****   begin(dwBaudRate, Mode_8N1);
 784              		.loc 2 40 0
 785              		.cfi_startproc
 786              		@ args = 0, pretend = 0, frame = 0
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 788              		@ link register save eliminated.
 789              	.LVL57:
 790              	.LBB112:
 791              	.LBB113:
  47:../cores/arduino/UARTClass.cpp **** }
 792              		.loc 2 47 0
 793 0000 4FF40062 		mov	r2, #2048
 794 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 795              	.LVL58:
 796              	.LBE113:
 797              	.LBE112:
 798              		.cfi_endproc
 799              	.LFE277:
 800              		.size	_ZN9UARTClass5beginEm, .-_ZN9UARTClass5beginEm
 801              		.section	.text._ZN9UARTClass20setInterruptPriorityEm,"ax",%progbits
 802              		.align	1
 803              		.p2align 2,,3
 804              		.global	_ZN9UARTClass20setInterruptPriorityEm
 805              		.syntax unified
 806              		.thumb
 807              		.thumb_func
 808              		.fpu fpv5-d16
 809              		.type	_ZN9UARTClass20setInterruptPriorityEm, %function
 810              	_ZN9UARTClass20setInterruptPriorityEm:
 811              	.LFB281:
 100:../cores/arduino/UARTClass.cpp ****   NVIC_SetPriority(_dwIrq, priority & 0x0F);
 812              		.loc 2 100 0
 813              		.cfi_startproc
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816              		@ link register save eliminated.
ARM GAS  /tmp/cc5e0BXI.s 			page 54


 817              	.LVL59:
 101:../cores/arduino/UARTClass.cpp **** }
 818              		.loc 2 101 0
 819 0000 90F91C30 		ldrsb	r3, [r0, #28]
 820 0004 01F00F01 		and	r1, r1, #15
 821              	.LVL60:
 822              	.LBB114:
 823              	.LBB115:
1697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Pending Interrupt
1701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the pending register in the NVIC and returns the pending bit
1703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     for the specified interrupt.
1704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not pending.
1708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is pending.
1709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t) ((NVIC->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); 
1713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Pending Interrupt
1717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the pending bit of an external interrupt.
1719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number. Value cannot be negative.
1721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending 
1725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Clear Pending Interrupt
1729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function clears the pending bit of an external interrupt.
1731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrup
1737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Active Interrupt
1741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the active register in NVIC and returns the active bit.
1743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc5e0BXI.s 			page 55


1746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not active.
1747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is active.
1748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t)((NVIC->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /
1752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Interrupt Priority
1756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the priority of an interrupt.
1758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \note The priority cannot be set for every core interrupt.
1760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]  priority  Priority to set.
1763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if(IRQn < 0) {
 824              		.loc 4 1766 0
 825 0008 002B     		cmp	r3, #0
 826 000a 06DB     		blt	.L58
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
1768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
1769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     NVIC->IP[(uint32_t)(IRQn)]            = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
 827              		.loc 4 1769 0
 828 000c 4901     		lsls	r1, r1, #5
 829              	.LVL61:
 830 000e 074A     		ldr	r2, .L59
 831 0010 C9B2     		uxtb	r1, r1
 832 0012 1A44     		add	r2, r2, r3
 833 0014 82F80013 		strb	r1, [r2, #768]
 834              	.LVL62:
 835 0018 7047     		bx	lr
 836              	.LVL63:
 837              	.L58:
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
 838              		.loc 4 1767 0
 839 001a 03F00F03 		and	r3, r3, #15
 840              	.LVL64:
 841 001e 4901     		lsls	r1, r1, #5
 842              	.LVL65:
 843 0020 034A     		ldr	r2, .L59+4
 844 0022 C9B2     		uxtb	r1, r1
 845 0024 1A44     		add	r2, r2, r3
 846 0026 1176     		strb	r1, [r2, #24]
 847              	.LVL66:
 848 0028 7047     		bx	lr
 849              	.L60:
 850 002a 00BF     		.align	2
 851              	.L59:
 852 002c 00E100E0 		.word	-536813312
 853 0030 FCEC00E0 		.word	-536810244
 854              	.LBE115:
 855              	.LBE114:
ARM GAS  /tmp/cc5e0BXI.s 			page 56


 856              		.cfi_endproc
 857              	.LFE281:
 858              		.size	_ZN9UARTClass20setInterruptPriorityEm, .-_ZN9UARTClass20setInterruptPriorityEm
 859              		.section	.text._ZN9UARTClass20getInterruptPriorityEv,"ax",%progbits
 860              		.align	1
 861              		.p2align 2,,3
 862              		.global	_ZN9UARTClass20getInterruptPriorityEv
 863              		.syntax unified
 864              		.thumb
 865              		.thumb_func
 866              		.fpu fpv5-d16
 867              		.type	_ZN9UARTClass20getInterruptPriorityEv, %function
 868              	_ZN9UARTClass20getInterruptPriorityEv:
 869              	.LFB282:
 105:../cores/arduino/UARTClass.cpp ****   return NVIC_GetPriority(_dwIrq);
 870              		.loc 2 105 0
 871              		.cfi_startproc
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874              		@ link register save eliminated.
 875              	.LVL67:
 106:../cores/arduino/UARTClass.cpp **** }
 876              		.loc 2 106 0
 877 0000 90F91C30 		ldrsb	r3, [r0, #28]
 878              	.LVL68:
 879              	.LBB116:
 880              	.LBB117:
1770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Interrupt Priority
1774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the priority of an interrupt. The interrupt
1776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     number can be positive to specify an external (device specific)
1777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     interrupt, or negative to specify an internal (core) interrupt.
1778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]   IRQn  Interrupt number.
1781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             Interrupt Priority. Value is aligned automatically to the implemented
1782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                         priority bits of the microcontroller.
1783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriority(IRQn_Type IRQn)
1785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if(IRQn < 0) {
 881              		.loc 4 1787 0
 882 0004 002B     		cmp	r3, #0
 883 0006 03DB     		blt	.L64
1788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     return((uint32_t)(SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] >> (8 - __NVIC_PRIO_BITS)));  } /* get 
1789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
1790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     return((uint32_t)(NVIC->IP[(uint32_t)(IRQn)]            >> (8 - __NVIC_PRIO_BITS)));  } /* get 
 884              		.loc 4 1790 0
 885 0008 044A     		ldr	r2, .L65
 886 000a D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 887              	.LVL69:
 888 000c 4009     		lsrs	r0, r0, #5
 889              	.LVL70:
ARM GAS  /tmp/cc5e0BXI.s 			page 57


 890              	.LBE117:
 891              	.LBE116:
 107:../cores/arduino/UARTClass.cpp **** 
 892              		.loc 2 107 0
 893 000e 7047     		bx	lr
 894              	.LVL71:
 895              	.L64:
 896              	.LBB119:
 897              	.LBB118:
1788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     return((uint32_t)(SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] >> (8 - __NVIC_PRIO_BITS)));  } /* get 
 898              		.loc 4 1788 0
 899 0010 03F00F03 		and	r3, r3, #15
 900              	.LVL72:
 901 0014 024A     		ldr	r2, .L65+4
 902 0016 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 903              	.LVL73:
 904 0018 4009     		lsrs	r0, r0, #5
 905 001a 7047     		bx	lr
 906              	.L66:
 907              		.align	2
 908              	.L65:
 909 001c 00E400E0 		.word	-536812544
 910 0020 14ED00E0 		.word	-536810220
 911              	.LBE118:
 912              	.LBE119:
 913              		.cfi_endproc
 914              	.LFE282:
 915              		.size	_ZN9UARTClass20getInterruptPriorityEv, .-_ZN9UARTClass20getInterruptPriorityEv
 916              		.section	.text._ZN9UARTClass17availableForWriteEv,"ax",%progbits
 917              		.align	1
 918              		.p2align 2,,3
 919              		.global	_ZN9UARTClass17availableForWriteEv
 920              		.syntax unified
 921              		.thumb
 922              		.thumb_func
 923              		.fpu fpv5-d16
 924              		.type	_ZN9UARTClass17availableForWriteEv, %function
 925              	_ZN9UARTClass17availableForWriteEv:
 926              	.LFB284:
 115:../cores/arduino/UARTClass.cpp ****   size_t head = _tx_buffer->_iHead;
 927              		.loc 2 115 0
 928              		.cfi_startproc
 929              		@ args = 0, pretend = 0, frame = 0
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931              		@ link register save eliminated.
 932              	.LVL74:
 116:../cores/arduino/UARTClass.cpp ****   size_t tail = _tx_buffer->_iTail;
 933              		.loc 2 116 0
 934 0000 4369     		ldr	r3, [r0, #20]
 935 0002 D3F80002 		ldr	r0, [r3, #512]
 936              	.LVL75:
 117:../cores/arduino/UARTClass.cpp ****   if (head >= tail)
 937              		.loc 2 117 0
 938 0006 D3F80432 		ldr	r3, [r3, #516]
 939              	.LVL76:
 118:../cores/arduino/UARTClass.cpp ****   {
 940              		.loc 2 118 0
ARM GAS  /tmp/cc5e0BXI.s 			page 58


 941 000a 9842     		cmp	r0, r3
 120:../cores/arduino/UARTClass.cpp ****   }
 942              		.loc 2 120 0
 943 000c 2CBF     		ite	cs
 944 000e 03F2FF13 		addwcs	r3, r3, #511
 945              	.LVL77:
 122:../cores/arduino/UARTClass.cpp **** }
 946              		.loc 2 122 0
 947 0012 03F1FF33 		addcc	r3, r3, #-1
 948 0016 181A     		subs	r0, r3, r0
 949              	.LVL78:
 123:../cores/arduino/UARTClass.cpp **** 
 950              		.loc 2 123 0
 951 0018 7047     		bx	lr
 952              		.cfi_endproc
 953              	.LFE284:
 954              		.size	_ZN9UARTClass17availableForWriteEv, .-_ZN9UARTClass17availableForWriteEv
 955 001a 00BF     		.section	.text._ZN9UARTClass10IrqHandlerEv,"ax",%progbits
 956              		.align	1
 957              		.p2align 2,,3
 958              		.global	_ZN9UARTClass10IrqHandlerEv
 959              		.syntax unified
 960              		.thumb
 961              		.thumb_func
 962              		.fpu fpv5-d16
 963              		.type	_ZN9UARTClass10IrqHandlerEv, %function
 964              	_ZN9UARTClass10IrqHandlerEv:
 965              	.LFB291:
 196:../cores/arduino/UARTClass.cpp **** 
 197:../cores/arduino/UARTClass.cpp **** void UARTClass::IrqHandler()
 198:../cores/arduino/UARTClass.cpp **** {
 966              		.loc 2 198 0
 967              		.cfi_startproc
 968              		@ args = 0, pretend = 0, frame = 0
 969              		@ frame_needed = 0, uses_anonymous_args = 0
 970              		@ link register save eliminated.
 971              	.LVL79:
 199:../cores/arduino/UARTClass.cpp ****   const uint32_t status = _pUart->UART_SR;
 972              		.loc 2 199 0
 973 0000 8269     		ldr	r2, [r0, #24]
 974 0002 5369     		ldr	r3, [r2, #20]
 975              	.LVL80:
 198:../cores/arduino/UARTClass.cpp ****   const uint32_t status = _pUart->UART_SR;
 976              		.loc 2 198 0
 977 0004 70B4     		push	{r4, r5, r6}
 978              		.cfi_def_cfa_offset 12
 979              		.cfi_offset 4, -12
 980              		.cfi_offset 5, -8
 981              		.cfi_offset 6, -4
 200:../cores/arduino/UARTClass.cpp **** 
 201:../cores/arduino/UARTClass.cpp ****   // Did we receive data?
 202:../cores/arduino/UARTClass.cpp ****   if ((status & UART_SR_RXRDY) != 0)
 982              		.loc 2 202 0
 983 0006 DC07     		lsls	r4, r3, #31
 984 0008 10D5     		bpl	.L71
 203:../cores/arduino/UARTClass.cpp ****   {
 204:../cores/arduino/UARTClass.cpp ****     _rx_buffer->store_char(_pUart->UART_RHR);
ARM GAS  /tmp/cc5e0BXI.s 			page 59


 985              		.loc 2 204 0
 986 000a 0469     		ldr	r4, [r0, #16]
 987 000c 9569     		ldr	r5, [r2, #24]
 988              	.LVL81:
 989              	.LBB120:
 990              	.LBB121:
  47:../cores/arduino/RingBuffer.h **** 
 991              		.loc 3 47 0
 992 000e D4F80012 		ldr	r1, [r4, #512]
  53:../cores/arduino/RingBuffer.h ****   {
 993              		.loc 3 53 0
 994 0012 D4F80462 		ldr	r6, [r4, #516]
  47:../cores/arduino/RingBuffer.h **** 
 995              		.loc 3 47 0
 996 0016 0131     		adds	r1, r1, #1
 997 0018 C1F30801 		ubfx	r1, r1, #0, #9
 998              	.LVL82:
  53:../cores/arduino/RingBuffer.h ****   {
 999              		.loc 3 53 0
 1000 001c B142     		cmp	r1, r6
 1001 001e 3ED0     		beq	.L72
  55:../cores/arduino/RingBuffer.h ****     _iHead = i;
 1002              		.loc 3 55 0
 1003 0020 D4F80062 		ldr	r6, [r4, #512]
 1004              	.LBE121:
 1005              	.LBE120:
 1006              		.loc 2 204 0
 1007 0024 EDB2     		uxtb	r5, r5
 1008              	.LBB124:
 1009              	.LBB122:
  55:../cores/arduino/RingBuffer.h ****     _iHead = i;
 1010              		.loc 3 55 0
 1011 0026 A555     		strb	r5, [r4, r6]
  56:../cores/arduino/RingBuffer.h ****   }
 1012              		.loc 3 56 0
 1013 0028 C4F80012 		str	r1, [r4, #512]
 1014              	.LVL83:
 1015              	.L71:
 1016              	.LBE122:
 1017              	.LBE124:
 205:../cores/arduino/UARTClass.cpp ****   }
 206:../cores/arduino/UARTClass.cpp **** 
 207:../cores/arduino/UARTClass.cpp ****   // Do we need to keep sending data?
 208:../cores/arduino/UARTClass.cpp ****   if ((status & UART_SR_TXRDY) != 0)
 1018              		.loc 2 208 0
 1019 002c 9907     		lsls	r1, r3, #30
 1020 002e 12D5     		bpl	.L73
 209:../cores/arduino/UARTClass.cpp ****   {
 210:../cores/arduino/UARTClass.cpp ****     if (_tx_buffer->_iTail != _tx_buffer->_iHead)
 1021              		.loc 2 210 0
 1022 0030 4169     		ldr	r1, [r0, #20]
 1023 0032 D1F80452 		ldr	r5, [r1, #516]
 1024 0036 D1F80042 		ldr	r4, [r1, #512]
 1025 003a A542     		cmp	r5, r4
 1026 003c 2CD0     		beq	.L74
 211:../cores/arduino/UARTClass.cpp ****     {
 212:../cores/arduino/UARTClass.cpp ****       _pUart->UART_THR = _tx_buffer->_aucBuffer[_tx_buffer->_iTail];
ARM GAS  /tmp/cc5e0BXI.s 			page 60


 1027              		.loc 2 212 0
 1028 003e D1F80442 		ldr	r4, [r1, #516]
 1029 0042 0C5D     		ldrb	r4, [r1, r4]	@ zero_extendqisi2
 1030 0044 E4B2     		uxtb	r4, r4
 1031 0046 D461     		str	r4, [r2, #28]
 213:../cores/arduino/UARTClass.cpp ****       _tx_buffer->_iTail = (_tx_buffer->_iTail + 1) % SERIAL_BUFFER_SIZE;
 1032              		.loc 2 213 0
 1033 0048 D1F80442 		ldr	r4, [r1, #516]
 1034 004c 0134     		adds	r4, r4, #1
 1035 004e C4F30804 		ubfx	r4, r4, #0, #9
 1036 0052 C1F80442 		str	r4, [r1, #516]
 1037              	.L73:
 214:../cores/arduino/UARTClass.cpp ****     }
 215:../cores/arduino/UARTClass.cpp ****     else
 216:../cores/arduino/UARTClass.cpp ****     {
 217:../cores/arduino/UARTClass.cpp ****       // Mask off transmit interrupt so we don't get it anymore
 218:../cores/arduino/UARTClass.cpp ****       _pUart->UART_IDR = UART_IDR_TXRDY;
 219:../cores/arduino/UARTClass.cpp ****     }
 220:../cores/arduino/UARTClass.cpp ****   }
 221:../cores/arduino/UARTClass.cpp **** 
 222:../cores/arduino/UARTClass.cpp ****   // Acknowledge errors
 223:../cores/arduino/UARTClass.cpp ****   if ((status & (UART_SR_OVRE | UART_SR_FRAME)) != 0)
 1038              		.loc 2 223 0
 1039 0056 13F0600F 		tst	r3, #96
 1040 005a 12D0     		beq	.L70
 224:../cores/arduino/UARTClass.cpp ****   {
 225:../cores/arduino/UARTClass.cpp ****     _pUart->UART_CR = UART_CR_RSTSTA;
 226:../cores/arduino/UARTClass.cpp ****     _rx_buffer->store_char(0x7F);				// store a DEL character so that the receiving process knows t
 1041              		.loc 2 226 0
 1042 005c 0169     		ldr	r1, [r0, #16]
 1043              	.LVL84:
 225:../cores/arduino/UARTClass.cpp ****     _rx_buffer->store_char(0x7F);				// store a DEL character so that the receiving process knows t
 1044              		.loc 2 225 0
 1045 005e 4FF48073 		mov	r3, #256
 1046              	.LVL85:
 1047 0062 1360     		str	r3, [r2]
 1048              	.LBB125:
 1049              	.LBB126:
  47:../cores/arduino/RingBuffer.h **** 
 1050              		.loc 3 47 0
 1051 0064 D1F80032 		ldr	r3, [r1, #512]
  53:../cores/arduino/RingBuffer.h ****   {
 1052              		.loc 3 53 0
 1053 0068 D1F80422 		ldr	r2, [r1, #516]
  47:../cores/arduino/RingBuffer.h **** 
 1054              		.loc 3 47 0
 1055 006c 0133     		adds	r3, r3, #1
 1056 006e C3F30803 		ubfx	r3, r3, #0, #9
 1057              	.LVL86:
  53:../cores/arduino/RingBuffer.h ****   {
 1058              		.loc 3 53 0
 1059 0072 9342     		cmp	r3, r2
 1060 0074 07D0     		beq	.L76
  55:../cores/arduino/RingBuffer.h ****     _iHead = i;
 1061              		.loc 3 55 0
 1062 0076 D1F80022 		ldr	r2, [r1, #512]
 1063 007a 7F20     		movs	r0, #127
ARM GAS  /tmp/cc5e0BXI.s 			page 61


 1064              	.LVL87:
 1065 007c 8854     		strb	r0, [r1, r2]
  56:../cores/arduino/RingBuffer.h ****   }
 1066              		.loc 3 56 0
 1067 007e C1F80032 		str	r3, [r1, #512]
 1068              	.LVL88:
 1069              	.L70:
 1070              	.LBE126:
 1071              	.LBE125:
 227:../cores/arduino/UARTClass.cpp ****   }
 228:../cores/arduino/UARTClass.cpp **** }
 1072              		.loc 2 228 0
 1073 0082 70BC     		pop	{r4, r5, r6}
 1074              		.cfi_remember_state
 1075              		.cfi_restore 6
 1076              		.cfi_restore 5
 1077              		.cfi_restore 4
 1078              		.cfi_def_cfa_offset 0
 1079 0084 7047     		bx	lr
 1080              	.LVL89:
 1081              	.L76:
 1082              		.cfi_restore_state
 1083              	.LBB128:
 1084              	.LBB127:
  60:../cores/arduino/RingBuffer.h ****   }
 1085              		.loc 3 60 0
 1086 0086 D1F80032 		ldr	r3, [r1, #512]
 1087              	.LVL90:
 1088 008a 7F22     		movs	r2, #127
 1089 008c 013B     		subs	r3, r3, #1
 1090 008e C3F30803 		ubfx	r3, r3, #0, #9
 1091 0092 CA54     		strb	r2, [r1, r3]
 1092              	.LBE127:
 1093              	.LBE128:
 1094              		.loc 2 228 0
 1095 0094 70BC     		pop	{r4, r5, r6}
 1096              		.cfi_remember_state
 1097              		.cfi_restore 4
 1098              		.cfi_restore 5
 1099              		.cfi_restore 6
 1100              		.cfi_def_cfa_offset 0
 1101 0096 7047     		bx	lr
 1102              	.LVL91:
 1103              	.L74:
 1104              		.cfi_restore_state
 218:../cores/arduino/UARTClass.cpp ****     }
 1105              		.loc 2 218 0
 1106 0098 0221     		movs	r1, #2
 1107 009a D160     		str	r1, [r2, #12]
 1108 009c DBE7     		b	.L73
 1109              	.LVL92:
 1110              	.L72:
 1111              	.LBB129:
 1112              	.LBB123:
  60:../cores/arduino/RingBuffer.h ****   }
 1113              		.loc 3 60 0
 1114 009e D4F80012 		ldr	r1, [r4, #512]
ARM GAS  /tmp/cc5e0BXI.s 			page 62


 1115              	.LVL93:
 1116 00a2 7F25     		movs	r5, #127
 1117              	.LVL94:
 1118 00a4 0139     		subs	r1, r1, #1
 1119 00a6 C1F30801 		ubfx	r1, r1, #0, #9
 1120 00aa 6554     		strb	r5, [r4, r1]
 1121 00ac BEE7     		b	.L71
 1122              	.LBE123:
 1123              	.LBE129:
 1124              		.cfi_endproc
 1125              	.LFE291:
 1126              		.size	_ZN9UARTClass10IrqHandlerEv, .-_ZN9UARTClass10IrqHandlerEv
 1127              		.global	_ZTV9UARTClass
 1128 00ae 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1129              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1130              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1131              	_ZL28cpu_irq_prev_interrupt_state:
 1132 0000 00       		.space	1
 1133              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1134              		.align	2
 1135              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1136              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1137              	_ZL32cpu_irq_critical_section_counter:
 1138 0000 00000000 		.space	4
 1139              		.section	.rodata._ZTV9UARTClass,"a",%progbits
 1140              		.align	2
 1141              		.set	.LANCHOR0,. + 0
 1142              		.type	_ZTV9UARTClass, %object
 1143              		.size	_ZTV9UARTClass, 60
 1144              	_ZTV9UARTClass:
 1145 0000 00000000 		.word	0
 1146 0004 00000000 		.word	0
 1147 0008 00000000 		.word	_ZN9UARTClassD1Ev
 1148 000c 00000000 		.word	_ZN9UARTClassD0Ev
 1149 0010 00000000 		.word	_ZN9UARTClass5writeEh
 1150 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 1151 0018 00000000 		.word	_ZN9UARTClass9availableEv
 1152 001c 00000000 		.word	_ZN9UARTClass4readEv
 1153 0020 00000000 		.word	_ZN9UARTClass4peekEv
 1154 0024 00000000 		.word	_ZN9UARTClass5flushEv
 1155 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 1156 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 1157 0030 00000000 		.word	_ZN9UARTClass5beginEm
 1158 0034 00000000 		.word	_ZN9UARTClass3endEv
 1159 0038 00000000 		.word	_ZN9UARTClasscvbEv
 1160              		.text
 1161              	.Letext0:
 1162              		.file 7 "/usr/include/newlib/c++/6.3.1/cstdlib"
 1163              		.file 8 "/usr/include/newlib/c++/6.3.1/cstring"
 1164              		.file 9 "/usr/include/newlib/c++/6.3.1/cstdint"
 1165              		.file 10 "/usr/include/newlib/c++/6.3.1/cstddef"
 1166              		.file 11 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 1167              		.file 12 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1168              		.file 13 "/usr/include/newlib/machine/_default_types.h"
 1169              		.file 14 "/usr/include/newlib/sys/lock.h"
 1170              		.file 15 "/usr/include/newlib/sys/_types.h"
 1171              		.file 16 "/usr/include/newlib/sys/reent.h"
ARM GAS  /tmp/cc5e0BXI.s 			page 63


 1172              		.file 17 "/usr/include/newlib/stdlib.h"
 1173              		.file 18 "/usr/include/newlib/string.h"
 1174              		.file 19 "/usr/include/newlib/sys/_stdint.h"
 1175              		.file 20 "/usr/include/newlib/stdint.h"
 1176              		.file 21 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 1177              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1178              		.file 23 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/uar
 1179              		.file 24 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 1180              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1181              		.file 26 "../cores/arduino/HardwareSerial.h"
 1182              		.file 27 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1183              		.file 28 "<built-in>"
 1184              		.section	.debug_info,"",%progbits
 1185              	.Ldebug_info0:
 1186 0000 6D280000 		.4byte	0x286d
 1187 0004 0400     		.2byte	0x4
 1188 0006 00000000 		.4byte	.Ldebug_abbrev0
 1189 000a 04       		.byte	0x4
 1190 000b 01       		.uleb128 0x1
 1191 000c E20F0000 		.4byte	.LASF464
 1192 0010 04       		.byte	0x4
 1193 0011 0F030000 		.4byte	.LASF465
 1194 0015 32090000 		.4byte	.LASF466
 1195 0019 08010000 		.4byte	.Ldebug_ranges0+0x108
 1196 001d 00000000 		.4byte	0
 1197 0021 00000000 		.4byte	.Ldebug_line0
 1198 0025 02       		.uleb128 0x2
 1199 0026 73746400 		.ascii	"std\000"
 1200 002a 1C       		.byte	0x1c
 1201 002b 00       		.byte	0
 1202 002c 19020000 		.4byte	0x219
 1203 0030 03       		.uleb128 0x3
 1204 0031 340B0000 		.4byte	.LASF1
 1205 0035 0B       		.byte	0xb
 1206 0036 DF       		.byte	0xdf
 1207 0037 04       		.uleb128 0x4
 1208 0038 0B       		.byte	0xb
 1209 0039 DF       		.byte	0xdf
 1210 003a 30000000 		.4byte	0x30
 1211 003e 05       		.uleb128 0x5
 1212 003f 07       		.byte	0x7
 1213 0040 7C       		.byte	0x7c
 1214 0041 200C0000 		.4byte	0xc20
 1215 0045 05       		.uleb128 0x5
 1216 0046 07       		.byte	0x7
 1217 0047 7D       		.byte	0x7d
 1218 0048 500C0000 		.4byte	0xc50
 1219 004c 05       		.uleb128 0x5
 1220 004d 07       		.byte	0x7
 1221 004e 81       		.byte	0x81
 1222 004f C20C0000 		.4byte	0xcc2
 1223 0053 05       		.uleb128 0x5
 1224 0054 07       		.byte	0x7
 1225 0055 87       		.byte	0x87
 1226 0056 D70C0000 		.4byte	0xcd7
 1227 005a 05       		.uleb128 0x5
 1228 005b 07       		.byte	0x7
ARM GAS  /tmp/cc5e0BXI.s 			page 64


 1229 005c 88       		.byte	0x88
 1230 005d F30C0000 		.4byte	0xcf3
 1231 0061 05       		.uleb128 0x5
 1232 0062 07       		.byte	0x7
 1233 0063 89       		.byte	0x89
 1234 0064 080D0000 		.4byte	0xd08
 1235 0068 05       		.uleb128 0x5
 1236 0069 07       		.byte	0x7
 1237 006a 8A       		.byte	0x8a
 1238 006b 1D0D0000 		.4byte	0xd1d
 1239 006f 05       		.uleb128 0x5
 1240 0070 07       		.byte	0x7
 1241 0071 8C       		.byte	0x8c
 1242 0072 460D0000 		.4byte	0xd46
 1243 0076 05       		.uleb128 0x5
 1244 0077 07       		.byte	0x7
 1245 0078 8F       		.byte	0x8f
 1246 0079 600D0000 		.4byte	0xd60
 1247 007d 05       		.uleb128 0x5
 1248 007e 07       		.byte	0x7
 1249 007f 91       		.byte	0x91
 1250 0080 750D0000 		.4byte	0xd75
 1251 0084 05       		.uleb128 0x5
 1252 0085 07       		.byte	0x7
 1253 0086 94       		.byte	0x94
 1254 0087 8F0D0000 		.4byte	0xd8f
 1255 008b 05       		.uleb128 0x5
 1256 008c 07       		.byte	0x7
 1257 008d 95       		.byte	0x95
 1258 008e A90D0000 		.4byte	0xda9
 1259 0092 05       		.uleb128 0x5
 1260 0093 07       		.byte	0x7
 1261 0094 96       		.byte	0x96
 1262 0095 DA0D0000 		.4byte	0xdda
 1263 0099 05       		.uleb128 0x5
 1264 009a 07       		.byte	0x7
 1265 009b 98       		.byte	0x98
 1266 009c F90D0000 		.4byte	0xdf9
 1267 00a0 05       		.uleb128 0x5
 1268 00a1 07       		.byte	0x7
 1269 00a2 9E       		.byte	0x9e
 1270 00a3 190E0000 		.4byte	0xe19
 1271 00a7 05       		.uleb128 0x5
 1272 00a8 07       		.byte	0x7
 1273 00a9 A0       		.byte	0xa0
 1274 00aa 240E0000 		.4byte	0xe24
 1275 00ae 05       		.uleb128 0x5
 1276 00af 07       		.byte	0x7
 1277 00b0 A1       		.byte	0xa1
 1278 00b1 350E0000 		.4byte	0xe35
 1279 00b5 05       		.uleb128 0x5
 1280 00b6 07       		.byte	0x7
 1281 00b7 A2       		.byte	0xa2
 1282 00b8 550E0000 		.4byte	0xe55
 1283 00bc 05       		.uleb128 0x5
 1284 00bd 07       		.byte	0x7
 1285 00be A3       		.byte	0xa3
ARM GAS  /tmp/cc5e0BXI.s 			page 65


 1286 00bf 740E0000 		.4byte	0xe74
 1287 00c3 05       		.uleb128 0x5
 1288 00c4 07       		.byte	0x7
 1289 00c5 A4       		.byte	0xa4
 1290 00c6 930E0000 		.4byte	0xe93
 1291 00ca 05       		.uleb128 0x5
 1292 00cb 07       		.byte	0x7
 1293 00cc A6       		.byte	0xa6
 1294 00cd A80E0000 		.4byte	0xea8
 1295 00d1 05       		.uleb128 0x5
 1296 00d2 07       		.byte	0x7
 1297 00d3 A7       		.byte	0xa7
 1298 00d4 CD0E0000 		.4byte	0xecd
 1299 00d8 06       		.uleb128 0x6
 1300 00d9 07       		.byte	0x7
 1301 00da 0401     		.2byte	0x104
 1302 00dc 800C0000 		.4byte	0xc80
 1303 00e0 06       		.uleb128 0x6
 1304 00e1 07       		.byte	0x7
 1305 00e2 0901     		.2byte	0x109
 1306 00e4 63020000 		.4byte	0x263
 1307 00e8 06       		.uleb128 0x6
 1308 00e9 07       		.byte	0x7
 1309 00ea 0A01     		.2byte	0x10a
 1310 00ec E70E0000 		.4byte	0xee7
 1311 00f0 06       		.uleb128 0x6
 1312 00f1 07       		.byte	0x7
 1313 00f2 0C01     		.2byte	0x10c
 1314 00f4 010F0000 		.4byte	0xf01
 1315 00f8 06       		.uleb128 0x6
 1316 00f9 07       		.byte	0x7
 1317 00fa 0D01     		.2byte	0x10d
 1318 00fc 540F0000 		.4byte	0xf54
 1319 0100 06       		.uleb128 0x6
 1320 0101 07       		.byte	0x7
 1321 0102 0E01     		.2byte	0x10e
 1322 0104 160F0000 		.4byte	0xf16
 1323 0108 06       		.uleb128 0x6
 1324 0109 07       		.byte	0x7
 1325 010a 0F01     		.2byte	0x10f
 1326 010c 350F0000 		.4byte	0xf35
 1327 0110 06       		.uleb128 0x6
 1328 0111 07       		.byte	0x7
 1329 0112 1001     		.2byte	0x110
 1330 0114 750F0000 		.4byte	0xf75
 1331 0118 05       		.uleb128 0x5
 1332 0119 08       		.byte	0x8
 1333 011a 52       		.byte	0x52
 1334 011b 900F0000 		.4byte	0xf90
 1335 011f 05       		.uleb128 0x5
 1336 0120 08       		.byte	0x8
 1337 0121 55       		.byte	0x55
 1338 0122 AA0F0000 		.4byte	0xfaa
 1339 0126 05       		.uleb128 0x5
 1340 0127 08       		.byte	0x8
 1341 0128 5B       		.byte	0x5b
 1342 0129 BF0F0000 		.4byte	0xfbf
ARM GAS  /tmp/cc5e0BXI.s 			page 66


 1343 012d 05       		.uleb128 0x5
 1344 012e 08       		.byte	0x8
 1345 012f 5C       		.byte	0x5c
 1346 0130 D90F0000 		.4byte	0xfd9
 1347 0134 07       		.uleb128 0x7
 1348 0135 61627300 		.ascii	"abs\000"
 1349 0139 07       		.byte	0x7
 1350 013a B4       		.byte	0xb4
 1351 013b 67120000 		.4byte	.LASF467
 1352 013f CE020000 		.4byte	0x2ce
 1353 0143 4D010000 		.4byte	0x14d
 1354 0147 08       		.uleb128 0x8
 1355 0148 CE020000 		.4byte	0x2ce
 1356 014c 00       		.byte	0
 1357 014d 05       		.uleb128 0x5
 1358 014e 09       		.byte	0x9
 1359 014f 30       		.byte	0x30
 1360 0150 F80F0000 		.4byte	0xff8
 1361 0154 05       		.uleb128 0x5
 1362 0155 09       		.byte	0x9
 1363 0156 31       		.byte	0x31
 1364 0157 18100000 		.4byte	0x1018
 1365 015b 05       		.uleb128 0x5
 1366 015c 09       		.byte	0x9
 1367 015d 32       		.byte	0x32
 1368 015e 2E100000 		.4byte	0x102e
 1369 0162 05       		.uleb128 0x5
 1370 0163 09       		.byte	0x9
 1371 0164 33       		.byte	0x33
 1372 0165 53100000 		.4byte	0x1053
 1373 0169 05       		.uleb128 0x5
 1374 016a 09       		.byte	0x9
 1375 016b 35       		.byte	0x35
 1376 016c D7100000 		.4byte	0x10d7
 1377 0170 05       		.uleb128 0x5
 1378 0171 09       		.byte	0x9
 1379 0172 36       		.byte	0x36
 1380 0173 ED100000 		.4byte	0x10ed
 1381 0177 05       		.uleb128 0x5
 1382 0178 09       		.byte	0x9
 1383 0179 37       		.byte	0x37
 1384 017a 03110000 		.4byte	0x1103
 1385 017e 05       		.uleb128 0x5
 1386 017f 09       		.byte	0x9
 1387 0180 38       		.byte	0x38
 1388 0181 19110000 		.4byte	0x1119
 1389 0185 05       		.uleb128 0x5
 1390 0186 09       		.byte	0x9
 1391 0187 3A       		.byte	0x3a
 1392 0188 7F100000 		.4byte	0x107f
 1393 018c 05       		.uleb128 0x5
 1394 018d 09       		.byte	0x9
 1395 018e 3B       		.byte	0x3b
 1396 018f 95100000 		.4byte	0x1095
 1397 0193 05       		.uleb128 0x5
 1398 0194 09       		.byte	0x9
 1399 0195 3C       		.byte	0x3c
ARM GAS  /tmp/cc5e0BXI.s 			page 67


 1400 0196 AB100000 		.4byte	0x10ab
 1401 019a 05       		.uleb128 0x5
 1402 019b 09       		.byte	0x9
 1403 019c 3D       		.byte	0x3d
 1404 019d C1100000 		.4byte	0x10c1
 1405 01a1 05       		.uleb128 0x5
 1406 01a2 09       		.byte	0x9
 1407 01a3 3F       		.byte	0x3f
 1408 01a4 2F110000 		.4byte	0x112f
 1409 01a8 05       		.uleb128 0x5
 1410 01a9 09       		.byte	0x9
 1411 01aa 40       		.byte	0x40
 1412 01ab 69100000 		.4byte	0x1069
 1413 01af 05       		.uleb128 0x5
 1414 01b0 09       		.byte	0x9
 1415 01b1 42       		.byte	0x42
 1416 01b2 03100000 		.4byte	0x1003
 1417 01b6 05       		.uleb128 0x5
 1418 01b7 09       		.byte	0x9
 1419 01b8 43       		.byte	0x43
 1420 01b9 23100000 		.4byte	0x1023
 1421 01bd 05       		.uleb128 0x5
 1422 01be 09       		.byte	0x9
 1423 01bf 44       		.byte	0x44
 1424 01c0 3E100000 		.4byte	0x103e
 1425 01c4 05       		.uleb128 0x5
 1426 01c5 09       		.byte	0x9
 1427 01c6 45       		.byte	0x45
 1428 01c7 5E100000 		.4byte	0x105e
 1429 01cb 05       		.uleb128 0x5
 1430 01cc 09       		.byte	0x9
 1431 01cd 47       		.byte	0x47
 1432 01ce E2100000 		.4byte	0x10e2
 1433 01d2 05       		.uleb128 0x5
 1434 01d3 09       		.byte	0x9
 1435 01d4 48       		.byte	0x48
 1436 01d5 F8100000 		.4byte	0x10f8
 1437 01d9 05       		.uleb128 0x5
 1438 01da 09       		.byte	0x9
 1439 01db 49       		.byte	0x49
 1440 01dc 0E110000 		.4byte	0x110e
 1441 01e0 05       		.uleb128 0x5
 1442 01e1 09       		.byte	0x9
 1443 01e2 4A       		.byte	0x4a
 1444 01e3 24110000 		.4byte	0x1124
 1445 01e7 05       		.uleb128 0x5
 1446 01e8 09       		.byte	0x9
 1447 01e9 4C       		.byte	0x4c
 1448 01ea 8A100000 		.4byte	0x108a
 1449 01ee 05       		.uleb128 0x5
 1450 01ef 09       		.byte	0x9
 1451 01f0 4D       		.byte	0x4d
 1452 01f1 A0100000 		.4byte	0x10a0
 1453 01f5 05       		.uleb128 0x5
 1454 01f6 09       		.byte	0x9
 1455 01f7 4E       		.byte	0x4e
 1456 01f8 B6100000 		.4byte	0x10b6
ARM GAS  /tmp/cc5e0BXI.s 			page 68


 1457 01fc 05       		.uleb128 0x5
 1458 01fd 09       		.byte	0x9
 1459 01fe 4F       		.byte	0x4f
 1460 01ff CC100000 		.4byte	0x10cc
 1461 0203 05       		.uleb128 0x5
 1462 0204 09       		.byte	0x9
 1463 0205 51       		.byte	0x51
 1464 0206 3A110000 		.4byte	0x113a
 1465 020a 05       		.uleb128 0x5
 1466 020b 09       		.byte	0x9
 1467 020c 52       		.byte	0x52
 1468 020d 74100000 		.4byte	0x1074
 1469 0211 05       		.uleb128 0x5
 1470 0212 0A       		.byte	0xa
 1471 0213 38       		.byte	0x38
 1472 0214 DC020000 		.4byte	0x2dc
 1473 0218 00       		.byte	0
 1474 0219 09       		.uleb128 0x9
 1475 021a 96010000 		.4byte	.LASF0
 1476 021e 0B       		.byte	0xb
 1477 021f E1       		.byte	0xe1
 1478 0220 7E020000 		.4byte	0x27e
 1479 0224 03       		.uleb128 0x3
 1480 0225 340B0000 		.4byte	.LASF1
 1481 0229 0B       		.byte	0xb
 1482 022a E3       		.byte	0xe3
 1483 022b 04       		.uleb128 0x4
 1484 022c 0B       		.byte	0xb
 1485 022d E3       		.byte	0xe3
 1486 022e 24020000 		.4byte	0x224
 1487 0232 05       		.uleb128 0x5
 1488 0233 07       		.byte	0x7
 1489 0234 DC       		.byte	0xdc
 1490 0235 800C0000 		.4byte	0xc80
 1491 0239 05       		.uleb128 0x5
 1492 023a 07       		.byte	0x7
 1493 023b EC       		.byte	0xec
 1494 023c E70E0000 		.4byte	0xee7
 1495 0240 05       		.uleb128 0x5
 1496 0241 07       		.byte	0x7
 1497 0242 F7       		.byte	0xf7
 1498 0243 010F0000 		.4byte	0xf01
 1499 0247 05       		.uleb128 0x5
 1500 0248 07       		.byte	0x7
 1501 0249 F8       		.byte	0xf8
 1502 024a 160F0000 		.4byte	0xf16
 1503 024e 05       		.uleb128 0x5
 1504 024f 07       		.byte	0x7
 1505 0250 F9       		.byte	0xf9
 1506 0251 350F0000 		.4byte	0xf35
 1507 0255 05       		.uleb128 0x5
 1508 0256 07       		.byte	0x7
 1509 0257 FB       		.byte	0xfb
 1510 0258 540F0000 		.4byte	0xf54
 1511 025c 05       		.uleb128 0x5
 1512 025d 07       		.byte	0x7
 1513 025e FC       		.byte	0xfc
ARM GAS  /tmp/cc5e0BXI.s 			page 69


 1514 025f 750F0000 		.4byte	0xf75
 1515 0263 0A       		.uleb128 0xa
 1516 0264 64697600 		.ascii	"div\000"
 1517 0268 07       		.byte	0x7
 1518 0269 E9       		.byte	0xe9
 1519 026a 57020000 		.4byte	.LASF468
 1520 026e 800C0000 		.4byte	0xc80
 1521 0272 08       		.uleb128 0x8
 1522 0273 CE020000 		.4byte	0x2ce
 1523 0277 08       		.uleb128 0x8
 1524 0278 CE020000 		.4byte	0x2ce
 1525 027c 00       		.byte	0
 1526 027d 00       		.byte	0
 1527 027e 0B       		.uleb128 0xb
 1528 027f 1D070000 		.4byte	.LASF7
 1529 0283 0C       		.byte	0xc
 1530 0284 D8       		.byte	0xd8
 1531 0285 93020000 		.4byte	0x293
 1532 0289 0C       		.uleb128 0xc
 1533 028a 7E020000 		.4byte	0x27e
 1534 028e 0D       		.uleb128 0xd
 1535 028f 7E020000 		.4byte	0x27e
 1536 0293 0E       		.uleb128 0xe
 1537 0294 04       		.byte	0x4
 1538 0295 07       		.byte	0x7
 1539 0296 79010000 		.4byte	.LASF2
 1540 029a 0F       		.uleb128 0xf
 1541 029b 04       		.byte	0x4
 1542 029c 05       		.byte	0x5
 1543 029d 696E7400 		.ascii	"int\000"
 1544 02a1 0C       		.uleb128 0xc
 1545 02a2 9A020000 		.4byte	0x29a
 1546 02a6 10       		.uleb128 0x10
 1547 02a7 10       		.byte	0x10
 1548 02a8 0C       		.byte	0xc
 1549 02a9 AA01     		.2byte	0x1aa
 1550 02ab 09050000 		.4byte	.LASF469
 1551 02af CE020000 		.4byte	0x2ce
 1552 02b3 11       		.uleb128 0x11
 1553 02b4 D3040000 		.4byte	.LASF3
 1554 02b8 0C       		.byte	0xc
 1555 02b9 AB01     		.2byte	0x1ab
 1556 02bb CE020000 		.4byte	0x2ce
 1557 02bf 00       		.byte	0
 1558 02c0 11       		.uleb128 0x11
 1559 02c1 9B040000 		.4byte	.LASF4
 1560 02c5 0C       		.byte	0xc
 1561 02c6 AC01     		.2byte	0x1ac
 1562 02c8 D5020000 		.4byte	0x2d5
 1563 02cc 08       		.byte	0x8
 1564 02cd 00       		.byte	0
 1565 02ce 0E       		.uleb128 0xe
 1566 02cf 08       		.byte	0x8
 1567 02d0 05       		.byte	0x5
 1568 02d1 800A0000 		.4byte	.LASF5
 1569 02d5 0E       		.uleb128 0xe
 1570 02d6 08       		.byte	0x8
ARM GAS  /tmp/cc5e0BXI.s 			page 70


 1571 02d7 04       		.byte	0x4
 1572 02d8 AE0A0000 		.4byte	.LASF6
 1573 02dc 12       		.uleb128 0x12
 1574 02dd D7020000 		.4byte	.LASF8
 1575 02e1 0C       		.byte	0xc
 1576 02e2 AD01     		.2byte	0x1ad
 1577 02e4 A6020000 		.4byte	0x2a6
 1578 02e8 13       		.uleb128 0x13
 1579 02e9 AA120000 		.4byte	.LASF470
 1580 02ed 0B       		.uleb128 0xb
 1581 02ee DE0C0000 		.4byte	.LASF9
 1582 02f2 0D       		.byte	0xd
 1583 02f3 1B       		.byte	0x1b
 1584 02f4 F8020000 		.4byte	0x2f8
 1585 02f8 0E       		.uleb128 0xe
 1586 02f9 01       		.byte	0x1
 1587 02fa 06       		.byte	0x6
 1588 02fb B6130000 		.4byte	.LASF10
 1589 02ff 0B       		.uleb128 0xb
 1590 0300 930F0000 		.4byte	.LASF11
 1591 0304 0D       		.byte	0xd
 1592 0305 1D       		.byte	0x1d
 1593 0306 0A030000 		.4byte	0x30a
 1594 030a 0E       		.uleb128 0xe
 1595 030b 01       		.byte	0x1
 1596 030c 08       		.byte	0x8
 1597 030d 59120000 		.4byte	.LASF12
 1598 0311 0B       		.uleb128 0xb
 1599 0312 440B0000 		.4byte	.LASF13
 1600 0316 0D       		.byte	0xd
 1601 0317 29       		.byte	0x29
 1602 0318 1C030000 		.4byte	0x31c
 1603 031c 0E       		.uleb128 0xe
 1604 031d 02       		.byte	0x2
 1605 031e 05       		.byte	0x5
 1606 031f 4D020000 		.4byte	.LASF14
 1607 0323 0B       		.uleb128 0xb
 1608 0324 5F080000 		.4byte	.LASF15
 1609 0328 0D       		.byte	0xd
 1610 0329 2B       		.byte	0x2b
 1611 032a 2E030000 		.4byte	0x32e
 1612 032e 0E       		.uleb128 0xe
 1613 032f 02       		.byte	0x2
 1614 0330 07       		.byte	0x7
 1615 0331 DD130000 		.4byte	.LASF16
 1616 0335 0B       		.uleb128 0xb
 1617 0336 22090000 		.4byte	.LASF17
 1618 033a 0D       		.byte	0xd
 1619 033b 3F       		.byte	0x3f
 1620 033c 40030000 		.4byte	0x340
 1621 0340 0E       		.uleb128 0xe
 1622 0341 04       		.byte	0x4
 1623 0342 05       		.byte	0x5
 1624 0343 27000000 		.4byte	.LASF18
 1625 0347 0B       		.uleb128 0xb
 1626 0348 F8050000 		.4byte	.LASF19
 1627 034c 0D       		.byte	0xd
ARM GAS  /tmp/cc5e0BXI.s 			page 71


 1628 034d 41       		.byte	0x41
 1629 034e 52030000 		.4byte	0x352
 1630 0352 0E       		.uleb128 0xe
 1631 0353 04       		.byte	0x4
 1632 0354 07       		.byte	0x7
 1633 0355 93110000 		.4byte	.LASF20
 1634 0359 0B       		.uleb128 0xb
 1635 035a B4040000 		.4byte	.LASF21
 1636 035e 0D       		.byte	0xd
 1637 035f 59       		.byte	0x59
 1638 0360 CE020000 		.4byte	0x2ce
 1639 0364 0B       		.uleb128 0xb
 1640 0365 07080000 		.4byte	.LASF22
 1641 0369 0D       		.byte	0xd
 1642 036a 5B       		.byte	0x5b
 1643 036b 6F030000 		.4byte	0x36f
 1644 036f 0E       		.uleb128 0xe
 1645 0370 08       		.byte	0x8
 1646 0371 07       		.byte	0x7
 1647 0372 F2040000 		.4byte	.LASF23
 1648 0376 0B       		.uleb128 0xb
 1649 0377 1E110000 		.4byte	.LASF24
 1650 037b 0D       		.byte	0xd
 1651 037c 78       		.byte	0x78
 1652 037d F8020000 		.4byte	0x2f8
 1653 0381 0B       		.uleb128 0xb
 1654 0382 040E0000 		.4byte	.LASF25
 1655 0386 0D       		.byte	0xd
 1656 0387 7A       		.byte	0x7a
 1657 0388 0A030000 		.4byte	0x30a
 1658 038c 0B       		.uleb128 0xb
 1659 038d 1D0C0000 		.4byte	.LASF26
 1660 0391 0D       		.byte	0xd
 1661 0392 92       		.byte	0x92
 1662 0393 1C030000 		.4byte	0x31c
 1663 0397 0B       		.uleb128 0xb
 1664 0398 D2140000 		.4byte	.LASF27
 1665 039c 0D       		.byte	0xd
 1666 039d 94       		.byte	0x94
 1667 039e 2E030000 		.4byte	0x32e
 1668 03a2 0B       		.uleb128 0xb
 1669 03a3 80020000 		.4byte	.LASF28
 1670 03a7 0D       		.byte	0xd
 1671 03a8 A8       		.byte	0xa8
 1672 03a9 40030000 		.4byte	0x340
 1673 03ad 0B       		.uleb128 0xb
 1674 03ae AE070000 		.4byte	.LASF29
 1675 03b2 0D       		.byte	0xd
 1676 03b3 AA       		.byte	0xaa
 1677 03b4 52030000 		.4byte	0x352
 1678 03b8 0B       		.uleb128 0xb
 1679 03b9 C00D0000 		.4byte	.LASF30
 1680 03bd 0D       		.byte	0xd
 1681 03be BA       		.byte	0xba
 1682 03bf CE020000 		.4byte	0x2ce
 1683 03c3 0B       		.uleb128 0xb
 1684 03c4 4F000000 		.4byte	.LASF31
ARM GAS  /tmp/cc5e0BXI.s 			page 72


 1685 03c8 0D       		.byte	0xd
 1686 03c9 BC       		.byte	0xbc
 1687 03ca 6F030000 		.4byte	0x36f
 1688 03ce 0B       		.uleb128 0xb
 1689 03cf 39030000 		.4byte	.LASF32
 1690 03d3 0D       		.byte	0xd
 1691 03d4 C8       		.byte	0xc8
 1692 03d5 9A020000 		.4byte	0x29a
 1693 03d9 0B       		.uleb128 0xb
 1694 03da 30060000 		.4byte	.LASF33
 1695 03de 0D       		.byte	0xd
 1696 03df CA       		.byte	0xca
 1697 03e0 93020000 		.4byte	0x293
 1698 03e4 0B       		.uleb128 0xb
 1699 03e5 8F120000 		.4byte	.LASF34
 1700 03e9 0E       		.byte	0xe
 1701 03ea 07       		.byte	0x7
 1702 03eb 9A020000 		.4byte	0x29a
 1703 03ef 0B       		.uleb128 0xb
 1704 03f0 15020000 		.4byte	.LASF35
 1705 03f4 0F       		.byte	0xf
 1706 03f5 2C       		.byte	0x2c
 1707 03f6 40030000 		.4byte	0x340
 1708 03fa 0B       		.uleb128 0xb
 1709 03fb 44030000 		.4byte	.LASF36
 1710 03ff 0F       		.byte	0xf
 1711 0400 72       		.byte	0x72
 1712 0401 40030000 		.4byte	0x340
 1713 0405 12       		.uleb128 0x12
 1714 0406 E0110000 		.4byte	.LASF37
 1715 040a 0C       		.byte	0xc
 1716 040b 6501     		.2byte	0x165
 1717 040d 93020000 		.4byte	0x293
 1718 0411 14       		.uleb128 0x14
 1719 0412 08       		.byte	0x8
 1720 0413 0F       		.byte	0xf
 1721 0414 A4       		.byte	0xa4
 1722 0415 86080000 		.4byte	.LASF144
 1723 0419 55040000 		.4byte	0x455
 1724 041d 15       		.uleb128 0x15
 1725 041e 04       		.byte	0x4
 1726 041f 0F       		.byte	0xf
 1727 0420 A7       		.byte	0xa7
 1728 0421 3C040000 		.4byte	0x43c
 1729 0425 16       		.uleb128 0x16
 1730 0426 58060000 		.4byte	.LASF38
 1731 042a 0F       		.byte	0xf
 1732 042b A8       		.byte	0xa8
 1733 042c 05040000 		.4byte	0x405
 1734 0430 16       		.uleb128 0x16
 1735 0431 290F0000 		.4byte	.LASF39
 1736 0435 0F       		.byte	0xf
 1737 0436 A9       		.byte	0xa9
 1738 0437 55040000 		.4byte	0x455
 1739 043b 00       		.byte	0
 1740 043c 17       		.uleb128 0x17
 1741 043d 84040000 		.4byte	.LASF40
ARM GAS  /tmp/cc5e0BXI.s 			page 73


 1742 0441 0F       		.byte	0xf
 1743 0442 A5       		.byte	0xa5
 1744 0443 9A020000 		.4byte	0x29a
 1745 0447 00       		.byte	0
 1746 0448 17       		.uleb128 0x17
 1747 0449 4F080000 		.4byte	.LASF41
 1748 044d 0F       		.byte	0xf
 1749 044e AA       		.byte	0xaa
 1750 044f 1D040000 		.4byte	0x41d
 1751 0453 04       		.byte	0x4
 1752 0454 00       		.byte	0
 1753 0455 18       		.uleb128 0x18
 1754 0456 0A030000 		.4byte	0x30a
 1755 045a 65040000 		.4byte	0x465
 1756 045e 19       		.uleb128 0x19
 1757 045f 65040000 		.4byte	0x465
 1758 0463 03       		.byte	0x3
 1759 0464 00       		.byte	0
 1760 0465 0E       		.uleb128 0xe
 1761 0466 04       		.byte	0x4
 1762 0467 07       		.byte	0x7
 1763 0468 61110000 		.4byte	.LASF42
 1764 046c 0B       		.uleb128 0xb
 1765 046d D60B0000 		.4byte	.LASF43
 1766 0471 0F       		.byte	0xf
 1767 0472 AB       		.byte	0xab
 1768 0473 11040000 		.4byte	0x411
 1769 0477 0B       		.uleb128 0xb
 1770 0478 C4050000 		.4byte	.LASF44
 1771 047c 0F       		.byte	0xf
 1772 047d AF       		.byte	0xaf
 1773 047e E4030000 		.4byte	0x3e4
 1774 0482 1A       		.uleb128 0x1a
 1775 0483 04       		.byte	0x4
 1776 0484 1B       		.uleb128 0x1b
 1777 0485 04       		.byte	0x4
 1778 0486 8A040000 		.4byte	0x48a
 1779 048a 0E       		.uleb128 0xe
 1780 048b 01       		.byte	0x1
 1781 048c 08       		.byte	0x8
 1782 048d F1080000 		.4byte	.LASF45
 1783 0491 0C       		.uleb128 0xc
 1784 0492 8A040000 		.4byte	0x48a
 1785 0496 0B       		.uleb128 0xb
 1786 0497 98080000 		.4byte	.LASF46
 1787 049b 10       		.byte	0x10
 1788 049c 16       		.byte	0x16
 1789 049d 52030000 		.4byte	0x352
 1790 04a1 1C       		.uleb128 0x1c
 1791 04a2 9C030000 		.4byte	.LASF51
 1792 04a6 18       		.byte	0x18
 1793 04a7 10       		.byte	0x10
 1794 04a8 2D       		.byte	0x2d
 1795 04a9 F4040000 		.4byte	0x4f4
 1796 04ad 17       		.uleb128 0x17
 1797 04ae EE070000 		.4byte	.LASF47
 1798 04b2 10       		.byte	0x10
ARM GAS  /tmp/cc5e0BXI.s 			page 74


 1799 04b3 2F       		.byte	0x2f
 1800 04b4 F4040000 		.4byte	0x4f4
 1801 04b8 00       		.byte	0
 1802 04b9 1D       		.uleb128 0x1d
 1803 04ba 5F6B00   		.ascii	"_k\000"
 1804 04bd 10       		.byte	0x10
 1805 04be 30       		.byte	0x30
 1806 04bf 9A020000 		.4byte	0x29a
 1807 04c3 04       		.byte	0x4
 1808 04c4 17       		.uleb128 0x17
 1809 04c5 BB000000 		.4byte	.LASF48
 1810 04c9 10       		.byte	0x10
 1811 04ca 30       		.byte	0x30
 1812 04cb 9A020000 		.4byte	0x29a
 1813 04cf 08       		.byte	0x8
 1814 04d0 17       		.uleb128 0x17
 1815 04d1 F1060000 		.4byte	.LASF49
 1816 04d5 10       		.byte	0x10
 1817 04d6 30       		.byte	0x30
 1818 04d7 9A020000 		.4byte	0x29a
 1819 04db 0C       		.byte	0xc
 1820 04dc 17       		.uleb128 0x17
 1821 04dd BF050000 		.4byte	.LASF50
 1822 04e1 10       		.byte	0x10
 1823 04e2 30       		.byte	0x30
 1824 04e3 9A020000 		.4byte	0x29a
 1825 04e7 10       		.byte	0x10
 1826 04e8 1D       		.uleb128 0x1d
 1827 04e9 5F7800   		.ascii	"_x\000"
 1828 04ec 10       		.byte	0x10
 1829 04ed 31       		.byte	0x31
 1830 04ee FA040000 		.4byte	0x4fa
 1831 04f2 14       		.byte	0x14
 1832 04f3 00       		.byte	0
 1833 04f4 1B       		.uleb128 0x1b
 1834 04f5 04       		.byte	0x4
 1835 04f6 A1040000 		.4byte	0x4a1
 1836 04fa 18       		.uleb128 0x18
 1837 04fb 96040000 		.4byte	0x496
 1838 04ff 0A050000 		.4byte	0x50a
 1839 0503 19       		.uleb128 0x19
 1840 0504 65040000 		.4byte	0x465
 1841 0508 00       		.byte	0
 1842 0509 00       		.byte	0
 1843 050a 1C       		.uleb128 0x1c
 1844 050b 37110000 		.4byte	.LASF52
 1845 050f 24       		.byte	0x24
 1846 0510 10       		.byte	0x10
 1847 0511 35       		.byte	0x35
 1848 0512 83050000 		.4byte	0x583
 1849 0516 17       		.uleb128 0x17
 1850 0517 5E010000 		.4byte	.LASF53
 1851 051b 10       		.byte	0x10
 1852 051c 37       		.byte	0x37
 1853 051d 9A020000 		.4byte	0x29a
 1854 0521 00       		.byte	0
 1855 0522 17       		.uleb128 0x17
ARM GAS  /tmp/cc5e0BXI.s 			page 75


 1856 0523 BE040000 		.4byte	.LASF54
 1857 0527 10       		.byte	0x10
 1858 0528 38       		.byte	0x38
 1859 0529 9A020000 		.4byte	0x29a
 1860 052d 04       		.byte	0x4
 1861 052e 17       		.uleb128 0x17
 1862 052f 2B040000 		.4byte	.LASF55
 1863 0533 10       		.byte	0x10
 1864 0534 39       		.byte	0x39
 1865 0535 9A020000 		.4byte	0x29a
 1866 0539 08       		.byte	0x8
 1867 053a 17       		.uleb128 0x17
 1868 053b F6080000 		.4byte	.LASF56
 1869 053f 10       		.byte	0x10
 1870 0540 3A       		.byte	0x3a
 1871 0541 9A020000 		.4byte	0x29a
 1872 0545 0C       		.byte	0xc
 1873 0546 17       		.uleb128 0x17
 1874 0547 030D0000 		.4byte	.LASF57
 1875 054b 10       		.byte	0x10
 1876 054c 3B       		.byte	0x3b
 1877 054d 9A020000 		.4byte	0x29a
 1878 0551 10       		.byte	0x10
 1879 0552 17       		.uleb128 0x17
 1880 0553 390F0000 		.4byte	.LASF58
 1881 0557 10       		.byte	0x10
 1882 0558 3C       		.byte	0x3c
 1883 0559 9A020000 		.4byte	0x29a
 1884 055d 14       		.byte	0x14
 1885 055e 17       		.uleb128 0x17
 1886 055f BA030000 		.4byte	.LASF59
 1887 0563 10       		.byte	0x10
 1888 0564 3D       		.byte	0x3d
 1889 0565 9A020000 		.4byte	0x29a
 1890 0569 18       		.byte	0x18
 1891 056a 17       		.uleb128 0x17
 1892 056b 87070000 		.4byte	.LASF60
 1893 056f 10       		.byte	0x10
 1894 0570 3E       		.byte	0x3e
 1895 0571 9A020000 		.4byte	0x29a
 1896 0575 1C       		.byte	0x1c
 1897 0576 17       		.uleb128 0x17
 1898 0577 660C0000 		.4byte	.LASF61
 1899 057b 10       		.byte	0x10
 1900 057c 3F       		.byte	0x3f
 1901 057d 9A020000 		.4byte	0x29a
 1902 0581 20       		.byte	0x20
 1903 0582 00       		.byte	0
 1904 0583 1E       		.uleb128 0x1e
 1905 0584 E1000000 		.4byte	.LASF62
 1906 0588 0801     		.2byte	0x108
 1907 058a 10       		.byte	0x10
 1908 058b 48       		.byte	0x48
 1909 058c C3050000 		.4byte	0x5c3
 1910 0590 17       		.uleb128 0x17
 1911 0591 010C0000 		.4byte	.LASF63
 1912 0595 10       		.byte	0x10
ARM GAS  /tmp/cc5e0BXI.s 			page 76


 1913 0596 49       		.byte	0x49
 1914 0597 C3050000 		.4byte	0x5c3
 1915 059b 00       		.byte	0
 1916 059c 17       		.uleb128 0x17
 1917 059d 09120000 		.4byte	.LASF64
 1918 05a1 10       		.byte	0x10
 1919 05a2 4A       		.byte	0x4a
 1920 05a3 C3050000 		.4byte	0x5c3
 1921 05a7 80       		.byte	0x80
 1922 05a8 1F       		.uleb128 0x1f
 1923 05a9 65140000 		.4byte	.LASF65
 1924 05ad 10       		.byte	0x10
 1925 05ae 4C       		.byte	0x4c
 1926 05af 96040000 		.4byte	0x496
 1927 05b3 0001     		.2byte	0x100
 1928 05b5 1F       		.uleb128 0x1f
 1929 05b6 1D150000 		.4byte	.LASF66
 1930 05ba 10       		.byte	0x10
 1931 05bb 4F       		.byte	0x4f
 1932 05bc 96040000 		.4byte	0x496
 1933 05c0 0401     		.2byte	0x104
 1934 05c2 00       		.byte	0
 1935 05c3 18       		.uleb128 0x18
 1936 05c4 82040000 		.4byte	0x482
 1937 05c8 D3050000 		.4byte	0x5d3
 1938 05cc 19       		.uleb128 0x19
 1939 05cd 65040000 		.4byte	0x465
 1940 05d1 1F       		.byte	0x1f
 1941 05d2 00       		.byte	0
 1942 05d3 1E       		.uleb128 0x1e
 1943 05d4 D60D0000 		.4byte	.LASF67
 1944 05d8 9001     		.2byte	0x190
 1945 05da 10       		.byte	0x10
 1946 05db 5B       		.byte	0x5b
 1947 05dc 11060000 		.4byte	0x611
 1948 05e0 17       		.uleb128 0x17
 1949 05e1 EE070000 		.4byte	.LASF47
 1950 05e5 10       		.byte	0x10
 1951 05e6 5C       		.byte	0x5c
 1952 05e7 11060000 		.4byte	0x611
 1953 05eb 00       		.byte	0
 1954 05ec 17       		.uleb128 0x17
 1955 05ed A4070000 		.4byte	.LASF68
 1956 05f1 10       		.byte	0x10
 1957 05f2 5D       		.byte	0x5d
 1958 05f3 9A020000 		.4byte	0x29a
 1959 05f7 04       		.byte	0x4
 1960 05f8 17       		.uleb128 0x17
 1961 05f9 4C030000 		.4byte	.LASF69
 1962 05fd 10       		.byte	0x10
 1963 05fe 5F       		.byte	0x5f
 1964 05ff 17060000 		.4byte	0x617
 1965 0603 08       		.byte	0x8
 1966 0604 17       		.uleb128 0x17
 1967 0605 E1000000 		.4byte	.LASF62
 1968 0609 10       		.byte	0x10
 1969 060a 60       		.byte	0x60
ARM GAS  /tmp/cc5e0BXI.s 			page 77


 1970 060b 83050000 		.4byte	0x583
 1971 060f 88       		.byte	0x88
 1972 0610 00       		.byte	0
 1973 0611 1B       		.uleb128 0x1b
 1974 0612 04       		.byte	0x4
 1975 0613 D3050000 		.4byte	0x5d3
 1976 0617 18       		.uleb128 0x18
 1977 0618 27060000 		.4byte	0x627
 1978 061c 27060000 		.4byte	0x627
 1979 0620 19       		.uleb128 0x19
 1980 0621 65040000 		.4byte	0x465
 1981 0625 1F       		.byte	0x1f
 1982 0626 00       		.byte	0
 1983 0627 1B       		.uleb128 0x1b
 1984 0628 04       		.byte	0x4
 1985 0629 2D060000 		.4byte	0x62d
 1986 062d 20       		.uleb128 0x20
 1987 062e 1C       		.uleb128 0x1c
 1988 062f 08130000 		.4byte	.LASF70
 1989 0633 08       		.byte	0x8
 1990 0634 10       		.byte	0x10
 1991 0635 73       		.byte	0x73
 1992 0636 53060000 		.4byte	0x653
 1993 063a 17       		.uleb128 0x17
 1994 063b C30A0000 		.4byte	.LASF71
 1995 063f 10       		.byte	0x10
 1996 0640 74       		.byte	0x74
 1997 0641 53060000 		.4byte	0x653
 1998 0645 00       		.byte	0
 1999 0646 17       		.uleb128 0x17
 2000 0647 77140000 		.4byte	.LASF72
 2001 064b 10       		.byte	0x10
 2002 064c 75       		.byte	0x75
 2003 064d 9A020000 		.4byte	0x29a
 2004 0651 04       		.byte	0x4
 2005 0652 00       		.byte	0
 2006 0653 1B       		.uleb128 0x1b
 2007 0654 04       		.byte	0x4
 2008 0655 0A030000 		.4byte	0x30a
 2009 0659 1C       		.uleb128 0x1c
 2010 065a B7050000 		.4byte	.LASF73
 2011 065e 68       		.byte	0x68
 2012 065f 10       		.byte	0x10
 2013 0660 B3       		.byte	0xb3
 2014 0661 83070000 		.4byte	0x783
 2015 0665 1D       		.uleb128 0x1d
 2016 0666 5F7000   		.ascii	"_p\000"
 2017 0669 10       		.byte	0x10
 2018 066a B4       		.byte	0xb4
 2019 066b 53060000 		.4byte	0x653
 2020 066f 00       		.byte	0
 2021 0670 1D       		.uleb128 0x1d
 2022 0671 5F7200   		.ascii	"_r\000"
 2023 0674 10       		.byte	0x10
 2024 0675 B5       		.byte	0xb5
 2025 0676 9A020000 		.4byte	0x29a
 2026 067a 04       		.byte	0x4
ARM GAS  /tmp/cc5e0BXI.s 			page 78


 2027 067b 1D       		.uleb128 0x1d
 2028 067c 5F7700   		.ascii	"_w\000"
 2029 067f 10       		.byte	0x10
 2030 0680 B6       		.byte	0xb6
 2031 0681 9A020000 		.4byte	0x29a
 2032 0685 08       		.byte	0x8
 2033 0686 17       		.uleb128 0x17
 2034 0687 C0010000 		.4byte	.LASF74
 2035 068b 10       		.byte	0x10
 2036 068c B7       		.byte	0xb7
 2037 068d 1C030000 		.4byte	0x31c
 2038 0691 0C       		.byte	0xc
 2039 0692 17       		.uleb128 0x17
 2040 0693 4A0F0000 		.4byte	.LASF75
 2041 0697 10       		.byte	0x10
 2042 0698 B8       		.byte	0xb8
 2043 0699 1C030000 		.4byte	0x31c
 2044 069d 0E       		.byte	0xe
 2045 069e 1D       		.uleb128 0x1d
 2046 069f 5F626600 		.ascii	"_bf\000"
 2047 06a3 10       		.byte	0x10
 2048 06a4 B9       		.byte	0xb9
 2049 06a5 2E060000 		.4byte	0x62e
 2050 06a9 10       		.byte	0x10
 2051 06aa 17       		.uleb128 0x17
 2052 06ab B7010000 		.4byte	.LASF76
 2053 06af 10       		.byte	0x10
 2054 06b0 BA       		.byte	0xba
 2055 06b1 9A020000 		.4byte	0x29a
 2056 06b5 18       		.byte	0x18
 2057 06b6 17       		.uleb128 0x17
 2058 06b7 51030000 		.4byte	.LASF77
 2059 06bb 10       		.byte	0x10
 2060 06bc C1       		.byte	0xc1
 2061 06bd 82040000 		.4byte	0x482
 2062 06c1 1C       		.byte	0x1c
 2063 06c2 17       		.uleb128 0x17
 2064 06c3 D4120000 		.4byte	.LASF78
 2065 06c7 10       		.byte	0x10
 2066 06c8 C3       		.byte	0xc3
 2067 06c9 250A0000 		.4byte	0xa25
 2068 06cd 20       		.byte	0x20
 2069 06ce 17       		.uleb128 0x17
 2070 06cf 6D0D0000 		.4byte	.LASF79
 2071 06d3 10       		.byte	0x10
 2072 06d4 C5       		.byte	0xc5
 2073 06d5 4F0A0000 		.4byte	0xa4f
 2074 06d9 24       		.byte	0x24
 2075 06da 17       		.uleb128 0x17
 2076 06db 50150000 		.4byte	.LASF80
 2077 06df 10       		.byte	0x10
 2078 06e0 C8       		.byte	0xc8
 2079 06e1 730A0000 		.4byte	0xa73
 2080 06e5 28       		.byte	0x28
 2081 06e6 17       		.uleb128 0x17
 2082 06e7 DE090000 		.4byte	.LASF81
 2083 06eb 10       		.byte	0x10
ARM GAS  /tmp/cc5e0BXI.s 			page 79


 2084 06ec C9       		.byte	0xc9
 2085 06ed 8D0A0000 		.4byte	0xa8d
 2086 06f1 2C       		.byte	0x2c
 2087 06f2 1D       		.uleb128 0x1d
 2088 06f3 5F756200 		.ascii	"_ub\000"
 2089 06f7 10       		.byte	0x10
 2090 06f8 CC       		.byte	0xcc
 2091 06f9 2E060000 		.4byte	0x62e
 2092 06fd 30       		.byte	0x30
 2093 06fe 1D       		.uleb128 0x1d
 2094 06ff 5F757000 		.ascii	"_up\000"
 2095 0703 10       		.byte	0x10
 2096 0704 CD       		.byte	0xcd
 2097 0705 53060000 		.4byte	0x653
 2098 0709 38       		.byte	0x38
 2099 070a 1D       		.uleb128 0x1d
 2100 070b 5F757200 		.ascii	"_ur\000"
 2101 070f 10       		.byte	0x10
 2102 0710 CE       		.byte	0xce
 2103 0711 9A020000 		.4byte	0x29a
 2104 0715 3C       		.byte	0x3c
 2105 0716 17       		.uleb128 0x17
 2106 0717 52060000 		.4byte	.LASF82
 2107 071b 10       		.byte	0x10
 2108 071c D1       		.byte	0xd1
 2109 071d 930A0000 		.4byte	0xa93
 2110 0721 40       		.byte	0x40
 2111 0722 17       		.uleb128 0x17
 2112 0723 B0140000 		.4byte	.LASF83
 2113 0727 10       		.byte	0x10
 2114 0728 D2       		.byte	0xd2
 2115 0729 A30A0000 		.4byte	0xaa3
 2116 072d 43       		.byte	0x43
 2117 072e 1D       		.uleb128 0x1d
 2118 072f 5F6C6200 		.ascii	"_lb\000"
 2119 0733 10       		.byte	0x10
 2120 0734 D5       		.byte	0xd5
 2121 0735 2E060000 		.4byte	0x62e
 2122 0739 44       		.byte	0x44
 2123 073a 17       		.uleb128 0x17
 2124 073b 78090000 		.4byte	.LASF84
 2125 073f 10       		.byte	0x10
 2126 0740 D8       		.byte	0xd8
 2127 0741 9A020000 		.4byte	0x29a
 2128 0745 4C       		.byte	0x4c
 2129 0746 17       		.uleb128 0x17
 2130 0747 4A060000 		.4byte	.LASF85
 2131 074b 10       		.byte	0x10
 2132 074c D9       		.byte	0xd9
 2133 074d EF030000 		.4byte	0x3ef
 2134 0751 50       		.byte	0x50
 2135 0752 17       		.uleb128 0x17
 2136 0753 230F0000 		.4byte	.LASF86
 2137 0757 10       		.byte	0x10
 2138 0758 DC       		.byte	0xdc
 2139 0759 A1070000 		.4byte	0x7a1
 2140 075d 54       		.byte	0x54
ARM GAS  /tmp/cc5e0BXI.s 			page 80


 2141 075e 17       		.uleb128 0x17
 2142 075f 47110000 		.4byte	.LASF87
 2143 0763 10       		.byte	0x10
 2144 0764 E0       		.byte	0xe0
 2145 0765 77040000 		.4byte	0x477
 2146 0769 58       		.byte	0x58
 2147 076a 17       		.uleb128 0x17
 2148 076b 99020000 		.4byte	.LASF88
 2149 076f 10       		.byte	0x10
 2150 0770 E2       		.byte	0xe2
 2151 0771 6C040000 		.4byte	0x46c
 2152 0775 5C       		.byte	0x5c
 2153 0776 17       		.uleb128 0x17
 2154 0777 15150000 		.4byte	.LASF89
 2155 077b 10       		.byte	0x10
 2156 077c E3       		.byte	0xe3
 2157 077d 9A020000 		.4byte	0x29a
 2158 0781 64       		.byte	0x64
 2159 0782 00       		.byte	0
 2160 0783 21       		.uleb128 0x21
 2161 0784 9A020000 		.4byte	0x29a
 2162 0788 A1070000 		.4byte	0x7a1
 2163 078c 08       		.uleb128 0x8
 2164 078d A1070000 		.4byte	0x7a1
 2165 0791 08       		.uleb128 0x8
 2166 0792 82040000 		.4byte	0x482
 2167 0796 08       		.uleb128 0x8
 2168 0797 84040000 		.4byte	0x484
 2169 079b 08       		.uleb128 0x8
 2170 079c 9A020000 		.4byte	0x29a
 2171 07a0 00       		.byte	0
 2172 07a1 1B       		.uleb128 0x1b
 2173 07a2 04       		.byte	0x4
 2174 07a3 AC070000 		.4byte	0x7ac
 2175 07a7 0C       		.uleb128 0xc
 2176 07a8 A1070000 		.4byte	0x7a1
 2177 07ac 22       		.uleb128 0x22
 2178 07ad D6130000 		.4byte	.LASF90
 2179 07b1 2804     		.2byte	0x428
 2180 07b3 10       		.byte	0x10
 2181 07b4 3802     		.2byte	0x238
 2182 07b6 250A0000 		.4byte	0xa25
 2183 07ba 23       		.uleb128 0x23
 2184 07bb F0       		.byte	0xf0
 2185 07bc 10       		.byte	0x10
 2186 07bd 5602     		.2byte	0x256
 2187 07bf 01090000 		.4byte	0x901
 2188 07c3 24       		.uleb128 0x24
 2189 07c4 D0       		.byte	0xd0
 2190 07c5 10       		.byte	0x10
 2191 07c6 5802     		.2byte	0x258
 2192 07c8 C4080000 		.4byte	0x8c4
 2193 07cc 11       		.uleb128 0x11
 2194 07cd B6140000 		.4byte	.LASF91
 2195 07d1 10       		.byte	0x10
 2196 07d2 5902     		.2byte	0x259
 2197 07d4 93020000 		.4byte	0x293
ARM GAS  /tmp/cc5e0BXI.s 			page 81


 2198 07d8 00       		.byte	0
 2199 07d9 11       		.uleb128 0x11
 2200 07da 5A0F0000 		.4byte	.LASF92
 2201 07de 10       		.byte	0x10
 2202 07df 5A02     		.2byte	0x25a
 2203 07e1 84040000 		.4byte	0x484
 2204 07e5 04       		.byte	0x4
 2205 07e6 11       		.uleb128 0x11
 2206 07e7 A2050000 		.4byte	.LASF93
 2207 07eb 10       		.byte	0x10
 2208 07ec 5B02     		.2byte	0x25b
 2209 07ee 450B0000 		.4byte	0xb45
 2210 07f2 08       		.byte	0x8
 2211 07f3 11       		.uleb128 0x11
 2212 07f4 6E0F0000 		.4byte	.LASF94
 2213 07f8 10       		.byte	0x10
 2214 07f9 5C02     		.2byte	0x25c
 2215 07fb 0A050000 		.4byte	0x50a
 2216 07ff 24       		.byte	0x24
 2217 0800 11       		.uleb128 0x11
 2218 0801 590A0000 		.4byte	.LASF95
 2219 0805 10       		.byte	0x10
 2220 0806 5D02     		.2byte	0x25d
 2221 0808 9A020000 		.4byte	0x29a
 2222 080c 48       		.byte	0x48
 2223 080d 11       		.uleb128 0x11
 2224 080e 940D0000 		.4byte	.LASF96
 2225 0812 10       		.byte	0x10
 2226 0813 5E02     		.2byte	0x25e
 2227 0815 6F030000 		.4byte	0x36f
 2228 0819 50       		.byte	0x50
 2229 081a 11       		.uleb128 0x11
 2230 081b EA050000 		.4byte	.LASF97
 2231 081f 10       		.byte	0x10
 2232 0820 5F02     		.2byte	0x25f
 2233 0822 000B0000 		.4byte	0xb00
 2234 0826 58       		.byte	0x58
 2235 0827 11       		.uleb128 0x11
 2236 0828 BB080000 		.4byte	.LASF98
 2237 082c 10       		.byte	0x10
 2238 082d 6002     		.2byte	0x260
 2239 082f 6C040000 		.4byte	0x46c
 2240 0833 68       		.byte	0x68
 2241 0834 11       		.uleb128 0x11
 2242 0835 89130000 		.4byte	.LASF99
 2243 0839 10       		.byte	0x10
 2244 083a 6102     		.2byte	0x261
 2245 083c 6C040000 		.4byte	0x46c
 2246 0840 70       		.byte	0x70
 2247 0841 11       		.uleb128 0x11
 2248 0842 17010000 		.4byte	.LASF100
 2249 0846 10       		.byte	0x10
 2250 0847 6202     		.2byte	0x262
 2251 0849 6C040000 		.4byte	0x46c
 2252 084d 78       		.byte	0x78
 2253 084e 11       		.uleb128 0x11
 2254 084f C60F0000 		.4byte	.LASF101
ARM GAS  /tmp/cc5e0BXI.s 			page 82


 2255 0853 10       		.byte	0x10
 2256 0854 6302     		.2byte	0x263
 2257 0856 550B0000 		.4byte	0xb55
 2258 085a 80       		.byte	0x80
 2259 085b 11       		.uleb128 0x11
 2260 085c 67010000 		.4byte	.LASF102
 2261 0860 10       		.byte	0x10
 2262 0861 6402     		.2byte	0x264
 2263 0863 650B0000 		.4byte	0xb65
 2264 0867 88       		.byte	0x88
 2265 0868 11       		.uleb128 0x11
 2266 0869 74130000 		.4byte	.LASF103
 2267 086d 10       		.byte	0x10
 2268 086e 6502     		.2byte	0x265
 2269 0870 9A020000 		.4byte	0x29a
 2270 0874 A0       		.byte	0xa0
 2271 0875 11       		.uleb128 0x11
 2272 0876 C9020000 		.4byte	.LASF104
 2273 087a 10       		.byte	0x10
 2274 087b 6602     		.2byte	0x266
 2275 087d 6C040000 		.4byte	0x46c
 2276 0881 A4       		.byte	0xa4
 2277 0882 11       		.uleb128 0x11
 2278 0883 0A090000 		.4byte	.LASF105
 2279 0887 10       		.byte	0x10
 2280 0888 6702     		.2byte	0x267
 2281 088a 6C040000 		.4byte	0x46c
 2282 088e AC       		.byte	0xac
 2283 088f 11       		.uleb128 0x11
 2284 0890 2C050000 		.4byte	.LASF106
 2285 0894 10       		.byte	0x10
 2286 0895 6802     		.2byte	0x268
 2287 0897 6C040000 		.4byte	0x46c
 2288 089b B4       		.byte	0xb4
 2289 089c 11       		.uleb128 0x11
 2290 089d 0F0B0000 		.4byte	.LASF107
 2291 08a1 10       		.byte	0x10
 2292 08a2 6902     		.2byte	0x269
 2293 08a4 6C040000 		.4byte	0x46c
 2294 08a8 BC       		.byte	0xbc
 2295 08a9 11       		.uleb128 0x11
 2296 08aa AA080000 		.4byte	.LASF108
 2297 08ae 10       		.byte	0x10
 2298 08af 6A02     		.2byte	0x26a
 2299 08b1 6C040000 		.4byte	0x46c
 2300 08b5 C4       		.byte	0xc4
 2301 08b6 11       		.uleb128 0x11
 2302 08b7 A80C0000 		.4byte	.LASF109
 2303 08bb 10       		.byte	0x10
 2304 08bc 6B02     		.2byte	0x26b
 2305 08be 9A020000 		.4byte	0x29a
 2306 08c2 CC       		.byte	0xcc
 2307 08c3 00       		.byte	0
 2308 08c4 24       		.uleb128 0x24
 2309 08c5 F0       		.byte	0xf0
 2310 08c6 10       		.byte	0x10
 2311 08c7 7102     		.2byte	0x271
ARM GAS  /tmp/cc5e0BXI.s 			page 83


 2312 08c9 E8080000 		.4byte	0x8e8
 2313 08cd 11       		.uleb128 0x11
 2314 08ce E2040000 		.4byte	.LASF110
 2315 08d2 10       		.byte	0x10
 2316 08d3 7302     		.2byte	0x273
 2317 08d5 750B0000 		.4byte	0xb75
 2318 08d9 00       		.byte	0
 2319 08da 11       		.uleb128 0x11
 2320 08db 71150000 		.4byte	.LASF111
 2321 08df 10       		.byte	0x10
 2322 08e0 7402     		.2byte	0x274
 2323 08e2 850B0000 		.4byte	0xb85
 2324 08e6 78       		.byte	0x78
 2325 08e7 00       		.byte	0
 2326 08e8 25       		.uleb128 0x25
 2327 08e9 D6130000 		.4byte	.LASF90
 2328 08ed 10       		.byte	0x10
 2329 08ee 6C02     		.2byte	0x26c
 2330 08f0 C3070000 		.4byte	0x7c3
 2331 08f4 25       		.uleb128 0x25
 2332 08f5 8B0F0000 		.4byte	.LASF112
 2333 08f9 10       		.byte	0x10
 2334 08fa 7502     		.2byte	0x275
 2335 08fc C4080000 		.4byte	0x8c4
 2336 0900 00       		.byte	0
 2337 0901 11       		.uleb128 0x11
 2338 0902 06020000 		.4byte	.LASF113
 2339 0906 10       		.byte	0x10
 2340 0907 3A02     		.2byte	0x23a
 2341 0909 9A020000 		.4byte	0x29a
 2342 090d 00       		.byte	0
 2343 090e 11       		.uleb128 0x11
 2344 090f 520A0000 		.4byte	.LASF114
 2345 0913 10       		.byte	0x10
 2346 0914 3F02     		.2byte	0x23f
 2347 0916 FA0A0000 		.4byte	0xafa
 2348 091a 04       		.byte	0x4
 2349 091b 11       		.uleb128 0x11
 2350 091c 47120000 		.4byte	.LASF115
 2351 0920 10       		.byte	0x10
 2352 0921 3F02     		.2byte	0x23f
 2353 0923 FA0A0000 		.4byte	0xafa
 2354 0927 08       		.byte	0x8
 2355 0928 11       		.uleb128 0x11
 2356 0929 69150000 		.4byte	.LASF116
 2357 092d 10       		.byte	0x10
 2358 092e 3F02     		.2byte	0x23f
 2359 0930 FA0A0000 		.4byte	0xafa
 2360 0934 0C       		.byte	0xc
 2361 0935 11       		.uleb128 0x11
 2362 0936 9F070000 		.4byte	.LASF117
 2363 093a 10       		.byte	0x10
 2364 093b 4102     		.2byte	0x241
 2365 093d 9A020000 		.4byte	0x29a
 2366 0941 10       		.byte	0x10
 2367 0942 11       		.uleb128 0x11
 2368 0943 C4060000 		.4byte	.LASF118
ARM GAS  /tmp/cc5e0BXI.s 			page 84


 2369 0947 10       		.byte	0x10
 2370 0948 4202     		.2byte	0x242
 2371 094a 950B0000 		.4byte	0xb95
 2372 094e 14       		.byte	0x14
 2373 094f 11       		.uleb128 0x11
 2374 0950 D00F0000 		.4byte	.LASF119
 2375 0954 10       		.byte	0x10
 2376 0955 4402     		.2byte	0x244
 2377 0957 9A020000 		.4byte	0x29a
 2378 095b 30       		.byte	0x30
 2379 095c 11       		.uleb128 0x11
 2380 095d FE0E0000 		.4byte	.LASF120
 2381 0961 10       		.byte	0x10
 2382 0962 4502     		.2byte	0x245
 2383 0964 490A0000 		.4byte	0xa49
 2384 0968 34       		.byte	0x34
 2385 0969 11       		.uleb128 0x11
 2386 096a FF090000 		.4byte	.LASF121
 2387 096e 10       		.byte	0x10
 2388 096f 4702     		.2byte	0x247
 2389 0971 9A020000 		.4byte	0x29a
 2390 0975 38       		.byte	0x38
 2391 0976 11       		.uleb128 0x11
 2392 0977 C30B0000 		.4byte	.LASF122
 2393 097b 10       		.byte	0x10
 2394 097c 4902     		.2byte	0x249
 2395 097e B00B0000 		.4byte	0xbb0
 2396 0982 3C       		.byte	0x3c
 2397 0983 11       		.uleb128 0x11
 2398 0984 FE030000 		.4byte	.LASF123
 2399 0988 10       		.byte	0x10
 2400 0989 4C02     		.2byte	0x24c
 2401 098b F4040000 		.4byte	0x4f4
 2402 098f 40       		.byte	0x40
 2403 0990 11       		.uleb128 0x11
 2404 0991 9E090000 		.4byte	.LASF124
 2405 0995 10       		.byte	0x10
 2406 0996 4D02     		.2byte	0x24d
 2407 0998 9A020000 		.4byte	0x29a
 2408 099c 44       		.byte	0x44
 2409 099d 11       		.uleb128 0x11
 2410 099e B1090000 		.4byte	.LASF125
 2411 09a2 10       		.byte	0x10
 2412 09a3 4E02     		.2byte	0x24e
 2413 09a5 F4040000 		.4byte	0x4f4
 2414 09a9 48       		.byte	0x48
 2415 09aa 11       		.uleb128 0x11
 2416 09ab C90A0000 		.4byte	.LASF126
 2417 09af 10       		.byte	0x10
 2418 09b0 4F02     		.2byte	0x24f
 2419 09b2 B60B0000 		.4byte	0xbb6
 2420 09b6 4C       		.byte	0x4c
 2421 09b7 11       		.uleb128 0x11
 2422 09b8 B90F0000 		.4byte	.LASF127
 2423 09bc 10       		.byte	0x10
 2424 09bd 5202     		.2byte	0x252
 2425 09bf 9A020000 		.4byte	0x29a
ARM GAS  /tmp/cc5e0BXI.s 			page 85


 2426 09c3 50       		.byte	0x50
 2427 09c4 11       		.uleb128 0x11
 2428 09c5 78070000 		.4byte	.LASF128
 2429 09c9 10       		.byte	0x10
 2430 09ca 5302     		.2byte	0x253
 2431 09cc 84040000 		.4byte	0x484
 2432 09d0 54       		.byte	0x54
 2433 09d1 11       		.uleb128 0x11
 2434 09d2 B6090000 		.4byte	.LASF129
 2435 09d6 10       		.byte	0x10
 2436 09d7 7602     		.2byte	0x276
 2437 09d9 BA070000 		.4byte	0x7ba
 2438 09dd 58       		.byte	0x58
 2439 09de 26       		.uleb128 0x26
 2440 09df D60D0000 		.4byte	.LASF67
 2441 09e3 10       		.byte	0x10
 2442 09e4 7A02     		.2byte	0x27a
 2443 09e6 11060000 		.4byte	0x611
 2444 09ea 4801     		.2byte	0x148
 2445 09ec 26       		.uleb128 0x26
 2446 09ed 19090000 		.4byte	.LASF130
 2447 09f1 10       		.byte	0x10
 2448 09f2 7B02     		.2byte	0x27b
 2449 09f4 D3050000 		.4byte	0x5d3
 2450 09f8 4C01     		.2byte	0x14c
 2451 09fa 26       		.uleb128 0x26
 2452 09fb 00090000 		.4byte	.LASF131
 2453 09ff 10       		.byte	0x10
 2454 0a00 7F02     		.2byte	0x27f
 2455 0a02 C70B0000 		.4byte	0xbc7
 2456 0a06 DC02     		.2byte	0x2dc
 2457 0a08 26       		.uleb128 0x26
 2458 0a09 6C130000 		.4byte	.LASF132
 2459 0a0d 10       		.byte	0x10
 2460 0a0e 8402     		.2byte	0x284
 2461 0a10 BF0A0000 		.4byte	0xabf
 2462 0a14 E002     		.2byte	0x2e0
 2463 0a16 26       		.uleb128 0x26
 2464 0a17 C30E0000 		.4byte	.LASF133
 2465 0a1b 10       		.byte	0x10
 2466 0a1c 8502     		.2byte	0x285
 2467 0a1e D30B0000 		.4byte	0xbd3
 2468 0a22 EC02     		.2byte	0x2ec
 2469 0a24 00       		.byte	0
 2470 0a25 1B       		.uleb128 0x1b
 2471 0a26 04       		.byte	0x4
 2472 0a27 83070000 		.4byte	0x783
 2473 0a2b 21       		.uleb128 0x21
 2474 0a2c 9A020000 		.4byte	0x29a
 2475 0a30 490A0000 		.4byte	0xa49
 2476 0a34 08       		.uleb128 0x8
 2477 0a35 A1070000 		.4byte	0x7a1
 2478 0a39 08       		.uleb128 0x8
 2479 0a3a 82040000 		.4byte	0x482
 2480 0a3e 08       		.uleb128 0x8
 2481 0a3f 490A0000 		.4byte	0xa49
 2482 0a43 08       		.uleb128 0x8
ARM GAS  /tmp/cc5e0BXI.s 			page 86


 2483 0a44 9A020000 		.4byte	0x29a
 2484 0a48 00       		.byte	0
 2485 0a49 1B       		.uleb128 0x1b
 2486 0a4a 04       		.byte	0x4
 2487 0a4b 91040000 		.4byte	0x491
 2488 0a4f 1B       		.uleb128 0x1b
 2489 0a50 04       		.byte	0x4
 2490 0a51 2B0A0000 		.4byte	0xa2b
 2491 0a55 21       		.uleb128 0x21
 2492 0a56 FA030000 		.4byte	0x3fa
 2493 0a5a 730A0000 		.4byte	0xa73
 2494 0a5e 08       		.uleb128 0x8
 2495 0a5f A1070000 		.4byte	0x7a1
 2496 0a63 08       		.uleb128 0x8
 2497 0a64 82040000 		.4byte	0x482
 2498 0a68 08       		.uleb128 0x8
 2499 0a69 FA030000 		.4byte	0x3fa
 2500 0a6d 08       		.uleb128 0x8
 2501 0a6e 9A020000 		.4byte	0x29a
 2502 0a72 00       		.byte	0
 2503 0a73 1B       		.uleb128 0x1b
 2504 0a74 04       		.byte	0x4
 2505 0a75 550A0000 		.4byte	0xa55
 2506 0a79 21       		.uleb128 0x21
 2507 0a7a 9A020000 		.4byte	0x29a
 2508 0a7e 8D0A0000 		.4byte	0xa8d
 2509 0a82 08       		.uleb128 0x8
 2510 0a83 A1070000 		.4byte	0x7a1
 2511 0a87 08       		.uleb128 0x8
 2512 0a88 82040000 		.4byte	0x482
 2513 0a8c 00       		.byte	0
 2514 0a8d 1B       		.uleb128 0x1b
 2515 0a8e 04       		.byte	0x4
 2516 0a8f 790A0000 		.4byte	0xa79
 2517 0a93 18       		.uleb128 0x18
 2518 0a94 0A030000 		.4byte	0x30a
 2519 0a98 A30A0000 		.4byte	0xaa3
 2520 0a9c 19       		.uleb128 0x19
 2521 0a9d 65040000 		.4byte	0x465
 2522 0aa1 02       		.byte	0x2
 2523 0aa2 00       		.byte	0
 2524 0aa3 18       		.uleb128 0x18
 2525 0aa4 0A030000 		.4byte	0x30a
 2526 0aa8 B30A0000 		.4byte	0xab3
 2527 0aac 19       		.uleb128 0x19
 2528 0aad 65040000 		.4byte	0x465
 2529 0ab1 00       		.byte	0
 2530 0ab2 00       		.byte	0
 2531 0ab3 12       		.uleb128 0x12
 2532 0ab4 3C060000 		.4byte	.LASF134
 2533 0ab8 10       		.byte	0x10
 2534 0ab9 1D01     		.2byte	0x11d
 2535 0abb 59060000 		.4byte	0x659
 2536 0abf 27       		.uleb128 0x27
 2537 0ac0 38130000 		.4byte	.LASF135
 2538 0ac4 0C       		.byte	0xc
 2539 0ac5 10       		.byte	0x10
ARM GAS  /tmp/cc5e0BXI.s 			page 87


 2540 0ac6 2101     		.2byte	0x121
 2541 0ac8 F40A0000 		.4byte	0xaf4
 2542 0acc 11       		.uleb128 0x11
 2543 0acd EE070000 		.4byte	.LASF47
 2544 0ad1 10       		.byte	0x10
 2545 0ad2 2301     		.2byte	0x123
 2546 0ad4 F40A0000 		.4byte	0xaf4
 2547 0ad8 00       		.byte	0
 2548 0ad9 11       		.uleb128 0x11
 2549 0ada D9110000 		.4byte	.LASF136
 2550 0ade 10       		.byte	0x10
 2551 0adf 2401     		.2byte	0x124
 2552 0ae1 9A020000 		.4byte	0x29a
 2553 0ae5 04       		.byte	0x4
 2554 0ae6 11       		.uleb128 0x11
 2555 0ae7 7A150000 		.4byte	.LASF137
 2556 0aeb 10       		.byte	0x10
 2557 0aec 2501     		.2byte	0x125
 2558 0aee FA0A0000 		.4byte	0xafa
 2559 0af2 08       		.byte	0x8
 2560 0af3 00       		.byte	0
 2561 0af4 1B       		.uleb128 0x1b
 2562 0af5 04       		.byte	0x4
 2563 0af6 BF0A0000 		.4byte	0xabf
 2564 0afa 1B       		.uleb128 0x1b
 2565 0afb 04       		.byte	0x4
 2566 0afc B30A0000 		.4byte	0xab3
 2567 0b00 27       		.uleb128 0x27
 2568 0b01 AF050000 		.4byte	.LASF138
 2569 0b05 0E       		.byte	0xe
 2570 0b06 10       		.byte	0x10
 2571 0b07 3D01     		.2byte	0x13d
 2572 0b09 350B0000 		.4byte	0xb35
 2573 0b0d 11       		.uleb128 0x11
 2574 0b0e A20B0000 		.4byte	.LASF139
 2575 0b12 10       		.byte	0x10
 2576 0b13 3E01     		.2byte	0x13e
 2577 0b15 350B0000 		.4byte	0xb35
 2578 0b19 00       		.byte	0
 2579 0b1a 11       		.uleb128 0x11
 2580 0b1b E20A0000 		.4byte	.LASF140
 2581 0b1f 10       		.byte	0x10
 2582 0b20 3F01     		.2byte	0x13f
 2583 0b22 350B0000 		.4byte	0xb35
 2584 0b26 06       		.byte	0x6
 2585 0b27 11       		.uleb128 0x11
 2586 0b28 F00A0000 		.4byte	.LASF141
 2587 0b2c 10       		.byte	0x10
 2588 0b2d 4001     		.2byte	0x140
 2589 0b2f 2E030000 		.4byte	0x32e
 2590 0b33 0C       		.byte	0xc
 2591 0b34 00       		.byte	0
 2592 0b35 18       		.uleb128 0x18
 2593 0b36 2E030000 		.4byte	0x32e
 2594 0b3a 450B0000 		.4byte	0xb45
 2595 0b3e 19       		.uleb128 0x19
 2596 0b3f 65040000 		.4byte	0x465
ARM GAS  /tmp/cc5e0BXI.s 			page 88


 2597 0b43 02       		.byte	0x2
 2598 0b44 00       		.byte	0
 2599 0b45 18       		.uleb128 0x18
 2600 0b46 8A040000 		.4byte	0x48a
 2601 0b4a 550B0000 		.4byte	0xb55
 2602 0b4e 19       		.uleb128 0x19
 2603 0b4f 65040000 		.4byte	0x465
 2604 0b53 19       		.byte	0x19
 2605 0b54 00       		.byte	0
 2606 0b55 18       		.uleb128 0x18
 2607 0b56 8A040000 		.4byte	0x48a
 2608 0b5a 650B0000 		.4byte	0xb65
 2609 0b5e 19       		.uleb128 0x19
 2610 0b5f 65040000 		.4byte	0x465
 2611 0b63 07       		.byte	0x7
 2612 0b64 00       		.byte	0
 2613 0b65 18       		.uleb128 0x18
 2614 0b66 8A040000 		.4byte	0x48a
 2615 0b6a 750B0000 		.4byte	0xb75
 2616 0b6e 19       		.uleb128 0x19
 2617 0b6f 65040000 		.4byte	0x465
 2618 0b73 17       		.byte	0x17
 2619 0b74 00       		.byte	0
 2620 0b75 18       		.uleb128 0x18
 2621 0b76 53060000 		.4byte	0x653
 2622 0b7a 850B0000 		.4byte	0xb85
 2623 0b7e 19       		.uleb128 0x19
 2624 0b7f 65040000 		.4byte	0x465
 2625 0b83 1D       		.byte	0x1d
 2626 0b84 00       		.byte	0
 2627 0b85 18       		.uleb128 0x18
 2628 0b86 93020000 		.4byte	0x293
 2629 0b8a 950B0000 		.4byte	0xb95
 2630 0b8e 19       		.uleb128 0x19
 2631 0b8f 65040000 		.4byte	0x465
 2632 0b93 1D       		.byte	0x1d
 2633 0b94 00       		.byte	0
 2634 0b95 18       		.uleb128 0x18
 2635 0b96 8A040000 		.4byte	0x48a
 2636 0b9a A50B0000 		.4byte	0xba5
 2637 0b9e 19       		.uleb128 0x19
 2638 0b9f 65040000 		.4byte	0x465
 2639 0ba3 18       		.byte	0x18
 2640 0ba4 00       		.byte	0
 2641 0ba5 28       		.uleb128 0x28
 2642 0ba6 B00B0000 		.4byte	0xbb0
 2643 0baa 08       		.uleb128 0x8
 2644 0bab A1070000 		.4byte	0x7a1
 2645 0baf 00       		.byte	0
 2646 0bb0 1B       		.uleb128 0x1b
 2647 0bb1 04       		.byte	0x4
 2648 0bb2 A50B0000 		.4byte	0xba5
 2649 0bb6 1B       		.uleb128 0x1b
 2650 0bb7 04       		.byte	0x4
 2651 0bb8 F4040000 		.4byte	0x4f4
 2652 0bbc 28       		.uleb128 0x28
 2653 0bbd C70B0000 		.4byte	0xbc7
ARM GAS  /tmp/cc5e0BXI.s 			page 89


 2654 0bc1 08       		.uleb128 0x8
 2655 0bc2 9A020000 		.4byte	0x29a
 2656 0bc6 00       		.byte	0
 2657 0bc7 1B       		.uleb128 0x1b
 2658 0bc8 04       		.byte	0x4
 2659 0bc9 CD0B0000 		.4byte	0xbcd
 2660 0bcd 1B       		.uleb128 0x1b
 2661 0bce 04       		.byte	0x4
 2662 0bcf BC0B0000 		.4byte	0xbbc
 2663 0bd3 18       		.uleb128 0x18
 2664 0bd4 B30A0000 		.4byte	0xab3
 2665 0bd8 E30B0000 		.4byte	0xbe3
 2666 0bdc 19       		.uleb128 0x19
 2667 0bdd 65040000 		.4byte	0x465
 2668 0be1 02       		.byte	0x2
 2669 0be2 00       		.byte	0
 2670 0be3 29       		.uleb128 0x29
 2671 0be4 C7040000 		.4byte	.LASF142
 2672 0be8 10       		.byte	0x10
 2673 0be9 FD02     		.2byte	0x2fd
 2674 0beb A1070000 		.4byte	0x7a1
 2675 0bef 29       		.uleb128 0x29
 2676 0bf0 320D0000 		.4byte	.LASF143
 2677 0bf4 10       		.byte	0x10
 2678 0bf5 FE02     		.2byte	0x2fe
 2679 0bf7 A7070000 		.4byte	0x7a7
 2680 0bfb 14       		.uleb128 0x14
 2681 0bfc 08       		.byte	0x8
 2682 0bfd 11       		.byte	0x11
 2683 0bfe 20       		.byte	0x20
 2684 0bff 25010000 		.4byte	.LASF145
 2685 0c03 200C0000 		.4byte	0xc20
 2686 0c07 17       		.uleb128 0x17
 2687 0c08 D9090000 		.4byte	.LASF146
 2688 0c0c 11       		.byte	0x11
 2689 0c0d 21       		.byte	0x21
 2690 0c0e 9A020000 		.4byte	0x29a
 2691 0c12 00       		.byte	0
 2692 0c13 1D       		.uleb128 0x1d
 2693 0c14 72656D00 		.ascii	"rem\000"
 2694 0c18 11       		.byte	0x11
 2695 0c19 22       		.byte	0x22
 2696 0c1a 9A020000 		.4byte	0x29a
 2697 0c1e 04       		.byte	0x4
 2698 0c1f 00       		.byte	0
 2699 0c20 0B       		.uleb128 0xb
 2700 0c21 1A130000 		.4byte	.LASF147
 2701 0c25 11       		.byte	0x11
 2702 0c26 23       		.byte	0x23
 2703 0c27 FB0B0000 		.4byte	0xbfb
 2704 0c2b 14       		.uleb128 0x14
 2705 0c2c 08       		.byte	0x8
 2706 0c2d 11       		.byte	0x11
 2707 0c2e 26       		.byte	0x26
 2708 0c2f 30130000 		.4byte	.LASF148
 2709 0c33 500C0000 		.4byte	0xc50
 2710 0c37 17       		.uleb128 0x17
ARM GAS  /tmp/cc5e0BXI.s 			page 90


 2711 0c38 D9090000 		.4byte	.LASF146
 2712 0c3c 11       		.byte	0x11
 2713 0c3d 27       		.byte	0x27
 2714 0c3e 40030000 		.4byte	0x340
 2715 0c42 00       		.byte	0
 2716 0c43 1D       		.uleb128 0x1d
 2717 0c44 72656D00 		.ascii	"rem\000"
 2718 0c48 11       		.byte	0x11
 2719 0c49 28       		.byte	0x28
 2720 0c4a 40030000 		.4byte	0x340
 2721 0c4e 04       		.byte	0x4
 2722 0c4f 00       		.byte	0
 2723 0c50 0B       		.uleb128 0xb
 2724 0c51 670F0000 		.4byte	.LASF149
 2725 0c55 11       		.byte	0x11
 2726 0c56 29       		.byte	0x29
 2727 0c57 2B0C0000 		.4byte	0xc2b
 2728 0c5b 14       		.uleb128 0x14
 2729 0c5c 10       		.byte	0x10
 2730 0c5d 11       		.byte	0x11
 2731 0c5e 2D       		.byte	0x2d
 2732 0c5f 97130000 		.4byte	.LASF150
 2733 0c63 800C0000 		.4byte	0xc80
 2734 0c67 17       		.uleb128 0x17
 2735 0c68 D9090000 		.4byte	.LASF146
 2736 0c6c 11       		.byte	0x11
 2737 0c6d 2E       		.byte	0x2e
 2738 0c6e CE020000 		.4byte	0x2ce
 2739 0c72 00       		.byte	0
 2740 0c73 1D       		.uleb128 0x1d
 2741 0c74 72656D00 		.ascii	"rem\000"
 2742 0c78 11       		.byte	0x11
 2743 0c79 2F       		.byte	0x2f
 2744 0c7a CE020000 		.4byte	0x2ce
 2745 0c7e 08       		.byte	0x8
 2746 0c7f 00       		.byte	0
 2747 0c80 0B       		.uleb128 0xb
 2748 0c81 1D140000 		.4byte	.LASF151
 2749 0c85 11       		.byte	0x11
 2750 0c86 30       		.byte	0x30
 2751 0c87 5B0C0000 		.4byte	0xc5b
 2752 0c8b 0B       		.uleb128 0xb
 2753 0c8c FA120000 		.4byte	.LASF152
 2754 0c90 11       		.byte	0x11
 2755 0c91 35       		.byte	0x35
 2756 0c92 960C0000 		.4byte	0xc96
 2757 0c96 1B       		.uleb128 0x1b
 2758 0c97 04       		.byte	0x4
 2759 0c98 9C0C0000 		.4byte	0xc9c
 2760 0c9c 21       		.uleb128 0x21
 2761 0c9d 9A020000 		.4byte	0x29a
 2762 0ca1 B00C0000 		.4byte	0xcb0
 2763 0ca5 08       		.uleb128 0x8
 2764 0ca6 B00C0000 		.4byte	0xcb0
 2765 0caa 08       		.uleb128 0x8
 2766 0cab B00C0000 		.4byte	0xcb0
 2767 0caf 00       		.byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 91


 2768 0cb0 1B       		.uleb128 0x1b
 2769 0cb1 04       		.byte	0x4
 2770 0cb2 B60C0000 		.4byte	0xcb6
 2771 0cb6 2A       		.uleb128 0x2a
 2772 0cb7 2B       		.uleb128 0x2b
 2773 0cb8 71120000 		.4byte	.LASF153
 2774 0cbc 11       		.byte	0x11
 2775 0cbd 5F       		.byte	0x5f
 2776 0cbe 84040000 		.4byte	0x484
 2777 0cc2 2C       		.uleb128 0x2c
 2778 0cc3 310E0000 		.4byte	.LASF154
 2779 0cc7 11       		.byte	0x11
 2780 0cc8 48       		.byte	0x48
 2781 0cc9 9A020000 		.4byte	0x29a
 2782 0ccd D70C0000 		.4byte	0xcd7
 2783 0cd1 08       		.uleb128 0x8
 2784 0cd2 27060000 		.4byte	0x627
 2785 0cd6 00       		.byte	0
 2786 0cd7 2C       		.uleb128 0x2c
 2787 0cd8 37140000 		.4byte	.LASF155
 2788 0cdc 11       		.byte	0x11
 2789 0cdd 49       		.byte	0x49
 2790 0cde EC0C0000 		.4byte	0xcec
 2791 0ce2 EC0C0000 		.4byte	0xcec
 2792 0ce6 08       		.uleb128 0x8
 2793 0ce7 490A0000 		.4byte	0xa49
 2794 0ceb 00       		.byte	0
 2795 0cec 0E       		.uleb128 0xe
 2796 0ced 08       		.byte	0x8
 2797 0cee 04       		.byte	0x4
 2798 0cef 7D140000 		.4byte	.LASF156
 2799 0cf3 2C       		.uleb128 0x2c
 2800 0cf4 3C140000 		.4byte	.LASF157
 2801 0cf8 11       		.byte	0x11
 2802 0cf9 4D       		.byte	0x4d
 2803 0cfa 9A020000 		.4byte	0x29a
 2804 0cfe 080D0000 		.4byte	0xd08
 2805 0d02 08       		.uleb128 0x8
 2806 0d03 490A0000 		.4byte	0xa49
 2807 0d07 00       		.byte	0
 2808 0d08 2C       		.uleb128 0x2c
 2809 0d09 56140000 		.4byte	.LASF158
 2810 0d0d 11       		.byte	0x11
 2811 0d0e 4F       		.byte	0x4f
 2812 0d0f 40030000 		.4byte	0x340
 2813 0d13 1D0D0000 		.4byte	0xd1d
 2814 0d17 08       		.uleb128 0x8
 2815 0d18 490A0000 		.4byte	0xa49
 2816 0d1c 00       		.byte	0
 2817 0d1d 2C       		.uleb128 0x2c
 2818 0d1e BF070000 		.4byte	.LASF159
 2819 0d22 11       		.byte	0x11
 2820 0d23 51       		.byte	0x51
 2821 0d24 82040000 		.4byte	0x482
 2822 0d28 460D0000 		.4byte	0xd46
 2823 0d2c 08       		.uleb128 0x8
 2824 0d2d B00C0000 		.4byte	0xcb0
ARM GAS  /tmp/cc5e0BXI.s 			page 92


 2825 0d31 08       		.uleb128 0x8
 2826 0d32 B00C0000 		.4byte	0xcb0
 2827 0d36 08       		.uleb128 0x8
 2828 0d37 7E020000 		.4byte	0x27e
 2829 0d3b 08       		.uleb128 0x8
 2830 0d3c 7E020000 		.4byte	0x27e
 2831 0d40 08       		.uleb128 0x8
 2832 0d41 8B0C0000 		.4byte	0xc8b
 2833 0d45 00       		.byte	0
 2834 0d46 2D       		.uleb128 0x2d
 2835 0d47 64697600 		.ascii	"div\000"
 2836 0d4b 11       		.byte	0x11
 2837 0d4c 57       		.byte	0x57
 2838 0d4d 200C0000 		.4byte	0xc20
 2839 0d51 600D0000 		.4byte	0xd60
 2840 0d55 08       		.uleb128 0x8
 2841 0d56 9A020000 		.4byte	0x29a
 2842 0d5a 08       		.uleb128 0x8
 2843 0d5b 9A020000 		.4byte	0x29a
 2844 0d5f 00       		.byte	0
 2845 0d60 2C       		.uleb128 0x2c
 2846 0d61 00000000 		.4byte	.LASF160
 2847 0d65 11       		.byte	0x11
 2848 0d66 5A       		.byte	0x5a
 2849 0d67 84040000 		.4byte	0x484
 2850 0d6b 750D0000 		.4byte	0xd75
 2851 0d6f 08       		.uleb128 0x8
 2852 0d70 490A0000 		.4byte	0xa49
 2853 0d74 00       		.byte	0
 2854 0d75 2C       		.uleb128 0x2c
 2855 0d76 BE0B0000 		.4byte	.LASF161
 2856 0d7a 11       		.byte	0x11
 2857 0d7b 63       		.byte	0x63
 2858 0d7c 500C0000 		.4byte	0xc50
 2859 0d80 8F0D0000 		.4byte	0xd8f
 2860 0d84 08       		.uleb128 0x8
 2861 0d85 40030000 		.4byte	0x340
 2862 0d89 08       		.uleb128 0x8
 2863 0d8a 40030000 		.4byte	0x340
 2864 0d8e 00       		.byte	0
 2865 0d8f 2C       		.uleb128 0x2c
 2866 0d90 73010000 		.4byte	.LASF162
 2867 0d94 11       		.byte	0x11
 2868 0d95 65       		.byte	0x65
 2869 0d96 9A020000 		.4byte	0x29a
 2870 0d9a A90D0000 		.4byte	0xda9
 2871 0d9e 08       		.uleb128 0x8
 2872 0d9f 490A0000 		.4byte	0xa49
 2873 0da3 08       		.uleb128 0x8
 2874 0da4 7E020000 		.4byte	0x27e
 2875 0da8 00       		.byte	0
 2876 0da9 2C       		.uleb128 0x2c
 2877 0daa 760E0000 		.4byte	.LASF163
 2878 0dae 11       		.byte	0x11
 2879 0daf 6B       		.byte	0x6b
 2880 0db0 7E020000 		.4byte	0x27e
 2881 0db4 C80D0000 		.4byte	0xdc8
ARM GAS  /tmp/cc5e0BXI.s 			page 93


 2882 0db8 08       		.uleb128 0x8
 2883 0db9 C80D0000 		.4byte	0xdc8
 2884 0dbd 08       		.uleb128 0x8
 2885 0dbe 490A0000 		.4byte	0xa49
 2886 0dc2 08       		.uleb128 0x8
 2887 0dc3 7E020000 		.4byte	0x27e
 2888 0dc7 00       		.byte	0
 2889 0dc8 1B       		.uleb128 0x1b
 2890 0dc9 04       		.byte	0x4
 2891 0dca CE0D0000 		.4byte	0xdce
 2892 0dce 0E       		.uleb128 0xe
 2893 0dcf 04       		.byte	0x4
 2894 0dd0 07       		.byte	0x7
 2895 0dd1 0D020000 		.4byte	.LASF164
 2896 0dd5 0C       		.uleb128 0xc
 2897 0dd6 CE0D0000 		.4byte	0xdce
 2898 0dda 2C       		.uleb128 0x2c
 2899 0ddb 76050000 		.4byte	.LASF165
 2900 0ddf 11       		.byte	0x11
 2901 0de0 67       		.byte	0x67
 2902 0de1 9A020000 		.4byte	0x29a
 2903 0de5 F90D0000 		.4byte	0xdf9
 2904 0de9 08       		.uleb128 0x8
 2905 0dea C80D0000 		.4byte	0xdc8
 2906 0dee 08       		.uleb128 0x8
 2907 0def 490A0000 		.4byte	0xa49
 2908 0df3 08       		.uleb128 0x8
 2909 0df4 7E020000 		.4byte	0x27e
 2910 0df8 00       		.byte	0
 2911 0df9 2E       		.uleb128 0x2e
 2912 0dfa 80150000 		.4byte	.LASF166
 2913 0dfe 11       		.byte	0x11
 2914 0dff 87       		.byte	0x87
 2915 0e00 190E0000 		.4byte	0xe19
 2916 0e04 08       		.uleb128 0x8
 2917 0e05 82040000 		.4byte	0x482
 2918 0e09 08       		.uleb128 0x8
 2919 0e0a 7E020000 		.4byte	0x27e
 2920 0e0e 08       		.uleb128 0x8
 2921 0e0f 7E020000 		.4byte	0x27e
 2922 0e13 08       		.uleb128 0x8
 2923 0e14 8B0C0000 		.4byte	0xc8b
 2924 0e18 00       		.byte	0
 2925 0e19 2F       		.uleb128 0x2f
 2926 0e1a B0000000 		.4byte	.LASF471
 2927 0e1e 11       		.byte	0x11
 2928 0e1f 88       		.byte	0x88
 2929 0e20 9A020000 		.4byte	0x29a
 2930 0e24 2E       		.uleb128 0x2e
 2931 0e25 ED110000 		.4byte	.LASF167
 2932 0e29 11       		.byte	0x11
 2933 0e2a 93       		.byte	0x93
 2934 0e2b 350E0000 		.4byte	0xe35
 2935 0e2f 08       		.uleb128 0x8
 2936 0e30 93020000 		.4byte	0x293
 2937 0e34 00       		.byte	0
 2938 0e35 2C       		.uleb128 0x2c
ARM GAS  /tmp/cc5e0BXI.s 			page 94


 2939 0e36 24070000 		.4byte	.LASF168
 2940 0e3a 11       		.byte	0x11
 2941 0e3b 94       		.byte	0x94
 2942 0e3c EC0C0000 		.4byte	0xcec
 2943 0e40 4F0E0000 		.4byte	0xe4f
 2944 0e44 08       		.uleb128 0x8
 2945 0e45 490A0000 		.4byte	0xa49
 2946 0e49 08       		.uleb128 0x8
 2947 0e4a 4F0E0000 		.4byte	0xe4f
 2948 0e4e 00       		.byte	0
 2949 0e4f 1B       		.uleb128 0x1b
 2950 0e50 04       		.byte	0x4
 2951 0e51 84040000 		.4byte	0x484
 2952 0e55 2C       		.uleb128 0x2c
 2953 0e56 E3120000 		.4byte	.LASF169
 2954 0e5a 11       		.byte	0x11
 2955 0e5b 9F       		.byte	0x9f
 2956 0e5c 40030000 		.4byte	0x340
 2957 0e60 740E0000 		.4byte	0xe74
 2958 0e64 08       		.uleb128 0x8
 2959 0e65 490A0000 		.4byte	0xa49
 2960 0e69 08       		.uleb128 0x8
 2961 0e6a 4F0E0000 		.4byte	0xe4f
 2962 0e6e 08       		.uleb128 0x8
 2963 0e6f 9A020000 		.4byte	0x29a
 2964 0e73 00       		.byte	0
 2965 0e74 2C       		.uleb128 0x2c
 2966 0e75 F4010000 		.4byte	.LASF170
 2967 0e79 11       		.byte	0x11
 2968 0e7a A1       		.byte	0xa1
 2969 0e7b 52030000 		.4byte	0x352
 2970 0e7f 930E0000 		.4byte	0xe93
 2971 0e83 08       		.uleb128 0x8
 2972 0e84 490A0000 		.4byte	0xa49
 2973 0e88 08       		.uleb128 0x8
 2974 0e89 4F0E0000 		.4byte	0xe4f
 2975 0e8d 08       		.uleb128 0x8
 2976 0e8e 9A020000 		.4byte	0x29a
 2977 0e92 00       		.byte	0
 2978 0e93 2C       		.uleb128 0x2c
 2979 0e94 EF000000 		.4byte	.LASF171
 2980 0e98 11       		.byte	0x11
 2981 0e99 A4       		.byte	0xa4
 2982 0e9a 9A020000 		.4byte	0x29a
 2983 0e9e A80E0000 		.4byte	0xea8
 2984 0ea2 08       		.uleb128 0x8
 2985 0ea3 490A0000 		.4byte	0xa49
 2986 0ea7 00       		.byte	0
 2987 0ea8 2C       		.uleb128 0x2c
 2988 0ea9 DA120000 		.4byte	.LASF172
 2989 0ead 11       		.byte	0x11
 2990 0eae 6D       		.byte	0x6d
 2991 0eaf 7E020000 		.4byte	0x27e
 2992 0eb3 C70E0000 		.4byte	0xec7
 2993 0eb7 08       		.uleb128 0x8
 2994 0eb8 84040000 		.4byte	0x484
 2995 0ebc 08       		.uleb128 0x8
ARM GAS  /tmp/cc5e0BXI.s 			page 95


 2996 0ebd C70E0000 		.4byte	0xec7
 2997 0ec1 08       		.uleb128 0x8
 2998 0ec2 7E020000 		.4byte	0x27e
 2999 0ec6 00       		.byte	0
 3000 0ec7 1B       		.uleb128 0x1b
 3001 0ec8 04       		.byte	0x4
 3002 0ec9 D50D0000 		.4byte	0xdd5
 3003 0ecd 2C       		.uleb128 0x2c
 3004 0ece 1F060000 		.4byte	.LASF173
 3005 0ed2 11       		.byte	0x11
 3006 0ed3 69       		.byte	0x69
 3007 0ed4 9A020000 		.4byte	0x29a
 3008 0ed8 E70E0000 		.4byte	0xee7
 3009 0edc 08       		.uleb128 0x8
 3010 0edd 84040000 		.4byte	0x484
 3011 0ee1 08       		.uleb128 0x8
 3012 0ee2 CE0D0000 		.4byte	0xdce
 3013 0ee6 00       		.byte	0
 3014 0ee7 2C       		.uleb128 0x2c
 3015 0ee8 AA060000 		.4byte	.LASF174
 3016 0eec 11       		.byte	0x11
 3017 0eed F1       		.byte	0xf1
 3018 0eee 800C0000 		.4byte	0xc80
 3019 0ef2 010F0000 		.4byte	0xf01
 3020 0ef6 08       		.uleb128 0x8
 3021 0ef7 CE020000 		.4byte	0x2ce
 3022 0efb 08       		.uleb128 0x8
 3023 0efc CE020000 		.4byte	0x2ce
 3024 0f00 00       		.byte	0
 3025 0f01 2C       		.uleb128 0x2c
 3026 0f02 B0060000 		.4byte	.LASF175
 3027 0f06 11       		.byte	0x11
 3028 0f07 EC       		.byte	0xec
 3029 0f08 CE020000 		.4byte	0x2ce
 3030 0f0c 160F0000 		.4byte	0xf16
 3031 0f10 08       		.uleb128 0x8
 3032 0f11 490A0000 		.4byte	0xa49
 3033 0f15 00       		.byte	0
 3034 0f16 2C       		.uleb128 0x2c
 3035 0f17 06040000 		.4byte	.LASF176
 3036 0f1b 11       		.byte	0x11
 3037 0f1c F2       		.byte	0xf2
 3038 0f1d CE020000 		.4byte	0x2ce
 3039 0f21 350F0000 		.4byte	0xf35
 3040 0f25 08       		.uleb128 0x8
 3041 0f26 490A0000 		.4byte	0xa49
 3042 0f2a 08       		.uleb128 0x8
 3043 0f2b 4F0E0000 		.4byte	0xe4f
 3044 0f2f 08       		.uleb128 0x8
 3045 0f30 9A020000 		.4byte	0x29a
 3046 0f34 00       		.byte	0
 3047 0f35 2C       		.uleb128 0x2c
 3048 0f36 A2020000 		.4byte	.LASF177
 3049 0f3a 11       		.byte	0x11
 3050 0f3b F6       		.byte	0xf6
 3051 0f3c 6F030000 		.4byte	0x36f
 3052 0f40 540F0000 		.4byte	0xf54
ARM GAS  /tmp/cc5e0BXI.s 			page 96


 3053 0f44 08       		.uleb128 0x8
 3054 0f45 490A0000 		.4byte	0xa49
 3055 0f49 08       		.uleb128 0x8
 3056 0f4a 4F0E0000 		.4byte	0xe4f
 3057 0f4e 08       		.uleb128 0x8
 3058 0f4f 9A020000 		.4byte	0x29a
 3059 0f53 00       		.byte	0
 3060 0f54 2C       		.uleb128 0x2c
 3061 0f55 38070000 		.4byte	.LASF178
 3062 0f59 11       		.byte	0x11
 3063 0f5a 97       		.byte	0x97
 3064 0f5b 6E0F0000 		.4byte	0xf6e
 3065 0f5f 6E0F0000 		.4byte	0xf6e
 3066 0f63 08       		.uleb128 0x8
 3067 0f64 490A0000 		.4byte	0xa49
 3068 0f68 08       		.uleb128 0x8
 3069 0f69 4F0E0000 		.4byte	0xe4f
 3070 0f6d 00       		.byte	0
 3071 0f6e 0E       		.uleb128 0xe
 3072 0f6f 04       		.byte	0x4
 3073 0f70 04       		.byte	0x4
 3074 0f71 E7110000 		.4byte	.LASF179
 3075 0f75 30       		.uleb128 0x30
 3076 0f76 E5030000 		.4byte	.LASF180
 3077 0f7a 11       		.byte	0x11
 3078 0f7b 2801     		.2byte	0x128
 3079 0f7d D5020000 		.4byte	0x2d5
 3080 0f81 900F0000 		.4byte	0xf90
 3081 0f85 08       		.uleb128 0x8
 3082 0f86 490A0000 		.4byte	0xa49
 3083 0f8a 08       		.uleb128 0x8
 3084 0f8b 4F0E0000 		.4byte	0xe4f
 3085 0f8f 00       		.byte	0
 3086 0f90 2C       		.uleb128 0x2c
 3087 0f91 57080000 		.4byte	.LASF181
 3088 0f95 12       		.byte	0x12
 3089 0f96 1D       		.byte	0x1d
 3090 0f97 9A020000 		.4byte	0x29a
 3091 0f9b AA0F0000 		.4byte	0xfaa
 3092 0f9f 08       		.uleb128 0x8
 3093 0fa0 490A0000 		.4byte	0xa49
 3094 0fa4 08       		.uleb128 0x8
 3095 0fa5 490A0000 		.4byte	0xa49
 3096 0fa9 00       		.byte	0
 3097 0faa 2C       		.uleb128 0x2c
 3098 0fab 3A020000 		.4byte	.LASF182
 3099 0faf 12       		.byte	0x12
 3100 0fb0 20       		.byte	0x20
 3101 0fb1 84040000 		.4byte	0x484
 3102 0fb5 BF0F0000 		.4byte	0xfbf
 3103 0fb9 08       		.uleb128 0x8
 3104 0fba 9A020000 		.4byte	0x29a
 3105 0fbe 00       		.byte	0
 3106 0fbf 2C       		.uleb128 0x2c
 3107 0fc0 80070000 		.4byte	.LASF183
 3108 0fc4 12       		.byte	0x12
 3109 0fc5 2A       		.byte	0x2a
ARM GAS  /tmp/cc5e0BXI.s 			page 97


 3110 0fc6 84040000 		.4byte	0x484
 3111 0fca D90F0000 		.4byte	0xfd9
 3112 0fce 08       		.uleb128 0x8
 3113 0fcf 84040000 		.4byte	0x484
 3114 0fd3 08       		.uleb128 0x8
 3115 0fd4 490A0000 		.4byte	0xa49
 3116 0fd8 00       		.byte	0
 3117 0fd9 2C       		.uleb128 0x2c
 3118 0fda 3F070000 		.4byte	.LASF184
 3119 0fde 12       		.byte	0x12
 3120 0fdf 2C       		.byte	0x2c
 3121 0fe0 7E020000 		.4byte	0x27e
 3122 0fe4 F80F0000 		.4byte	0xff8
 3123 0fe8 08       		.uleb128 0x8
 3124 0fe9 84040000 		.4byte	0x484
 3125 0fed 08       		.uleb128 0x8
 3126 0fee 490A0000 		.4byte	0xa49
 3127 0ff2 08       		.uleb128 0x8
 3128 0ff3 7E020000 		.4byte	0x27e
 3129 0ff7 00       		.byte	0
 3130 0ff8 0B       		.uleb128 0xb
 3131 0ff9 24040000 		.4byte	.LASF185
 3132 0ffd 13       		.byte	0x13
 3133 0ffe 14       		.byte	0x14
 3134 0fff ED020000 		.4byte	0x2ed
 3135 1003 0B       		.uleb128 0xb
 3136 1004 BB090000 		.4byte	.LASF186
 3137 1008 13       		.byte	0x13
 3138 1009 18       		.byte	0x18
 3139 100a FF020000 		.4byte	0x2ff
 3140 100e 0D       		.uleb128 0xd
 3141 100f 03100000 		.4byte	0x1003
 3142 1013 0C       		.uleb128 0xc
 3143 1014 03100000 		.4byte	0x1003
 3144 1018 0B       		.uleb128 0xb
 3145 1019 B40E0000 		.4byte	.LASF187
 3146 101d 13       		.byte	0x13
 3147 101e 20       		.byte	0x20
 3148 101f 11030000 		.4byte	0x311
 3149 1023 0B       		.uleb128 0xb
 3150 1024 5F0D0000 		.4byte	.LASF188
 3151 1028 13       		.byte	0x13
 3152 1029 24       		.byte	0x24
 3153 102a 23030000 		.4byte	0x323
 3154 102e 0B       		.uleb128 0xb
 3155 102f F3110000 		.4byte	.LASF189
 3156 1033 13       		.byte	0x13
 3157 1034 2C       		.byte	0x2c
 3158 1035 35030000 		.4byte	0x335
 3159 1039 0D       		.uleb128 0xd
 3160 103a 2E100000 		.4byte	0x102e
 3161 103e 0B       		.uleb128 0xb
 3162 103f 8D010000 		.4byte	.LASF190
 3163 1043 13       		.byte	0x13
 3164 1044 30       		.byte	0x30
 3165 1045 47030000 		.4byte	0x347
 3166 1049 0D       		.uleb128 0xd
ARM GAS  /tmp/cc5e0BXI.s 			page 98


 3167 104a 3E100000 		.4byte	0x103e
 3168 104e 0C       		.uleb128 0xc
 3169 104f 3E100000 		.4byte	0x103e
 3170 1053 0B       		.uleb128 0xb
 3171 1054 C4030000 		.4byte	.LASF191
 3172 1058 13       		.byte	0x13
 3173 1059 38       		.byte	0x38
 3174 105a 59030000 		.4byte	0x359
 3175 105e 0B       		.uleb128 0xb
 3176 105f 300F0000 		.4byte	.LASF192
 3177 1063 13       		.byte	0x13
 3178 1064 3C       		.byte	0x3c
 3179 1065 64030000 		.4byte	0x364
 3180 1069 0B       		.uleb128 0xb
 3181 106a 560D0000 		.4byte	.LASF193
 3182 106e 13       		.byte	0x13
 3183 106f 43       		.byte	0x43
 3184 1070 CE030000 		.4byte	0x3ce
 3185 1074 0B       		.uleb128 0xb
 3186 1075 2D110000 		.4byte	.LASF194
 3187 1079 13       		.byte	0x13
 3188 107a 48       		.byte	0x48
 3189 107b D9030000 		.4byte	0x3d9
 3190 107f 0B       		.uleb128 0xb
 3191 1080 2B070000 		.4byte	.LASF195
 3192 1084 14       		.byte	0x14
 3193 1085 15       		.byte	0x15
 3194 1086 76030000 		.4byte	0x376
 3195 108a 0B       		.uleb128 0xb
 3196 108b 91070000 		.4byte	.LASF196
 3197 108f 14       		.byte	0x14
 3198 1090 16       		.byte	0x16
 3199 1091 81030000 		.4byte	0x381
 3200 1095 0B       		.uleb128 0xb
 3201 1096 47050000 		.4byte	.LASF197
 3202 109a 14       		.byte	0x14
 3203 109b 1B       		.byte	0x1b
 3204 109c 8C030000 		.4byte	0x38c
 3205 10a0 0B       		.uleb128 0xb
 3206 10a1 0E040000 		.4byte	.LASF198
 3207 10a5 14       		.byte	0x14
 3208 10a6 1C       		.byte	0x1c
 3209 10a7 97030000 		.4byte	0x397
 3210 10ab 0B       		.uleb128 0xb
 3211 10ac FB110000 		.4byte	.LASF199
 3212 10b0 14       		.byte	0x14
 3213 10b1 21       		.byte	0x21
 3214 10b2 A2030000 		.4byte	0x3a2
 3215 10b6 0B       		.uleb128 0xb
 3216 10b7 B9100000 		.4byte	.LASF200
 3217 10bb 14       		.byte	0x14
 3218 10bc 22       		.byte	0x22
 3219 10bd AD030000 		.4byte	0x3ad
 3220 10c1 0B       		.uleb128 0xb
 3221 10c2 5D070000 		.4byte	.LASF201
 3222 10c6 14       		.byte	0x14
 3223 10c7 27       		.byte	0x27
ARM GAS  /tmp/cc5e0BXI.s 			page 99


 3224 10c8 B8030000 		.4byte	0x3b8
 3225 10cc 0B       		.uleb128 0xb
 3226 10cd 84060000 		.4byte	.LASF202
 3227 10d1 14       		.byte	0x14
 3228 10d2 28       		.byte	0x28
 3229 10d3 C3030000 		.4byte	0x3c3
 3230 10d7 0B       		.uleb128 0xb
 3231 10d8 A80B0000 		.4byte	.LASF203
 3232 10dc 14       		.byte	0x14
 3233 10dd 33       		.byte	0x33
 3234 10de 9A020000 		.4byte	0x29a
 3235 10e2 0B       		.uleb128 0xb
 3236 10e3 C7120000 		.4byte	.LASF204
 3237 10e7 14       		.byte	0x14
 3238 10e8 34       		.byte	0x34
 3239 10e9 93020000 		.4byte	0x293
 3240 10ed 0B       		.uleb128 0xb
 3241 10ee DE010000 		.4byte	.LASF205
 3242 10f2 14       		.byte	0x14
 3243 10f3 3D       		.byte	0x3d
 3244 10f4 9A020000 		.4byte	0x29a
 3245 10f8 0B       		.uleb128 0xb
 3246 10f9 19000000 		.4byte	.LASF206
 3247 10fd 14       		.byte	0x14
 3248 10fe 3E       		.byte	0x3e
 3249 10ff 93020000 		.4byte	0x293
 3250 1103 0B       		.uleb128 0xb
 3251 1104 140E0000 		.4byte	.LASF207
 3252 1108 14       		.byte	0x14
 3253 1109 47       		.byte	0x47
 3254 110a 9A020000 		.4byte	0x29a
 3255 110e 0B       		.uleb128 0xb
 3256 110f 710C0000 		.4byte	.LASF208
 3257 1113 14       		.byte	0x14
 3258 1114 48       		.byte	0x48
 3259 1115 93020000 		.4byte	0x293
 3260 1119 0B       		.uleb128 0xb
 3261 111a DA060000 		.4byte	.LASF209
 3262 111e 14       		.byte	0x14
 3263 111f 51       		.byte	0x51
 3264 1120 CE020000 		.4byte	0x2ce
 3265 1124 0B       		.uleb128 0xb
 3266 1125 D0010000 		.4byte	.LASF210
 3267 1129 14       		.byte	0x14
 3268 112a 52       		.byte	0x52
 3269 112b 6F030000 		.4byte	0x36f
 3270 112f 0B       		.uleb128 0xb
 3271 1130 C7010000 		.4byte	.LASF211
 3272 1134 14       		.byte	0x14
 3273 1135 82       		.byte	0x82
 3274 1136 CE020000 		.4byte	0x2ce
 3275 113a 0B       		.uleb128 0xb
 3276 113b 55050000 		.4byte	.LASF212
 3277 113f 14       		.byte	0x14
 3278 1140 8B       		.byte	0x8b
 3279 1141 6F030000 		.4byte	0x36f
 3280 1145 31       		.uleb128 0x31
ARM GAS  /tmp/cc5e0BXI.s 			page 100


 3281 1146 680D0000 		.4byte	.LASF458
 3282 114a 01       		.byte	0x1
 3283 114b F8020000 		.4byte	0x2f8
 3284 114f 15       		.byte	0x15
 3285 1150 48       		.byte	0x48
 3286 1151 E8120000 		.4byte	0x12e8
 3287 1155 32       		.uleb128 0x32
 3288 1156 A00E0000 		.4byte	.LASF213
 3289 115a 72       		.sleb128 -14
 3290 115b 32       		.uleb128 0x32
 3291 115c 41140000 		.4byte	.LASF214
 3292 1160 73       		.sleb128 -13
 3293 1161 32       		.uleb128 0x32
 3294 1162 A4030000 		.4byte	.LASF215
 3295 1166 74       		.sleb128 -12
 3296 1167 32       		.uleb128 0x32
 3297 1168 A80D0000 		.4byte	.LASF216
 3298 116c 75       		.sleb128 -11
 3299 116d 32       		.uleb128 0x32
 3300 116e 37120000 		.4byte	.LASF217
 3301 1172 76       		.sleb128 -10
 3302 1173 32       		.uleb128 0x32
 3303 1174 7B120000 		.4byte	.LASF218
 3304 1178 7B       		.sleb128 -5
 3305 1179 32       		.uleb128 0x32
 3306 117a 25120000 		.4byte	.LASF219
 3307 117e 7C       		.sleb128 -4
 3308 117f 32       		.uleb128 0x32
 3309 1180 090C0000 		.4byte	.LASF220
 3310 1184 7E       		.sleb128 -2
 3311 1185 32       		.uleb128 0x32
 3312 1186 F10E0000 		.4byte	.LASF221
 3313 118a 7F       		.sleb128 -1
 3314 118b 33       		.uleb128 0x33
 3315 118c 15120000 		.4byte	.LASF222
 3316 1190 00       		.byte	0
 3317 1191 33       		.uleb128 0x33
 3318 1192 CD000000 		.4byte	.LASF223
 3319 1196 01       		.byte	0x1
 3320 1197 33       		.uleb128 0x33
 3321 1198 FB0D0000 		.4byte	.LASF224
 3322 119c 02       		.byte	0x2
 3323 119d 33       		.uleb128 0x33
 3324 119e 25140000 		.4byte	.LASF225
 3325 11a2 03       		.byte	0x3
 3326 11a3 33       		.uleb128 0x33
 3327 11a4 7B0B0000 		.4byte	.LASF226
 3328 11a8 04       		.byte	0x4
 3329 11a9 33       		.uleb128 0x33
 3330 11aa EC140000 		.4byte	.LASF227
 3331 11ae 05       		.byte	0x5
 3332 11af 33       		.uleb128 0x33
 3333 11b0 EB010000 		.4byte	.LASF228
 3334 11b4 06       		.byte	0x6
 3335 11b5 33       		.uleb128 0x33
 3336 11b6 D10E0000 		.4byte	.LASF229
 3337 11ba 07       		.byte	0x7
ARM GAS  /tmp/cc5e0BXI.s 			page 101


 3338 11bb 33       		.uleb128 0x33
 3339 11bc E3020000 		.4byte	.LASF230
 3340 11c0 08       		.byte	0x8
 3341 11c1 33       		.uleb128 0x33
 3342 11c2 7F0C0000 		.4byte	.LASF231
 3343 11c6 0A       		.byte	0xa
 3344 11c7 33       		.uleb128 0x33
 3345 11c8 B60D0000 		.4byte	.LASF232
 3346 11cc 0B       		.byte	0xb
 3347 11cd 33       		.uleb128 0x33
 3348 11ce FC010000 		.4byte	.LASF233
 3349 11d2 0C       		.byte	0xc
 3350 11d3 33       		.uleb128 0x33
 3351 11d4 F8020000 		.4byte	.LASF234
 3352 11d8 0D       		.byte	0xd
 3353 11d9 33       		.uleb128 0x33
 3354 11da 7F0E0000 		.4byte	.LASF235
 3355 11de 0E       		.byte	0xe
 3356 11df 33       		.uleb128 0x33
 3357 11e0 E70C0000 		.4byte	.LASF236
 3358 11e4 0F       		.byte	0xf
 3359 11e5 33       		.uleb128 0x33
 3360 11e6 500F0000 		.4byte	.LASF237
 3361 11ea 10       		.byte	0x10
 3362 11eb 33       		.uleb128 0x33
 3363 11ec 26060000 		.4byte	.LASF238
 3364 11f0 11       		.byte	0x11
 3365 11f1 33       		.uleb128 0x33
 3366 11f2 25150000 		.4byte	.LASF239
 3367 11f6 12       		.byte	0x12
 3368 11f7 33       		.uleb128 0x33
 3369 11f8 7A080000 		.4byte	.LASF240
 3370 11fc 13       		.byte	0x13
 3371 11fd 33       		.uleb128 0x33
 3372 11fe E5080000 		.4byte	.LASF241
 3373 1202 14       		.byte	0x14
 3374 1203 33       		.uleb128 0x33
 3375 1204 C00C0000 		.4byte	.LASF242
 3376 1208 15       		.byte	0x15
 3377 1209 33       		.uleb128 0x33
 3378 120a 20080000 		.4byte	.LASF243
 3379 120e 16       		.byte	0x16
 3380 120f 33       		.uleb128 0x33
 3381 1210 14070000 		.4byte	.LASF244
 3382 1214 17       		.byte	0x17
 3383 1215 33       		.uleb128 0x33
 3384 1216 E3140000 		.4byte	.LASF245
 3385 121a 18       		.byte	0x18
 3386 121b 33       		.uleb128 0x33
 3387 121c CA0C0000 		.4byte	.LASF246
 3388 1220 19       		.byte	0x19
 3389 1221 33       		.uleb128 0x33
 3390 1222 90020000 		.4byte	.LASF247
 3391 1226 1A       		.byte	0x1a
 3392 1227 33       		.uleb128 0x33
 3393 1228 E1100000 		.4byte	.LASF248
 3394 122c 1B       		.byte	0x1b
ARM GAS  /tmp/cc5e0BXI.s 			page 102


 3395 122d 33       		.uleb128 0x33
 3396 122e C8080000 		.4byte	.LASF249
 3397 1232 1C       		.byte	0x1c
 3398 1233 33       		.uleb128 0x33
 3399 1234 21050000 		.4byte	.LASF250
 3400 1238 1D       		.byte	0x1d
 3401 1239 33       		.uleb128 0x33
 3402 123a AA040000 		.4byte	.LASF251
 3403 123e 1E       		.byte	0x1e
 3404 123f 33       		.uleb128 0x33
 3405 1240 F50A0000 		.4byte	.LASF252
 3406 1244 1F       		.byte	0x1f
 3407 1245 33       		.uleb128 0x33
 3408 1246 30150000 		.4byte	.LASF253
 3409 124a 20       		.byte	0x20
 3410 124b 33       		.uleb128 0x33
 3411 124c 36000000 		.4byte	.LASF254
 3412 1250 21       		.byte	0x21
 3413 1251 33       		.uleb128 0x33
 3414 1252 D30C0000 		.4byte	.LASF255
 3415 1256 22       		.byte	0x22
 3416 1257 33       		.uleb128 0x33
 3417 1258 C2130000 		.4byte	.LASF256
 3418 125c 23       		.byte	0x23
 3419 125d 33       		.uleb128 0x33
 3420 125e 890C0000 		.4byte	.LASF257
 3421 1262 25       		.byte	0x25
 3422 1263 33       		.uleb128 0x33
 3423 1264 43020000 		.4byte	.LASF258
 3424 1268 27       		.byte	0x27
 3425 1269 33       		.uleb128 0x33
 3426 126a 0F130000 		.4byte	.LASF259
 3427 126e 28       		.byte	0x28
 3428 126f 33       		.uleb128 0x33
 3429 1270 5A0C0000 		.4byte	.LASF260
 3430 1274 29       		.byte	0x29
 3431 1275 33       		.uleb128 0x33
 3432 1276 17050000 		.4byte	.LASF261
 3433 127a 2A       		.byte	0x2a
 3434 127b 33       		.uleb128 0x33
 3435 127c 91040000 		.4byte	.LASF262
 3436 1280 2B       		.byte	0x2b
 3437 1281 33       		.uleb128 0x33
 3438 1282 25130000 		.4byte	.LASF263
 3439 1286 2C       		.byte	0x2c
 3440 1287 33       		.uleb128 0x33
 3441 1288 040B0000 		.4byte	.LASF264
 3442 128c 2D       		.byte	0x2d
 3443 128d 33       		.uleb128 0x33
 3444 128e 04030000 		.4byte	.LASF265
 3445 1292 2E       		.byte	0x2e
 3446 1293 33       		.uleb128 0x33
 3447 1294 6E140000 		.4byte	.LASF266
 3448 1298 2F       		.byte	0x2f
 3449 1299 33       		.uleb128 0x33
 3450 129a 9F0C0000 		.4byte	.LASF267
 3451 129e 30       		.byte	0x30
ARM GAS  /tmp/cc5e0BXI.s 			page 103


 3452 129f 33       		.uleb128 0x33
 3453 12a0 40010000 		.4byte	.LASF268
 3454 12a4 31       		.byte	0x31
 3455 12a5 33       		.uleb128 0x33
 3456 12a6 9D0F0000 		.4byte	.LASF269
 3457 12aa 32       		.byte	0x32
 3458 12ab 33       		.uleb128 0x33
 3459 12ac E4070000 		.4byte	.LASF270
 3460 12b0 33       		.byte	0x33
 3461 12b1 33       		.uleb128 0x33
 3462 12b2 C3000000 		.4byte	.LASF271
 3463 12b6 34       		.byte	0x34
 3464 12b7 33       		.uleb128 0x33
 3465 12b8 CD0B0000 		.4byte	.LASF272
 3466 12bc 38       		.byte	0x38
 3467 12bd 33       		.uleb128 0x33
 3468 12be A0080000 		.4byte	.LASF273
 3469 12c2 39       		.byte	0x39
 3470 12c3 33       		.uleb128 0x33
 3471 12c4 6F030000 		.4byte	.LASF274
 3472 12c8 3A       		.byte	0x3a
 3473 12c9 33       		.uleb128 0x33
 3474 12ca A8090000 		.4byte	.LASF275
 3475 12ce 3B       		.byte	0x3b
 3476 12cf 33       		.uleb128 0x33
 3477 12d0 EE020000 		.4byte	.LASF276
 3478 12d4 3C       		.byte	0x3c
 3479 12d5 33       		.uleb128 0x33
 3480 12d6 1C020000 		.4byte	.LASF277
 3481 12da 3E       		.byte	0x3e
 3482 12db 33       		.uleb128 0x33
 3483 12dc EA120000 		.4byte	.LASF278
 3484 12e0 3F       		.byte	0x3f
 3485 12e1 33       		.uleb128 0x33
 3486 12e2 28020000 		.4byte	.LASF279
 3487 12e6 40       		.byte	0x40
 3488 12e7 00       		.byte	0
 3489 12e8 0B       		.uleb128 0xb
 3490 12e9 E7060000 		.4byte	.LASF280
 3491 12ed 15       		.byte	0x15
 3492 12ee 91       		.byte	0x91
 3493 12ef 45110000 		.4byte	0x1145
 3494 12f3 34       		.uleb128 0x34
 3495 12f4 040E     		.2byte	0xe04
 3496 12f6 04       		.byte	0x4
 3497 12f7 7B01     		.2byte	0x17b
 3498 12f9 8B0E0000 		.4byte	.LASF294
 3499 12fd B3130000 		.4byte	0x13b3
 3500 1301 11       		.uleb128 0x11
 3501 1302 8C040000 		.4byte	.LASF281
 3502 1306 04       		.byte	0x4
 3503 1307 7C01     		.2byte	0x17c
 3504 1309 C3130000 		.4byte	0x13c3
 3505 130d 00       		.byte	0
 3506 130e 11       		.uleb128 0x11
 3507 130f 210E0000 		.4byte	.LASF282
 3508 1313 04       		.byte	0x4
ARM GAS  /tmp/cc5e0BXI.s 			page 104


 3509 1314 7D01     		.2byte	0x17d
 3510 1316 C8130000 		.4byte	0x13c8
 3511 131a 20       		.byte	0x20
 3512 131b 11       		.uleb128 0x11
 3513 131c F5120000 		.4byte	.LASF283
 3514 1320 04       		.byte	0x4
 3515 1321 7E01     		.2byte	0x17e
 3516 1323 C3130000 		.4byte	0x13c3
 3517 1327 80       		.byte	0x80
 3518 1328 11       		.uleb128 0x11
 3519 1329 E9040000 		.4byte	.LASF284
 3520 132d 04       		.byte	0x4
 3521 132e 7F01     		.2byte	0x17f
 3522 1330 C8130000 		.4byte	0x13c8
 3523 1334 A0       		.byte	0xa0
 3524 1335 26       		.uleb128 0x26
 3525 1336 60140000 		.4byte	.LASF285
 3526 133a 04       		.byte	0x4
 3527 133b 8001     		.2byte	0x180
 3528 133d C3130000 		.4byte	0x13c3
 3529 1341 0001     		.2byte	0x100
 3530 1343 26       		.uleb128 0x26
 3531 1344 98140000 		.4byte	.LASF286
 3532 1348 04       		.byte	0x4
 3533 1349 8101     		.2byte	0x181
 3534 134b C8130000 		.4byte	0x13c8
 3535 134f 2001     		.2byte	0x120
 3536 1351 26       		.uleb128 0x26
 3537 1352 B10C0000 		.4byte	.LASF287
 3538 1356 04       		.byte	0x4
 3539 1357 8201     		.2byte	0x182
 3540 1359 C3130000 		.4byte	0x13c3
 3541 135d 8001     		.2byte	0x180
 3542 135f 26       		.uleb128 0x26
 3543 1360 3D050000 		.4byte	.LASF288
 3544 1364 04       		.byte	0x4
 3545 1365 8301     		.2byte	0x183
 3546 1367 C8130000 		.4byte	0x13c8
 3547 136b A001     		.2byte	0x1a0
 3548 136d 26       		.uleb128 0x26
 3549 136e 20130000 		.4byte	.LASF289
 3550 1372 04       		.byte	0x4
 3551 1373 8401     		.2byte	0x184
 3552 1375 C3130000 		.4byte	0x13c3
 3553 1379 0002     		.2byte	0x200
 3554 137b 26       		.uleb128 0x26
 3555 137c 380E0000 		.4byte	.LASF290
 3556 1380 04       		.byte	0x4
 3557 1381 8501     		.2byte	0x185
 3558 1383 D8130000 		.4byte	0x13d8
 3559 1387 2002     		.2byte	0x220
 3560 1389 35       		.uleb128 0x35
 3561 138a 495000   		.ascii	"IP\000"
 3562 138d 04       		.byte	0x4
 3563 138e 8601     		.2byte	0x186
 3564 1390 F8130000 		.4byte	0x13f8
 3565 1394 0003     		.2byte	0x300
ARM GAS  /tmp/cc5e0BXI.s 			page 105


 3566 1396 26       		.uleb128 0x26
 3567 1397 420E0000 		.4byte	.LASF291
 3568 139b 04       		.byte	0x4
 3569 139c 8701     		.2byte	0x187
 3570 139e FD130000 		.4byte	0x13fd
 3571 13a2 F003     		.2byte	0x3f0
 3572 13a4 26       		.uleb128 0x26
 3573 13a5 790D0000 		.4byte	.LASF292
 3574 13a9 04       		.byte	0x4
 3575 13aa 8801     		.2byte	0x188
 3576 13ac 49100000 		.4byte	0x1049
 3577 13b0 000E     		.2byte	0xe00
 3578 13b2 00       		.byte	0
 3579 13b3 18       		.uleb128 0x18
 3580 13b4 49100000 		.4byte	0x1049
 3581 13b8 C3130000 		.4byte	0x13c3
 3582 13bc 19       		.uleb128 0x19
 3583 13bd 65040000 		.4byte	0x465
 3584 13c1 07       		.byte	0x7
 3585 13c2 00       		.byte	0
 3586 13c3 0D       		.uleb128 0xd
 3587 13c4 B3130000 		.4byte	0x13b3
 3588 13c8 18       		.uleb128 0x18
 3589 13c9 3E100000 		.4byte	0x103e
 3590 13cd D8130000 		.4byte	0x13d8
 3591 13d1 19       		.uleb128 0x19
 3592 13d2 65040000 		.4byte	0x465
 3593 13d6 17       		.byte	0x17
 3594 13d7 00       		.byte	0
 3595 13d8 18       		.uleb128 0x18
 3596 13d9 3E100000 		.4byte	0x103e
 3597 13dd E8130000 		.4byte	0x13e8
 3598 13e1 19       		.uleb128 0x19
 3599 13e2 65040000 		.4byte	0x465
 3600 13e6 37       		.byte	0x37
 3601 13e7 00       		.byte	0
 3602 13e8 18       		.uleb128 0x18
 3603 13e9 0E100000 		.4byte	0x100e
 3604 13ed F8130000 		.4byte	0x13f8
 3605 13f1 19       		.uleb128 0x19
 3606 13f2 65040000 		.4byte	0x465
 3607 13f6 EF       		.byte	0xef
 3608 13f7 00       		.byte	0
 3609 13f8 0D       		.uleb128 0xd
 3610 13f9 E8130000 		.4byte	0x13e8
 3611 13fd 18       		.uleb128 0x18
 3612 13fe 3E100000 		.4byte	0x103e
 3613 1402 0E140000 		.4byte	0x140e
 3614 1406 36       		.uleb128 0x36
 3615 1407 65040000 		.4byte	0x465
 3616 140b 8302     		.2byte	0x283
 3617 140d 00       		.byte	0
 3618 140e 12       		.uleb128 0x12
 3619 140f A60F0000 		.4byte	.LASF293
 3620 1413 04       		.byte	0x4
 3621 1414 8901     		.2byte	0x189
 3622 1416 F3120000 		.4byte	0x12f3
ARM GAS  /tmp/cc5e0BXI.s 			page 106


 3623 141a 34       		.uleb128 0x34
 3624 141b AC02     		.2byte	0x2ac
 3625 141d 04       		.byte	0x4
 3626 141e 9B01     		.2byte	0x19b
 3627 1420 130D0000 		.4byte	.LASF295
 3628 1424 CB160000 		.4byte	0x16cb
 3629 1428 11       		.uleb128 0x11
 3630 1429 6B070000 		.4byte	.LASF296
 3631 142d 04       		.byte	0x4
 3632 142e 9C01     		.2byte	0x19c
 3633 1430 49100000 		.4byte	0x1049
 3634 1434 00       		.byte	0
 3635 1435 11       		.uleb128 0x11
 3636 1436 6A110000 		.4byte	.LASF297
 3637 143a 04       		.byte	0x4
 3638 143b 9D01     		.2byte	0x19d
 3639 143d 49100000 		.4byte	0x1049
 3640 1441 04       		.byte	0x4
 3641 1442 11       		.uleb128 0x11
 3642 1443 D6100000 		.4byte	.LASF298
 3643 1447 04       		.byte	0x4
 3644 1448 9E01     		.2byte	0x19e
 3645 144a 49100000 		.4byte	0x1049
 3646 144e 08       		.byte	0x8
 3647 144f 11       		.uleb128 0x11
 3648 1450 2C090000 		.4byte	.LASF299
 3649 1454 04       		.byte	0x4
 3650 1455 9F01     		.2byte	0x19f
 3651 1457 49100000 		.4byte	0x1049
 3652 145b 0C       		.byte	0xc
 3653 145c 37       		.uleb128 0x37
 3654 145d 53435200 		.ascii	"SCR\000"
 3655 1461 04       		.byte	0x4
 3656 1462 A001     		.2byte	0x1a0
 3657 1464 49100000 		.4byte	0x1049
 3658 1468 10       		.byte	0x10
 3659 1469 37       		.uleb128 0x37
 3660 146a 43435200 		.ascii	"CCR\000"
 3661 146e 04       		.byte	0x4
 3662 146f A101     		.2byte	0x1a1
 3663 1471 49100000 		.4byte	0x1049
 3664 1475 14       		.byte	0x14
 3665 1476 11       		.uleb128 0x11
 3666 1477 A9070000 		.4byte	.LASF300
 3667 147b 04       		.byte	0x4
 3668 147c A201     		.2byte	0x1a2
 3669 147e DB160000 		.4byte	0x16db
 3670 1482 18       		.byte	0x18
 3671 1483 11       		.uleb128 0x11
 3672 1484 2B0E0000 		.4byte	.LASF301
 3673 1488 04       		.byte	0x4
 3674 1489 A301     		.2byte	0x1a3
 3675 148b 49100000 		.4byte	0x1049
 3676 148f 24       		.byte	0x24
 3677 1490 11       		.uleb128 0x11
 3678 1491 FF0A0000 		.4byte	.LASF302
 3679 1495 04       		.byte	0x4
ARM GAS  /tmp/cc5e0BXI.s 			page 107


 3680 1496 A401     		.2byte	0x1a4
 3681 1498 49100000 		.4byte	0x1049
 3682 149c 28       		.byte	0x28
 3683 149d 11       		.uleb128 0x11
 3684 149e 93080000 		.4byte	.LASF303
 3685 14a2 04       		.byte	0x4
 3686 14a3 A501     		.2byte	0x1a5
 3687 14a5 49100000 		.4byte	0x1049
 3688 14a9 2C       		.byte	0x2c
 3689 14aa 11       		.uleb128 0x11
 3690 14ab 7A030000 		.4byte	.LASF304
 3691 14af 04       		.byte	0x4
 3692 14b0 A601     		.2byte	0x1a6
 3693 14b2 49100000 		.4byte	0x1049
 3694 14b6 30       		.byte	0x30
 3695 14b7 11       		.uleb128 0x11
 3696 14b8 D00D0000 		.4byte	.LASF305
 3697 14bc 04       		.byte	0x4
 3698 14bd A701     		.2byte	0x1a7
 3699 14bf 49100000 		.4byte	0x1049
 3700 14c3 34       		.byte	0x34
 3701 14c4 11       		.uleb128 0x11
 3702 14c5 5B140000 		.4byte	.LASF306
 3703 14c9 04       		.byte	0x4
 3704 14ca A801     		.2byte	0x1a8
 3705 14cc 49100000 		.4byte	0x1049
 3706 14d0 38       		.byte	0x38
 3707 14d1 11       		.uleb128 0x11
 3708 14d2 12080000 		.4byte	.LASF307
 3709 14d6 04       		.byte	0x4
 3710 14d7 A901     		.2byte	0x1a9
 3711 14d9 49100000 		.4byte	0x1049
 3712 14dd 3C       		.byte	0x3c
 3713 14de 11       		.uleb128 0x11
 3714 14df 1D040000 		.4byte	.LASF308
 3715 14e3 04       		.byte	0x4
 3716 14e4 AA01     		.2byte	0x1aa
 3717 14e6 F0160000 		.4byte	0x16f0
 3718 14ea 40       		.byte	0x40
 3719 14eb 11       		.uleb128 0x11
 3720 14ec 97090000 		.4byte	.LASF309
 3721 14f0 04       		.byte	0x4
 3722 14f1 AB01     		.2byte	0x1ab
 3723 14f3 49100000 		.4byte	0x1049
 3724 14f7 48       		.byte	0x48
 3725 14f8 11       		.uleb128 0x11
 3726 14f9 9B050000 		.4byte	.LASF310
 3727 14fd 04       		.byte	0x4
 3728 14fe AC01     		.2byte	0x1ac
 3729 1500 49100000 		.4byte	0x1049
 3730 1504 4C       		.byte	0x4c
 3731 1505 11       		.uleb128 0x11
 3732 1506 47070000 		.4byte	.LASF311
 3733 150a 04       		.byte	0x4
 3734 150b AD01     		.2byte	0x1ad
 3735 150d 05170000 		.4byte	0x1705
 3736 1511 50       		.byte	0x50
ARM GAS  /tmp/cc5e0BXI.s 			page 108


 3737 1512 11       		.uleb128 0x11
 3738 1513 0D150000 		.4byte	.LASF312
 3739 1517 04       		.byte	0x4
 3740 1518 AE01     		.2byte	0x1ae
 3741 151a 1A170000 		.4byte	0x171a
 3742 151e 60       		.byte	0x60
 3743 151f 11       		.uleb128 0x11
 3744 1520 210E0000 		.4byte	.LASF282
 3745 1524 04       		.byte	0x4
 3746 1525 AF01     		.2byte	0x1af
 3747 1527 1F170000 		.4byte	0x171f
 3748 152b 74       		.byte	0x74
 3749 152c 11       		.uleb128 0x11
 3750 152d 92140000 		.4byte	.LASF313
 3751 1531 04       		.byte	0x4
 3752 1532 B001     		.2byte	0x1b0
 3753 1534 49100000 		.4byte	0x1049
 3754 1538 78       		.byte	0x78
 3755 1539 37       		.uleb128 0x37
 3756 153a 43545200 		.ascii	"CTR\000"
 3757 153e 04       		.byte	0x4
 3758 153f B101     		.2byte	0x1b1
 3759 1541 49100000 		.4byte	0x1049
 3760 1545 7C       		.byte	0x7c
 3761 1546 11       		.uleb128 0x11
 3762 1547 3F000000 		.4byte	.LASF314
 3763 154b 04       		.byte	0x4
 3764 154c B201     		.2byte	0x1b2
 3765 154e 49100000 		.4byte	0x1049
 3766 1552 80       		.byte	0x80
 3767 1553 11       		.uleb128 0x11
 3768 1554 790A0000 		.4byte	.LASF315
 3769 1558 04       		.byte	0x4
 3770 1559 B301     		.2byte	0x1b3
 3771 155b 49100000 		.4byte	0x1049
 3772 155f 84       		.byte	0x84
 3773 1560 11       		.uleb128 0x11
 3774 1561 30000000 		.4byte	.LASF316
 3775 1565 04       		.byte	0x4
 3776 1566 B401     		.2byte	0x1b4
 3777 1568 49100000 		.4byte	0x1049
 3778 156c 88       		.byte	0x88
 3779 156d 11       		.uleb128 0x11
 3780 156e 3D050000 		.4byte	.LASF288
 3781 1572 04       		.byte	0x4
 3782 1573 B501     		.2byte	0x1b5
 3783 1575 2F170000 		.4byte	0x172f
 3784 1579 8C       		.byte	0x8c
 3785 157a 26       		.uleb128 0x26
 3786 157b 790D0000 		.4byte	.LASF292
 3787 157f 04       		.byte	0x4
 3788 1580 B601     		.2byte	0x1b6
 3789 1582 49100000 		.4byte	0x1049
 3790 1586 0002     		.2byte	0x200
 3791 1588 26       		.uleb128 0x26
 3792 1589 380E0000 		.4byte	.LASF290
 3793 158d 04       		.byte	0x4
ARM GAS  /tmp/cc5e0BXI.s 			page 109


 3794 158e B701     		.2byte	0x1b7
 3795 1590 3F170000 		.4byte	0x173f
 3796 1594 0402     		.2byte	0x204
 3797 1596 26       		.uleb128 0x26
 3798 1597 8E0A0000 		.4byte	.LASF317
 3799 159b 04       		.byte	0x4
 3800 159c B801     		.2byte	0x1b8
 3801 159e 49100000 		.4byte	0x1049
 3802 15a2 4002     		.2byte	0x240
 3803 15a4 26       		.uleb128 0x26
 3804 15a5 50140000 		.4byte	.LASF318
 3805 15a9 04       		.byte	0x4
 3806 15aa B901     		.2byte	0x1b9
 3807 15ac 49100000 		.4byte	0x1049
 3808 15b0 4402     		.2byte	0x244
 3809 15b2 26       		.uleb128 0x26
 3810 15b3 1D0F0000 		.4byte	.LASF319
 3811 15b7 04       		.byte	0x4
 3812 15b8 BA01     		.2byte	0x1ba
 3813 15ba 49100000 		.4byte	0x1049
 3814 15be 4802     		.2byte	0x248
 3815 15c0 26       		.uleb128 0x26
 3816 15c1 420E0000 		.4byte	.LASF291
 3817 15c5 04       		.byte	0x4
 3818 15c6 BB01     		.2byte	0x1bb
 3819 15c8 1F170000 		.4byte	0x171f
 3820 15cc 4C02     		.2byte	0x24c
 3821 15ce 26       		.uleb128 0x26
 3822 15cf A7010000 		.4byte	.LASF320
 3823 15d3 04       		.byte	0x4
 3824 15d4 BC01     		.2byte	0x1bc
 3825 15d6 49100000 		.4byte	0x1049
 3826 15da 5002     		.2byte	0x250
 3827 15dc 26       		.uleb128 0x26
 3828 15dd 4C0E0000 		.4byte	.LASF321
 3829 15e1 04       		.byte	0x4
 3830 15e2 BD01     		.2byte	0x1bd
 3831 15e4 1F170000 		.4byte	0x171f
 3832 15e8 5402     		.2byte	0x254
 3833 15ea 26       		.uleb128 0x26
 3834 15eb E2050000 		.4byte	.LASF322
 3835 15ef 04       		.byte	0x4
 3836 15f0 BE01     		.2byte	0x1be
 3837 15f2 49100000 		.4byte	0x1049
 3838 15f6 5802     		.2byte	0x258
 3839 15f8 26       		.uleb128 0x26
 3840 15f9 F90B0000 		.4byte	.LASF323
 3841 15fd 04       		.byte	0x4
 3842 15fe BF01     		.2byte	0x1bf
 3843 1600 49100000 		.4byte	0x1049
 3844 1604 5C02     		.2byte	0x25c
 3845 1606 26       		.uleb128 0x26
 3846 1607 33010000 		.4byte	.LASF324
 3847 160b 04       		.byte	0x4
 3848 160c C001     		.2byte	0x1c0
 3849 160e 49100000 		.4byte	0x1049
 3850 1612 6002     		.2byte	0x260
ARM GAS  /tmp/cc5e0BXI.s 			page 110


 3851 1614 26       		.uleb128 0x26
 3852 1615 3C0B0000 		.4byte	.LASF325
 3853 1619 04       		.byte	0x4
 3854 161a C101     		.2byte	0x1c1
 3855 161c 49100000 		.4byte	0x1049
 3856 1620 6402     		.2byte	0x264
 3857 1622 26       		.uleb128 0x26
 3858 1623 E80A0000 		.4byte	.LASF326
 3859 1627 04       		.byte	0x4
 3860 1628 C201     		.2byte	0x1c2
 3861 162a 49100000 		.4byte	0x1049
 3862 162e 6802     		.2byte	0x268
 3863 1630 26       		.uleb128 0x26
 3864 1631 9A000000 		.4byte	.LASF327
 3865 1635 04       		.byte	0x4
 3866 1636 C301     		.2byte	0x1c3
 3867 1638 49100000 		.4byte	0x1049
 3868 163c 6C02     		.2byte	0x26c
 3869 163e 26       		.uleb128 0x26
 3870 163f BA0A0000 		.4byte	.LASF328
 3871 1643 04       		.byte	0x4
 3872 1644 C401     		.2byte	0x1c4
 3873 1646 49100000 		.4byte	0x1049
 3874 164a 7002     		.2byte	0x270
 3875 164c 26       		.uleb128 0x26
 3876 164d 720A0000 		.4byte	.LASF329
 3877 1651 04       		.byte	0x4
 3878 1652 C501     		.2byte	0x1c5
 3879 1654 49100000 		.4byte	0x1049
 3880 1658 7402     		.2byte	0x274
 3881 165a 26       		.uleb128 0x26
 3882 165b F5140000 		.4byte	.LASF330
 3883 165f 04       		.byte	0x4
 3884 1660 C601     		.2byte	0x1c6
 3885 1662 4F170000 		.4byte	0x174f
 3886 1666 7802     		.2byte	0x278
 3887 1668 26       		.uleb128 0x26
 3888 1669 86010000 		.4byte	.LASF331
 3889 166d 04       		.byte	0x4
 3890 166e C701     		.2byte	0x1c7
 3891 1670 49100000 		.4byte	0x1049
 3892 1674 9002     		.2byte	0x290
 3893 1676 26       		.uleb128 0x26
 3894 1677 430F0000 		.4byte	.LASF332
 3895 167b 04       		.byte	0x4
 3896 167c C801     		.2byte	0x1c8
 3897 167e 49100000 		.4byte	0x1049
 3898 1682 9402     		.2byte	0x294
 3899 1684 26       		.uleb128 0x26
 3900 1685 A0010000 		.4byte	.LASF333
 3901 1689 04       		.byte	0x4
 3902 168a C901     		.2byte	0x1c9
 3903 168c 49100000 		.4byte	0x1049
 3904 1690 9802     		.2byte	0x298
 3905 1692 26       		.uleb128 0x26
 3906 1693 240A0000 		.4byte	.LASF334
 3907 1697 04       		.byte	0x4
ARM GAS  /tmp/cc5e0BXI.s 			page 111


 3908 1698 CA01     		.2byte	0x1ca
 3909 169a 49100000 		.4byte	0x1049
 3910 169e 9C02     		.2byte	0x29c
 3911 16a0 26       		.uleb128 0x26
 3912 16a1 43060000 		.4byte	.LASF335
 3913 16a5 04       		.byte	0x4
 3914 16a6 CB01     		.2byte	0x1cb
 3915 16a8 49100000 		.4byte	0x1049
 3916 16ac A002     		.2byte	0x2a0
 3917 16ae 26       		.uleb128 0x26
 3918 16af 5C0E0000 		.4byte	.LASF336
 3919 16b3 04       		.byte	0x4
 3920 16b4 CC01     		.2byte	0x1cc
 3921 16b6 1F170000 		.4byte	0x171f
 3922 16ba A402     		.2byte	0x2a4
 3923 16bc 26       		.uleb128 0x26
 3924 16bd 560E0000 		.4byte	.LASF337
 3925 16c1 04       		.byte	0x4
 3926 16c2 CD01     		.2byte	0x1cd
 3927 16c4 49100000 		.4byte	0x1049
 3928 16c8 A802     		.2byte	0x2a8
 3929 16ca 00       		.byte	0
 3930 16cb 18       		.uleb128 0x18
 3931 16cc 0E100000 		.4byte	0x100e
 3932 16d0 DB160000 		.4byte	0x16db
 3933 16d4 19       		.uleb128 0x19
 3934 16d5 65040000 		.4byte	0x465
 3935 16d9 0B       		.byte	0xb
 3936 16da 00       		.byte	0
 3937 16db 0D       		.uleb128 0xd
 3938 16dc CB160000 		.4byte	0x16cb
 3939 16e0 18       		.uleb128 0x18
 3940 16e1 49100000 		.4byte	0x1049
 3941 16e5 F0160000 		.4byte	0x16f0
 3942 16e9 19       		.uleb128 0x19
 3943 16ea 65040000 		.4byte	0x465
 3944 16ee 01       		.byte	0x1
 3945 16ef 00       		.byte	0
 3946 16f0 0D       		.uleb128 0xd
 3947 16f1 E0160000 		.4byte	0x16e0
 3948 16f5 18       		.uleb128 0x18
 3949 16f6 49100000 		.4byte	0x1049
 3950 16fa 05170000 		.4byte	0x1705
 3951 16fe 19       		.uleb128 0x19
 3952 16ff 65040000 		.4byte	0x465
 3953 1703 03       		.byte	0x3
 3954 1704 00       		.byte	0
 3955 1705 0D       		.uleb128 0xd
 3956 1706 F5160000 		.4byte	0x16f5
 3957 170a 18       		.uleb128 0x18
 3958 170b 49100000 		.4byte	0x1049
 3959 170f 1A170000 		.4byte	0x171a
 3960 1713 19       		.uleb128 0x19
 3961 1714 65040000 		.4byte	0x465
 3962 1718 04       		.byte	0x4
 3963 1719 00       		.byte	0
 3964 171a 0D       		.uleb128 0xd
ARM GAS  /tmp/cc5e0BXI.s 			page 112


 3965 171b 0A170000 		.4byte	0x170a
 3966 171f 18       		.uleb128 0x18
 3967 1720 3E100000 		.4byte	0x103e
 3968 1724 2F170000 		.4byte	0x172f
 3969 1728 19       		.uleb128 0x19
 3970 1729 65040000 		.4byte	0x465
 3971 172d 00       		.byte	0
 3972 172e 00       		.byte	0
 3973 172f 18       		.uleb128 0x18
 3974 1730 3E100000 		.4byte	0x103e
 3975 1734 3F170000 		.4byte	0x173f
 3976 1738 19       		.uleb128 0x19
 3977 1739 65040000 		.4byte	0x465
 3978 173d 5C       		.byte	0x5c
 3979 173e 00       		.byte	0
 3980 173f 18       		.uleb128 0x18
 3981 1740 3E100000 		.4byte	0x103e
 3982 1744 4F170000 		.4byte	0x174f
 3983 1748 19       		.uleb128 0x19
 3984 1749 65040000 		.4byte	0x465
 3985 174d 0E       		.byte	0xe
 3986 174e 00       		.byte	0
 3987 174f 18       		.uleb128 0x18
 3988 1750 3E100000 		.4byte	0x103e
 3989 1754 5F170000 		.4byte	0x175f
 3990 1758 19       		.uleb128 0x19
 3991 1759 65040000 		.4byte	0x465
 3992 175d 05       		.byte	0x5
 3993 175e 00       		.byte	0
 3994 175f 12       		.uleb128 0x12
 3995 1760 B00F0000 		.4byte	.LASF338
 3996 1764 04       		.byte	0x4
 3997 1765 CE01     		.2byte	0x1ce
 3998 1767 1A140000 		.4byte	0x141a
 3999 176b 29       		.uleb128 0x29
 4000 176c F4070000 		.4byte	.LASF339
 4001 1770 04       		.byte	0x4
 4002 1771 6508     		.2byte	0x865
 4003 1773 39100000 		.4byte	0x1039
 4004 1777 2B       		.uleb128 0x2b
 4005 1778 A0000000 		.4byte	.LASF340
 4006 177c 16       		.byte	0x16
 4007 177d 3A       		.byte	0x3a
 4008 177e 3E100000 		.4byte	0x103e
 4009 1782 18       		.uleb128 0x18
 4010 1783 49100000 		.4byte	0x1049
 4011 1787 92170000 		.4byte	0x1792
 4012 178b 19       		.uleb128 0x19
 4013 178c 65040000 		.4byte	0x465
 4014 1790 2E       		.byte	0x2e
 4015 1791 00       		.byte	0
 4016 1792 0D       		.uleb128 0xd
 4017 1793 82170000 		.4byte	0x1782
 4018 1797 14       		.uleb128 0x14
 4019 1798 E8       		.byte	0xe8
 4020 1799 17       		.byte	0x17
 4021 179a 38       		.byte	0x38
ARM GAS  /tmp/cc5e0BXI.s 			page 113


 4022 179b 8C140000 		.4byte	.LASF341
 4023 179f 34180000 		.4byte	0x1834
 4024 17a3 17       		.uleb128 0x17
 4025 17a4 5F050000 		.4byte	.LASF342
 4026 17a8 17       		.byte	0x17
 4027 17a9 39       		.byte	0x39
 4028 17aa 49100000 		.4byte	0x1049
 4029 17ae 00       		.byte	0
 4030 17af 17       		.uleb128 0x17
 4031 17b0 81130000 		.4byte	.LASF343
 4032 17b4 17       		.byte	0x17
 4033 17b5 3A       		.byte	0x3a
 4034 17b6 49100000 		.4byte	0x1049
 4035 17ba 04       		.byte	0x4
 4036 17bb 17       		.uleb128 0x17
 4037 17bc 17080000 		.4byte	.LASF344
 4038 17c0 17       		.byte	0x17
 4039 17c1 3B       		.byte	0x3b
 4040 17c2 49100000 		.4byte	0x1049
 4041 17c6 08       		.byte	0x8
 4042 17c7 17       		.uleb128 0x17
 4043 17c8 BB060000 		.4byte	.LASF345
 4044 17cc 17       		.byte	0x17
 4045 17cd 3C       		.byte	0x3c
 4046 17ce 49100000 		.4byte	0x1049
 4047 17d2 0C       		.byte	0xc
 4048 17d3 17       		.uleb128 0x17
 4049 17d4 63130000 		.4byte	.LASF346
 4050 17d8 17       		.byte	0x17
 4051 17d9 3D       		.byte	0x3d
 4052 17da 49100000 		.4byte	0x1049
 4053 17de 10       		.byte	0x10
 4054 17df 17       		.uleb128 0x17
 4055 17e0 150C0000 		.4byte	.LASF347
 4056 17e4 17       		.byte	0x17
 4057 17e5 3E       		.byte	0x3e
 4058 17e6 49100000 		.4byte	0x1049
 4059 17ea 14       		.byte	0x14
 4060 17eb 17       		.uleb128 0x17
 4061 17ec 46000000 		.4byte	.LASF348
 4062 17f0 17       		.byte	0x17
 4063 17f1 3F       		.byte	0x3f
 4064 17f2 49100000 		.4byte	0x1049
 4065 17f6 18       		.byte	0x18
 4066 17f7 17       		.uleb128 0x17
 4067 17f8 2E140000 		.4byte	.LASF349
 4068 17fc 17       		.byte	0x17
 4069 17fd 40       		.byte	0x40
 4070 17fe 49100000 		.4byte	0x1049
 4071 1802 1C       		.byte	0x1c
 4072 1803 17       		.uleb128 0x17
 4073 1804 4F120000 		.4byte	.LASF350
 4074 1808 17       		.byte	0x17
 4075 1809 41       		.byte	0x41
 4076 180a 49100000 		.4byte	0x1049
 4077 180e 20       		.byte	0x20
 4078 180f 17       		.uleb128 0x17
ARM GAS  /tmp/cc5e0BXI.s 			page 114


 4079 1810 60000000 		.4byte	.LASF351
 4080 1814 17       		.byte	0x17
 4081 1815 42       		.byte	0x42
 4082 1816 49100000 		.4byte	0x1049
 4083 181a 24       		.byte	0x24
 4084 181b 17       		.uleb128 0x17
 4085 181c 02110000 		.4byte	.LASF352
 4086 1820 17       		.byte	0x17
 4087 1821 43       		.byte	0x43
 4088 1822 92170000 		.4byte	0x1792
 4089 1826 28       		.byte	0x28
 4090 1827 17       		.uleb128 0x17
 4091 1828 B40B0000 		.4byte	.LASF353
 4092 182c 17       		.byte	0x17
 4093 182d 44       		.byte	0x44
 4094 182e 49100000 		.4byte	0x1049
 4095 1832 E4       		.byte	0xe4
 4096 1833 00       		.byte	0
 4097 1834 0B       		.uleb128 0xb
 4098 1835 660E0000 		.4byte	.LASF354
 4099 1839 17       		.byte	0x17
 4100 183a 45       		.byte	0x45
 4101 183b 97170000 		.4byte	0x1797
 4102 183f 05       		.uleb128 0x5
 4103 1840 18       		.byte	0x18
 4104 1841 27       		.byte	0x27
 4105 1842 C20C0000 		.4byte	0xcc2
 4106 1846 05       		.uleb128 0x5
 4107 1847 18       		.byte	0x18
 4108 1848 33       		.byte	0x33
 4109 1849 200C0000 		.4byte	0xc20
 4110 184d 05       		.uleb128 0x5
 4111 184e 18       		.byte	0x18
 4112 184f 34       		.byte	0x34
 4113 1850 500C0000 		.4byte	0xc50
 4114 1854 05       		.uleb128 0x5
 4115 1855 18       		.byte	0x18
 4116 1856 36       		.byte	0x36
 4117 1857 34010000 		.4byte	0x134
 4118 185b 05       		.uleb128 0x5
 4119 185c 18       		.byte	0x18
 4120 185d 37       		.byte	0x37
 4121 185e D70C0000 		.4byte	0xcd7
 4122 1862 05       		.uleb128 0x5
 4123 1863 18       		.byte	0x18
 4124 1864 38       		.byte	0x38
 4125 1865 F30C0000 		.4byte	0xcf3
 4126 1869 05       		.uleb128 0x5
 4127 186a 18       		.byte	0x18
 4128 186b 39       		.byte	0x39
 4129 186c 080D0000 		.4byte	0xd08
 4130 1870 05       		.uleb128 0x5
 4131 1871 18       		.byte	0x18
 4132 1872 3A       		.byte	0x3a
 4133 1873 1D0D0000 		.4byte	0xd1d
 4134 1877 05       		.uleb128 0x5
 4135 1878 18       		.byte	0x18
ARM GAS  /tmp/cc5e0BXI.s 			page 115


 4136 1879 3C       		.byte	0x3c
 4137 187a 63020000 		.4byte	0x263
 4138 187e 05       		.uleb128 0x5
 4139 187f 18       		.byte	0x18
 4140 1880 3E       		.byte	0x3e
 4141 1881 600D0000 		.4byte	0xd60
 4142 1885 05       		.uleb128 0x5
 4143 1886 18       		.byte	0x18
 4144 1887 40       		.byte	0x40
 4145 1888 750D0000 		.4byte	0xd75
 4146 188c 05       		.uleb128 0x5
 4147 188d 18       		.byte	0x18
 4148 188e 43       		.byte	0x43
 4149 188f 8F0D0000 		.4byte	0xd8f
 4150 1893 05       		.uleb128 0x5
 4151 1894 18       		.byte	0x18
 4152 1895 44       		.byte	0x44
 4153 1896 A90D0000 		.4byte	0xda9
 4154 189a 05       		.uleb128 0x5
 4155 189b 18       		.byte	0x18
 4156 189c 45       		.byte	0x45
 4157 189d DA0D0000 		.4byte	0xdda
 4158 18a1 05       		.uleb128 0x5
 4159 18a2 18       		.byte	0x18
 4160 18a3 47       		.byte	0x47
 4161 18a4 F90D0000 		.4byte	0xdf9
 4162 18a8 05       		.uleb128 0x5
 4163 18a9 18       		.byte	0x18
 4164 18aa 48       		.byte	0x48
 4165 18ab 190E0000 		.4byte	0xe19
 4166 18af 05       		.uleb128 0x5
 4167 18b0 18       		.byte	0x18
 4168 18b1 4A       		.byte	0x4a
 4169 18b2 240E0000 		.4byte	0xe24
 4170 18b6 05       		.uleb128 0x5
 4171 18b7 18       		.byte	0x18
 4172 18b8 4B       		.byte	0x4b
 4173 18b9 350E0000 		.4byte	0xe35
 4174 18bd 05       		.uleb128 0x5
 4175 18be 18       		.byte	0x18
 4176 18bf 4C       		.byte	0x4c
 4177 18c0 550E0000 		.4byte	0xe55
 4178 18c4 05       		.uleb128 0x5
 4179 18c5 18       		.byte	0x18
 4180 18c6 4D       		.byte	0x4d
 4181 18c7 740E0000 		.4byte	0xe74
 4182 18cb 05       		.uleb128 0x5
 4183 18cc 18       		.byte	0x18
 4184 18cd 4E       		.byte	0x4e
 4185 18ce 930E0000 		.4byte	0xe93
 4186 18d2 05       		.uleb128 0x5
 4187 18d3 18       		.byte	0x18
 4188 18d4 50       		.byte	0x50
 4189 18d5 A80E0000 		.4byte	0xea8
 4190 18d9 05       		.uleb128 0x5
 4191 18da 18       		.byte	0x18
 4192 18db 51       		.byte	0x51
ARM GAS  /tmp/cc5e0BXI.s 			page 116


 4193 18dc CD0E0000 		.4byte	0xecd
 4194 18e0 2B       		.uleb128 0x2b
 4195 18e1 7F030000 		.4byte	.LASF355
 4196 18e5 19       		.byte	0x19
 4197 18e6 8F       		.byte	0x8f
 4198 18e7 F2180000 		.4byte	0x18f2
 4199 18eb 0E       		.uleb128 0xe
 4200 18ec 01       		.byte	0x1
 4201 18ed 02       		.byte	0x2
 4202 18ee 2F0B0000 		.4byte	.LASF356
 4203 18f2 0D       		.uleb128 0xd
 4204 18f3 EB180000 		.4byte	0x18eb
 4205 18f7 38       		.uleb128 0x38
 4206 18f8 B8110000 		.4byte	.LASF357
 4207 18fc 19       		.byte	0x19
 4208 18fd 94       		.byte	0x94
 4209 18fe 49100000 		.4byte	0x1049
 4210 1902 05       		.uleb128 0x5
 4211 1903 03       		.byte	0x3
 4212 1904 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 4213 1908 38       		.uleb128 0x38
 4214 1909 F7060000 		.4byte	.LASF358
 4215 190d 19       		.byte	0x19
 4216 190e 95       		.byte	0x95
 4217 190f F2180000 		.4byte	0x18f2
 4218 1913 05       		.uleb128 0x5
 4219 1914 03       		.byte	0x3
 4220 1915 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 4221 1919 39       		.uleb128 0x39
 4222 191a 4E070000 		.4byte	.LASF359
 4223 191e 68190000 		.4byte	0x1968
 4224 1922 05       		.uleb128 0x5
 4225 1923 1A       		.byte	0x1a
 4226 1924 1A       		.byte	0x1a
 4227 1925 71190000 		.4byte	0x1971
 4228 1929 3A       		.uleb128 0x3a
 4229 192a 840B0000 		.4byte	.LASF446
 4230 192e B1020000 		.4byte	.LASF448
 4231 1932 82040000 		.4byte	0x482
 4232 1936 01       		.byte	0x1
 4233 1937 19190000 		.4byte	0x1919
 4234 193b 01       		.byte	0x1
 4235 193c 44190000 		.4byte	0x1944
 4236 1940 4F190000 		.4byte	0x194f
 4237 1944 3B       		.uleb128 0x3b
 4238 1945 DB240000 		.4byte	0x24db
 4239 1949 3B       		.uleb128 0x3b
 4240 194a 9A020000 		.4byte	0x29a
 4241 194e 00       		.byte	0
 4242 194f 3C       		.uleb128 0x3c
 4243 1950 4E070000 		.4byte	.LASF359
 4244 1954 420C0000 		.4byte	.LASF472
 4245 1958 DB240000 		.4byte	0x24db
 4246 195c 01       		.byte	0x1
 4247 195d 61190000 		.4byte	0x1961
 4248 1961 3B       		.uleb128 0x3b
 4249 1962 DB240000 		.4byte	0x24db
ARM GAS  /tmp/cc5e0BXI.s 			page 117


 4250 1966 00       		.byte	0
 4251 1967 00       		.byte	0
 4252 1968 39       		.uleb128 0x39
 4253 1969 1F120000 		.4byte	.LASF360
 4254 196d DC190000 		.4byte	0x19dc
 4255 1971 3D       		.uleb128 0x3d
 4256 1972 01080000 		.4byte	.LASF365
 4257 1976 05       		.byte	0x5
 4258 1977 3B       		.byte	0x3b
 4259 1978 3D0A0000 		.4byte	.LASF367
 4260 197c 7E020000 		.4byte	0x27e
 4261 1980 01       		.byte	0x1
 4262 1981 89190000 		.4byte	0x1989
 4263 1985 99190000 		.4byte	0x1999
 4264 1989 3B       		.uleb128 0x3b
 4265 198a DC190000 		.4byte	0x19dc
 4266 198e 08       		.uleb128 0x8
 4267 198f 490A0000 		.4byte	0xa49
 4268 1993 08       		.uleb128 0x8
 4269 1994 7E020000 		.4byte	0x27e
 4270 1998 00       		.byte	0
 4271 1999 3E       		.uleb128 0x3e
 4272 199a BC0E0000 		.4byte	.LASF390
 4273 199e 05       		.byte	0x5
 4274 199f 2E       		.byte	0x2e
 4275 19a0 940B0000 		.4byte	.LASF392
 4276 19a4 82040000 		.4byte	0x482
 4277 19a8 01       		.byte	0x1
 4278 19a9 68190000 		.4byte	0x1968
 4279 19ad 01       		.byte	0x1
 4280 19ae B6190000 		.4byte	0x19b6
 4281 19b2 C1190000 		.4byte	0x19c1
 4282 19b6 3B       		.uleb128 0x3b
 4283 19b7 DC190000 		.4byte	0x19dc
 4284 19bb 3B       		.uleb128 0x3b
 4285 19bc 9A020000 		.4byte	0x29a
 4286 19c0 00       		.byte	0
 4287 19c1 3F       		.uleb128 0x3f
 4288 19c2 1F120000 		.4byte	.LASF360
 4289 19c6 05       		.byte	0x5
 4290 19c7 2D       		.byte	0x2d
 4291 19c8 FF140000 		.4byte	.LASF370
 4292 19cc DC190000 		.4byte	0x19dc
 4293 19d0 01       		.byte	0x1
 4294 19d1 D5190000 		.4byte	0x19d5
 4295 19d5 3B       		.uleb128 0x3b
 4296 19d6 DC190000 		.4byte	0x19dc
 4297 19da 00       		.byte	0
 4298 19db 00       		.byte	0
 4299 19dc 1B       		.uleb128 0x1b
 4300 19dd 04       		.byte	0x4
 4301 19de 68190000 		.4byte	0x1968
 4302 19e2 0C       		.uleb128 0xc
 4303 19e3 DC190000 		.4byte	0x19dc
 4304 19e7 40       		.uleb128 0x40
 4305 19e8 A5110000 		.4byte	.LASF361
 4306 19ec 03       		.byte	0x3
ARM GAS  /tmp/cc5e0BXI.s 			page 118


 4307 19ed 1D       		.byte	0x1d
 4308 19ee 89020000 		.4byte	0x289
 4309 19f2 0002     		.2byte	0x200
 4310 19f4 41       		.uleb128 0x41
 4311 19f5 0A0A0000 		.4byte	.LASF366
 4312 19f9 0802     		.2byte	0x208
 4313 19fb 03       		.byte	0x3
 4314 19fc 1F       		.byte	0x1f
 4315 19fd AA1A0000 		.4byte	0x1aaa
 4316 1a01 42       		.uleb128 0x42
 4317 1a02 A30A0000 		.4byte	.LASF362
 4318 1a06 03       		.byte	0x3
 4319 1a07 22       		.byte	0x22
 4320 1a08 C01A0000 		.4byte	0x1ac0
 4321 1a0c 00       		.byte	0
 4322 1a0d 01       		.byte	0x1
 4323 1a0e 43       		.uleb128 0x43
 4324 1a0f C3090000 		.4byte	.LASF363
 4325 1a13 03       		.byte	0x3
 4326 1a14 23       		.byte	0x23
 4327 1a15 8E020000 		.4byte	0x28e
 4328 1a19 0002     		.2byte	0x200
 4329 1a1b 01       		.byte	0x1
 4330 1a1c 43       		.uleb128 0x43
 4331 1a1d 39150000 		.4byte	.LASF364
 4332 1a21 03       		.byte	0x3
 4333 1a22 24       		.byte	0x24
 4334 1a23 8E020000 		.4byte	0x28e
 4335 1a27 0402     		.2byte	0x204
 4336 1a29 01       		.byte	0x1
 4337 1a2a 3D       		.uleb128 0x3d
 4338 1a2b 0A0A0000 		.4byte	.LASF366
 4339 1a2f 03       		.byte	0x3
 4340 1a30 27       		.byte	0x27
 4341 1a31 290A0000 		.4byte	.LASF368
 4342 1a35 C51A0000 		.4byte	0x1ac5
 4343 1a39 01       		.byte	0x1
 4344 1a3a 421A0000 		.4byte	0x1a42
 4345 1a3e 481A0000 		.4byte	0x1a48
 4346 1a42 3B       		.uleb128 0x3b
 4347 1a43 C51A0000 		.4byte	0x1ac5
 4348 1a47 00       		.byte	0
 4349 1a48 44       		.uleb128 0x44
 4350 1a49 940C0000 		.4byte	.LASF369
 4351 1a4d 03       		.byte	0x3
 4352 1a4e 28       		.byte	0x28
 4353 1a4f 7D050000 		.4byte	.LASF371
 4354 1a53 01       		.byte	0x1
 4355 1a54 5C1A0000 		.4byte	0x1a5c
 4356 1a58 671A0000 		.4byte	0x1a67
 4357 1a5c 3B       		.uleb128 0x3b
 4358 1a5d C51A0000 		.4byte	0x1ac5
 4359 1a61 08       		.uleb128 0x8
 4360 1a62 03100000 		.4byte	0x1003
 4361 1a66 00       		.byte	0
 4362 1a67 3D       		.uleb128 0x3d
 4363 1a68 4D110000 		.4byte	.LASF372
ARM GAS  /tmp/cc5e0BXI.s 			page 119


 4364 1a6c 03       		.byte	0x3
 4365 1a6d 29       		.byte	0x29
 4366 1a6e F6000000 		.4byte	.LASF373
 4367 1a72 7E020000 		.4byte	0x27e
 4368 1a76 01       		.byte	0x1
 4369 1a77 7F1A0000 		.4byte	0x1a7f
 4370 1a7b 8F1A0000 		.4byte	0x1a8f
 4371 1a7f 3B       		.uleb128 0x3b
 4372 1a80 C51A0000 		.4byte	0x1ac5
 4373 1a84 08       		.uleb128 0x8
 4374 1a85 D01A0000 		.4byte	0x1ad0
 4375 1a89 08       		.uleb128 0x8
 4376 1a8a 7E020000 		.4byte	0x27e
 4377 1a8e 00       		.byte	0
 4378 1a8f 3F       		.uleb128 0x3f
 4379 1a90 9F0D0000 		.4byte	.LASF374
 4380 1a94 03       		.byte	0x3
 4381 1a95 2A       		.byte	0x2a
 4382 1a96 03060000 		.4byte	.LASF375
 4383 1a9a 7E020000 		.4byte	0x27e
 4384 1a9e 01       		.byte	0x1
 4385 1a9f A31A0000 		.4byte	0x1aa3
 4386 1aa3 3B       		.uleb128 0x3b
 4387 1aa4 D61A0000 		.4byte	0x1ad6
 4388 1aa8 00       		.byte	0
 4389 1aa9 00       		.byte	0
 4390 1aaa 0C       		.uleb128 0xc
 4391 1aab F4190000 		.4byte	0x19f4
 4392 1aaf 18       		.uleb128 0x18
 4393 1ab0 0E100000 		.4byte	0x100e
 4394 1ab4 C01A0000 		.4byte	0x1ac0
 4395 1ab8 36       		.uleb128 0x36
 4396 1ab9 65040000 		.4byte	0x465
 4397 1abd FF01     		.2byte	0x1ff
 4398 1abf 00       		.byte	0
 4399 1ac0 0D       		.uleb128 0xd
 4400 1ac1 AF1A0000 		.4byte	0x1aaf
 4401 1ac5 1B       		.uleb128 0x1b
 4402 1ac6 04       		.byte	0x4
 4403 1ac7 F4190000 		.4byte	0x19f4
 4404 1acb 0C       		.uleb128 0xc
 4405 1acc C51A0000 		.4byte	0x1ac5
 4406 1ad0 1B       		.uleb128 0x1b
 4407 1ad1 04       		.byte	0x4
 4408 1ad2 13100000 		.4byte	0x1013
 4409 1ad6 1B       		.uleb128 0x1b
 4410 1ad7 04       		.byte	0x4
 4411 1ad8 AA1A0000 		.4byte	0x1aaa
 4412 1adc 0C       		.uleb128 0xc
 4413 1add D61A0000 		.4byte	0x1ad6
 4414 1ae1 45       		.uleb128 0x45
 4415 1ae2 960E0000 		.4byte	.LASF386
 4416 1ae6 24       		.byte	0x24
 4417 1ae7 01       		.byte	0x1
 4418 1ae8 26       		.byte	0x26
 4419 1ae9 68190000 		.4byte	0x1968
 4420 1aed 561E0000 		.4byte	0x1e56
ARM GAS  /tmp/cc5e0BXI.s 			page 120


 4421 1af1 46       		.uleb128 0x46
 4422 1af2 40040000 		.4byte	.LASF473
 4423 1af6 02       		.byte	0x2
 4424 1af7 2E030000 		.4byte	0x32e
 4425 1afb 01       		.byte	0x1
 4426 1afc 29       		.byte	0x29
 4427 1afd 01       		.byte	0x1
 4428 1afe 251B0000 		.4byte	0x1b25
 4429 1b02 47       		.uleb128 0x47
 4430 1b03 A1120000 		.4byte	.LASF376
 4431 1b07 C008     		.2byte	0x8c0
 4432 1b09 33       		.uleb128 0x33
 4433 1b0a EF050000 		.4byte	.LASF377
 4434 1b0e C0       		.byte	0xc0
 4435 1b0f 47       		.uleb128 0x47
 4436 1b10 CD130000 		.4byte	.LASF378
 4437 1b14 C002     		.2byte	0x2c0
 4438 1b16 47       		.uleb128 0x47
 4439 1b17 58110000 		.4byte	.LASF379
 4440 1b1b C006     		.2byte	0x6c0
 4441 1b1d 47       		.uleb128 0x47
 4442 1b1e 93030000 		.4byte	.LASF380
 4443 1b22 C004     		.2byte	0x4c0
 4444 1b24 00       		.byte	0
 4445 1b25 0C       		.uleb128 0xc
 4446 1b26 F11A0000 		.4byte	0x1af1
 4447 1b2a 05       		.uleb128 0x5
 4448 1b2b 01       		.byte	0x1
 4449 1b2c 26       		.byte	0x26
 4450 1b2d 71190000 		.4byte	0x1971
 4451 1b31 48       		.uleb128 0x48
 4452 1b32 19190000 		.4byte	0x1919
 4453 1b36 00       		.byte	0
 4454 1b37 01       		.byte	0x1
 4455 1b38 42       		.uleb128 0x42
 4456 1b39 450D0000 		.4byte	.LASF381
 4457 1b3d 01       		.byte	0x1
 4458 1b3e 4A       		.byte	0x4a
 4459 1b3f C51A0000 		.4byte	0x1ac5
 4460 1b43 10       		.byte	0x10
 4461 1b44 02       		.byte	0x2
 4462 1b45 42       		.uleb128 0x42
 4463 1b46 3C110000 		.4byte	.LASF382
 4464 1b4a 01       		.byte	0x1
 4465 1b4b 4B       		.byte	0x4b
 4466 1b4c C51A0000 		.4byte	0x1ac5
 4467 1b50 14       		.byte	0x14
 4468 1b51 02       		.byte	0x2
 4469 1b52 42       		.uleb128 0x42
 4470 1b53 2C010000 		.4byte	.LASF383
 4471 1b57 01       		.byte	0x1
 4472 1b58 4D       		.byte	0x4d
 4473 1b59 5B1E0000 		.4byte	0x1e5b
 4474 1b5d 18       		.byte	0x18
 4475 1b5e 02       		.byte	0x2
 4476 1b5f 42       		.uleb128 0x42
 4477 1b60 71070000 		.4byte	.LASF384
ARM GAS  /tmp/cc5e0BXI.s 			page 121


 4478 1b64 01       		.byte	0x1
 4479 1b65 4E       		.byte	0x4e
 4480 1b66 E8120000 		.4byte	0x12e8
 4481 1b6a 1C       		.byte	0x1c
 4482 1b6b 02       		.byte	0x2
 4483 1b6c 42       		.uleb128 0x42
 4484 1b6d 500D0000 		.4byte	.LASF385
 4485 1b71 01       		.byte	0x1
 4486 1b72 4F       		.byte	0x4f
 4487 1b73 3E100000 		.4byte	0x103e
 4488 1b77 20       		.byte	0x20
 4489 1b78 02       		.byte	0x2
 4490 1b79 49       		.uleb128 0x49
 4491 1b7a 960E0000 		.4byte	.LASF386
 4492 1b7e D1080000 		.4byte	.LASF387
 4493 1b82 611E0000 		.4byte	0x1e61
 4494 1b86 01       		.byte	0x1
 4495 1b87 8F1B0000 		.4byte	0x1b8f
 4496 1b8b 9A1B0000 		.4byte	0x1b9a
 4497 1b8f 3B       		.uleb128 0x3b
 4498 1b90 611E0000 		.4byte	0x1e61
 4499 1b94 08       		.uleb128 0x8
 4500 1b95 6C1E0000 		.4byte	0x1e6c
 4501 1b99 00       		.byte	0
 4502 1b9a 49       		.uleb128 0x49
 4503 1b9b 960E0000 		.4byte	.LASF386
 4504 1b9f 49010000 		.4byte	.LASF388
 4505 1ba3 611E0000 		.4byte	0x1e61
 4506 1ba7 01       		.byte	0x1
 4507 1ba8 B01B0000 		.4byte	0x1bb0
 4508 1bac BB1B0000 		.4byte	0x1bbb
 4509 1bb0 3B       		.uleb128 0x3b
 4510 1bb1 611E0000 		.4byte	0x1e61
 4511 1bb5 08       		.uleb128 0x8
 4512 1bb6 721E0000 		.4byte	0x1e72
 4513 1bba 00       		.byte	0
 4514 1bbb 3D       		.uleb128 0x3d
 4515 1bbc 960E0000 		.4byte	.LASF386
 4516 1bc0 02       		.byte	0x2
 4517 1bc1 1B       		.byte	0x1b
 4518 1bc2 F0130000 		.4byte	.LASF389
 4519 1bc6 611E0000 		.4byte	0x1e61
 4520 1bca 01       		.byte	0x1
 4521 1bcb D31B0000 		.4byte	0x1bd3
 4522 1bcf F21B0000 		.4byte	0x1bf2
 4523 1bd3 3B       		.uleb128 0x3b
 4524 1bd4 611E0000 		.4byte	0x1e61
 4525 1bd8 08       		.uleb128 0x8
 4526 1bd9 5B1E0000 		.4byte	0x1e5b
 4527 1bdd 08       		.uleb128 0x8
 4528 1bde E8120000 		.4byte	0x12e8
 4529 1be2 08       		.uleb128 0x8
 4530 1be3 3E100000 		.4byte	0x103e
 4531 1be7 08       		.uleb128 0x8
 4532 1be8 C51A0000 		.4byte	0x1ac5
 4533 1bec 08       		.uleb128 0x8
 4534 1bed C51A0000 		.4byte	0x1ac5
ARM GAS  /tmp/cc5e0BXI.s 			page 122


 4535 1bf1 00       		.byte	0
 4536 1bf2 4A       		.uleb128 0x4a
 4537 1bf3 AB020000 		.4byte	.LASF391
 4538 1bf7 02       		.byte	0x2
 4539 1bf8 27       		.byte	0x27
 4540 1bf9 7E0D0000 		.4byte	.LASF393
 4541 1bfd 01       		.byte	0x1
 4542 1bfe 02       		.uleb128 0x2
 4543 1bff 10       		.byte	0x10
 4544 1c00 0A       		.uleb128 0xa
 4545 1c01 E11A0000 		.4byte	0x1ae1
 4546 1c05 01       		.byte	0x1
 4547 1c06 0E1C0000 		.4byte	0x1c0e
 4548 1c0a 191C0000 		.4byte	0x1c19
 4549 1c0e 3B       		.uleb128 0x3b
 4550 1c0f 611E0000 		.4byte	0x1e61
 4551 1c13 08       		.uleb128 0x8
 4552 1c14 3E100000 		.4byte	0x103e
 4553 1c18 00       		.byte	0
 4554 1c19 44       		.uleb128 0x44
 4555 1c1a AB020000 		.4byte	.LASF391
 4556 1c1e 02       		.byte	0x2
 4557 1c1f 2C       		.byte	0x2c
 4558 1c20 6F110000 		.4byte	.LASF394
 4559 1c24 01       		.byte	0x1
 4560 1c25 2D1C0000 		.4byte	0x1c2d
 4561 1c29 3D1C0000 		.4byte	0x1c3d
 4562 1c2d 3B       		.uleb128 0x3b
 4563 1c2e 611E0000 		.4byte	0x1e61
 4564 1c32 08       		.uleb128 0x8
 4565 1c33 3E100000 		.4byte	0x103e
 4566 1c37 08       		.uleb128 0x8
 4567 1c38 F11A0000 		.4byte	0x1af1
 4568 1c3c 00       		.byte	0
 4569 1c3d 4B       		.uleb128 0x4b
 4570 1c3e 656E6400 		.ascii	"end\000"
 4571 1c42 02       		.byte	0x2
 4572 1c43 55       		.byte	0x55
 4573 1c44 6C020000 		.4byte	.LASF474
 4574 1c48 01       		.byte	0x1
 4575 1c49 02       		.uleb128 0x2
 4576 1c4a 10       		.byte	0x10
 4577 1c4b 0B       		.uleb128 0xb
 4578 1c4c E11A0000 		.4byte	0x1ae1
 4579 1c50 01       		.byte	0x1
 4580 1c51 591C0000 		.4byte	0x1c59
 4581 1c55 5F1C0000 		.4byte	0x1c5f
 4582 1c59 3B       		.uleb128 0x3b
 4583 1c5a 611E0000 		.4byte	0x1e61
 4584 1c5e 00       		.byte	0
 4585 1c5f 4C       		.uleb128 0x4c
 4586 1c60 D7000000 		.4byte	.LASF397
 4587 1c64 02       		.byte	0x2
 4588 1c65 6D       		.byte	0x6d
 4589 1c66 80000000 		.4byte	.LASF399
 4590 1c6a 9A020000 		.4byte	0x29a
 4591 1c6e 01       		.byte	0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 123


 4592 1c6f 02       		.uleb128 0x2
 4593 1c70 10       		.byte	0x10
 4594 1c71 04       		.uleb128 0x4
 4595 1c72 E11A0000 		.4byte	0x1ae1
 4596 1c76 01       		.byte	0x1
 4597 1c77 7F1C0000 		.4byte	0x1c7f
 4598 1c7b 851C0000 		.4byte	0x1c85
 4599 1c7f 3B       		.uleb128 0x3b
 4600 1c80 611E0000 		.4byte	0x1e61
 4601 1c84 00       		.byte	0
 4602 1c85 3D       		.uleb128 0x3d
 4603 1c86 0C110000 		.4byte	.LASF395
 4604 1c8a 02       		.byte	0x2
 4605 1c8b 72       		.byte	0x72
 4606 1c8c 61040000 		.4byte	.LASF396
 4607 1c90 9A020000 		.4byte	0x29a
 4608 1c94 01       		.byte	0x1
 4609 1c95 9D1C0000 		.4byte	0x1c9d
 4610 1c99 A31C0000 		.4byte	0x1ca3
 4611 1c9d 3B       		.uleb128 0x3b
 4612 1c9e 611E0000 		.4byte	0x1e61
 4613 1ca2 00       		.byte	0
 4614 1ca3 4C       		.uleb128 0x4c
 4615 1ca4 40150000 		.4byte	.LASF398
 4616 1ca8 02       		.byte	0x2
 4617 1ca9 7D       		.byte	0x7d
 4618 1caa 1D0D0000 		.4byte	.LASF400
 4619 1cae 9A020000 		.4byte	0x29a
 4620 1cb2 01       		.byte	0x1
 4621 1cb3 02       		.uleb128 0x2
 4622 1cb4 10       		.byte	0x10
 4623 1cb5 06       		.uleb128 0x6
 4624 1cb6 E11A0000 		.4byte	0x1ae1
 4625 1cba 01       		.byte	0x1
 4626 1cbb C31C0000 		.4byte	0x1cc3
 4627 1cbf C91C0000 		.4byte	0x1cc9
 4628 1cc3 3B       		.uleb128 0x3b
 4629 1cc4 611E0000 		.4byte	0x1e61
 4630 1cc8 00       		.byte	0
 4631 1cc9 4C       		.uleb128 0x4c
 4632 1cca C10F0000 		.4byte	.LASF401
 4633 1cce 02       		.byte	0x2
 4634 1ccf 87       		.byte	0x87
 4635 1cd0 DC0E0000 		.4byte	.LASF402
 4636 1cd4 9A020000 		.4byte	0x29a
 4637 1cd8 01       		.byte	0x1
 4638 1cd9 02       		.uleb128 0x2
 4639 1cda 10       		.byte	0x10
 4640 1cdb 05       		.uleb128 0x5
 4641 1cdc E11A0000 		.4byte	0x1ae1
 4642 1ce0 01       		.byte	0x1
 4643 1ce1 E91C0000 		.4byte	0x1ce9
 4644 1ce5 EF1C0000 		.4byte	0x1cef
 4645 1ce9 3B       		.uleb128 0x3b
 4646 1cea 611E0000 		.4byte	0x1e61
 4647 1cee 00       		.byte	0
 4648 1cef 4A       		.uleb128 0x4a
ARM GAS  /tmp/cc5e0BXI.s 			page 124


 4649 1cf0 DB100000 		.4byte	.LASF403
 4650 1cf4 02       		.byte	0x2
 4651 1cf5 94       		.byte	0x94
 4652 1cf6 6A000000 		.4byte	.LASF404
 4653 1cfa 01       		.byte	0x1
 4654 1cfb 02       		.uleb128 0x2
 4655 1cfc 10       		.byte	0x10
 4656 1cfd 07       		.uleb128 0x7
 4657 1cfe E11A0000 		.4byte	0x1ae1
 4658 1d02 01       		.byte	0x1
 4659 1d03 0B1D0000 		.4byte	0x1d0b
 4660 1d07 111D0000 		.4byte	0x1d11
 4661 1d0b 3B       		.uleb128 0x3b
 4662 1d0c 611E0000 		.4byte	0x1e61
 4663 1d10 00       		.byte	0
 4664 1d11 4C       		.uleb128 0x4c
 4665 1d12 01080000 		.4byte	.LASF365
 4666 1d16 02       		.byte	0x2
 4667 1d17 9C       		.byte	0x9c
 4668 1d18 81090000 		.4byte	.LASF405
 4669 1d1c 7E020000 		.4byte	0x27e
 4670 1d20 01       		.byte	0x1
 4671 1d21 02       		.uleb128 0x2
 4672 1d22 10       		.byte	0x10
 4673 1d23 02       		.uleb128 0x2
 4674 1d24 E11A0000 		.4byte	0x1ae1
 4675 1d28 01       		.byte	0x1
 4676 1d29 311D0000 		.4byte	0x1d31
 4677 1d2d 3C1D0000 		.4byte	0x1d3c
 4678 1d31 3B       		.uleb128 0x3b
 4679 1d32 611E0000 		.4byte	0x1e61
 4680 1d36 08       		.uleb128 0x8
 4681 1d37 03100000 		.4byte	0x1003
 4682 1d3b 00       		.byte	0
 4683 1d3c 4C       		.uleb128 0x4c
 4684 1d3d 01080000 		.4byte	.LASF365
 4685 1d41 02       		.byte	0x2
 4686 1d42 B3       		.byte	0xb3
 4687 1d43 CC030000 		.4byte	.LASF406
 4688 1d47 7E020000 		.4byte	0x27e
 4689 1d4b 01       		.byte	0x1
 4690 1d4c 02       		.uleb128 0x2
 4691 1d4d 10       		.byte	0x10
 4692 1d4e 03       		.uleb128 0x3
 4693 1d4f E11A0000 		.4byte	0x1ae1
 4694 1d53 01       		.byte	0x1
 4695 1d54 5C1D0000 		.4byte	0x1d5c
 4696 1d58 6C1D0000 		.4byte	0x1d6c
 4697 1d5c 3B       		.uleb128 0x3b
 4698 1d5d 611E0000 		.4byte	0x1e61
 4699 1d61 08       		.uleb128 0x8
 4700 1d62 D01A0000 		.4byte	0x1ad0
 4701 1d66 08       		.uleb128 0x8
 4702 1d67 7E020000 		.4byte	0x27e
 4703 1d6b 00       		.byte	0
 4704 1d6c 4C       		.uleb128 0x4c
 4705 1d6d 3E130000 		.4byte	.LASF407
ARM GAS  /tmp/cc5e0BXI.s 			page 125


 4706 1d71 02       		.byte	0x2
 4707 1d72 C0       		.byte	0xc0
 4708 1d73 E5090000 		.4byte	.LASF408
 4709 1d77 7E020000 		.4byte	0x27e
 4710 1d7b 01       		.byte	0x1
 4711 1d7c 02       		.uleb128 0x2
 4712 1d7d 10       		.byte	0x10
 4713 1d7e 08       		.uleb128 0x8
 4714 1d7f E11A0000 		.4byte	0x1ae1
 4715 1d83 01       		.byte	0x1
 4716 1d84 8C1D0000 		.4byte	0x1d8c
 4717 1d88 921D0000 		.4byte	0x1d92
 4718 1d8c 3B       		.uleb128 0x3b
 4719 1d8d 781E0000 		.4byte	0x1e78
 4720 1d91 00       		.byte	0
 4721 1d92 44       		.uleb128 0x44
 4722 1d93 2D0C0000 		.4byte	.LASF409
 4723 1d97 02       		.byte	0x2
 4724 1d98 63       		.byte	0x63
 4725 1d99 29080000 		.4byte	.LASF410
 4726 1d9d 01       		.byte	0x1
 4727 1d9e A61D0000 		.4byte	0x1da6
 4728 1da2 B11D0000 		.4byte	0x1db1
 4729 1da6 3B       		.uleb128 0x3b
 4730 1da7 611E0000 		.4byte	0x1e61
 4731 1dab 08       		.uleb128 0x8
 4732 1dac 3E100000 		.4byte	0x103e
 4733 1db0 00       		.byte	0
 4734 1db1 3D       		.uleb128 0x3d
 4735 1db2 CD050000 		.4byte	.LASF411
 4736 1db6 02       		.byte	0x2
 4737 1db7 68       		.byte	0x68
 4738 1db8 5E060000 		.4byte	.LASF412
 4739 1dbc 3E100000 		.4byte	0x103e
 4740 1dc0 01       		.byte	0x1
 4741 1dc1 C91D0000 		.4byte	0x1dc9
 4742 1dc5 CF1D0000 		.4byte	0x1dcf
 4743 1dc9 3B       		.uleb128 0x3b
 4744 1dca 611E0000 		.4byte	0x1e61
 4745 1dce 00       		.byte	0
 4746 1dcf 44       		.uleb128 0x44
 4747 1dd0 2E030000 		.4byte	.LASF413
 4748 1dd4 02       		.byte	0x2
 4749 1dd5 C5       		.byte	0xc5
 4750 1dd6 47130000 		.4byte	.LASF414
 4751 1dda 01       		.byte	0x1
 4752 1ddb E31D0000 		.4byte	0x1de3
 4753 1ddf E91D0000 		.4byte	0x1de9
 4754 1de3 3B       		.uleb128 0x3b
 4755 1de4 611E0000 		.4byte	0x1e61
 4756 1de8 00       		.byte	0
 4757 1de9 4C       		.uleb128 0x4c
 4758 1dea C8100000 		.4byte	.LASF415
 4759 1dee 01       		.byte	0x1
 4760 1def 45       		.byte	0x45
 4761 1df0 56150000 		.4byte	.LASF416
 4762 1df4 EB180000 		.4byte	0x18eb
ARM GAS  /tmp/cc5e0BXI.s 			page 126


 4763 1df8 01       		.byte	0x1
 4764 1df9 02       		.uleb128 0x2
 4765 1dfa 10       		.byte	0x10
 4766 1dfb 0C       		.uleb128 0xc
 4767 1dfc E11A0000 		.4byte	0x1ae1
 4768 1e00 01       		.byte	0x1
 4769 1e01 091E0000 		.4byte	0x1e09
 4770 1e05 0F1E0000 		.4byte	0x1e0f
 4771 1e09 3B       		.uleb128 0x3b
 4772 1e0a 611E0000 		.4byte	0x1e61
 4773 1e0e 00       		.byte	0
 4774 1e0f 44       		.uleb128 0x44
 4775 1e10 B6060000 		.4byte	.LASF417
 4776 1e14 02       		.byte	0x2
 4777 1e15 32       		.byte	0x32
 4778 1e16 DE0D0000 		.4byte	.LASF418
 4779 1e1a 02       		.byte	0x2
 4780 1e1b 231E0000 		.4byte	0x1e23
 4781 1e1f 331E0000 		.4byte	0x1e33
 4782 1e23 3B       		.uleb128 0x3b
 4783 1e24 611E0000 		.4byte	0x1e61
 4784 1e28 08       		.uleb128 0x8
 4785 1e29 3E100000 		.4byte	0x103e
 4786 1e2d 08       		.uleb128 0x8
 4787 1e2e 3E100000 		.4byte	0x103e
 4788 1e32 00       		.byte	0
 4789 1e33 4D       		.uleb128 0x4d
 4790 1e34 BC120000 		.4byte	.LASF419
 4791 1e38 4F040000 		.4byte	.LASF475
 4792 1e3c 82040000 		.4byte	0x482
 4793 1e40 01       		.byte	0x1
 4794 1e41 E11A0000 		.4byte	0x1ae1
 4795 1e45 01       		.byte	0x1
 4796 1e46 4A1E0000 		.4byte	0x1e4a
 4797 1e4a 3B       		.uleb128 0x3b
 4798 1e4b 611E0000 		.4byte	0x1e61
 4799 1e4f 3B       		.uleb128 0x3b
 4800 1e50 9A020000 		.4byte	0x29a
 4801 1e54 00       		.byte	0
 4802 1e55 00       		.byte	0
 4803 1e56 0C       		.uleb128 0xc
 4804 1e57 E11A0000 		.4byte	0x1ae1
 4805 1e5b 1B       		.uleb128 0x1b
 4806 1e5c 04       		.byte	0x4
 4807 1e5d 34180000 		.4byte	0x1834
 4808 1e61 1B       		.uleb128 0x1b
 4809 1e62 04       		.byte	0x4
 4810 1e63 E11A0000 		.4byte	0x1ae1
 4811 1e67 0C       		.uleb128 0xc
 4812 1e68 611E0000 		.4byte	0x1e61
 4813 1e6c 4E       		.uleb128 0x4e
 4814 1e6d 04       		.byte	0x4
 4815 1e6e E11A0000 		.4byte	0x1ae1
 4816 1e72 4F       		.uleb128 0x4f
 4817 1e73 04       		.byte	0x4
 4818 1e74 561E0000 		.4byte	0x1e56
 4819 1e78 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc5e0BXI.s 			page 127


 4820 1e79 04       		.byte	0x4
 4821 1e7a 561E0000 		.4byte	0x1e56
 4822 1e7e 0C       		.uleb128 0xc
 4823 1e7f 781E0000 		.4byte	0x1e78
 4824 1e83 50       		.uleb128 0x50
 4825 1e84 331E0000 		.4byte	0x1e33
 4826 1e88 01       		.byte	0x1
 4827 1e89 26       		.byte	0x26
 4828 1e8a 02       		.byte	0x2
 4829 1e8b 931E0000 		.4byte	0x1e93
 4830 1e8f A61E0000 		.4byte	0x1ea6
 4831 1e93 51       		.uleb128 0x51
 4832 1e94 740D0000 		.4byte	.LASF420
 4833 1e98 671E0000 		.4byte	0x1e67
 4834 1e9c 51       		.uleb128 0x51
 4835 1e9d 680A0000 		.4byte	.LASF421
 4836 1ea1 A1020000 		.4byte	0x2a1
 4837 1ea5 00       		.byte	0
 4838 1ea6 52       		.uleb128 0x52
 4839 1ea7 831E0000 		.4byte	0x1e83
 4840 1eab 07000000 		.4byte	.LASF422
 4841 1eaf C51E0000 		.4byte	0x1ec5
 4842 1eb3 00000000 		.4byte	.LFB295
 4843 1eb7 0E000000 		.4byte	.LFE295-.LFB295
 4844 1ebb 01       		.uleb128 0x1
 4845 1ebc 9C       		.byte	0x9c
 4846 1ebd C51E0000 		.4byte	0x1ec5
 4847 1ec1 E51E0000 		.4byte	0x1ee5
 4848 1ec5 53       		.uleb128 0x53
 4849 1ec6 931E0000 		.4byte	0x1e93
 4850 1eca 00000000 		.4byte	.LLST16
 4851 1ece 54       		.uleb128 0x54
 4852 1ecf 0A000000 		.4byte	.LVL36
 4853 1ed3 4D280000 		.4byte	0x284d
 4854 1ed7 55       		.uleb128 0x55
 4855 1ed8 01       		.uleb128 0x1
 4856 1ed9 50       		.byte	0x50
 4857 1eda 02       		.uleb128 0x2
 4858 1edb 74       		.byte	0x74
 4859 1edc 00       		.sleb128 0
 4860 1edd 55       		.uleb128 0x55
 4861 1ede 01       		.uleb128 0x1
 4862 1edf 51       		.byte	0x51
 4863 1ee0 02       		.uleb128 0x2
 4864 1ee1 08       		.byte	0x8
 4865 1ee2 24       		.byte	0x24
 4866 1ee3 00       		.byte	0
 4867 1ee4 00       		.byte	0
 4868 1ee5 52       		.uleb128 0x52
 4869 1ee6 831E0000 		.4byte	0x1e83
 4870 1eea 66090000 		.4byte	.LASF423
 4871 1eee 041F0000 		.4byte	0x1f04
 4872 1ef2 00000000 		.4byte	.LFB293
 4873 1ef6 02000000 		.4byte	.LFE293-.LFB293
 4874 1efa 01       		.uleb128 0x1
 4875 1efb 9C       		.byte	0x9c
 4876 1efc 041F0000 		.4byte	0x1f04
ARM GAS  /tmp/cc5e0BXI.s 			page 128


 4877 1f00 0C1F0000 		.4byte	0x1f0c
 4878 1f04 56       		.uleb128 0x56
 4879 1f05 931E0000 		.4byte	0x1e93
 4880 1f09 01       		.uleb128 0x1
 4881 1f0a 50       		.byte	0x50
 4882 1f0b 00       		.byte	0
 4883 1f0c 57       		.uleb128 0x57
 4884 1f0d CF1D0000 		.4byte	0x1dcf
 4885 1f11 271F0000 		.4byte	0x1f27
 4886 1f15 00000000 		.4byte	.LFB291
 4887 1f19 AE000000 		.4byte	.LFE291-.LFB291
 4888 1f1d 01       		.uleb128 0x1
 4889 1f1e 9C       		.byte	0x9c
 4890 1f1f 271F0000 		.4byte	0x1f27
 4891 1f23 AA1F0000 		.4byte	0x1faa
 4892 1f27 58       		.uleb128 0x58
 4893 1f28 740D0000 		.4byte	.LASF420
 4894 1f2c 671E0000 		.4byte	0x1e67
 4895 1f30 1E000000 		.4byte	.LLST45
 4896 1f34 59       		.uleb128 0x59
 4897 1f35 CA090000 		.4byte	.LASF424
 4898 1f39 02       		.byte	0x2
 4899 1f3a C7       		.byte	0xc7
 4900 1f3b 4E100000 		.4byte	0x104e
 4901 1f3f 4A000000 		.4byte	.LLST46
 4902 1f43 5A       		.uleb128 0x5a
 4903 1f44 7F260000 		.4byte	0x267f
 4904 1f48 0E000000 		.4byte	.LBB120
 4905 1f4c D0000000 		.4byte	.Ldebug_ranges0+0xd0
 4906 1f50 02       		.byte	0x2
 4907 1f51 CC       		.byte	0xcc
 4908 1f52 781F0000 		.4byte	0x1f78
 4909 1f56 53       		.uleb128 0x53
 4910 1f57 9B260000 		.4byte	0x269b
 4911 1f5b 68000000 		.4byte	.LLST47
 4912 1f5f 53       		.uleb128 0x53
 4913 1f60 92260000 		.4byte	0x2692
 4914 1f64 86000000 		.4byte	.LLST48
 4915 1f68 5B       		.uleb128 0x5b
 4916 1f69 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 4917 1f6d 5C       		.uleb128 0x5c
 4918 1f6e A4260000 		.4byte	0x26a4
 4919 1f72 A4000000 		.4byte	.LLST49
 4920 1f76 00       		.byte	0
 4921 1f77 00       		.byte	0
 4922 1f78 5D       		.uleb128 0x5d
 4923 1f79 7F260000 		.4byte	0x267f
 4924 1f7d 64000000 		.4byte	.LBB125
 4925 1f81 F0000000 		.4byte	.Ldebug_ranges0+0xf0
 4926 1f85 02       		.byte	0x2
 4927 1f86 E2       		.byte	0xe2
 4928 1f87 53       		.uleb128 0x53
 4929 1f88 9B260000 		.4byte	0x269b
 4930 1f8c C2000000 		.4byte	.LLST50
 4931 1f90 53       		.uleb128 0x53
 4932 1f91 92260000 		.4byte	0x2692
 4933 1f95 E4000000 		.4byte	.LLST51
ARM GAS  /tmp/cc5e0BXI.s 			page 129


 4934 1f99 5B       		.uleb128 0x5b
 4935 1f9a F0000000 		.4byte	.Ldebug_ranges0+0xf0
 4936 1f9e 5C       		.uleb128 0x5c
 4937 1f9f A4260000 		.4byte	0x26a4
 4938 1fa3 02010000 		.4byte	.LLST52
 4939 1fa7 00       		.byte	0
 4940 1fa8 00       		.byte	0
 4941 1fa9 00       		.byte	0
 4942 1faa 57       		.uleb128 0x57
 4943 1fab 6C1D0000 		.4byte	0x1d6c
 4944 1faf C51F0000 		.4byte	0x1fc5
 4945 1fb3 00000000 		.4byte	.LFB290
 4946 1fb7 16000000 		.4byte	.LFE290-.LFB290
 4947 1fbb 01       		.uleb128 0x1
 4948 1fbc 9C       		.byte	0x9c
 4949 1fbd C51F0000 		.4byte	0x1fc5
 4950 1fc1 EC1F0000 		.4byte	0x1fec
 4951 1fc5 58       		.uleb128 0x58
 4952 1fc6 740D0000 		.4byte	.LASF420
 4953 1fca 7E1E0000 		.4byte	0x1e7e
 4954 1fce 20010000 		.4byte	.LLST7
 4955 1fd2 5E       		.uleb128 0x5e
 4956 1fd3 62260000 		.4byte	0x2662
 4957 1fd7 02000000 		.4byte	.LBB77
 4958 1fdb 0E000000 		.4byte	.LBE77-.LBB77
 4959 1fdf 02       		.byte	0x2
 4960 1fe0 C2       		.byte	0xc2
 4961 1fe1 53       		.uleb128 0x53
 4962 1fe2 75260000 		.4byte	0x2675
 4963 1fe6 41010000 		.4byte	.LLST8
 4964 1fea 00       		.byte	0
 4965 1feb 00       		.byte	0
 4966 1fec 57       		.uleb128 0x57
 4967 1fed 3C1D0000 		.4byte	0x1d3c
 4968 1ff1 07200000 		.4byte	0x2007
 4969 1ff5 00000000 		.4byte	.LFB289
 4970 1ff9 2A000000 		.4byte	.LFE289-.LFB289
 4971 1ffd 01       		.uleb128 0x1
 4972 1ffe 9C       		.byte	0x9c
 4973 1fff 07200000 		.4byte	0x2007
 4974 2003 6D200000 		.4byte	0x206d
 4975 2007 58       		.uleb128 0x58
 4976 2008 740D0000 		.4byte	.LASF420
 4977 200c 671E0000 		.4byte	0x1e67
 4978 2010 54010000 		.4byte	.LLST11
 4979 2014 5F       		.uleb128 0x5f
 4980 2015 39010000 		.4byte	.LASF425
 4981 2019 02       		.byte	0x2
 4982 201a B3       		.byte	0xb3
 4983 201b D01A0000 		.4byte	0x1ad0
 4984 201f 80010000 		.4byte	.LLST12
 4985 2023 5F       		.uleb128 0x5f
 4986 2024 4A040000 		.4byte	.LASF426
 4987 2028 02       		.byte	0x2
 4988 2029 B3       		.byte	0xb3
 4989 202a 7E020000 		.4byte	0x27e
 4990 202e 9E010000 		.4byte	.LLST13
ARM GAS  /tmp/cc5e0BXI.s 			page 130


 4991 2032 60       		.uleb128 0x60
 4992 2033 72657400 		.ascii	"ret\000"
 4993 2037 02       		.byte	0x2
 4994 2038 B5       		.byte	0xb5
 4995 2039 7E020000 		.4byte	0x27e
 4996 203d BC010000 		.4byte	.LLST14
 4997 2041 5B       		.uleb128 0x5b
 4998 2042 30000000 		.4byte	.Ldebug_ranges0+0x30
 4999 2046 59       		.uleb128 0x59
 5000 2047 84140000 		.4byte	.LASF427
 5001 204b 02       		.byte	0x2
 5002 204c B8       		.byte	0xb8
 5003 204d 7E020000 		.4byte	0x27e
 5004 2051 DA010000 		.4byte	.LLST15
 5005 2055 54       		.uleb128 0x54
 5006 2056 1A000000 		.4byte	.LVL31
 5007 205a 671A0000 		.4byte	0x1a67
 5008 205e 55       		.uleb128 0x55
 5009 205f 01       		.uleb128 0x1
 5010 2060 51       		.byte	0x51
 5011 2061 02       		.uleb128 0x2
 5012 2062 75       		.byte	0x75
 5013 2063 00       		.sleb128 0
 5014 2064 55       		.uleb128 0x55
 5015 2065 01       		.uleb128 0x1
 5016 2066 52       		.byte	0x52
 5017 2067 02       		.uleb128 0x2
 5018 2068 74       		.byte	0x74
 5019 2069 00       		.sleb128 0
 5020 206a 00       		.byte	0
 5021 206b 00       		.byte	0
 5022 206c 00       		.byte	0
 5023 206d 57       		.uleb128 0x57
 5024 206e 111D0000 		.4byte	0x1d11
 5025 2072 88200000 		.4byte	0x2088
 5026 2076 00000000 		.4byte	.LFB288
 5027 207a 46000000 		.4byte	.LFE288-.LFB288
 5028 207e 01       		.uleb128 0x1
 5029 207f 9C       		.byte	0x9c
 5030 2080 88200000 		.4byte	0x2088
 5031 2084 B7200000 		.4byte	0x20b7
 5032 2088 58       		.uleb128 0x58
 5033 2089 740D0000 		.4byte	.LASF420
 5034 208d 671E0000 		.4byte	0x1e67
 5035 2091 ED010000 		.4byte	.LLST5
 5036 2095 61       		.uleb128 0x61
 5037 2096 D1090000 		.4byte	.LASF428
 5038 209a 02       		.byte	0x2
 5039 209b 9C       		.byte	0x9c
 5040 209c 13100000 		.4byte	0x1013
 5041 20a0 01       		.uleb128 0x1
 5042 20a1 51       		.byte	0x51
 5043 20a2 5B       		.uleb128 0x5b
 5044 20a3 00000000 		.4byte	.Ldebug_ranges0+0
 5045 20a7 60       		.uleb128 0x60
 5046 20a8 686E00   		.ascii	"hn\000"
 5047 20ab 02       		.byte	0x2
ARM GAS  /tmp/cc5e0BXI.s 			page 131


 5048 20ac A2       		.byte	0xa2
 5049 20ad 89020000 		.4byte	0x289
 5050 20b1 0E020000 		.4byte	.LLST6
 5051 20b5 00       		.byte	0
 5052 20b6 00       		.byte	0
 5053 20b7 57       		.uleb128 0x57
 5054 20b8 EF1C0000 		.4byte	0x1cef
 5055 20bc D2200000 		.4byte	0x20d2
 5056 20c0 00000000 		.4byte	.LFB287
 5057 20c4 18000000 		.4byte	.LFE287-.LFB287
 5058 20c8 01       		.uleb128 0x1
 5059 20c9 9C       		.byte	0x9c
 5060 20ca D2200000 		.4byte	0x20d2
 5061 20ce DE200000 		.4byte	0x20de
 5062 20d2 62       		.uleb128 0x62
 5063 20d3 740D0000 		.4byte	.LASF420
 5064 20d7 671E0000 		.4byte	0x1e67
 5065 20db 01       		.uleb128 0x1
 5066 20dc 50       		.byte	0x50
 5067 20dd 00       		.byte	0
 5068 20de 57       		.uleb128 0x57
 5069 20df C91C0000 		.4byte	0x1cc9
 5070 20e3 F9200000 		.4byte	0x20f9
 5071 20e7 00000000 		.4byte	.LFB286
 5072 20eb 2A000000 		.4byte	.LFE286-.LFB286
 5073 20ef 01       		.uleb128 0x1
 5074 20f0 9C       		.byte	0x9c
 5075 20f1 F9200000 		.4byte	0x20f9
 5076 20f5 15210000 		.4byte	0x2115
 5077 20f9 58       		.uleb128 0x58
 5078 20fa 740D0000 		.4byte	.LASF420
 5079 20fe 671E0000 		.4byte	0x1e67
 5080 2102 21020000 		.4byte	.LLST3
 5081 2106 60       		.uleb128 0x60
 5082 2107 756300   		.ascii	"uc\000"
 5083 210a 02       		.byte	0x2
 5084 210b 8F       		.byte	0x8f
 5085 210c 03100000 		.4byte	0x1003
 5086 2110 5B020000 		.4byte	.LLST4
 5087 2114 00       		.byte	0
 5088 2115 57       		.uleb128 0x57
 5089 2116 A31C0000 		.4byte	0x1ca3
 5090 211a 30210000 		.4byte	0x2130
 5091 211e 00000000 		.4byte	.LFB285
 5092 2122 1E000000 		.4byte	.LFE285-.LFB285
 5093 2126 01       		.uleb128 0x1
 5094 2127 9C       		.byte	0x9c
 5095 2128 30210000 		.4byte	0x2130
 5096 212c 3E210000 		.4byte	0x213e
 5097 2130 58       		.uleb128 0x58
 5098 2131 740D0000 		.4byte	.LASF420
 5099 2135 671E0000 		.4byte	0x1e67
 5100 2139 6E020000 		.4byte	.LLST2
 5101 213d 00       		.byte	0
 5102 213e 57       		.uleb128 0x57
 5103 213f 851C0000 		.4byte	0x1c85
 5104 2143 59210000 		.4byte	0x2159
ARM GAS  /tmp/cc5e0BXI.s 			page 132


 5105 2147 00000000 		.4byte	.LFB284
 5106 214b 1A000000 		.4byte	.LFE284-.LFB284
 5107 214f 01       		.uleb128 0x1
 5108 2150 9C       		.byte	0x9c
 5109 2151 59210000 		.4byte	0x2159
 5110 2155 85210000 		.4byte	0x2185
 5111 2159 58       		.uleb128 0x58
 5112 215a 740D0000 		.4byte	.LASF420
 5113 215e 671E0000 		.4byte	0x1e67
 5114 2162 A8020000 		.4byte	.LLST42
 5115 2166 59       		.uleb128 0x59
 5116 2167 BB0C0000 		.4byte	.LASF429
 5117 216b 02       		.byte	0x2
 5118 216c 74       		.byte	0x74
 5119 216d 7E020000 		.4byte	0x27e
 5120 2171 C9020000 		.4byte	.LLST43
 5121 2175 59       		.uleb128 0x59
 5122 2176 D5060000 		.4byte	.LASF430
 5123 217a 02       		.byte	0x2
 5124 217b 75       		.byte	0x75
 5125 217c 7E020000 		.4byte	0x27e
 5126 2180 DC020000 		.4byte	.LLST44
 5127 2184 00       		.byte	0
 5128 2185 57       		.uleb128 0x57
 5129 2186 5F1C0000 		.4byte	0x1c5f
 5130 218a A0210000 		.4byte	0x21a0
 5131 218e 00000000 		.4byte	.LFB283
 5132 2192 12000000 		.4byte	.LFE283-.LFB283
 5133 2196 01       		.uleb128 0x1
 5134 2197 9C       		.byte	0x9c
 5135 2198 A0210000 		.4byte	0x21a0
 5136 219c AE210000 		.4byte	0x21ae
 5137 21a0 58       		.uleb128 0x58
 5138 21a1 740D0000 		.4byte	.LASF420
 5139 21a5 671E0000 		.4byte	0x1e67
 5140 21a9 EF020000 		.4byte	.LLST1
 5141 21ad 00       		.byte	0
 5142 21ae 57       		.uleb128 0x57
 5143 21af B11D0000 		.4byte	0x1db1
 5144 21b3 C9210000 		.4byte	0x21c9
 5145 21b7 00000000 		.4byte	.LFB282
 5146 21bb 24000000 		.4byte	.LFE282-.LFB282
 5147 21bf 01       		.uleb128 0x1
 5148 21c0 9C       		.byte	0x9c
 5149 21c1 C9210000 		.4byte	0x21c9
 5150 21c5 F0210000 		.4byte	0x21f0
 5151 21c9 58       		.uleb128 0x58
 5152 21ca 740D0000 		.4byte	.LASF420
 5153 21ce 671E0000 		.4byte	0x1e67
 5154 21d2 10030000 		.4byte	.LLST40
 5155 21d6 5D       		.uleb128 0x5d
 5156 21d7 7D270000 		.4byte	0x277d
 5157 21db 04000000 		.4byte	.LBB116
 5158 21df B8000000 		.4byte	.Ldebug_ranges0+0xb8
 5159 21e3 02       		.byte	0x2
 5160 21e4 6A       		.byte	0x6a
 5161 21e5 53       		.uleb128 0x53
ARM GAS  /tmp/cc5e0BXI.s 			page 133


 5162 21e6 8E270000 		.4byte	0x278e
 5163 21ea 4A030000 		.4byte	.LLST41
 5164 21ee 00       		.byte	0
 5165 21ef 00       		.byte	0
 5166 21f0 57       		.uleb128 0x57
 5167 21f1 921D0000 		.4byte	0x1d92
 5168 21f5 0B220000 		.4byte	0x220b
 5169 21f9 00000000 		.4byte	.LFB281
 5170 21fd 34000000 		.4byte	.LFE281-.LFB281
 5171 2201 01       		.uleb128 0x1
 5172 2202 9C       		.byte	0x9c
 5173 2203 0B220000 		.4byte	0x220b
 5174 2207 48220000 		.4byte	0x2248
 5175 220b 62       		.uleb128 0x62
 5176 220c 740D0000 		.4byte	.LASF420
 5177 2210 671E0000 		.4byte	0x1e67
 5178 2214 01       		.uleb128 0x1
 5179 2215 50       		.byte	0x50
 5180 2216 5F       		.uleb128 0x5f
 5181 2217 C80E0000 		.4byte	.LASF431
 5182 221b 02       		.byte	0x2
 5183 221c 63       		.byte	0x63
 5184 221d 3E100000 		.4byte	0x103e
 5185 2221 83030000 		.4byte	.LLST37
 5186 2225 5E       		.uleb128 0x5e
 5187 2226 9B270000 		.4byte	0x279b
 5188 222a 08000000 		.4byte	.LBB114
 5189 222e 2C000000 		.4byte	.LBE114-.LBB114
 5190 2232 02       		.byte	0x2
 5191 2233 65       		.byte	0x65
 5192 2234 53       		.uleb128 0x53
 5193 2235 B4270000 		.4byte	0x27b4
 5194 2239 A4030000 		.4byte	.LLST38
 5195 223d 53       		.uleb128 0x53
 5196 223e A8270000 		.4byte	0x27a8
 5197 2242 E2030000 		.4byte	.LLST39
 5198 2246 00       		.byte	0
 5199 2247 00       		.byte	0
 5200 2248 57       		.uleb128 0x57
 5201 2249 3D1C0000 		.4byte	0x1c3d
 5202 224d 63220000 		.4byte	0x2263
 5203 2251 00000000 		.4byte	.LFB280
 5204 2255 3C000000 		.4byte	.LFE280-.LFB280
 5205 2259 01       		.uleb128 0x1
 5206 225a 9C       		.byte	0x9c
 5207 225b 63220000 		.4byte	0x2263
 5208 225f A7220000 		.4byte	0x22a7
 5209 2263 58       		.uleb128 0x58
 5210 2264 740D0000 		.4byte	.LASF420
 5211 2268 671E0000 		.4byte	0x1e67
 5212 226c 0C040000 		.4byte	.LLST9
 5213 2270 5A       		.uleb128 0x5a
 5214 2271 C1270000 		.4byte	0x27c1
 5215 2275 14000000 		.4byte	.LBB79
 5216 2279 18000000 		.4byte	.Ldebug_ranges0+0x18
 5217 227d 02       		.byte	0x2
 5218 227e 5E       		.byte	0x5e
ARM GAS  /tmp/cc5e0BXI.s 			page 134


 5219 227f 8D220000 		.4byte	0x228d
 5220 2283 53       		.uleb128 0x53
 5221 2284 CE270000 		.4byte	0x27ce
 5222 2288 38040000 		.4byte	.LLST10
 5223 228c 00       		.byte	0
 5224 228d 63       		.uleb128 0x63
 5225 228e 14000000 		.4byte	.LVL23
 5226 2292 9D220000 		.4byte	0x229d
 5227 2296 55       		.uleb128 0x55
 5228 2297 01       		.uleb128 0x1
 5229 2298 50       		.byte	0x50
 5230 2299 02       		.uleb128 0x2
 5231 229a 74       		.byte	0x74
 5232 229b 00       		.sleb128 0
 5233 229c 00       		.byte	0
 5234 229d 64       		.uleb128 0x64
 5235 229e 36000000 		.4byte	.LVL28
 5236 22a2 5A280000 		.4byte	0x285a
 5237 22a6 00       		.byte	0
 5238 22a7 57       		.uleb128 0x57
 5239 22a8 0F1E0000 		.4byte	0x1e0f
 5240 22ac C2220000 		.4byte	0x22c2
 5241 22b0 00000000 		.4byte	.LFB279
 5242 22b4 78000000 		.4byte	.LFE279-.LFB279
 5243 22b8 01       		.uleb128 0x1
 5244 22b9 9C       		.byte	0x9c
 5245 22ba C2220000 		.4byte	0x22c2
 5246 22be 23230000 		.4byte	0x2323
 5247 22c2 58       		.uleb128 0x58
 5248 22c3 740D0000 		.4byte	.LASF420
 5249 22c7 671E0000 		.4byte	0x1e67
 5250 22cb 57040000 		.4byte	.LLST24
 5251 22cf 5F       		.uleb128 0x5f
 5252 22d0 6B0E0000 		.4byte	.LASF432
 5253 22d4 02       		.byte	0x2
 5254 22d5 32       		.byte	0x32
 5255 22d6 4E100000 		.4byte	0x104e
 5256 22da 83040000 		.4byte	.LLST25
 5257 22de 5F       		.uleb128 0x5f
 5258 22df AF010000 		.4byte	.LASF433
 5259 22e3 02       		.byte	0x2
 5260 22e4 32       		.byte	0x32
 5261 22e5 4E100000 		.4byte	0x104e
 5262 22e9 AF040000 		.4byte	.LLST26
 5263 22ed 59       		.uleb128 0x59
 5264 22ee B60C0000 		.4byte	.LASF434
 5265 22f2 02       		.byte	0x2
 5266 22f3 43       		.byte	0x43
 5267 22f4 4E100000 		.4byte	0x104e
 5268 22f8 DB040000 		.4byte	.LLST27
 5269 22fc 5A       		.uleb128 0x5a
 5270 22fd DB270000 		.4byte	0x27db
 5271 2301 1E000000 		.4byte	.LBB100
 5272 2305 80000000 		.4byte	.Ldebug_ranges0+0x80
 5273 2309 02       		.byte	0x2
 5274 230a 4F       		.byte	0x4f
 5275 230b 19230000 		.4byte	0x2319
ARM GAS  /tmp/cc5e0BXI.s 			page 135


 5276 230f 53       		.uleb128 0x53
 5277 2310 E8270000 		.4byte	0x27e8
 5278 2314 FE040000 		.4byte	.LLST28
 5279 2318 00       		.byte	0
 5280 2319 65       		.uleb128 0x65
 5281 231a 10000000 		.4byte	.LVL45
 5282 231e 65280000 		.4byte	0x2865
 5283 2322 00       		.byte	0
 5284 2323 66       		.uleb128 0x66
 5285 2324 191C0000 		.4byte	0x1c19
 5286 2328 35230000 		.4byte	0x2335
 5287 232c 01       		.byte	0x1
 5288 232d 35230000 		.4byte	0x2335
 5289 2331 60230000 		.4byte	0x2360
 5290 2335 51       		.uleb128 0x51
 5291 2336 740D0000 		.4byte	.LASF420
 5292 233a 671E0000 		.4byte	0x1e67
 5293 233e 67       		.uleb128 0x67
 5294 233f 6B0E0000 		.4byte	.LASF432
 5295 2343 02       		.byte	0x2
 5296 2344 2C       		.byte	0x2c
 5297 2345 4E100000 		.4byte	0x104e
 5298 2349 67       		.uleb128 0x67
 5299 234a F40D0000 		.4byte	.LASF435
 5300 234e 02       		.byte	0x2
 5301 234f 2C       		.byte	0x2c
 5302 2350 251B0000 		.4byte	0x1b25
 5303 2354 68       		.uleb128 0x68
 5304 2355 AF010000 		.4byte	.LASF433
 5305 2359 02       		.byte	0x2
 5306 235a 2E       		.byte	0x2e
 5307 235b 3E100000 		.4byte	0x103e
 5308 235f 00       		.byte	0
 5309 2360 57       		.uleb128 0x57
 5310 2361 F21B0000 		.4byte	0x1bf2
 5311 2365 7B230000 		.4byte	0x237b
 5312 2369 00000000 		.4byte	.LFB277
 5313 236d 08000000 		.4byte	.LFE277-.LFB277
 5314 2371 01       		.uleb128 0x1
 5315 2372 9C       		.byte	0x9c
 5316 2373 7B230000 		.4byte	0x237b
 5317 2377 EF230000 		.4byte	0x23ef
 5318 237b 58       		.uleb128 0x58
 5319 237c 740D0000 		.4byte	.LASF420
 5320 2380 671E0000 		.4byte	0x1e67
 5321 2384 2C050000 		.4byte	.LLST33
 5322 2388 5F       		.uleb128 0x5f
 5323 2389 6B0E0000 		.4byte	.LASF432
 5324 238d 02       		.byte	0x2
 5325 238e 27       		.byte	0x27
 5326 238f 4E100000 		.4byte	0x104e
 5327 2393 4D050000 		.4byte	.LLST34
 5328 2397 5E       		.uleb128 0x5e
 5329 2398 23230000 		.4byte	0x2323
 5330 239c 00000000 		.4byte	.LBB112
 5331 23a0 08000000 		.4byte	.LBE112-.LBB112
 5332 23a4 02       		.byte	0x2
ARM GAS  /tmp/cc5e0BXI.s 			page 136


 5333 23a5 29       		.byte	0x29
 5334 23a6 69       		.uleb128 0x69
 5335 23a7 49230000 		.4byte	0x2349
 5336 23ab C008     		.2byte	0x8c0
 5337 23ad 53       		.uleb128 0x53
 5338 23ae 3E230000 		.4byte	0x233e
 5339 23b2 6E050000 		.4byte	.LLST35
 5340 23b6 53       		.uleb128 0x53
 5341 23b7 35230000 		.4byte	0x2335
 5342 23bb 8F050000 		.4byte	.LLST36
 5343 23bf 6A       		.uleb128 0x6a
 5344 23c0 00000000 		.4byte	.LBB113
 5345 23c4 08000000 		.4byte	.LBE113-.LBB113
 5346 23c8 6B       		.uleb128 0x6b
 5347 23c9 2B280000 		.4byte	0x282b
 5348 23cd 6C       		.uleb128 0x6c
 5349 23ce 08000000 		.4byte	.LVL58
 5350 23d2 A7220000 		.4byte	0x22a7
 5351 23d6 55       		.uleb128 0x55
 5352 23d7 01       		.uleb128 0x1
 5353 23d8 50       		.byte	0x50
 5354 23d9 03       		.uleb128 0x3
 5355 23da F3       		.byte	0xf3
 5356 23db 01       		.uleb128 0x1
 5357 23dc 50       		.byte	0x50
 5358 23dd 55       		.uleb128 0x55
 5359 23de 01       		.uleb128 0x1
 5360 23df 51       		.byte	0x51
 5361 23e0 03       		.uleb128 0x3
 5362 23e1 F3       		.byte	0xf3
 5363 23e2 01       		.uleb128 0x1
 5364 23e3 51       		.byte	0x51
 5365 23e4 55       		.uleb128 0x55
 5366 23e5 01       		.uleb128 0x1
 5367 23e6 52       		.byte	0x52
 5368 23e7 03       		.uleb128 0x3
 5369 23e8 0A       		.byte	0xa
 5370 23e9 0008     		.2byte	0x800
 5371 23eb 00       		.byte	0
 5372 23ec 00       		.byte	0
 5373 23ed 00       		.byte	0
 5374 23ee 00       		.byte	0
 5375 23ef 6D       		.uleb128 0x6d
 5376 23f0 BB1B0000 		.4byte	0x1bbb
 5377 23f4 00       		.byte	0
 5378 23f5 FD230000 		.4byte	0x23fd
 5379 23f9 3E240000 		.4byte	0x243e
 5380 23fd 51       		.uleb128 0x51
 5381 23fe 740D0000 		.4byte	.LASF420
 5382 2402 671E0000 		.4byte	0x1e67
 5383 2406 67       		.uleb128 0x67
 5384 2407 B5000000 		.4byte	.LASF436
 5385 240b 02       		.byte	0x2
 5386 240c 1B       		.byte	0x1b
 5387 240d 5B1E0000 		.4byte	0x1e5b
 5388 2411 67       		.uleb128 0x67
 5389 2412 CF060000 		.4byte	.LASF437
ARM GAS  /tmp/cc5e0BXI.s 			page 137


 5390 2416 02       		.byte	0x2
 5391 2417 1B       		.byte	0x1b
 5392 2418 E8120000 		.4byte	0x12e8
 5393 241c 67       		.uleb128 0x67
 5394 241d DF070000 		.4byte	.LASF438
 5395 2421 02       		.byte	0x2
 5396 2422 1B       		.byte	0x1b
 5397 2423 3E100000 		.4byte	0x103e
 5398 2427 67       		.uleb128 0x67
 5399 2428 35040000 		.4byte	.LASF439
 5400 242c 02       		.byte	0x2
 5401 242d 1B       		.byte	0x1b
 5402 242e C51A0000 		.4byte	0x1ac5
 5403 2432 67       		.uleb128 0x67
 5404 2433 45150000 		.4byte	.LASF440
 5405 2437 02       		.byte	0x2
 5406 2438 1B       		.byte	0x1b
 5407 2439 C51A0000 		.4byte	0x1ac5
 5408 243d 00       		.byte	0
 5409 243e 52       		.uleb128 0x52
 5410 243f EF230000 		.4byte	0x23ef
 5411 2443 4E0B0000 		.4byte	.LASF441
 5412 2447 5D240000 		.4byte	0x245d
 5413 244b 00000000 		.4byte	.LFB275
 5414 244f 28000000 		.4byte	.LFE275-.LFB275
 5415 2453 01       		.uleb128 0x1
 5416 2454 9C       		.byte	0x9c
 5417 2455 5D240000 		.4byte	0x245d
 5418 2459 DB240000 		.4byte	0x24db
 5419 245d 56       		.uleb128 0x56
 5420 245e FD230000 		.4byte	0x23fd
 5421 2462 01       		.uleb128 0x1
 5422 2463 50       		.byte	0x50
 5423 2464 53       		.uleb128 0x53
 5424 2465 06240000 		.4byte	0x2406
 5425 2469 B0050000 		.4byte	.LLST17
 5426 246d 53       		.uleb128 0x53
 5427 246e 11240000 		.4byte	0x2411
 5428 2472 CF050000 		.4byte	.LLST18
 5429 2476 56       		.uleb128 0x56
 5430 2477 1C240000 		.4byte	0x241c
 5431 247b 01       		.uleb128 0x1
 5432 247c 53       		.byte	0x53
 5433 247d 53       		.uleb128 0x53
 5434 247e 27240000 		.4byte	0x2427
 5435 2482 EE050000 		.4byte	.LLST19
 5436 2486 53       		.uleb128 0x53
 5437 2487 32240000 		.4byte	0x2432
 5438 248b 0E060000 		.4byte	.LLST20
 5439 248f 5D       		.uleb128 0x5d
 5440 2490 37250000 		.4byte	0x2537
 5441 2494 02000000 		.4byte	.LBB86
 5442 2498 48000000 		.4byte	.Ldebug_ranges0+0x48
 5443 249c 02       		.byte	0x2
 5444 249d 1B       		.byte	0x1b
 5445 249e 53       		.uleb128 0x53
 5446 249f 47250000 		.4byte	0x2547
ARM GAS  /tmp/cc5e0BXI.s 			page 138


 5447 24a3 2E060000 		.4byte	.LLST21
 5448 24a7 5D       		.uleb128 0x5d
 5449 24a8 AE260000 		.4byte	0x26ae
 5450 24ac 02000000 		.4byte	.LBB87
 5451 24b0 48000000 		.4byte	.Ldebug_ranges0+0x48
 5452 24b4 1A       		.byte	0x1a
 5453 24b5 1A       		.byte	0x1a
 5454 24b6 53       		.uleb128 0x53
 5455 24b7 BC260000 		.4byte	0x26bc
 5456 24bb 2E060000 		.4byte	.LLST21
 5457 24bf 5D       		.uleb128 0x5d
 5458 24c0 4E270000 		.4byte	0x274e
 5459 24c4 02000000 		.4byte	.LBB89
 5460 24c8 68000000 		.4byte	.Ldebug_ranges0+0x68
 5461 24cc 06       		.byte	0x6
 5462 24cd 36       		.byte	0x36
 5463 24ce 53       		.uleb128 0x53
 5464 24cf 5C270000 		.4byte	0x275c
 5465 24d3 41060000 		.4byte	.LLST23
 5466 24d7 00       		.byte	0
 5467 24d8 00       		.byte	0
 5468 24d9 00       		.byte	0
 5469 24da 00       		.byte	0
 5470 24db 1B       		.uleb128 0x1b
 5471 24dc 04       		.byte	0x4
 5472 24dd 19190000 		.4byte	0x1919
 5473 24e1 0C       		.uleb128 0xc
 5474 24e2 DB240000 		.4byte	0x24db
 5475 24e6 50       		.uleb128 0x50
 5476 24e7 29190000 		.4byte	0x1929
 5477 24eb 1A       		.byte	0x1a
 5478 24ec 1A       		.byte	0x1a
 5479 24ed 02       		.byte	0x2
 5480 24ee F6240000 		.4byte	0x24f6
 5481 24f2 09250000 		.4byte	0x2509
 5482 24f6 51       		.uleb128 0x51
 5483 24f7 740D0000 		.4byte	.LASF420
 5484 24fb E1240000 		.4byte	0x24e1
 5485 24ff 51       		.uleb128 0x51
 5486 2500 680A0000 		.4byte	.LASF421
 5487 2504 A1020000 		.4byte	0x2a1
 5488 2508 00       		.byte	0
 5489 2509 6E       		.uleb128 0x6e
 5490 250a E6240000 		.4byte	0x24e6
 5491 250e E10B0000 		.4byte	.LASF442
 5492 2512 1A250000 		.4byte	0x251a
 5493 2516 20250000 		.4byte	0x2520
 5494 251a 6F       		.uleb128 0x6f
 5495 251b F6240000 		.4byte	0x24f6
 5496 251f 00       		.byte	0
 5497 2520 6E       		.uleb128 0x6e
 5498 2521 E6240000 		.4byte	0x24e6
 5499 2525 C7070000 		.4byte	.LASF443
 5500 2529 31250000 		.4byte	0x2531
 5501 252d 37250000 		.4byte	0x2537
 5502 2531 6F       		.uleb128 0x6f
 5503 2532 F6240000 		.4byte	0x24f6
ARM GAS  /tmp/cc5e0BXI.s 			page 139


 5504 2536 00       		.byte	0
 5505 2537 50       		.uleb128 0x50
 5506 2538 4F190000 		.4byte	0x194f
 5507 253c 1A       		.byte	0x1a
 5508 253d 1A       		.byte	0x1a
 5509 253e 02       		.byte	0x2
 5510 253f 47250000 		.4byte	0x2547
 5511 2543 51250000 		.4byte	0x2551
 5512 2547 51       		.uleb128 0x51
 5513 2548 740D0000 		.4byte	.LASF420
 5514 254c E1240000 		.4byte	0x24e1
 5515 2550 00       		.byte	0
 5516 2551 6E       		.uleb128 0x6e
 5517 2552 37250000 		.4byte	0x2537
 5518 2556 EA100000 		.4byte	.LASF444
 5519 255a 62250000 		.4byte	0x2562
 5520 255e 68250000 		.4byte	0x2568
 5521 2562 6F       		.uleb128 0x6f
 5522 2563 47250000 		.4byte	0x2547
 5523 2567 00       		.byte	0
 5524 2568 39       		.uleb128 0x39
 5525 2569 0C0D0000 		.4byte	.LASF445
 5526 256d D8250000 		.4byte	0x25d8
 5527 2571 3A       		.uleb128 0x3a
 5528 2572 87120000 		.4byte	.LASF447
 5529 2576 C3140000 		.4byte	.LASF449
 5530 257a 82040000 		.4byte	0x482
 5531 257e 01       		.byte	0x1
 5532 257f 68250000 		.4byte	0x2568
 5533 2583 01       		.byte	0x1
 5534 2584 8C250000 		.4byte	0x258c
 5535 2588 97250000 		.4byte	0x2597
 5536 258c 3B       		.uleb128 0x3b
 5537 258d DD250000 		.4byte	0x25dd
 5538 2591 3B       		.uleb128 0x3b
 5539 2592 9A020000 		.4byte	0x29a
 5540 2596 00       		.byte	0
 5541 2597 3D       		.uleb128 0x3d
 5542 2598 0C0D0000 		.4byte	.LASF445
 5543 259c 06       		.byte	0x6
 5544 259d 36       		.byte	0x36
 5545 259e D30A0000 		.4byte	.LASF450
 5546 25a2 DD250000 		.4byte	0x25dd
 5547 25a6 01       		.byte	0x1
 5548 25a7 AF250000 		.4byte	0x25af
 5549 25ab B5250000 		.4byte	0x25b5
 5550 25af 3B       		.uleb128 0x3b
 5551 25b0 DD250000 		.4byte	0x25dd
 5552 25b4 00       		.byte	0
 5553 25b5 70       		.uleb128 0x70
 5554 25b6 3E130000 		.4byte	.LASF407
 5555 25ba 06       		.byte	0x6
 5556 25bb 34       		.byte	0x34
 5557 25bc 86150000 		.4byte	.LASF451
 5558 25c0 7E020000 		.4byte	0x27e
 5559 25c4 01       		.byte	0x1
 5560 25c5 02       		.uleb128 0x2
ARM GAS  /tmp/cc5e0BXI.s 			page 140


 5561 25c6 10       		.byte	0x10
 5562 25c7 08       		.uleb128 0x8
 5563 25c8 68250000 		.4byte	0x2568
 5564 25cc 01       		.byte	0x1
 5565 25cd D1250000 		.4byte	0x25d1
 5566 25d1 3B       		.uleb128 0x3b
 5567 25d2 DD260000 		.4byte	0x26dd
 5568 25d6 00       		.byte	0
 5569 25d7 00       		.byte	0
 5570 25d8 0C       		.uleb128 0xc
 5571 25d9 68250000 		.4byte	0x2568
 5572 25dd 1B       		.uleb128 0x1b
 5573 25de 04       		.byte	0x4
 5574 25df 68250000 		.4byte	0x2568
 5575 25e3 0C       		.uleb128 0xc
 5576 25e4 DD250000 		.4byte	0x25dd
 5577 25e8 50       		.uleb128 0x50
 5578 25e9 71250000 		.4byte	0x2571
 5579 25ed 06       		.byte	0x6
 5580 25ee 26       		.byte	0x26
 5581 25ef 02       		.byte	0x2
 5582 25f0 F8250000 		.4byte	0x25f8
 5583 25f4 0B260000 		.4byte	0x260b
 5584 25f8 51       		.uleb128 0x51
 5585 25f9 740D0000 		.4byte	.LASF420
 5586 25fd E3250000 		.4byte	0x25e3
 5587 2601 51       		.uleb128 0x51
 5588 2602 680A0000 		.4byte	.LASF421
 5589 2606 A1020000 		.4byte	0x2a1
 5590 260a 00       		.byte	0
 5591 260b 6E       		.uleb128 0x6e
 5592 260c E8250000 		.4byte	0x25e8
 5593 2610 940A0000 		.4byte	.LASF452
 5594 2614 1C260000 		.4byte	0x261c
 5595 2618 22260000 		.4byte	0x2622
 5596 261c 6F       		.uleb128 0x6f
 5597 261d F8250000 		.4byte	0x25f8
 5598 2621 00       		.byte	0
 5599 2622 6E       		.uleb128 0x6e
 5600 2623 E8250000 		.4byte	0x25e8
 5601 2627 150A0000 		.4byte	.LASF453
 5602 262b 33260000 		.4byte	0x2633
 5603 262f 39260000 		.4byte	0x2639
 5604 2633 6F       		.uleb128 0x6f
 5605 2634 F8250000 		.4byte	0x25f8
 5606 2638 00       		.byte	0
 5607 2639 57       		.uleb128 0x57
 5608 263a E91D0000 		.4byte	0x1de9
 5609 263e 54260000 		.4byte	0x2654
 5610 2642 00000000 		.4byte	.LFB262
 5611 2646 04000000 		.4byte	.LFE262-.LFB262
 5612 264a 01       		.uleb128 0x1
 5613 264b 9C       		.byte	0x9c
 5614 264c 54260000 		.4byte	0x2654
 5615 2650 62260000 		.4byte	0x2662
 5616 2654 58       		.uleb128 0x58
 5617 2655 740D0000 		.4byte	.LASF420
ARM GAS  /tmp/cc5e0BXI.s 			page 141


 5618 2659 671E0000 		.4byte	0x1e67
 5619 265d 54060000 		.4byte	.LLST0
 5620 2661 00       		.byte	0
 5621 2662 71       		.uleb128 0x71
 5622 2663 8F1A0000 		.4byte	0x1a8f
 5623 2667 40       		.byte	0x40
 5624 2668 75260000 		.4byte	0x2675
 5625 266c 03       		.byte	0x3
 5626 266d 75260000 		.4byte	0x2675
 5627 2671 7F260000 		.4byte	0x267f
 5628 2675 51       		.uleb128 0x51
 5629 2676 740D0000 		.4byte	.LASF420
 5630 267a DC1A0000 		.4byte	0x1adc
 5631 267e 00       		.byte	0
 5632 267f 71       		.uleb128 0x71
 5633 2680 481A0000 		.4byte	0x1a48
 5634 2684 2D       		.byte	0x2d
 5635 2685 92260000 		.4byte	0x2692
 5636 2689 03       		.byte	0x3
 5637 268a 92260000 		.4byte	0x2692
 5638 268e AE260000 		.4byte	0x26ae
 5639 2692 51       		.uleb128 0x51
 5640 2693 740D0000 		.4byte	.LASF420
 5641 2697 CB1A0000 		.4byte	0x1acb
 5642 269b 72       		.uleb128 0x72
 5643 269c 6300     		.ascii	"c\000"
 5644 269e 03       		.byte	0x3
 5645 269f 2D       		.byte	0x2d
 5646 26a0 03100000 		.4byte	0x1003
 5647 26a4 73       		.uleb128 0x73
 5648 26a5 6900     		.ascii	"i\000"
 5649 26a7 03       		.byte	0x3
 5650 26a8 2F       		.byte	0x2f
 5651 26a9 7E020000 		.4byte	0x27e
 5652 26ad 00       		.byte	0
 5653 26ae 6D       		.uleb128 0x6d
 5654 26af 97250000 		.4byte	0x2597
 5655 26b3 02       		.byte	0x2
 5656 26b4 BC260000 		.4byte	0x26bc
 5657 26b8 C6260000 		.4byte	0x26c6
 5658 26bc 51       		.uleb128 0x51
 5659 26bd 740D0000 		.4byte	.LASF420
 5660 26c1 E3250000 		.4byte	0x25e3
 5661 26c5 00       		.byte	0
 5662 26c6 6E       		.uleb128 0x6e
 5663 26c7 AE260000 		.4byte	0x26ae
 5664 26cb 0E0F0000 		.4byte	.LASF454
 5665 26cf D7260000 		.4byte	0x26d7
 5666 26d3 DD260000 		.4byte	0x26dd
 5667 26d7 6F       		.uleb128 0x6f
 5668 26d8 BC260000 		.4byte	0x26bc
 5669 26dc 00       		.byte	0
 5670 26dd 1B       		.uleb128 0x1b
 5671 26de 04       		.byte	0x4
 5672 26df D8250000 		.4byte	0x25d8
 5673 26e3 0C       		.uleb128 0xc
 5674 26e4 DD260000 		.4byte	0x26dd
ARM GAS  /tmp/cc5e0BXI.s 			page 142


 5675 26e8 74       		.uleb128 0x74
 5676 26e9 B5250000 		.4byte	0x25b5
 5677 26ed F5260000 		.4byte	0x26f5
 5678 26f1 FF260000 		.4byte	0x26ff
 5679 26f5 51       		.uleb128 0x51
 5680 26f6 740D0000 		.4byte	.LASF420
 5681 26fa E3260000 		.4byte	0x26e3
 5682 26fe 00       		.byte	0
 5683 26ff 6D       		.uleb128 0x6d
 5684 2700 99190000 		.4byte	0x1999
 5685 2704 02       		.byte	0x2
 5686 2705 0D270000 		.4byte	0x270d
 5687 2709 20270000 		.4byte	0x2720
 5688 270d 51       		.uleb128 0x51
 5689 270e 740D0000 		.4byte	.LASF420
 5690 2712 E2190000 		.4byte	0x19e2
 5691 2716 51       		.uleb128 0x51
 5692 2717 680A0000 		.4byte	.LASF421
 5693 271b A1020000 		.4byte	0x2a1
 5694 271f 00       		.byte	0
 5695 2720 6E       		.uleb128 0x6e
 5696 2721 FF260000 		.4byte	0x26ff
 5697 2725 A2140000 		.4byte	.LASF455
 5698 2729 31270000 		.4byte	0x2731
 5699 272d 37270000 		.4byte	0x2737
 5700 2731 6F       		.uleb128 0x6f
 5701 2732 0D270000 		.4byte	0x270d
 5702 2736 00       		.byte	0
 5703 2737 6E       		.uleb128 0x6e
 5704 2738 FF260000 		.4byte	0x26ff
 5705 273c 7D0F0000 		.4byte	.LASF456
 5706 2740 48270000 		.4byte	0x2748
 5707 2744 4E270000 		.4byte	0x274e
 5708 2748 6F       		.uleb128 0x6f
 5709 2749 0D270000 		.4byte	0x270d
 5710 274d 00       		.byte	0
 5711 274e 6D       		.uleb128 0x6d
 5712 274f C1190000 		.4byte	0x19c1
 5713 2753 02       		.byte	0x2
 5714 2754 5C270000 		.4byte	0x275c
 5715 2758 66270000 		.4byte	0x2766
 5716 275c 51       		.uleb128 0x51
 5717 275d 740D0000 		.4byte	.LASF420
 5718 2761 E2190000 		.4byte	0x19e2
 5719 2765 00       		.byte	0
 5720 2766 6E       		.uleb128 0x6e
 5721 2767 4E270000 		.4byte	0x274e
 5722 276b 59030000 		.4byte	.LASF457
 5723 276f 77270000 		.4byte	0x2777
 5724 2773 7D270000 		.4byte	0x277d
 5725 2777 6F       		.uleb128 0x6f
 5726 2778 5C270000 		.4byte	0x275c
 5727 277c 00       		.byte	0
 5728 277d 75       		.uleb128 0x75
 5729 277e ED030000 		.4byte	.LASF476
 5730 2782 04       		.byte	0x4
 5731 2783 F806     		.2byte	0x6f8
ARM GAS  /tmp/cc5e0BXI.s 			page 143


 5732 2785 3E100000 		.4byte	0x103e
 5733 2789 03       		.byte	0x3
 5734 278a 9B270000 		.4byte	0x279b
 5735 278e 76       		.uleb128 0x76
 5736 278f 680D0000 		.4byte	.LASF458
 5737 2793 04       		.byte	0x4
 5738 2794 F806     		.2byte	0x6f8
 5739 2796 E8120000 		.4byte	0x12e8
 5740 279a 00       		.byte	0
 5741 279b 77       		.uleb128 0x77
 5742 279c 1E0B0000 		.4byte	.LASF459
 5743 27a0 04       		.byte	0x4
 5744 27a1 E406     		.2byte	0x6e4
 5745 27a3 03       		.byte	0x3
 5746 27a4 C1270000 		.4byte	0x27c1
 5747 27a8 76       		.uleb128 0x76
 5748 27a9 680D0000 		.4byte	.LASF458
 5749 27ad 04       		.byte	0x4
 5750 27ae E406     		.2byte	0x6e4
 5751 27b0 E8120000 		.4byte	0x12e8
 5752 27b4 76       		.uleb128 0x76
 5753 27b5 C80E0000 		.4byte	.LASF431
 5754 27b9 04       		.byte	0x4
 5755 27ba E406     		.2byte	0x6e4
 5756 27bc 3E100000 		.4byte	0x103e
 5757 27c0 00       		.byte	0
 5758 27c1 77       		.uleb128 0x77
 5759 27c2 6A080000 		.4byte	.LASF460
 5760 27c6 04       		.byte	0x4
 5761 27c7 9E06     		.2byte	0x69e
 5762 27c9 03       		.byte	0x3
 5763 27ca DB270000 		.4byte	0x27db
 5764 27ce 76       		.uleb128 0x76
 5765 27cf 680D0000 		.4byte	.LASF458
 5766 27d3 04       		.byte	0x4
 5767 27d4 9E06     		.2byte	0x69e
 5768 27d6 E8120000 		.4byte	0x12e8
 5769 27da 00       		.byte	0
 5770 27db 77       		.uleb128 0x77
 5771 27dc 67050000 		.4byte	.LASF461
 5772 27e0 04       		.byte	0x4
 5773 27e1 9106     		.2byte	0x691
 5774 27e3 03       		.byte	0x3
 5775 27e4 F5270000 		.4byte	0x27f5
 5776 27e8 76       		.uleb128 0x76
 5777 27e9 680D0000 		.4byte	.LASF458
 5778 27ed 04       		.byte	0x4
 5779 27ee 9106     		.2byte	0x691
 5780 27f0 E8120000 		.4byte	0x12e8
 5781 27f4 00       		.byte	0
 5782 27f5 78       		.uleb128 0x78
 5783 27f6 23230000 		.4byte	0x2323
 5784 27fa 6F110000 		.4byte	.LASF394
 5785 27fe 00000000 		.4byte	.LFB278
 5786 2802 08000000 		.4byte	.LFE278-.LFB278
 5787 2806 01       		.uleb128 0x1
 5788 2807 9C       		.byte	0x9c
ARM GAS  /tmp/cc5e0BXI.s 			page 144


 5789 2808 10280000 		.4byte	0x2810
 5790 280c 4D280000 		.4byte	0x284d
 5791 2810 53       		.uleb128 0x53
 5792 2811 35230000 		.4byte	0x2335
 5793 2815 75060000 		.4byte	.LLST29
 5794 2819 53       		.uleb128 0x53
 5795 281a 3E230000 		.4byte	0x233e
 5796 281e 96060000 		.4byte	.LLST30
 5797 2822 53       		.uleb128 0x53
 5798 2823 49230000 		.4byte	0x2349
 5799 2827 B7060000 		.4byte	.LLST31
 5800 282b 5C       		.uleb128 0x5c
 5801 282c 54230000 		.4byte	0x2354
 5802 2830 D8060000 		.4byte	.LLST32
 5803 2834 6C       		.uleb128 0x6c
 5804 2835 08000000 		.4byte	.LVL56
 5805 2839 A7220000 		.4byte	0x22a7
 5806 283d 55       		.uleb128 0x55
 5807 283e 01       		.uleb128 0x1
 5808 283f 50       		.byte	0x50
 5809 2840 03       		.uleb128 0x3
 5810 2841 F3       		.byte	0xf3
 5811 2842 01       		.uleb128 0x1
 5812 2843 50       		.byte	0x50
 5813 2844 55       		.uleb128 0x55
 5814 2845 01       		.uleb128 0x1
 5815 2846 51       		.byte	0x51
 5816 2847 03       		.uleb128 0x3
 5817 2848 F3       		.byte	0xf3
 5818 2849 01       		.uleb128 0x1
 5819 284a 51       		.byte	0x51
 5820 284b 00       		.byte	0
 5821 284c 00       		.byte	0
 5822 284d 79       		.uleb128 0x79
 5823 284e 67030000 		.4byte	.LASF477
 5824 2852 F30C0000 		.4byte	.LASF478
 5825 2856 67030000 		.4byte	.LASF477
 5826 285a 7A       		.uleb128 0x7a
 5827 285b 93060000 		.4byte	.LASF462
 5828 285f 93060000 		.4byte	.LASF462
 5829 2863 1B       		.byte	0x1b
 5830 2864 DC       		.byte	0xdc
 5831 2865 7A       		.uleb128 0x7a
 5832 2866 A0130000 		.4byte	.LASF463
 5833 286a A0130000 		.4byte	.LASF463
 5834 286e 1B       		.byte	0x1b
 5835 286f DB       		.byte	0xdb
 5836 2870 00       		.byte	0
 5837              		.section	.debug_abbrev,"",%progbits
 5838              	.Ldebug_abbrev0:
 5839 0000 01       		.uleb128 0x1
 5840 0001 11       		.uleb128 0x11
 5841 0002 01       		.byte	0x1
 5842 0003 25       		.uleb128 0x25
 5843 0004 0E       		.uleb128 0xe
 5844 0005 13       		.uleb128 0x13
 5845 0006 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 145


 5846 0007 03       		.uleb128 0x3
 5847 0008 0E       		.uleb128 0xe
 5848 0009 1B       		.uleb128 0x1b
 5849 000a 0E       		.uleb128 0xe
 5850 000b 55       		.uleb128 0x55
 5851 000c 17       		.uleb128 0x17
 5852 000d 11       		.uleb128 0x11
 5853 000e 01       		.uleb128 0x1
 5854 000f 10       		.uleb128 0x10
 5855 0010 17       		.uleb128 0x17
 5856 0011 00       		.byte	0
 5857 0012 00       		.byte	0
 5858 0013 02       		.uleb128 0x2
 5859 0014 39       		.uleb128 0x39
 5860 0015 01       		.byte	0x1
 5861 0016 03       		.uleb128 0x3
 5862 0017 08       		.uleb128 0x8
 5863 0018 3A       		.uleb128 0x3a
 5864 0019 0B       		.uleb128 0xb
 5865 001a 3B       		.uleb128 0x3b
 5866 001b 0B       		.uleb128 0xb
 5867 001c 01       		.uleb128 0x1
 5868 001d 13       		.uleb128 0x13
 5869 001e 00       		.byte	0
 5870 001f 00       		.byte	0
 5871 0020 03       		.uleb128 0x3
 5872 0021 39       		.uleb128 0x39
 5873 0022 00       		.byte	0
 5874 0023 03       		.uleb128 0x3
 5875 0024 0E       		.uleb128 0xe
 5876 0025 3A       		.uleb128 0x3a
 5877 0026 0B       		.uleb128 0xb
 5878 0027 3B       		.uleb128 0x3b
 5879 0028 0B       		.uleb128 0xb
 5880 0029 00       		.byte	0
 5881 002a 00       		.byte	0
 5882 002b 04       		.uleb128 0x4
 5883 002c 3A       		.uleb128 0x3a
 5884 002d 00       		.byte	0
 5885 002e 3A       		.uleb128 0x3a
 5886 002f 0B       		.uleb128 0xb
 5887 0030 3B       		.uleb128 0x3b
 5888 0031 0B       		.uleb128 0xb
 5889 0032 18       		.uleb128 0x18
 5890 0033 13       		.uleb128 0x13
 5891 0034 00       		.byte	0
 5892 0035 00       		.byte	0
 5893 0036 05       		.uleb128 0x5
 5894 0037 08       		.uleb128 0x8
 5895 0038 00       		.byte	0
 5896 0039 3A       		.uleb128 0x3a
 5897 003a 0B       		.uleb128 0xb
 5898 003b 3B       		.uleb128 0x3b
 5899 003c 0B       		.uleb128 0xb
 5900 003d 18       		.uleb128 0x18
 5901 003e 13       		.uleb128 0x13
 5902 003f 00       		.byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 146


 5903 0040 00       		.byte	0
 5904 0041 06       		.uleb128 0x6
 5905 0042 08       		.uleb128 0x8
 5906 0043 00       		.byte	0
 5907 0044 3A       		.uleb128 0x3a
 5908 0045 0B       		.uleb128 0xb
 5909 0046 3B       		.uleb128 0x3b
 5910 0047 05       		.uleb128 0x5
 5911 0048 18       		.uleb128 0x18
 5912 0049 13       		.uleb128 0x13
 5913 004a 00       		.byte	0
 5914 004b 00       		.byte	0
 5915 004c 07       		.uleb128 0x7
 5916 004d 2E       		.uleb128 0x2e
 5917 004e 01       		.byte	0x1
 5918 004f 3F       		.uleb128 0x3f
 5919 0050 19       		.uleb128 0x19
 5920 0051 03       		.uleb128 0x3
 5921 0052 08       		.uleb128 0x8
 5922 0053 3A       		.uleb128 0x3a
 5923 0054 0B       		.uleb128 0xb
 5924 0055 3B       		.uleb128 0x3b
 5925 0056 0B       		.uleb128 0xb
 5926 0057 6E       		.uleb128 0x6e
 5927 0058 0E       		.uleb128 0xe
 5928 0059 49       		.uleb128 0x49
 5929 005a 13       		.uleb128 0x13
 5930 005b 3C       		.uleb128 0x3c
 5931 005c 19       		.uleb128 0x19
 5932 005d 01       		.uleb128 0x1
 5933 005e 13       		.uleb128 0x13
 5934 005f 00       		.byte	0
 5935 0060 00       		.byte	0
 5936 0061 08       		.uleb128 0x8
 5937 0062 05       		.uleb128 0x5
 5938 0063 00       		.byte	0
 5939 0064 49       		.uleb128 0x49
 5940 0065 13       		.uleb128 0x13
 5941 0066 00       		.byte	0
 5942 0067 00       		.byte	0
 5943 0068 09       		.uleb128 0x9
 5944 0069 39       		.uleb128 0x39
 5945 006a 01       		.byte	0x1
 5946 006b 03       		.uleb128 0x3
 5947 006c 0E       		.uleb128 0xe
 5948 006d 3A       		.uleb128 0x3a
 5949 006e 0B       		.uleb128 0xb
 5950 006f 3B       		.uleb128 0x3b
 5951 0070 0B       		.uleb128 0xb
 5952 0071 01       		.uleb128 0x1
 5953 0072 13       		.uleb128 0x13
 5954 0073 00       		.byte	0
 5955 0074 00       		.byte	0
 5956 0075 0A       		.uleb128 0xa
 5957 0076 2E       		.uleb128 0x2e
 5958 0077 01       		.byte	0x1
 5959 0078 3F       		.uleb128 0x3f
ARM GAS  /tmp/cc5e0BXI.s 			page 147


 5960 0079 19       		.uleb128 0x19
 5961 007a 03       		.uleb128 0x3
 5962 007b 08       		.uleb128 0x8
 5963 007c 3A       		.uleb128 0x3a
 5964 007d 0B       		.uleb128 0xb
 5965 007e 3B       		.uleb128 0x3b
 5966 007f 0B       		.uleb128 0xb
 5967 0080 6E       		.uleb128 0x6e
 5968 0081 0E       		.uleb128 0xe
 5969 0082 49       		.uleb128 0x49
 5970 0083 13       		.uleb128 0x13
 5971 0084 3C       		.uleb128 0x3c
 5972 0085 19       		.uleb128 0x19
 5973 0086 00       		.byte	0
 5974 0087 00       		.byte	0
 5975 0088 0B       		.uleb128 0xb
 5976 0089 16       		.uleb128 0x16
 5977 008a 00       		.byte	0
 5978 008b 03       		.uleb128 0x3
 5979 008c 0E       		.uleb128 0xe
 5980 008d 3A       		.uleb128 0x3a
 5981 008e 0B       		.uleb128 0xb
 5982 008f 3B       		.uleb128 0x3b
 5983 0090 0B       		.uleb128 0xb
 5984 0091 49       		.uleb128 0x49
 5985 0092 13       		.uleb128 0x13
 5986 0093 00       		.byte	0
 5987 0094 00       		.byte	0
 5988 0095 0C       		.uleb128 0xc
 5989 0096 26       		.uleb128 0x26
 5990 0097 00       		.byte	0
 5991 0098 49       		.uleb128 0x49
 5992 0099 13       		.uleb128 0x13
 5993 009a 00       		.byte	0
 5994 009b 00       		.byte	0
 5995 009c 0D       		.uleb128 0xd
 5996 009d 35       		.uleb128 0x35
 5997 009e 00       		.byte	0
 5998 009f 49       		.uleb128 0x49
 5999 00a0 13       		.uleb128 0x13
 6000 00a1 00       		.byte	0
 6001 00a2 00       		.byte	0
 6002 00a3 0E       		.uleb128 0xe
 6003 00a4 24       		.uleb128 0x24
 6004 00a5 00       		.byte	0
 6005 00a6 0B       		.uleb128 0xb
 6006 00a7 0B       		.uleb128 0xb
 6007 00a8 3E       		.uleb128 0x3e
 6008 00a9 0B       		.uleb128 0xb
 6009 00aa 03       		.uleb128 0x3
 6010 00ab 0E       		.uleb128 0xe
 6011 00ac 00       		.byte	0
 6012 00ad 00       		.byte	0
 6013 00ae 0F       		.uleb128 0xf
 6014 00af 24       		.uleb128 0x24
 6015 00b0 00       		.byte	0
 6016 00b1 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 148


 6017 00b2 0B       		.uleb128 0xb
 6018 00b3 3E       		.uleb128 0x3e
 6019 00b4 0B       		.uleb128 0xb
 6020 00b5 03       		.uleb128 0x3
 6021 00b6 08       		.uleb128 0x8
 6022 00b7 00       		.byte	0
 6023 00b8 00       		.byte	0
 6024 00b9 10       		.uleb128 0x10
 6025 00ba 13       		.uleb128 0x13
 6026 00bb 01       		.byte	0x1
 6027 00bc 0B       		.uleb128 0xb
 6028 00bd 0B       		.uleb128 0xb
 6029 00be 3A       		.uleb128 0x3a
 6030 00bf 0B       		.uleb128 0xb
 6031 00c0 3B       		.uleb128 0x3b
 6032 00c1 05       		.uleb128 0x5
 6033 00c2 6E       		.uleb128 0x6e
 6034 00c3 0E       		.uleb128 0xe
 6035 00c4 01       		.uleb128 0x1
 6036 00c5 13       		.uleb128 0x13
 6037 00c6 00       		.byte	0
 6038 00c7 00       		.byte	0
 6039 00c8 11       		.uleb128 0x11
 6040 00c9 0D       		.uleb128 0xd
 6041 00ca 00       		.byte	0
 6042 00cb 03       		.uleb128 0x3
 6043 00cc 0E       		.uleb128 0xe
 6044 00cd 3A       		.uleb128 0x3a
 6045 00ce 0B       		.uleb128 0xb
 6046 00cf 3B       		.uleb128 0x3b
 6047 00d0 05       		.uleb128 0x5
 6048 00d1 49       		.uleb128 0x49
 6049 00d2 13       		.uleb128 0x13
 6050 00d3 38       		.uleb128 0x38
 6051 00d4 0B       		.uleb128 0xb
 6052 00d5 00       		.byte	0
 6053 00d6 00       		.byte	0
 6054 00d7 12       		.uleb128 0x12
 6055 00d8 16       		.uleb128 0x16
 6056 00d9 00       		.byte	0
 6057 00da 03       		.uleb128 0x3
 6058 00db 0E       		.uleb128 0xe
 6059 00dc 3A       		.uleb128 0x3a
 6060 00dd 0B       		.uleb128 0xb
 6061 00de 3B       		.uleb128 0x3b
 6062 00df 05       		.uleb128 0x5
 6063 00e0 49       		.uleb128 0x49
 6064 00e1 13       		.uleb128 0x13
 6065 00e2 00       		.byte	0
 6066 00e3 00       		.byte	0
 6067 00e4 13       		.uleb128 0x13
 6068 00e5 3B       		.uleb128 0x3b
 6069 00e6 00       		.byte	0
 6070 00e7 03       		.uleb128 0x3
 6071 00e8 0E       		.uleb128 0xe
 6072 00e9 00       		.byte	0
 6073 00ea 00       		.byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 149


 6074 00eb 14       		.uleb128 0x14
 6075 00ec 13       		.uleb128 0x13
 6076 00ed 01       		.byte	0x1
 6077 00ee 0B       		.uleb128 0xb
 6078 00ef 0B       		.uleb128 0xb
 6079 00f0 3A       		.uleb128 0x3a
 6080 00f1 0B       		.uleb128 0xb
 6081 00f2 3B       		.uleb128 0x3b
 6082 00f3 0B       		.uleb128 0xb
 6083 00f4 6E       		.uleb128 0x6e
 6084 00f5 0E       		.uleb128 0xe
 6085 00f6 01       		.uleb128 0x1
 6086 00f7 13       		.uleb128 0x13
 6087 00f8 00       		.byte	0
 6088 00f9 00       		.byte	0
 6089 00fa 15       		.uleb128 0x15
 6090 00fb 17       		.uleb128 0x17
 6091 00fc 01       		.byte	0x1
 6092 00fd 0B       		.uleb128 0xb
 6093 00fe 0B       		.uleb128 0xb
 6094 00ff 3A       		.uleb128 0x3a
 6095 0100 0B       		.uleb128 0xb
 6096 0101 3B       		.uleb128 0x3b
 6097 0102 0B       		.uleb128 0xb
 6098 0103 01       		.uleb128 0x1
 6099 0104 13       		.uleb128 0x13
 6100 0105 00       		.byte	0
 6101 0106 00       		.byte	0
 6102 0107 16       		.uleb128 0x16
 6103 0108 0D       		.uleb128 0xd
 6104 0109 00       		.byte	0
 6105 010a 03       		.uleb128 0x3
 6106 010b 0E       		.uleb128 0xe
 6107 010c 3A       		.uleb128 0x3a
 6108 010d 0B       		.uleb128 0xb
 6109 010e 3B       		.uleb128 0x3b
 6110 010f 0B       		.uleb128 0xb
 6111 0110 49       		.uleb128 0x49
 6112 0111 13       		.uleb128 0x13
 6113 0112 00       		.byte	0
 6114 0113 00       		.byte	0
 6115 0114 17       		.uleb128 0x17
 6116 0115 0D       		.uleb128 0xd
 6117 0116 00       		.byte	0
 6118 0117 03       		.uleb128 0x3
 6119 0118 0E       		.uleb128 0xe
 6120 0119 3A       		.uleb128 0x3a
 6121 011a 0B       		.uleb128 0xb
 6122 011b 3B       		.uleb128 0x3b
 6123 011c 0B       		.uleb128 0xb
 6124 011d 49       		.uleb128 0x49
 6125 011e 13       		.uleb128 0x13
 6126 011f 38       		.uleb128 0x38
 6127 0120 0B       		.uleb128 0xb
 6128 0121 00       		.byte	0
 6129 0122 00       		.byte	0
 6130 0123 18       		.uleb128 0x18
ARM GAS  /tmp/cc5e0BXI.s 			page 150


 6131 0124 01       		.uleb128 0x1
 6132 0125 01       		.byte	0x1
 6133 0126 49       		.uleb128 0x49
 6134 0127 13       		.uleb128 0x13
 6135 0128 01       		.uleb128 0x1
 6136 0129 13       		.uleb128 0x13
 6137 012a 00       		.byte	0
 6138 012b 00       		.byte	0
 6139 012c 19       		.uleb128 0x19
 6140 012d 21       		.uleb128 0x21
 6141 012e 00       		.byte	0
 6142 012f 49       		.uleb128 0x49
 6143 0130 13       		.uleb128 0x13
 6144 0131 2F       		.uleb128 0x2f
 6145 0132 0B       		.uleb128 0xb
 6146 0133 00       		.byte	0
 6147 0134 00       		.byte	0
 6148 0135 1A       		.uleb128 0x1a
 6149 0136 0F       		.uleb128 0xf
 6150 0137 00       		.byte	0
 6151 0138 0B       		.uleb128 0xb
 6152 0139 0B       		.uleb128 0xb
 6153 013a 00       		.byte	0
 6154 013b 00       		.byte	0
 6155 013c 1B       		.uleb128 0x1b
 6156 013d 0F       		.uleb128 0xf
 6157 013e 00       		.byte	0
 6158 013f 0B       		.uleb128 0xb
 6159 0140 0B       		.uleb128 0xb
 6160 0141 49       		.uleb128 0x49
 6161 0142 13       		.uleb128 0x13
 6162 0143 00       		.byte	0
 6163 0144 00       		.byte	0
 6164 0145 1C       		.uleb128 0x1c
 6165 0146 13       		.uleb128 0x13
 6166 0147 01       		.byte	0x1
 6167 0148 03       		.uleb128 0x3
 6168 0149 0E       		.uleb128 0xe
 6169 014a 0B       		.uleb128 0xb
 6170 014b 0B       		.uleb128 0xb
 6171 014c 3A       		.uleb128 0x3a
 6172 014d 0B       		.uleb128 0xb
 6173 014e 3B       		.uleb128 0x3b
 6174 014f 0B       		.uleb128 0xb
 6175 0150 01       		.uleb128 0x1
 6176 0151 13       		.uleb128 0x13
 6177 0152 00       		.byte	0
 6178 0153 00       		.byte	0
 6179 0154 1D       		.uleb128 0x1d
 6180 0155 0D       		.uleb128 0xd
 6181 0156 00       		.byte	0
 6182 0157 03       		.uleb128 0x3
 6183 0158 08       		.uleb128 0x8
 6184 0159 3A       		.uleb128 0x3a
 6185 015a 0B       		.uleb128 0xb
 6186 015b 3B       		.uleb128 0x3b
 6187 015c 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 151


 6188 015d 49       		.uleb128 0x49
 6189 015e 13       		.uleb128 0x13
 6190 015f 38       		.uleb128 0x38
 6191 0160 0B       		.uleb128 0xb
 6192 0161 00       		.byte	0
 6193 0162 00       		.byte	0
 6194 0163 1E       		.uleb128 0x1e
 6195 0164 13       		.uleb128 0x13
 6196 0165 01       		.byte	0x1
 6197 0166 03       		.uleb128 0x3
 6198 0167 0E       		.uleb128 0xe
 6199 0168 0B       		.uleb128 0xb
 6200 0169 05       		.uleb128 0x5
 6201 016a 3A       		.uleb128 0x3a
 6202 016b 0B       		.uleb128 0xb
 6203 016c 3B       		.uleb128 0x3b
 6204 016d 0B       		.uleb128 0xb
 6205 016e 01       		.uleb128 0x1
 6206 016f 13       		.uleb128 0x13
 6207 0170 00       		.byte	0
 6208 0171 00       		.byte	0
 6209 0172 1F       		.uleb128 0x1f
 6210 0173 0D       		.uleb128 0xd
 6211 0174 00       		.byte	0
 6212 0175 03       		.uleb128 0x3
 6213 0176 0E       		.uleb128 0xe
 6214 0177 3A       		.uleb128 0x3a
 6215 0178 0B       		.uleb128 0xb
 6216 0179 3B       		.uleb128 0x3b
 6217 017a 0B       		.uleb128 0xb
 6218 017b 49       		.uleb128 0x49
 6219 017c 13       		.uleb128 0x13
 6220 017d 38       		.uleb128 0x38
 6221 017e 05       		.uleb128 0x5
 6222 017f 00       		.byte	0
 6223 0180 00       		.byte	0
 6224 0181 20       		.uleb128 0x20
 6225 0182 15       		.uleb128 0x15
 6226 0183 00       		.byte	0
 6227 0184 00       		.byte	0
 6228 0185 00       		.byte	0
 6229 0186 21       		.uleb128 0x21
 6230 0187 15       		.uleb128 0x15
 6231 0188 01       		.byte	0x1
 6232 0189 49       		.uleb128 0x49
 6233 018a 13       		.uleb128 0x13
 6234 018b 01       		.uleb128 0x1
 6235 018c 13       		.uleb128 0x13
 6236 018d 00       		.byte	0
 6237 018e 00       		.byte	0
 6238 018f 22       		.uleb128 0x22
 6239 0190 13       		.uleb128 0x13
 6240 0191 01       		.byte	0x1
 6241 0192 03       		.uleb128 0x3
 6242 0193 0E       		.uleb128 0xe
 6243 0194 0B       		.uleb128 0xb
 6244 0195 05       		.uleb128 0x5
ARM GAS  /tmp/cc5e0BXI.s 			page 152


 6245 0196 3A       		.uleb128 0x3a
 6246 0197 0B       		.uleb128 0xb
 6247 0198 3B       		.uleb128 0x3b
 6248 0199 05       		.uleb128 0x5
 6249 019a 01       		.uleb128 0x1
 6250 019b 13       		.uleb128 0x13
 6251 019c 00       		.byte	0
 6252 019d 00       		.byte	0
 6253 019e 23       		.uleb128 0x23
 6254 019f 17       		.uleb128 0x17
 6255 01a0 01       		.byte	0x1
 6256 01a1 0B       		.uleb128 0xb
 6257 01a2 0B       		.uleb128 0xb
 6258 01a3 3A       		.uleb128 0x3a
 6259 01a4 0B       		.uleb128 0xb
 6260 01a5 3B       		.uleb128 0x3b
 6261 01a6 05       		.uleb128 0x5
 6262 01a7 01       		.uleb128 0x1
 6263 01a8 13       		.uleb128 0x13
 6264 01a9 00       		.byte	0
 6265 01aa 00       		.byte	0
 6266 01ab 24       		.uleb128 0x24
 6267 01ac 13       		.uleb128 0x13
 6268 01ad 01       		.byte	0x1
 6269 01ae 0B       		.uleb128 0xb
 6270 01af 0B       		.uleb128 0xb
 6271 01b0 3A       		.uleb128 0x3a
 6272 01b1 0B       		.uleb128 0xb
 6273 01b2 3B       		.uleb128 0x3b
 6274 01b3 05       		.uleb128 0x5
 6275 01b4 01       		.uleb128 0x1
 6276 01b5 13       		.uleb128 0x13
 6277 01b6 00       		.byte	0
 6278 01b7 00       		.byte	0
 6279 01b8 25       		.uleb128 0x25
 6280 01b9 0D       		.uleb128 0xd
 6281 01ba 00       		.byte	0
 6282 01bb 03       		.uleb128 0x3
 6283 01bc 0E       		.uleb128 0xe
 6284 01bd 3A       		.uleb128 0x3a
 6285 01be 0B       		.uleb128 0xb
 6286 01bf 3B       		.uleb128 0x3b
 6287 01c0 05       		.uleb128 0x5
 6288 01c1 49       		.uleb128 0x49
 6289 01c2 13       		.uleb128 0x13
 6290 01c3 00       		.byte	0
 6291 01c4 00       		.byte	0
 6292 01c5 26       		.uleb128 0x26
 6293 01c6 0D       		.uleb128 0xd
 6294 01c7 00       		.byte	0
 6295 01c8 03       		.uleb128 0x3
 6296 01c9 0E       		.uleb128 0xe
 6297 01ca 3A       		.uleb128 0x3a
 6298 01cb 0B       		.uleb128 0xb
 6299 01cc 3B       		.uleb128 0x3b
 6300 01cd 05       		.uleb128 0x5
 6301 01ce 49       		.uleb128 0x49
ARM GAS  /tmp/cc5e0BXI.s 			page 153


 6302 01cf 13       		.uleb128 0x13
 6303 01d0 38       		.uleb128 0x38
 6304 01d1 05       		.uleb128 0x5
 6305 01d2 00       		.byte	0
 6306 01d3 00       		.byte	0
 6307 01d4 27       		.uleb128 0x27
 6308 01d5 13       		.uleb128 0x13
 6309 01d6 01       		.byte	0x1
 6310 01d7 03       		.uleb128 0x3
 6311 01d8 0E       		.uleb128 0xe
 6312 01d9 0B       		.uleb128 0xb
 6313 01da 0B       		.uleb128 0xb
 6314 01db 3A       		.uleb128 0x3a
 6315 01dc 0B       		.uleb128 0xb
 6316 01dd 3B       		.uleb128 0x3b
 6317 01de 05       		.uleb128 0x5
 6318 01df 01       		.uleb128 0x1
 6319 01e0 13       		.uleb128 0x13
 6320 01e1 00       		.byte	0
 6321 01e2 00       		.byte	0
 6322 01e3 28       		.uleb128 0x28
 6323 01e4 15       		.uleb128 0x15
 6324 01e5 01       		.byte	0x1
 6325 01e6 01       		.uleb128 0x1
 6326 01e7 13       		.uleb128 0x13
 6327 01e8 00       		.byte	0
 6328 01e9 00       		.byte	0
 6329 01ea 29       		.uleb128 0x29
 6330 01eb 34       		.uleb128 0x34
 6331 01ec 00       		.byte	0
 6332 01ed 03       		.uleb128 0x3
 6333 01ee 0E       		.uleb128 0xe
 6334 01ef 3A       		.uleb128 0x3a
 6335 01f0 0B       		.uleb128 0xb
 6336 01f1 3B       		.uleb128 0x3b
 6337 01f2 05       		.uleb128 0x5
 6338 01f3 49       		.uleb128 0x49
 6339 01f4 13       		.uleb128 0x13
 6340 01f5 3F       		.uleb128 0x3f
 6341 01f6 19       		.uleb128 0x19
 6342 01f7 3C       		.uleb128 0x3c
 6343 01f8 19       		.uleb128 0x19
 6344 01f9 00       		.byte	0
 6345 01fa 00       		.byte	0
 6346 01fb 2A       		.uleb128 0x2a
 6347 01fc 26       		.uleb128 0x26
 6348 01fd 00       		.byte	0
 6349 01fe 00       		.byte	0
 6350 01ff 00       		.byte	0
 6351 0200 2B       		.uleb128 0x2b
 6352 0201 34       		.uleb128 0x34
 6353 0202 00       		.byte	0
 6354 0203 03       		.uleb128 0x3
 6355 0204 0E       		.uleb128 0xe
 6356 0205 3A       		.uleb128 0x3a
 6357 0206 0B       		.uleb128 0xb
 6358 0207 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc5e0BXI.s 			page 154


 6359 0208 0B       		.uleb128 0xb
 6360 0209 49       		.uleb128 0x49
 6361 020a 13       		.uleb128 0x13
 6362 020b 3F       		.uleb128 0x3f
 6363 020c 19       		.uleb128 0x19
 6364 020d 3C       		.uleb128 0x3c
 6365 020e 19       		.uleb128 0x19
 6366 020f 00       		.byte	0
 6367 0210 00       		.byte	0
 6368 0211 2C       		.uleb128 0x2c
 6369 0212 2E       		.uleb128 0x2e
 6370 0213 01       		.byte	0x1
 6371 0214 3F       		.uleb128 0x3f
 6372 0215 19       		.uleb128 0x19
 6373 0216 03       		.uleb128 0x3
 6374 0217 0E       		.uleb128 0xe
 6375 0218 3A       		.uleb128 0x3a
 6376 0219 0B       		.uleb128 0xb
 6377 021a 3B       		.uleb128 0x3b
 6378 021b 0B       		.uleb128 0xb
 6379 021c 49       		.uleb128 0x49
 6380 021d 13       		.uleb128 0x13
 6381 021e 3C       		.uleb128 0x3c
 6382 021f 19       		.uleb128 0x19
 6383 0220 01       		.uleb128 0x1
 6384 0221 13       		.uleb128 0x13
 6385 0222 00       		.byte	0
 6386 0223 00       		.byte	0
 6387 0224 2D       		.uleb128 0x2d
 6388 0225 2E       		.uleb128 0x2e
 6389 0226 01       		.byte	0x1
 6390 0227 3F       		.uleb128 0x3f
 6391 0228 19       		.uleb128 0x19
 6392 0229 03       		.uleb128 0x3
 6393 022a 08       		.uleb128 0x8
 6394 022b 3A       		.uleb128 0x3a
 6395 022c 0B       		.uleb128 0xb
 6396 022d 3B       		.uleb128 0x3b
 6397 022e 0B       		.uleb128 0xb
 6398 022f 49       		.uleb128 0x49
 6399 0230 13       		.uleb128 0x13
 6400 0231 3C       		.uleb128 0x3c
 6401 0232 19       		.uleb128 0x19
 6402 0233 01       		.uleb128 0x1
 6403 0234 13       		.uleb128 0x13
 6404 0235 00       		.byte	0
 6405 0236 00       		.byte	0
 6406 0237 2E       		.uleb128 0x2e
 6407 0238 2E       		.uleb128 0x2e
 6408 0239 01       		.byte	0x1
 6409 023a 3F       		.uleb128 0x3f
 6410 023b 19       		.uleb128 0x19
 6411 023c 03       		.uleb128 0x3
 6412 023d 0E       		.uleb128 0xe
 6413 023e 3A       		.uleb128 0x3a
 6414 023f 0B       		.uleb128 0xb
 6415 0240 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc5e0BXI.s 			page 155


 6416 0241 0B       		.uleb128 0xb
 6417 0242 3C       		.uleb128 0x3c
 6418 0243 19       		.uleb128 0x19
 6419 0244 01       		.uleb128 0x1
 6420 0245 13       		.uleb128 0x13
 6421 0246 00       		.byte	0
 6422 0247 00       		.byte	0
 6423 0248 2F       		.uleb128 0x2f
 6424 0249 2E       		.uleb128 0x2e
 6425 024a 00       		.byte	0
 6426 024b 3F       		.uleb128 0x3f
 6427 024c 19       		.uleb128 0x19
 6428 024d 03       		.uleb128 0x3
 6429 024e 0E       		.uleb128 0xe
 6430 024f 3A       		.uleb128 0x3a
 6431 0250 0B       		.uleb128 0xb
 6432 0251 3B       		.uleb128 0x3b
 6433 0252 0B       		.uleb128 0xb
 6434 0253 49       		.uleb128 0x49
 6435 0254 13       		.uleb128 0x13
 6436 0255 3C       		.uleb128 0x3c
 6437 0256 19       		.uleb128 0x19
 6438 0257 00       		.byte	0
 6439 0258 00       		.byte	0
 6440 0259 30       		.uleb128 0x30
 6441 025a 2E       		.uleb128 0x2e
 6442 025b 01       		.byte	0x1
 6443 025c 3F       		.uleb128 0x3f
 6444 025d 19       		.uleb128 0x19
 6445 025e 03       		.uleb128 0x3
 6446 025f 0E       		.uleb128 0xe
 6447 0260 3A       		.uleb128 0x3a
 6448 0261 0B       		.uleb128 0xb
 6449 0262 3B       		.uleb128 0x3b
 6450 0263 05       		.uleb128 0x5
 6451 0264 49       		.uleb128 0x49
 6452 0265 13       		.uleb128 0x13
 6453 0266 3C       		.uleb128 0x3c
 6454 0267 19       		.uleb128 0x19
 6455 0268 01       		.uleb128 0x1
 6456 0269 13       		.uleb128 0x13
 6457 026a 00       		.byte	0
 6458 026b 00       		.byte	0
 6459 026c 31       		.uleb128 0x31
 6460 026d 04       		.uleb128 0x4
 6461 026e 01       		.byte	0x1
 6462 026f 03       		.uleb128 0x3
 6463 0270 0E       		.uleb128 0xe
 6464 0271 0B       		.uleb128 0xb
 6465 0272 0B       		.uleb128 0xb
 6466 0273 49       		.uleb128 0x49
 6467 0274 13       		.uleb128 0x13
 6468 0275 3A       		.uleb128 0x3a
 6469 0276 0B       		.uleb128 0xb
 6470 0277 3B       		.uleb128 0x3b
 6471 0278 0B       		.uleb128 0xb
 6472 0279 01       		.uleb128 0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 156


 6473 027a 13       		.uleb128 0x13
 6474 027b 00       		.byte	0
 6475 027c 00       		.byte	0
 6476 027d 32       		.uleb128 0x32
 6477 027e 28       		.uleb128 0x28
 6478 027f 00       		.byte	0
 6479 0280 03       		.uleb128 0x3
 6480 0281 0E       		.uleb128 0xe
 6481 0282 1C       		.uleb128 0x1c
 6482 0283 0D       		.uleb128 0xd
 6483 0284 00       		.byte	0
 6484 0285 00       		.byte	0
 6485 0286 33       		.uleb128 0x33
 6486 0287 28       		.uleb128 0x28
 6487 0288 00       		.byte	0
 6488 0289 03       		.uleb128 0x3
 6489 028a 0E       		.uleb128 0xe
 6490 028b 1C       		.uleb128 0x1c
 6491 028c 0B       		.uleb128 0xb
 6492 028d 00       		.byte	0
 6493 028e 00       		.byte	0
 6494 028f 34       		.uleb128 0x34
 6495 0290 13       		.uleb128 0x13
 6496 0291 01       		.byte	0x1
 6497 0292 0B       		.uleb128 0xb
 6498 0293 05       		.uleb128 0x5
 6499 0294 3A       		.uleb128 0x3a
 6500 0295 0B       		.uleb128 0xb
 6501 0296 3B       		.uleb128 0x3b
 6502 0297 05       		.uleb128 0x5
 6503 0298 6E       		.uleb128 0x6e
 6504 0299 0E       		.uleb128 0xe
 6505 029a 01       		.uleb128 0x1
 6506 029b 13       		.uleb128 0x13
 6507 029c 00       		.byte	0
 6508 029d 00       		.byte	0
 6509 029e 35       		.uleb128 0x35
 6510 029f 0D       		.uleb128 0xd
 6511 02a0 00       		.byte	0
 6512 02a1 03       		.uleb128 0x3
 6513 02a2 08       		.uleb128 0x8
 6514 02a3 3A       		.uleb128 0x3a
 6515 02a4 0B       		.uleb128 0xb
 6516 02a5 3B       		.uleb128 0x3b
 6517 02a6 05       		.uleb128 0x5
 6518 02a7 49       		.uleb128 0x49
 6519 02a8 13       		.uleb128 0x13
 6520 02a9 38       		.uleb128 0x38
 6521 02aa 05       		.uleb128 0x5
 6522 02ab 00       		.byte	0
 6523 02ac 00       		.byte	0
 6524 02ad 36       		.uleb128 0x36
 6525 02ae 21       		.uleb128 0x21
 6526 02af 00       		.byte	0
 6527 02b0 49       		.uleb128 0x49
 6528 02b1 13       		.uleb128 0x13
 6529 02b2 2F       		.uleb128 0x2f
ARM GAS  /tmp/cc5e0BXI.s 			page 157


 6530 02b3 05       		.uleb128 0x5
 6531 02b4 00       		.byte	0
 6532 02b5 00       		.byte	0
 6533 02b6 37       		.uleb128 0x37
 6534 02b7 0D       		.uleb128 0xd
 6535 02b8 00       		.byte	0
 6536 02b9 03       		.uleb128 0x3
 6537 02ba 08       		.uleb128 0x8
 6538 02bb 3A       		.uleb128 0x3a
 6539 02bc 0B       		.uleb128 0xb
 6540 02bd 3B       		.uleb128 0x3b
 6541 02be 05       		.uleb128 0x5
 6542 02bf 49       		.uleb128 0x49
 6543 02c0 13       		.uleb128 0x13
 6544 02c1 38       		.uleb128 0x38
 6545 02c2 0B       		.uleb128 0xb
 6546 02c3 00       		.byte	0
 6547 02c4 00       		.byte	0
 6548 02c5 38       		.uleb128 0x38
 6549 02c6 34       		.uleb128 0x34
 6550 02c7 00       		.byte	0
 6551 02c8 03       		.uleb128 0x3
 6552 02c9 0E       		.uleb128 0xe
 6553 02ca 3A       		.uleb128 0x3a
 6554 02cb 0B       		.uleb128 0xb
 6555 02cc 3B       		.uleb128 0x3b
 6556 02cd 0B       		.uleb128 0xb
 6557 02ce 49       		.uleb128 0x49
 6558 02cf 13       		.uleb128 0x13
 6559 02d0 02       		.uleb128 0x2
 6560 02d1 18       		.uleb128 0x18
 6561 02d2 00       		.byte	0
 6562 02d3 00       		.byte	0
 6563 02d4 39       		.uleb128 0x39
 6564 02d5 02       		.uleb128 0x2
 6565 02d6 01       		.byte	0x1
 6566 02d7 03       		.uleb128 0x3
 6567 02d8 0E       		.uleb128 0xe
 6568 02d9 3C       		.uleb128 0x3c
 6569 02da 19       		.uleb128 0x19
 6570 02db 01       		.uleb128 0x1
 6571 02dc 13       		.uleb128 0x13
 6572 02dd 00       		.byte	0
 6573 02de 00       		.byte	0
 6574 02df 3A       		.uleb128 0x3a
 6575 02e0 2E       		.uleb128 0x2e
 6576 02e1 01       		.byte	0x1
 6577 02e2 3F       		.uleb128 0x3f
 6578 02e3 19       		.uleb128 0x19
 6579 02e4 03       		.uleb128 0x3
 6580 02e5 0E       		.uleb128 0xe
 6581 02e6 6E       		.uleb128 0x6e
 6582 02e7 0E       		.uleb128 0xe
 6583 02e8 49       		.uleb128 0x49
 6584 02e9 13       		.uleb128 0x13
 6585 02ea 4C       		.uleb128 0x4c
 6586 02eb 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 158


 6587 02ec 1D       		.uleb128 0x1d
 6588 02ed 13       		.uleb128 0x13
 6589 02ee 34       		.uleb128 0x34
 6590 02ef 19       		.uleb128 0x19
 6591 02f0 32       		.uleb128 0x32
 6592 02f1 0B       		.uleb128 0xb
 6593 02f2 3C       		.uleb128 0x3c
 6594 02f3 19       		.uleb128 0x19
 6595 02f4 64       		.uleb128 0x64
 6596 02f5 13       		.uleb128 0x13
 6597 02f6 01       		.uleb128 0x1
 6598 02f7 13       		.uleb128 0x13
 6599 02f8 00       		.byte	0
 6600 02f9 00       		.byte	0
 6601 02fa 3B       		.uleb128 0x3b
 6602 02fb 05       		.uleb128 0x5
 6603 02fc 00       		.byte	0
 6604 02fd 49       		.uleb128 0x49
 6605 02fe 13       		.uleb128 0x13
 6606 02ff 34       		.uleb128 0x34
 6607 0300 19       		.uleb128 0x19
 6608 0301 00       		.byte	0
 6609 0302 00       		.byte	0
 6610 0303 3C       		.uleb128 0x3c
 6611 0304 2E       		.uleb128 0x2e
 6612 0305 01       		.byte	0x1
 6613 0306 3F       		.uleb128 0x3f
 6614 0307 19       		.uleb128 0x19
 6615 0308 03       		.uleb128 0x3
 6616 0309 0E       		.uleb128 0xe
 6617 030a 6E       		.uleb128 0x6e
 6618 030b 0E       		.uleb128 0xe
 6619 030c 49       		.uleb128 0x49
 6620 030d 13       		.uleb128 0x13
 6621 030e 34       		.uleb128 0x34
 6622 030f 19       		.uleb128 0x19
 6623 0310 32       		.uleb128 0x32
 6624 0311 0B       		.uleb128 0xb
 6625 0312 3C       		.uleb128 0x3c
 6626 0313 19       		.uleb128 0x19
 6627 0314 64       		.uleb128 0x64
 6628 0315 13       		.uleb128 0x13
 6629 0316 00       		.byte	0
 6630 0317 00       		.byte	0
 6631 0318 3D       		.uleb128 0x3d
 6632 0319 2E       		.uleb128 0x2e
 6633 031a 01       		.byte	0x1
 6634 031b 3F       		.uleb128 0x3f
 6635 031c 19       		.uleb128 0x19
 6636 031d 03       		.uleb128 0x3
 6637 031e 0E       		.uleb128 0xe
 6638 031f 3A       		.uleb128 0x3a
 6639 0320 0B       		.uleb128 0xb
 6640 0321 3B       		.uleb128 0x3b
 6641 0322 0B       		.uleb128 0xb
 6642 0323 6E       		.uleb128 0x6e
 6643 0324 0E       		.uleb128 0xe
ARM GAS  /tmp/cc5e0BXI.s 			page 159


 6644 0325 49       		.uleb128 0x49
 6645 0326 13       		.uleb128 0x13
 6646 0327 32       		.uleb128 0x32
 6647 0328 0B       		.uleb128 0xb
 6648 0329 3C       		.uleb128 0x3c
 6649 032a 19       		.uleb128 0x19
 6650 032b 64       		.uleb128 0x64
 6651 032c 13       		.uleb128 0x13
 6652 032d 01       		.uleb128 0x1
 6653 032e 13       		.uleb128 0x13
 6654 032f 00       		.byte	0
 6655 0330 00       		.byte	0
 6656 0331 3E       		.uleb128 0x3e
 6657 0332 2E       		.uleb128 0x2e
 6658 0333 01       		.byte	0x1
 6659 0334 3F       		.uleb128 0x3f
 6660 0335 19       		.uleb128 0x19
 6661 0336 03       		.uleb128 0x3
 6662 0337 0E       		.uleb128 0xe
 6663 0338 3A       		.uleb128 0x3a
 6664 0339 0B       		.uleb128 0xb
 6665 033a 3B       		.uleb128 0x3b
 6666 033b 0B       		.uleb128 0xb
 6667 033c 6E       		.uleb128 0x6e
 6668 033d 0E       		.uleb128 0xe
 6669 033e 49       		.uleb128 0x49
 6670 033f 13       		.uleb128 0x13
 6671 0340 4C       		.uleb128 0x4c
 6672 0341 0B       		.uleb128 0xb
 6673 0342 1D       		.uleb128 0x1d
 6674 0343 13       		.uleb128 0x13
 6675 0344 32       		.uleb128 0x32
 6676 0345 0B       		.uleb128 0xb
 6677 0346 3C       		.uleb128 0x3c
 6678 0347 19       		.uleb128 0x19
 6679 0348 64       		.uleb128 0x64
 6680 0349 13       		.uleb128 0x13
 6681 034a 01       		.uleb128 0x1
 6682 034b 13       		.uleb128 0x13
 6683 034c 00       		.byte	0
 6684 034d 00       		.byte	0
 6685 034e 3F       		.uleb128 0x3f
 6686 034f 2E       		.uleb128 0x2e
 6687 0350 01       		.byte	0x1
 6688 0351 3F       		.uleb128 0x3f
 6689 0352 19       		.uleb128 0x19
 6690 0353 03       		.uleb128 0x3
 6691 0354 0E       		.uleb128 0xe
 6692 0355 3A       		.uleb128 0x3a
 6693 0356 0B       		.uleb128 0xb
 6694 0357 3B       		.uleb128 0x3b
 6695 0358 0B       		.uleb128 0xb
 6696 0359 6E       		.uleb128 0x6e
 6697 035a 0E       		.uleb128 0xe
 6698 035b 49       		.uleb128 0x49
 6699 035c 13       		.uleb128 0x13
 6700 035d 32       		.uleb128 0x32
ARM GAS  /tmp/cc5e0BXI.s 			page 160


 6701 035e 0B       		.uleb128 0xb
 6702 035f 3C       		.uleb128 0x3c
 6703 0360 19       		.uleb128 0x19
 6704 0361 64       		.uleb128 0x64
 6705 0362 13       		.uleb128 0x13
 6706 0363 00       		.byte	0
 6707 0364 00       		.byte	0
 6708 0365 40       		.uleb128 0x40
 6709 0366 34       		.uleb128 0x34
 6710 0367 00       		.byte	0
 6711 0368 03       		.uleb128 0x3
 6712 0369 0E       		.uleb128 0xe
 6713 036a 3A       		.uleb128 0x3a
 6714 036b 0B       		.uleb128 0xb
 6715 036c 3B       		.uleb128 0x3b
 6716 036d 0B       		.uleb128 0xb
 6717 036e 49       		.uleb128 0x49
 6718 036f 13       		.uleb128 0x13
 6719 0370 1C       		.uleb128 0x1c
 6720 0371 05       		.uleb128 0x5
 6721 0372 00       		.byte	0
 6722 0373 00       		.byte	0
 6723 0374 41       		.uleb128 0x41
 6724 0375 02       		.uleb128 0x2
 6725 0376 01       		.byte	0x1
 6726 0377 03       		.uleb128 0x3
 6727 0378 0E       		.uleb128 0xe
 6728 0379 0B       		.uleb128 0xb
 6729 037a 05       		.uleb128 0x5
 6730 037b 3A       		.uleb128 0x3a
 6731 037c 0B       		.uleb128 0xb
 6732 037d 3B       		.uleb128 0x3b
 6733 037e 0B       		.uleb128 0xb
 6734 037f 01       		.uleb128 0x1
 6735 0380 13       		.uleb128 0x13
 6736 0381 00       		.byte	0
 6737 0382 00       		.byte	0
 6738 0383 42       		.uleb128 0x42
 6739 0384 0D       		.uleb128 0xd
 6740 0385 00       		.byte	0
 6741 0386 03       		.uleb128 0x3
 6742 0387 0E       		.uleb128 0xe
 6743 0388 3A       		.uleb128 0x3a
 6744 0389 0B       		.uleb128 0xb
 6745 038a 3B       		.uleb128 0x3b
 6746 038b 0B       		.uleb128 0xb
 6747 038c 49       		.uleb128 0x49
 6748 038d 13       		.uleb128 0x13
 6749 038e 38       		.uleb128 0x38
 6750 038f 0B       		.uleb128 0xb
 6751 0390 32       		.uleb128 0x32
 6752 0391 0B       		.uleb128 0xb
 6753 0392 00       		.byte	0
 6754 0393 00       		.byte	0
 6755 0394 43       		.uleb128 0x43
 6756 0395 0D       		.uleb128 0xd
 6757 0396 00       		.byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 161


 6758 0397 03       		.uleb128 0x3
 6759 0398 0E       		.uleb128 0xe
 6760 0399 3A       		.uleb128 0x3a
 6761 039a 0B       		.uleb128 0xb
 6762 039b 3B       		.uleb128 0x3b
 6763 039c 0B       		.uleb128 0xb
 6764 039d 49       		.uleb128 0x49
 6765 039e 13       		.uleb128 0x13
 6766 039f 38       		.uleb128 0x38
 6767 03a0 05       		.uleb128 0x5
 6768 03a1 32       		.uleb128 0x32
 6769 03a2 0B       		.uleb128 0xb
 6770 03a3 00       		.byte	0
 6771 03a4 00       		.byte	0
 6772 03a5 44       		.uleb128 0x44
 6773 03a6 2E       		.uleb128 0x2e
 6774 03a7 01       		.byte	0x1
 6775 03a8 3F       		.uleb128 0x3f
 6776 03a9 19       		.uleb128 0x19
 6777 03aa 03       		.uleb128 0x3
 6778 03ab 0E       		.uleb128 0xe
 6779 03ac 3A       		.uleb128 0x3a
 6780 03ad 0B       		.uleb128 0xb
 6781 03ae 3B       		.uleb128 0x3b
 6782 03af 0B       		.uleb128 0xb
 6783 03b0 6E       		.uleb128 0x6e
 6784 03b1 0E       		.uleb128 0xe
 6785 03b2 32       		.uleb128 0x32
 6786 03b3 0B       		.uleb128 0xb
 6787 03b4 3C       		.uleb128 0x3c
 6788 03b5 19       		.uleb128 0x19
 6789 03b6 64       		.uleb128 0x64
 6790 03b7 13       		.uleb128 0x13
 6791 03b8 01       		.uleb128 0x1
 6792 03b9 13       		.uleb128 0x13
 6793 03ba 00       		.byte	0
 6794 03bb 00       		.byte	0
 6795 03bc 45       		.uleb128 0x45
 6796 03bd 02       		.uleb128 0x2
 6797 03be 01       		.byte	0x1
 6798 03bf 03       		.uleb128 0x3
 6799 03c0 0E       		.uleb128 0xe
 6800 03c1 0B       		.uleb128 0xb
 6801 03c2 0B       		.uleb128 0xb
 6802 03c3 3A       		.uleb128 0x3a
 6803 03c4 0B       		.uleb128 0xb
 6804 03c5 3B       		.uleb128 0x3b
 6805 03c6 0B       		.uleb128 0xb
 6806 03c7 1D       		.uleb128 0x1d
 6807 03c8 13       		.uleb128 0x13
 6808 03c9 01       		.uleb128 0x1
 6809 03ca 13       		.uleb128 0x13
 6810 03cb 00       		.byte	0
 6811 03cc 00       		.byte	0
 6812 03cd 46       		.uleb128 0x46
 6813 03ce 04       		.uleb128 0x4
 6814 03cf 01       		.byte	0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 162


 6815 03d0 03       		.uleb128 0x3
 6816 03d1 0E       		.uleb128 0xe
 6817 03d2 0B       		.uleb128 0xb
 6818 03d3 0B       		.uleb128 0xb
 6819 03d4 49       		.uleb128 0x49
 6820 03d5 13       		.uleb128 0x13
 6821 03d6 3A       		.uleb128 0x3a
 6822 03d7 0B       		.uleb128 0xb
 6823 03d8 3B       		.uleb128 0x3b
 6824 03d9 0B       		.uleb128 0xb
 6825 03da 32       		.uleb128 0x32
 6826 03db 0B       		.uleb128 0xb
 6827 03dc 01       		.uleb128 0x1
 6828 03dd 13       		.uleb128 0x13
 6829 03de 00       		.byte	0
 6830 03df 00       		.byte	0
 6831 03e0 47       		.uleb128 0x47
 6832 03e1 28       		.uleb128 0x28
 6833 03e2 00       		.byte	0
 6834 03e3 03       		.uleb128 0x3
 6835 03e4 0E       		.uleb128 0xe
 6836 03e5 1C       		.uleb128 0x1c
 6837 03e6 05       		.uleb128 0x5
 6838 03e7 00       		.byte	0
 6839 03e8 00       		.byte	0
 6840 03e9 48       		.uleb128 0x48
 6841 03ea 1C       		.uleb128 0x1c
 6842 03eb 00       		.byte	0
 6843 03ec 49       		.uleb128 0x49
 6844 03ed 13       		.uleb128 0x13
 6845 03ee 38       		.uleb128 0x38
 6846 03ef 0B       		.uleb128 0xb
 6847 03f0 32       		.uleb128 0x32
 6848 03f1 0B       		.uleb128 0xb
 6849 03f2 00       		.byte	0
 6850 03f3 00       		.byte	0
 6851 03f4 49       		.uleb128 0x49
 6852 03f5 2E       		.uleb128 0x2e
 6853 03f6 01       		.byte	0x1
 6854 03f7 3F       		.uleb128 0x3f
 6855 03f8 19       		.uleb128 0x19
 6856 03f9 03       		.uleb128 0x3
 6857 03fa 0E       		.uleb128 0xe
 6858 03fb 6E       		.uleb128 0x6e
 6859 03fc 0E       		.uleb128 0xe
 6860 03fd 49       		.uleb128 0x49
 6861 03fe 13       		.uleb128 0x13
 6862 03ff 34       		.uleb128 0x34
 6863 0400 19       		.uleb128 0x19
 6864 0401 32       		.uleb128 0x32
 6865 0402 0B       		.uleb128 0xb
 6866 0403 3C       		.uleb128 0x3c
 6867 0404 19       		.uleb128 0x19
 6868 0405 64       		.uleb128 0x64
 6869 0406 13       		.uleb128 0x13
 6870 0407 01       		.uleb128 0x1
 6871 0408 13       		.uleb128 0x13
ARM GAS  /tmp/cc5e0BXI.s 			page 163


 6872 0409 00       		.byte	0
 6873 040a 00       		.byte	0
 6874 040b 4A       		.uleb128 0x4a
 6875 040c 2E       		.uleb128 0x2e
 6876 040d 01       		.byte	0x1
 6877 040e 3F       		.uleb128 0x3f
 6878 040f 19       		.uleb128 0x19
 6879 0410 03       		.uleb128 0x3
 6880 0411 0E       		.uleb128 0xe
 6881 0412 3A       		.uleb128 0x3a
 6882 0413 0B       		.uleb128 0xb
 6883 0414 3B       		.uleb128 0x3b
 6884 0415 0B       		.uleb128 0xb
 6885 0416 6E       		.uleb128 0x6e
 6886 0417 0E       		.uleb128 0xe
 6887 0418 4C       		.uleb128 0x4c
 6888 0419 0B       		.uleb128 0xb
 6889 041a 4D       		.uleb128 0x4d
 6890 041b 18       		.uleb128 0x18
 6891 041c 1D       		.uleb128 0x1d
 6892 041d 13       		.uleb128 0x13
 6893 041e 32       		.uleb128 0x32
 6894 041f 0B       		.uleb128 0xb
 6895 0420 3C       		.uleb128 0x3c
 6896 0421 19       		.uleb128 0x19
 6897 0422 64       		.uleb128 0x64
 6898 0423 13       		.uleb128 0x13
 6899 0424 01       		.uleb128 0x1
 6900 0425 13       		.uleb128 0x13
 6901 0426 00       		.byte	0
 6902 0427 00       		.byte	0
 6903 0428 4B       		.uleb128 0x4b
 6904 0429 2E       		.uleb128 0x2e
 6905 042a 01       		.byte	0x1
 6906 042b 3F       		.uleb128 0x3f
 6907 042c 19       		.uleb128 0x19
 6908 042d 03       		.uleb128 0x3
 6909 042e 08       		.uleb128 0x8
 6910 042f 3A       		.uleb128 0x3a
 6911 0430 0B       		.uleb128 0xb
 6912 0431 3B       		.uleb128 0x3b
 6913 0432 0B       		.uleb128 0xb
 6914 0433 6E       		.uleb128 0x6e
 6915 0434 0E       		.uleb128 0xe
 6916 0435 4C       		.uleb128 0x4c
 6917 0436 0B       		.uleb128 0xb
 6918 0437 4D       		.uleb128 0x4d
 6919 0438 18       		.uleb128 0x18
 6920 0439 1D       		.uleb128 0x1d
 6921 043a 13       		.uleb128 0x13
 6922 043b 32       		.uleb128 0x32
 6923 043c 0B       		.uleb128 0xb
 6924 043d 3C       		.uleb128 0x3c
 6925 043e 19       		.uleb128 0x19
 6926 043f 64       		.uleb128 0x64
 6927 0440 13       		.uleb128 0x13
 6928 0441 01       		.uleb128 0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 164


 6929 0442 13       		.uleb128 0x13
 6930 0443 00       		.byte	0
 6931 0444 00       		.byte	0
 6932 0445 4C       		.uleb128 0x4c
 6933 0446 2E       		.uleb128 0x2e
 6934 0447 01       		.byte	0x1
 6935 0448 3F       		.uleb128 0x3f
 6936 0449 19       		.uleb128 0x19
 6937 044a 03       		.uleb128 0x3
 6938 044b 0E       		.uleb128 0xe
 6939 044c 3A       		.uleb128 0x3a
 6940 044d 0B       		.uleb128 0xb
 6941 044e 3B       		.uleb128 0x3b
 6942 044f 0B       		.uleb128 0xb
 6943 0450 6E       		.uleb128 0x6e
 6944 0451 0E       		.uleb128 0xe
 6945 0452 49       		.uleb128 0x49
 6946 0453 13       		.uleb128 0x13
 6947 0454 4C       		.uleb128 0x4c
 6948 0455 0B       		.uleb128 0xb
 6949 0456 4D       		.uleb128 0x4d
 6950 0457 18       		.uleb128 0x18
 6951 0458 1D       		.uleb128 0x1d
 6952 0459 13       		.uleb128 0x13
 6953 045a 32       		.uleb128 0x32
 6954 045b 0B       		.uleb128 0xb
 6955 045c 3C       		.uleb128 0x3c
 6956 045d 19       		.uleb128 0x19
 6957 045e 64       		.uleb128 0x64
 6958 045f 13       		.uleb128 0x13
 6959 0460 01       		.uleb128 0x1
 6960 0461 13       		.uleb128 0x13
 6961 0462 00       		.byte	0
 6962 0463 00       		.byte	0
 6963 0464 4D       		.uleb128 0x4d
 6964 0465 2E       		.uleb128 0x2e
 6965 0466 01       		.byte	0x1
 6966 0467 3F       		.uleb128 0x3f
 6967 0468 19       		.uleb128 0x19
 6968 0469 03       		.uleb128 0x3
 6969 046a 0E       		.uleb128 0xe
 6970 046b 6E       		.uleb128 0x6e
 6971 046c 0E       		.uleb128 0xe
 6972 046d 49       		.uleb128 0x49
 6973 046e 13       		.uleb128 0x13
 6974 046f 4C       		.uleb128 0x4c
 6975 0470 0B       		.uleb128 0xb
 6976 0471 1D       		.uleb128 0x1d
 6977 0472 13       		.uleb128 0x13
 6978 0473 34       		.uleb128 0x34
 6979 0474 19       		.uleb128 0x19
 6980 0475 32       		.uleb128 0x32
 6981 0476 0B       		.uleb128 0xb
 6982 0477 3C       		.uleb128 0x3c
 6983 0478 19       		.uleb128 0x19
 6984 0479 64       		.uleb128 0x64
 6985 047a 13       		.uleb128 0x13
ARM GAS  /tmp/cc5e0BXI.s 			page 165


 6986 047b 00       		.byte	0
 6987 047c 00       		.byte	0
 6988 047d 4E       		.uleb128 0x4e
 6989 047e 42       		.uleb128 0x42
 6990 047f 00       		.byte	0
 6991 0480 0B       		.uleb128 0xb
 6992 0481 0B       		.uleb128 0xb
 6993 0482 49       		.uleb128 0x49
 6994 0483 13       		.uleb128 0x13
 6995 0484 00       		.byte	0
 6996 0485 00       		.byte	0
 6997 0486 4F       		.uleb128 0x4f
 6998 0487 10       		.uleb128 0x10
 6999 0488 00       		.byte	0
 7000 0489 0B       		.uleb128 0xb
 7001 048a 0B       		.uleb128 0xb
 7002 048b 49       		.uleb128 0x49
 7003 048c 13       		.uleb128 0x13
 7004 048d 00       		.byte	0
 7005 048e 00       		.byte	0
 7006 048f 50       		.uleb128 0x50
 7007 0490 2E       		.uleb128 0x2e
 7008 0491 01       		.byte	0x1
 7009 0492 47       		.uleb128 0x47
 7010 0493 13       		.uleb128 0x13
 7011 0494 3A       		.uleb128 0x3a
 7012 0495 0B       		.uleb128 0xb
 7013 0496 3B       		.uleb128 0x3b
 7014 0497 0B       		.uleb128 0xb
 7015 0498 20       		.uleb128 0x20
 7016 0499 0B       		.uleb128 0xb
 7017 049a 64       		.uleb128 0x64
 7018 049b 13       		.uleb128 0x13
 7019 049c 01       		.uleb128 0x1
 7020 049d 13       		.uleb128 0x13
 7021 049e 00       		.byte	0
 7022 049f 00       		.byte	0
 7023 04a0 51       		.uleb128 0x51
 7024 04a1 05       		.uleb128 0x5
 7025 04a2 00       		.byte	0
 7026 04a3 03       		.uleb128 0x3
 7027 04a4 0E       		.uleb128 0xe
 7028 04a5 49       		.uleb128 0x49
 7029 04a6 13       		.uleb128 0x13
 7030 04a7 34       		.uleb128 0x34
 7031 04a8 19       		.uleb128 0x19
 7032 04a9 00       		.byte	0
 7033 04aa 00       		.byte	0
 7034 04ab 52       		.uleb128 0x52
 7035 04ac 2E       		.uleb128 0x2e
 7036 04ad 01       		.byte	0x1
 7037 04ae 31       		.uleb128 0x31
 7038 04af 13       		.uleb128 0x13
 7039 04b0 6E       		.uleb128 0x6e
 7040 04b1 0E       		.uleb128 0xe
 7041 04b2 64       		.uleb128 0x64
 7042 04b3 13       		.uleb128 0x13
ARM GAS  /tmp/cc5e0BXI.s 			page 166


 7043 04b4 11       		.uleb128 0x11
 7044 04b5 01       		.uleb128 0x1
 7045 04b6 12       		.uleb128 0x12
 7046 04b7 06       		.uleb128 0x6
 7047 04b8 40       		.uleb128 0x40
 7048 04b9 18       		.uleb128 0x18
 7049 04ba 64       		.uleb128 0x64
 7050 04bb 13       		.uleb128 0x13
 7051 04bc 9742     		.uleb128 0x2117
 7052 04be 19       		.uleb128 0x19
 7053 04bf 01       		.uleb128 0x1
 7054 04c0 13       		.uleb128 0x13
 7055 04c1 00       		.byte	0
 7056 04c2 00       		.byte	0
 7057 04c3 53       		.uleb128 0x53
 7058 04c4 05       		.uleb128 0x5
 7059 04c5 00       		.byte	0
 7060 04c6 31       		.uleb128 0x31
 7061 04c7 13       		.uleb128 0x13
 7062 04c8 02       		.uleb128 0x2
 7063 04c9 17       		.uleb128 0x17
 7064 04ca 00       		.byte	0
 7065 04cb 00       		.byte	0
 7066 04cc 54       		.uleb128 0x54
 7067 04cd 898201   		.uleb128 0x4109
 7068 04d0 01       		.byte	0x1
 7069 04d1 11       		.uleb128 0x11
 7070 04d2 01       		.uleb128 0x1
 7071 04d3 31       		.uleb128 0x31
 7072 04d4 13       		.uleb128 0x13
 7073 04d5 00       		.byte	0
 7074 04d6 00       		.byte	0
 7075 04d7 55       		.uleb128 0x55
 7076 04d8 8A8201   		.uleb128 0x410a
 7077 04db 00       		.byte	0
 7078 04dc 02       		.uleb128 0x2
 7079 04dd 18       		.uleb128 0x18
 7080 04de 9142     		.uleb128 0x2111
 7081 04e0 18       		.uleb128 0x18
 7082 04e1 00       		.byte	0
 7083 04e2 00       		.byte	0
 7084 04e3 56       		.uleb128 0x56
 7085 04e4 05       		.uleb128 0x5
 7086 04e5 00       		.byte	0
 7087 04e6 31       		.uleb128 0x31
 7088 04e7 13       		.uleb128 0x13
 7089 04e8 02       		.uleb128 0x2
 7090 04e9 18       		.uleb128 0x18
 7091 04ea 00       		.byte	0
 7092 04eb 00       		.byte	0
 7093 04ec 57       		.uleb128 0x57
 7094 04ed 2E       		.uleb128 0x2e
 7095 04ee 01       		.byte	0x1
 7096 04ef 47       		.uleb128 0x47
 7097 04f0 13       		.uleb128 0x13
 7098 04f1 64       		.uleb128 0x64
 7099 04f2 13       		.uleb128 0x13
ARM GAS  /tmp/cc5e0BXI.s 			page 167


 7100 04f3 11       		.uleb128 0x11
 7101 04f4 01       		.uleb128 0x1
 7102 04f5 12       		.uleb128 0x12
 7103 04f6 06       		.uleb128 0x6
 7104 04f7 40       		.uleb128 0x40
 7105 04f8 18       		.uleb128 0x18
 7106 04f9 64       		.uleb128 0x64
 7107 04fa 13       		.uleb128 0x13
 7108 04fb 9742     		.uleb128 0x2117
 7109 04fd 19       		.uleb128 0x19
 7110 04fe 01       		.uleb128 0x1
 7111 04ff 13       		.uleb128 0x13
 7112 0500 00       		.byte	0
 7113 0501 00       		.byte	0
 7114 0502 58       		.uleb128 0x58
 7115 0503 05       		.uleb128 0x5
 7116 0504 00       		.byte	0
 7117 0505 03       		.uleb128 0x3
 7118 0506 0E       		.uleb128 0xe
 7119 0507 49       		.uleb128 0x49
 7120 0508 13       		.uleb128 0x13
 7121 0509 34       		.uleb128 0x34
 7122 050a 19       		.uleb128 0x19
 7123 050b 02       		.uleb128 0x2
 7124 050c 17       		.uleb128 0x17
 7125 050d 00       		.byte	0
 7126 050e 00       		.byte	0
 7127 050f 59       		.uleb128 0x59
 7128 0510 34       		.uleb128 0x34
 7129 0511 00       		.byte	0
 7130 0512 03       		.uleb128 0x3
 7131 0513 0E       		.uleb128 0xe
 7132 0514 3A       		.uleb128 0x3a
 7133 0515 0B       		.uleb128 0xb
 7134 0516 3B       		.uleb128 0x3b
 7135 0517 0B       		.uleb128 0xb
 7136 0518 49       		.uleb128 0x49
 7137 0519 13       		.uleb128 0x13
 7138 051a 02       		.uleb128 0x2
 7139 051b 17       		.uleb128 0x17
 7140 051c 00       		.byte	0
 7141 051d 00       		.byte	0
 7142 051e 5A       		.uleb128 0x5a
 7143 051f 1D       		.uleb128 0x1d
 7144 0520 01       		.byte	0x1
 7145 0521 31       		.uleb128 0x31
 7146 0522 13       		.uleb128 0x13
 7147 0523 52       		.uleb128 0x52
 7148 0524 01       		.uleb128 0x1
 7149 0525 55       		.uleb128 0x55
 7150 0526 17       		.uleb128 0x17
 7151 0527 58       		.uleb128 0x58
 7152 0528 0B       		.uleb128 0xb
 7153 0529 59       		.uleb128 0x59
 7154 052a 0B       		.uleb128 0xb
 7155 052b 01       		.uleb128 0x1
 7156 052c 13       		.uleb128 0x13
ARM GAS  /tmp/cc5e0BXI.s 			page 168


 7157 052d 00       		.byte	0
 7158 052e 00       		.byte	0
 7159 052f 5B       		.uleb128 0x5b
 7160 0530 0B       		.uleb128 0xb
 7161 0531 01       		.byte	0x1
 7162 0532 55       		.uleb128 0x55
 7163 0533 17       		.uleb128 0x17
 7164 0534 00       		.byte	0
 7165 0535 00       		.byte	0
 7166 0536 5C       		.uleb128 0x5c
 7167 0537 34       		.uleb128 0x34
 7168 0538 00       		.byte	0
 7169 0539 31       		.uleb128 0x31
 7170 053a 13       		.uleb128 0x13
 7171 053b 02       		.uleb128 0x2
 7172 053c 17       		.uleb128 0x17
 7173 053d 00       		.byte	0
 7174 053e 00       		.byte	0
 7175 053f 5D       		.uleb128 0x5d
 7176 0540 1D       		.uleb128 0x1d
 7177 0541 01       		.byte	0x1
 7178 0542 31       		.uleb128 0x31
 7179 0543 13       		.uleb128 0x13
 7180 0544 52       		.uleb128 0x52
 7181 0545 01       		.uleb128 0x1
 7182 0546 55       		.uleb128 0x55
 7183 0547 17       		.uleb128 0x17
 7184 0548 58       		.uleb128 0x58
 7185 0549 0B       		.uleb128 0xb
 7186 054a 59       		.uleb128 0x59
 7187 054b 0B       		.uleb128 0xb
 7188 054c 00       		.byte	0
 7189 054d 00       		.byte	0
 7190 054e 5E       		.uleb128 0x5e
 7191 054f 1D       		.uleb128 0x1d
 7192 0550 01       		.byte	0x1
 7193 0551 31       		.uleb128 0x31
 7194 0552 13       		.uleb128 0x13
 7195 0553 11       		.uleb128 0x11
 7196 0554 01       		.uleb128 0x1
 7197 0555 12       		.uleb128 0x12
 7198 0556 06       		.uleb128 0x6
 7199 0557 58       		.uleb128 0x58
 7200 0558 0B       		.uleb128 0xb
 7201 0559 59       		.uleb128 0x59
 7202 055a 0B       		.uleb128 0xb
 7203 055b 00       		.byte	0
 7204 055c 00       		.byte	0
 7205 055d 5F       		.uleb128 0x5f
 7206 055e 05       		.uleb128 0x5
 7207 055f 00       		.byte	0
 7208 0560 03       		.uleb128 0x3
 7209 0561 0E       		.uleb128 0xe
 7210 0562 3A       		.uleb128 0x3a
 7211 0563 0B       		.uleb128 0xb
 7212 0564 3B       		.uleb128 0x3b
 7213 0565 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 169


 7214 0566 49       		.uleb128 0x49
 7215 0567 13       		.uleb128 0x13
 7216 0568 02       		.uleb128 0x2
 7217 0569 17       		.uleb128 0x17
 7218 056a 00       		.byte	0
 7219 056b 00       		.byte	0
 7220 056c 60       		.uleb128 0x60
 7221 056d 34       		.uleb128 0x34
 7222 056e 00       		.byte	0
 7223 056f 03       		.uleb128 0x3
 7224 0570 08       		.uleb128 0x8
 7225 0571 3A       		.uleb128 0x3a
 7226 0572 0B       		.uleb128 0xb
 7227 0573 3B       		.uleb128 0x3b
 7228 0574 0B       		.uleb128 0xb
 7229 0575 49       		.uleb128 0x49
 7230 0576 13       		.uleb128 0x13
 7231 0577 02       		.uleb128 0x2
 7232 0578 17       		.uleb128 0x17
 7233 0579 00       		.byte	0
 7234 057a 00       		.byte	0
 7235 057b 61       		.uleb128 0x61
 7236 057c 05       		.uleb128 0x5
 7237 057d 00       		.byte	0
 7238 057e 03       		.uleb128 0x3
 7239 057f 0E       		.uleb128 0xe
 7240 0580 3A       		.uleb128 0x3a
 7241 0581 0B       		.uleb128 0xb
 7242 0582 3B       		.uleb128 0x3b
 7243 0583 0B       		.uleb128 0xb
 7244 0584 49       		.uleb128 0x49
 7245 0585 13       		.uleb128 0x13
 7246 0586 02       		.uleb128 0x2
 7247 0587 18       		.uleb128 0x18
 7248 0588 00       		.byte	0
 7249 0589 00       		.byte	0
 7250 058a 62       		.uleb128 0x62
 7251 058b 05       		.uleb128 0x5
 7252 058c 00       		.byte	0
 7253 058d 03       		.uleb128 0x3
 7254 058e 0E       		.uleb128 0xe
 7255 058f 49       		.uleb128 0x49
 7256 0590 13       		.uleb128 0x13
 7257 0591 34       		.uleb128 0x34
 7258 0592 19       		.uleb128 0x19
 7259 0593 02       		.uleb128 0x2
 7260 0594 18       		.uleb128 0x18
 7261 0595 00       		.byte	0
 7262 0596 00       		.byte	0
 7263 0597 63       		.uleb128 0x63
 7264 0598 898201   		.uleb128 0x4109
 7265 059b 01       		.byte	0x1
 7266 059c 11       		.uleb128 0x11
 7267 059d 01       		.uleb128 0x1
 7268 059e 01       		.uleb128 0x1
 7269 059f 13       		.uleb128 0x13
 7270 05a0 00       		.byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 170


 7271 05a1 00       		.byte	0
 7272 05a2 64       		.uleb128 0x64
 7273 05a3 898201   		.uleb128 0x4109
 7274 05a6 00       		.byte	0
 7275 05a7 11       		.uleb128 0x11
 7276 05a8 01       		.uleb128 0x1
 7277 05a9 9542     		.uleb128 0x2115
 7278 05ab 19       		.uleb128 0x19
 7279 05ac 31       		.uleb128 0x31
 7280 05ad 13       		.uleb128 0x13
 7281 05ae 00       		.byte	0
 7282 05af 00       		.byte	0
 7283 05b0 65       		.uleb128 0x65
 7284 05b1 898201   		.uleb128 0x4109
 7285 05b4 00       		.byte	0
 7286 05b5 11       		.uleb128 0x11
 7287 05b6 01       		.uleb128 0x1
 7288 05b7 31       		.uleb128 0x31
 7289 05b8 13       		.uleb128 0x13
 7290 05b9 00       		.byte	0
 7291 05ba 00       		.byte	0
 7292 05bb 66       		.uleb128 0x66
 7293 05bc 2E       		.uleb128 0x2e
 7294 05bd 01       		.byte	0x1
 7295 05be 47       		.uleb128 0x47
 7296 05bf 13       		.uleb128 0x13
 7297 05c0 64       		.uleb128 0x64
 7298 05c1 13       		.uleb128 0x13
 7299 05c2 20       		.uleb128 0x20
 7300 05c3 0B       		.uleb128 0xb
 7301 05c4 64       		.uleb128 0x64
 7302 05c5 13       		.uleb128 0x13
 7303 05c6 01       		.uleb128 0x1
 7304 05c7 13       		.uleb128 0x13
 7305 05c8 00       		.byte	0
 7306 05c9 00       		.byte	0
 7307 05ca 67       		.uleb128 0x67
 7308 05cb 05       		.uleb128 0x5
 7309 05cc 00       		.byte	0
 7310 05cd 03       		.uleb128 0x3
 7311 05ce 0E       		.uleb128 0xe
 7312 05cf 3A       		.uleb128 0x3a
 7313 05d0 0B       		.uleb128 0xb
 7314 05d1 3B       		.uleb128 0x3b
 7315 05d2 0B       		.uleb128 0xb
 7316 05d3 49       		.uleb128 0x49
 7317 05d4 13       		.uleb128 0x13
 7318 05d5 00       		.byte	0
 7319 05d6 00       		.byte	0
 7320 05d7 68       		.uleb128 0x68
 7321 05d8 34       		.uleb128 0x34
 7322 05d9 00       		.byte	0
 7323 05da 03       		.uleb128 0x3
 7324 05db 0E       		.uleb128 0xe
 7325 05dc 3A       		.uleb128 0x3a
 7326 05dd 0B       		.uleb128 0xb
 7327 05de 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc5e0BXI.s 			page 171


 7328 05df 0B       		.uleb128 0xb
 7329 05e0 49       		.uleb128 0x49
 7330 05e1 13       		.uleb128 0x13
 7331 05e2 00       		.byte	0
 7332 05e3 00       		.byte	0
 7333 05e4 69       		.uleb128 0x69
 7334 05e5 05       		.uleb128 0x5
 7335 05e6 00       		.byte	0
 7336 05e7 31       		.uleb128 0x31
 7337 05e8 13       		.uleb128 0x13
 7338 05e9 1C       		.uleb128 0x1c
 7339 05ea 05       		.uleb128 0x5
 7340 05eb 00       		.byte	0
 7341 05ec 00       		.byte	0
 7342 05ed 6A       		.uleb128 0x6a
 7343 05ee 0B       		.uleb128 0xb
 7344 05ef 01       		.byte	0x1
 7345 05f0 11       		.uleb128 0x11
 7346 05f1 01       		.uleb128 0x1
 7347 05f2 12       		.uleb128 0x12
 7348 05f3 06       		.uleb128 0x6
 7349 05f4 00       		.byte	0
 7350 05f5 00       		.byte	0
 7351 05f6 6B       		.uleb128 0x6b
 7352 05f7 34       		.uleb128 0x34
 7353 05f8 00       		.byte	0
 7354 05f9 31       		.uleb128 0x31
 7355 05fa 13       		.uleb128 0x13
 7356 05fb 00       		.byte	0
 7357 05fc 00       		.byte	0
 7358 05fd 6C       		.uleb128 0x6c
 7359 05fe 898201   		.uleb128 0x4109
 7360 0601 01       		.byte	0x1
 7361 0602 11       		.uleb128 0x11
 7362 0603 01       		.uleb128 0x1
 7363 0604 9542     		.uleb128 0x2115
 7364 0606 19       		.uleb128 0x19
 7365 0607 31       		.uleb128 0x31
 7366 0608 13       		.uleb128 0x13
 7367 0609 00       		.byte	0
 7368 060a 00       		.byte	0
 7369 060b 6D       		.uleb128 0x6d
 7370 060c 2E       		.uleb128 0x2e
 7371 060d 01       		.byte	0x1
 7372 060e 47       		.uleb128 0x47
 7373 060f 13       		.uleb128 0x13
 7374 0610 20       		.uleb128 0x20
 7375 0611 0B       		.uleb128 0xb
 7376 0612 64       		.uleb128 0x64
 7377 0613 13       		.uleb128 0x13
 7378 0614 01       		.uleb128 0x1
 7379 0615 13       		.uleb128 0x13
 7380 0616 00       		.byte	0
 7381 0617 00       		.byte	0
 7382 0618 6E       		.uleb128 0x6e
 7383 0619 2E       		.uleb128 0x2e
 7384 061a 01       		.byte	0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 172


 7385 061b 31       		.uleb128 0x31
 7386 061c 13       		.uleb128 0x13
 7387 061d 6E       		.uleb128 0x6e
 7388 061e 0E       		.uleb128 0xe
 7389 061f 64       		.uleb128 0x64
 7390 0620 13       		.uleb128 0x13
 7391 0621 01       		.uleb128 0x1
 7392 0622 13       		.uleb128 0x13
 7393 0623 00       		.byte	0
 7394 0624 00       		.byte	0
 7395 0625 6F       		.uleb128 0x6f
 7396 0626 05       		.uleb128 0x5
 7397 0627 00       		.byte	0
 7398 0628 31       		.uleb128 0x31
 7399 0629 13       		.uleb128 0x13
 7400 062a 00       		.byte	0
 7401 062b 00       		.byte	0
 7402 062c 70       		.uleb128 0x70
 7403 062d 2E       		.uleb128 0x2e
 7404 062e 01       		.byte	0x1
 7405 062f 3F       		.uleb128 0x3f
 7406 0630 19       		.uleb128 0x19
 7407 0631 03       		.uleb128 0x3
 7408 0632 0E       		.uleb128 0xe
 7409 0633 3A       		.uleb128 0x3a
 7410 0634 0B       		.uleb128 0xb
 7411 0635 3B       		.uleb128 0x3b
 7412 0636 0B       		.uleb128 0xb
 7413 0637 6E       		.uleb128 0x6e
 7414 0638 0E       		.uleb128 0xe
 7415 0639 49       		.uleb128 0x49
 7416 063a 13       		.uleb128 0x13
 7417 063b 4C       		.uleb128 0x4c
 7418 063c 0B       		.uleb128 0xb
 7419 063d 4D       		.uleb128 0x4d
 7420 063e 18       		.uleb128 0x18
 7421 063f 1D       		.uleb128 0x1d
 7422 0640 13       		.uleb128 0x13
 7423 0641 32       		.uleb128 0x32
 7424 0642 0B       		.uleb128 0xb
 7425 0643 3C       		.uleb128 0x3c
 7426 0644 19       		.uleb128 0x19
 7427 0645 64       		.uleb128 0x64
 7428 0646 13       		.uleb128 0x13
 7429 0647 00       		.byte	0
 7430 0648 00       		.byte	0
 7431 0649 71       		.uleb128 0x71
 7432 064a 2E       		.uleb128 0x2e
 7433 064b 01       		.byte	0x1
 7434 064c 47       		.uleb128 0x47
 7435 064d 13       		.uleb128 0x13
 7436 064e 3B       		.uleb128 0x3b
 7437 064f 0B       		.uleb128 0xb
 7438 0650 64       		.uleb128 0x64
 7439 0651 13       		.uleb128 0x13
 7440 0652 20       		.uleb128 0x20
 7441 0653 0B       		.uleb128 0xb
ARM GAS  /tmp/cc5e0BXI.s 			page 173


 7442 0654 64       		.uleb128 0x64
 7443 0655 13       		.uleb128 0x13
 7444 0656 01       		.uleb128 0x1
 7445 0657 13       		.uleb128 0x13
 7446 0658 00       		.byte	0
 7447 0659 00       		.byte	0
 7448 065a 72       		.uleb128 0x72
 7449 065b 05       		.uleb128 0x5
 7450 065c 00       		.byte	0
 7451 065d 03       		.uleb128 0x3
 7452 065e 08       		.uleb128 0x8
 7453 065f 3A       		.uleb128 0x3a
 7454 0660 0B       		.uleb128 0xb
 7455 0661 3B       		.uleb128 0x3b
 7456 0662 0B       		.uleb128 0xb
 7457 0663 49       		.uleb128 0x49
 7458 0664 13       		.uleb128 0x13
 7459 0665 00       		.byte	0
 7460 0666 00       		.byte	0
 7461 0667 73       		.uleb128 0x73
 7462 0668 34       		.uleb128 0x34
 7463 0669 00       		.byte	0
 7464 066a 03       		.uleb128 0x3
 7465 066b 08       		.uleb128 0x8
 7466 066c 3A       		.uleb128 0x3a
 7467 066d 0B       		.uleb128 0xb
 7468 066e 3B       		.uleb128 0x3b
 7469 066f 0B       		.uleb128 0xb
 7470 0670 49       		.uleb128 0x49
 7471 0671 13       		.uleb128 0x13
 7472 0672 00       		.byte	0
 7473 0673 00       		.byte	0
 7474 0674 74       		.uleb128 0x74
 7475 0675 2E       		.uleb128 0x2e
 7476 0676 01       		.byte	0x1
 7477 0677 47       		.uleb128 0x47
 7478 0678 13       		.uleb128 0x13
 7479 0679 64       		.uleb128 0x64
 7480 067a 13       		.uleb128 0x13
 7481 067b 01       		.uleb128 0x1
 7482 067c 13       		.uleb128 0x13
 7483 067d 00       		.byte	0
 7484 067e 00       		.byte	0
 7485 067f 75       		.uleb128 0x75
 7486 0680 2E       		.uleb128 0x2e
 7487 0681 01       		.byte	0x1
 7488 0682 03       		.uleb128 0x3
 7489 0683 0E       		.uleb128 0xe
 7490 0684 3A       		.uleb128 0x3a
 7491 0685 0B       		.uleb128 0xb
 7492 0686 3B       		.uleb128 0x3b
 7493 0687 05       		.uleb128 0x5
 7494 0688 49       		.uleb128 0x49
 7495 0689 13       		.uleb128 0x13
 7496 068a 20       		.uleb128 0x20
 7497 068b 0B       		.uleb128 0xb
 7498 068c 01       		.uleb128 0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 174


 7499 068d 13       		.uleb128 0x13
 7500 068e 00       		.byte	0
 7501 068f 00       		.byte	0
 7502 0690 76       		.uleb128 0x76
 7503 0691 05       		.uleb128 0x5
 7504 0692 00       		.byte	0
 7505 0693 03       		.uleb128 0x3
 7506 0694 0E       		.uleb128 0xe
 7507 0695 3A       		.uleb128 0x3a
 7508 0696 0B       		.uleb128 0xb
 7509 0697 3B       		.uleb128 0x3b
 7510 0698 05       		.uleb128 0x5
 7511 0699 49       		.uleb128 0x49
 7512 069a 13       		.uleb128 0x13
 7513 069b 00       		.byte	0
 7514 069c 00       		.byte	0
 7515 069d 77       		.uleb128 0x77
 7516 069e 2E       		.uleb128 0x2e
 7517 069f 01       		.byte	0x1
 7518 06a0 03       		.uleb128 0x3
 7519 06a1 0E       		.uleb128 0xe
 7520 06a2 3A       		.uleb128 0x3a
 7521 06a3 0B       		.uleb128 0xb
 7522 06a4 3B       		.uleb128 0x3b
 7523 06a5 05       		.uleb128 0x5
 7524 06a6 20       		.uleb128 0x20
 7525 06a7 0B       		.uleb128 0xb
 7526 06a8 01       		.uleb128 0x1
 7527 06a9 13       		.uleb128 0x13
 7528 06aa 00       		.byte	0
 7529 06ab 00       		.byte	0
 7530 06ac 78       		.uleb128 0x78
 7531 06ad 2E       		.uleb128 0x2e
 7532 06ae 01       		.byte	0x1
 7533 06af 31       		.uleb128 0x31
 7534 06b0 13       		.uleb128 0x13
 7535 06b1 6E       		.uleb128 0x6e
 7536 06b2 0E       		.uleb128 0xe
 7537 06b3 11       		.uleb128 0x11
 7538 06b4 01       		.uleb128 0x1
 7539 06b5 12       		.uleb128 0x12
 7540 06b6 06       		.uleb128 0x6
 7541 06b7 40       		.uleb128 0x40
 7542 06b8 18       		.uleb128 0x18
 7543 06b9 64       		.uleb128 0x64
 7544 06ba 13       		.uleb128 0x13
 7545 06bb 9742     		.uleb128 0x2117
 7546 06bd 19       		.uleb128 0x19
 7547 06be 01       		.uleb128 0x1
 7548 06bf 13       		.uleb128 0x13
 7549 06c0 00       		.byte	0
 7550 06c1 00       		.byte	0
 7551 06c2 79       		.uleb128 0x79
 7552 06c3 2E       		.uleb128 0x2e
 7553 06c4 00       		.byte	0
 7554 06c5 3F       		.uleb128 0x3f
 7555 06c6 19       		.uleb128 0x19
ARM GAS  /tmp/cc5e0BXI.s 			page 175


 7556 06c7 3C       		.uleb128 0x3c
 7557 06c8 19       		.uleb128 0x19
 7558 06c9 6E       		.uleb128 0x6e
 7559 06ca 0E       		.uleb128 0xe
 7560 06cb 03       		.uleb128 0x3
 7561 06cc 0E       		.uleb128 0xe
 7562 06cd 6E       		.uleb128 0x6e
 7563 06ce 0E       		.uleb128 0xe
 7564 06cf 00       		.byte	0
 7565 06d0 00       		.byte	0
 7566 06d1 7A       		.uleb128 0x7a
 7567 06d2 2E       		.uleb128 0x2e
 7568 06d3 00       		.byte	0
 7569 06d4 3F       		.uleb128 0x3f
 7570 06d5 19       		.uleb128 0x19
 7571 06d6 3C       		.uleb128 0x3c
 7572 06d7 19       		.uleb128 0x19
 7573 06d8 6E       		.uleb128 0x6e
 7574 06d9 0E       		.uleb128 0xe
 7575 06da 03       		.uleb128 0x3
 7576 06db 0E       		.uleb128 0xe
 7577 06dc 3A       		.uleb128 0x3a
 7578 06dd 0B       		.uleb128 0xb
 7579 06de 3B       		.uleb128 0x3b
 7580 06df 0B       		.uleb128 0xb
 7581 06e0 00       		.byte	0
 7582 06e1 00       		.byte	0
 7583 06e2 00       		.byte	0
 7584              		.section	.debug_loc,"",%progbits
 7585              	.Ldebug_loc0:
 7586              	.LLST16:
 7587 0000 00000000 		.4byte	.LVL35
 7588 0004 09000000 		.4byte	.LVL36-1
 7589 0008 0100     		.2byte	0x1
 7590 000a 50       		.byte	0x50
 7591 000b 09000000 		.4byte	.LVL36-1
 7592 000f 0E000000 		.4byte	.LFE295
 7593 0013 0100     		.2byte	0x1
 7594 0015 54       		.byte	0x54
 7595 0016 00000000 		.4byte	0
 7596 001a 00000000 		.4byte	0
 7597              	.LLST45:
 7598 001e 00000000 		.4byte	.LVL79
 7599 0022 7C000000 		.4byte	.LVL87
 7600 0026 0100     		.2byte	0x1
 7601 0028 50       		.byte	0x50
 7602 0029 7C000000 		.4byte	.LVL87
 7603 002d 86000000 		.4byte	.LVL89
 7604 0031 0400     		.2byte	0x4
 7605 0033 F3       		.byte	0xf3
 7606 0034 01       		.uleb128 0x1
 7607 0035 50       		.byte	0x50
 7608 0036 9F       		.byte	0x9f
 7609 0037 86000000 		.4byte	.LVL89
 7610 003b AE000000 		.4byte	.LFE291
 7611 003f 0100     		.2byte	0x1
 7612 0041 50       		.byte	0x50
ARM GAS  /tmp/cc5e0BXI.s 			page 176


 7613 0042 00000000 		.4byte	0
 7614 0046 00000000 		.4byte	0
 7615              	.LLST46:
 7616 004a 04000000 		.4byte	.LVL80
 7617 004e 62000000 		.4byte	.LVL85
 7618 0052 0100     		.2byte	0x1
 7619 0054 53       		.byte	0x53
 7620 0055 98000000 		.4byte	.LVL91
 7621 0059 AE000000 		.4byte	.LFE291
 7622 005d 0100     		.2byte	0x1
 7623 005f 53       		.byte	0x53
 7624 0060 00000000 		.4byte	0
 7625 0064 00000000 		.4byte	0
 7626              	.LLST47:
 7627 0068 0E000000 		.4byte	.LVL81
 7628 006c 2C000000 		.4byte	.LVL83
 7629 0070 0100     		.2byte	0x1
 7630 0072 55       		.byte	0x55
 7631 0073 9E000000 		.4byte	.LVL92
 7632 0077 A4000000 		.4byte	.LVL94
 7633 007b 0100     		.2byte	0x1
 7634 007d 55       		.byte	0x55
 7635 007e 00000000 		.4byte	0
 7636 0082 00000000 		.4byte	0
 7637              	.LLST48:
 7638 0086 0E000000 		.4byte	.LVL81
 7639 008a 2C000000 		.4byte	.LVL83
 7640 008e 0100     		.2byte	0x1
 7641 0090 54       		.byte	0x54
 7642 0091 9E000000 		.4byte	.LVL92
 7643 0095 AE000000 		.4byte	.LFE291
 7644 0099 0100     		.2byte	0x1
 7645 009b 54       		.byte	0x54
 7646 009c 00000000 		.4byte	0
 7647 00a0 00000000 		.4byte	0
 7648              	.LLST49:
 7649 00a4 1C000000 		.4byte	.LVL82
 7650 00a8 2C000000 		.4byte	.LVL83
 7651 00ac 0100     		.2byte	0x1
 7652 00ae 51       		.byte	0x51
 7653 00af 9E000000 		.4byte	.LVL92
 7654 00b3 A2000000 		.4byte	.LVL93
 7655 00b7 0100     		.2byte	0x1
 7656 00b9 51       		.byte	0x51
 7657 00ba 00000000 		.4byte	0
 7658 00be 00000000 		.4byte	0
 7659              	.LLST50:
 7660 00c2 5E000000 		.4byte	.LVL84
 7661 00c6 82000000 		.4byte	.LVL88
 7662 00ca 0300     		.2byte	0x3
 7663 00cc 08       		.byte	0x8
 7664 00cd 7F       		.byte	0x7f
 7665 00ce 9F       		.byte	0x9f
 7666 00cf 86000000 		.4byte	.LVL89
 7667 00d3 98000000 		.4byte	.LVL91
 7668 00d7 0300     		.2byte	0x3
 7669 00d9 08       		.byte	0x8
ARM GAS  /tmp/cc5e0BXI.s 			page 177


 7670 00da 7F       		.byte	0x7f
 7671 00db 9F       		.byte	0x9f
 7672 00dc 00000000 		.4byte	0
 7673 00e0 00000000 		.4byte	0
 7674              	.LLST51:
 7675 00e4 5E000000 		.4byte	.LVL84
 7676 00e8 82000000 		.4byte	.LVL88
 7677 00ec 0100     		.2byte	0x1
 7678 00ee 51       		.byte	0x51
 7679 00ef 86000000 		.4byte	.LVL89
 7680 00f3 98000000 		.4byte	.LVL91
 7681 00f7 0100     		.2byte	0x1
 7682 00f9 51       		.byte	0x51
 7683 00fa 00000000 		.4byte	0
 7684 00fe 00000000 		.4byte	0
 7685              	.LLST52:
 7686 0102 72000000 		.4byte	.LVL86
 7687 0106 82000000 		.4byte	.LVL88
 7688 010a 0100     		.2byte	0x1
 7689 010c 53       		.byte	0x53
 7690 010d 86000000 		.4byte	.LVL89
 7691 0111 8A000000 		.4byte	.LVL90
 7692 0115 0100     		.2byte	0x1
 7693 0117 53       		.byte	0x53
 7694 0118 00000000 		.4byte	0
 7695 011c 00000000 		.4byte	0
 7696              	.LLST7:
 7697 0120 00000000 		.4byte	.LVL17
 7698 0124 06000000 		.4byte	.LVL19
 7699 0128 0100     		.2byte	0x1
 7700 012a 50       		.byte	0x50
 7701 012b 06000000 		.4byte	.LVL19
 7702 012f 16000000 		.4byte	.LFE290
 7703 0133 0400     		.2byte	0x4
 7704 0135 F3       		.byte	0xf3
 7705 0136 01       		.uleb128 0x1
 7706 0137 50       		.byte	0x50
 7707 0138 9F       		.byte	0x9f
 7708 0139 00000000 		.4byte	0
 7709 013d 00000000 		.4byte	0
 7710              	.LLST8:
 7711 0141 02000000 		.4byte	.LVL18
 7712 0145 0A000000 		.4byte	.LVL20
 7713 0149 0100     		.2byte	0x1
 7714 014b 53       		.byte	0x53
 7715 014c 00000000 		.4byte	0
 7716 0150 00000000 		.4byte	0
 7717              	.LLST11:
 7718 0154 00000000 		.4byte	.LVL29
 7719 0158 10000000 		.4byte	.LVL30
 7720 015c 0100     		.2byte	0x1
 7721 015e 50       		.byte	0x50
 7722 015f 10000000 		.4byte	.LVL30
 7723 0163 24000000 		.4byte	.LVL34
 7724 0167 0100     		.2byte	0x1
 7725 0169 56       		.byte	0x56
 7726 016a 24000000 		.4byte	.LVL34
ARM GAS  /tmp/cc5e0BXI.s 			page 178


 7727 016e 2A000000 		.4byte	.LFE289
 7728 0172 0400     		.2byte	0x4
 7729 0174 F3       		.byte	0xf3
 7730 0175 01       		.uleb128 0x1
 7731 0176 50       		.byte	0x50
 7732 0177 9F       		.byte	0x9f
 7733 0178 00000000 		.4byte	0
 7734 017c 00000000 		.4byte	0
 7735              	.LLST12:
 7736 0180 00000000 		.4byte	.LVL29
 7737 0184 10000000 		.4byte	.LVL30
 7738 0188 0100     		.2byte	0x1
 7739 018a 51       		.byte	0x51
 7740 018b 10000000 		.4byte	.LVL30
 7741 018f 24000000 		.4byte	.LVL34
 7742 0193 0100     		.2byte	0x1
 7743 0195 55       		.byte	0x55
 7744 0196 00000000 		.4byte	0
 7745 019a 00000000 		.4byte	0
 7746              	.LLST13:
 7747 019e 00000000 		.4byte	.LVL29
 7748 01a2 10000000 		.4byte	.LVL30
 7749 01a6 0100     		.2byte	0x1
 7750 01a8 52       		.byte	0x52
 7751 01a9 10000000 		.4byte	.LVL30
 7752 01ad 1E000000 		.4byte	.LVL32
 7753 01b1 0100     		.2byte	0x1
 7754 01b3 54       		.byte	0x54
 7755 01b4 00000000 		.4byte	0
 7756 01b8 00000000 		.4byte	0
 7757              	.LLST14:
 7758 01bc 00000000 		.4byte	.LVL29
 7759 01c0 10000000 		.4byte	.LVL30
 7760 01c4 0100     		.2byte	0x1
 7761 01c6 52       		.byte	0x52
 7762 01c7 10000000 		.4byte	.LVL30
 7763 01cb 2A000000 		.4byte	.LFE289
 7764 01cf 0100     		.2byte	0x1
 7765 01d1 58       		.byte	0x58
 7766 01d2 00000000 		.4byte	0
 7767 01d6 00000000 		.4byte	0
 7768              	.LLST15:
 7769 01da 1A000000 		.4byte	.LVL31
 7770 01de 24000000 		.4byte	.LVL34
 7771 01e2 0100     		.2byte	0x1
 7772 01e4 50       		.byte	0x50
 7773 01e5 00000000 		.4byte	0
 7774 01e9 00000000 		.4byte	0
 7775              	.LLST5:
 7776 01ed 00000000 		.4byte	.LVL13
 7777 01f1 06000000 		.4byte	.LVL14
 7778 01f5 0100     		.2byte	0x1
 7779 01f7 50       		.byte	0x50
 7780 01f8 06000000 		.4byte	.LVL14
 7781 01fc 46000000 		.4byte	.LFE288
 7782 0200 0400     		.2byte	0x4
 7783 0202 F3       		.byte	0xf3
ARM GAS  /tmp/cc5e0BXI.s 			page 179


 7784 0203 01       		.uleb128 0x1
 7785 0204 50       		.byte	0x50
 7786 0205 9F       		.byte	0x9f
 7787 0206 00000000 		.4byte	0
 7788 020a 00000000 		.4byte	0
 7789              	.LLST6:
 7790 020e 22000000 		.4byte	.LVL15
 7791 0212 3E000000 		.4byte	.LVL16
 7792 0216 0100     		.2byte	0x1
 7793 0218 52       		.byte	0x52
 7794 0219 00000000 		.4byte	0
 7795 021d 00000000 		.4byte	0
 7796              	.LLST3:
 7797 0221 00000000 		.4byte	.LVL8
 7798 0225 14000000 		.4byte	.LVL9
 7799 0229 0100     		.2byte	0x1
 7800 022b 50       		.byte	0x50
 7801 022c 14000000 		.4byte	.LVL9
 7802 0230 24000000 		.4byte	.LVL10
 7803 0234 0400     		.2byte	0x4
 7804 0236 F3       		.byte	0xf3
 7805 0237 01       		.uleb128 0x1
 7806 0238 50       		.byte	0x50
 7807 0239 9F       		.byte	0x9f
 7808 023a 24000000 		.4byte	.LVL10
 7809 023e 28000000 		.4byte	.LVL11
 7810 0242 0100     		.2byte	0x1
 7811 0244 50       		.byte	0x50
 7812 0245 28000000 		.4byte	.LVL11
 7813 0249 2A000000 		.4byte	.LFE286
 7814 024d 0400     		.2byte	0x4
 7815 024f F3       		.byte	0xf3
 7816 0250 01       		.uleb128 0x1
 7817 0251 50       		.byte	0x50
 7818 0252 9F       		.byte	0x9f
 7819 0253 00000000 		.4byte	0
 7820 0257 00000000 		.4byte	0
 7821              	.LLST4:
 7822 025b 14000000 		.4byte	.LVL9
 7823 025f 24000000 		.4byte	.LVL10
 7824 0263 0100     		.2byte	0x1
 7825 0265 50       		.byte	0x50
 7826 0266 00000000 		.4byte	0
 7827 026a 00000000 		.4byte	0
 7828              	.LLST2:
 7829 026e 00000000 		.4byte	.LVL4
 7830 0272 14000000 		.4byte	.LVL5
 7831 0276 0100     		.2byte	0x1
 7832 0278 50       		.byte	0x50
 7833 0279 14000000 		.4byte	.LVL5
 7834 027d 18000000 		.4byte	.LVL6
 7835 0281 0400     		.2byte	0x4
 7836 0283 F3       		.byte	0xf3
 7837 0284 01       		.uleb128 0x1
 7838 0285 50       		.byte	0x50
 7839 0286 9F       		.byte	0x9f
 7840 0287 18000000 		.4byte	.LVL6
ARM GAS  /tmp/cc5e0BXI.s 			page 180


 7841 028b 1C000000 		.4byte	.LVL7
 7842 028f 0100     		.2byte	0x1
 7843 0291 50       		.byte	0x50
 7844 0292 1C000000 		.4byte	.LVL7
 7845 0296 1E000000 		.4byte	.LFE285
 7846 029a 0400     		.2byte	0x4
 7847 029c F3       		.byte	0xf3
 7848 029d 01       		.uleb128 0x1
 7849 029e 50       		.byte	0x50
 7850 029f 9F       		.byte	0x9f
 7851 02a0 00000000 		.4byte	0
 7852 02a4 00000000 		.4byte	0
 7853              	.LLST42:
 7854 02a8 00000000 		.4byte	.LVL74
 7855 02ac 06000000 		.4byte	.LVL75
 7856 02b0 0100     		.2byte	0x1
 7857 02b2 50       		.byte	0x50
 7858 02b3 06000000 		.4byte	.LVL75
 7859 02b7 1A000000 		.4byte	.LFE284
 7860 02bb 0400     		.2byte	0x4
 7861 02bd F3       		.byte	0xf3
 7862 02be 01       		.uleb128 0x1
 7863 02bf 50       		.byte	0x50
 7864 02c0 9F       		.byte	0x9f
 7865 02c1 00000000 		.4byte	0
 7866 02c5 00000000 		.4byte	0
 7867              	.LLST43:
 7868 02c9 06000000 		.4byte	.LVL75
 7869 02cd 18000000 		.4byte	.LVL78
 7870 02d1 0100     		.2byte	0x1
 7871 02d3 50       		.byte	0x50
 7872 02d4 00000000 		.4byte	0
 7873 02d8 00000000 		.4byte	0
 7874              	.LLST44:
 7875 02dc 0A000000 		.4byte	.LVL76
 7876 02e0 12000000 		.4byte	.LVL77
 7877 02e4 0100     		.2byte	0x1
 7878 02e6 53       		.byte	0x53
 7879 02e7 00000000 		.4byte	0
 7880 02eb 00000000 		.4byte	0
 7881              	.LLST1:
 7882 02ef 00000000 		.4byte	.LVL2
 7883 02f3 06000000 		.4byte	.LVL3
 7884 02f7 0100     		.2byte	0x1
 7885 02f9 50       		.byte	0x50
 7886 02fa 06000000 		.4byte	.LVL3
 7887 02fe 12000000 		.4byte	.LFE283
 7888 0302 0400     		.2byte	0x4
 7889 0304 F3       		.byte	0xf3
 7890 0305 01       		.uleb128 0x1
 7891 0306 50       		.byte	0x50
 7892 0307 9F       		.byte	0x9f
 7893 0308 00000000 		.4byte	0
 7894 030c 00000000 		.4byte	0
 7895              	.LLST40:
 7896 0310 00000000 		.4byte	.LVL67
 7897 0314 0C000000 		.4byte	.LVL69
ARM GAS  /tmp/cc5e0BXI.s 			page 181


 7898 0318 0100     		.2byte	0x1
 7899 031a 50       		.byte	0x50
 7900 031b 0C000000 		.4byte	.LVL69
 7901 031f 10000000 		.4byte	.LVL71
 7902 0323 0400     		.2byte	0x4
 7903 0325 F3       		.byte	0xf3
 7904 0326 01       		.uleb128 0x1
 7905 0327 50       		.byte	0x50
 7906 0328 9F       		.byte	0x9f
 7907 0329 10000000 		.4byte	.LVL71
 7908 032d 18000000 		.4byte	.LVL73
 7909 0331 0100     		.2byte	0x1
 7910 0333 50       		.byte	0x50
 7911 0334 18000000 		.4byte	.LVL73
 7912 0338 24000000 		.4byte	.LFE282
 7913 033c 0400     		.2byte	0x4
 7914 033e F3       		.byte	0xf3
 7915 033f 01       		.uleb128 0x1
 7916 0340 50       		.byte	0x50
 7917 0341 9F       		.byte	0x9f
 7918 0342 00000000 		.4byte	0
 7919 0346 00000000 		.4byte	0
 7920              	.LLST41:
 7921 034a 04000000 		.4byte	.LVL68
 7922 034e 0E000000 		.4byte	.LVL70
 7923 0352 0100     		.2byte	0x1
 7924 0354 53       		.byte	0x53
 7925 0355 10000000 		.4byte	.LVL71
 7926 0359 14000000 		.4byte	.LVL72
 7927 035d 0100     		.2byte	0x1
 7928 035f 53       		.byte	0x53
 7929 0360 14000000 		.4byte	.LVL72
 7930 0364 18000000 		.4byte	.LVL73
 7931 0368 0200     		.2byte	0x2
 7932 036a 70       		.byte	0x70
 7933 036b 1C       		.sleb128 28
 7934 036c 18000000 		.4byte	.LVL73
 7935 0370 24000000 		.4byte	.LFE282
 7936 0374 0500     		.2byte	0x5
 7937 0376 F3       		.byte	0xf3
 7938 0377 01       		.uleb128 0x1
 7939 0378 50       		.byte	0x50
 7940 0379 23       		.byte	0x23
 7941 037a 1C       		.uleb128 0x1c
 7942 037b 00000000 		.4byte	0
 7943 037f 00000000 		.4byte	0
 7944              	.LLST37:
 7945 0383 00000000 		.4byte	.LVL59
 7946 0387 08000000 		.4byte	.LVL60
 7947 038b 0100     		.2byte	0x1
 7948 038d 51       		.byte	0x51
 7949 038e 08000000 		.4byte	.LVL60
 7950 0392 34000000 		.4byte	.LFE281
 7951 0396 0400     		.2byte	0x4
 7952 0398 F3       		.byte	0xf3
 7953 0399 01       		.uleb128 0x1
 7954 039a 51       		.byte	0x51
ARM GAS  /tmp/cc5e0BXI.s 			page 182


 7955 039b 9F       		.byte	0x9f
 7956 039c 00000000 		.4byte	0
 7957 03a0 00000000 		.4byte	0
 7958              	.LLST38:
 7959 03a4 08000000 		.4byte	.LVL60
 7960 03a8 0E000000 		.4byte	.LVL61
 7961 03ac 0100     		.2byte	0x1
 7962 03ae 51       		.byte	0x51
 7963 03af 0E000000 		.4byte	.LVL61
 7964 03b3 18000000 		.4byte	.LVL62
 7965 03b7 0600     		.2byte	0x6
 7966 03b9 F3       		.byte	0xf3
 7967 03ba 01       		.uleb128 0x1
 7968 03bb 51       		.byte	0x51
 7969 03bc 3F       		.byte	0x3f
 7970 03bd 1A       		.byte	0x1a
 7971 03be 9F       		.byte	0x9f
 7972 03bf 1A000000 		.4byte	.LVL63
 7973 03c3 20000000 		.4byte	.LVL65
 7974 03c7 0100     		.2byte	0x1
 7975 03c9 51       		.byte	0x51
 7976 03ca 20000000 		.4byte	.LVL65
 7977 03ce 34000000 		.4byte	.LFE281
 7978 03d2 0600     		.2byte	0x6
 7979 03d4 F3       		.byte	0xf3
 7980 03d5 01       		.uleb128 0x1
 7981 03d6 51       		.byte	0x51
 7982 03d7 3F       		.byte	0x3f
 7983 03d8 1A       		.byte	0x1a
 7984 03d9 9F       		.byte	0x9f
 7985 03da 00000000 		.4byte	0
 7986 03de 00000000 		.4byte	0
 7987              	.LLST39:
 7988 03e2 08000000 		.4byte	.LVL60
 7989 03e6 18000000 		.4byte	.LVL62
 7990 03ea 0100     		.2byte	0x1
 7991 03ec 53       		.byte	0x53
 7992 03ed 1A000000 		.4byte	.LVL63
 7993 03f1 1E000000 		.4byte	.LVL64
 7994 03f5 0100     		.2byte	0x1
 7995 03f7 53       		.byte	0x53
 7996 03f8 1E000000 		.4byte	.LVL64
 7997 03fc 28000000 		.4byte	.LVL66
 7998 0400 0200     		.2byte	0x2
 7999 0402 70       		.byte	0x70
 8000 0403 1C       		.sleb128 28
 8001 0404 00000000 		.4byte	0
 8002 0408 00000000 		.4byte	0
 8003              	.LLST9:
 8004 040c 00000000 		.4byte	.LVL22
 8005 0410 13000000 		.4byte	.LVL23-1
 8006 0414 0100     		.2byte	0x1
 8007 0416 50       		.byte	0x50
 8008 0417 13000000 		.4byte	.LVL23-1
 8009 041b 32000000 		.4byte	.LVL27
 8010 041f 0100     		.2byte	0x1
 8011 0421 54       		.byte	0x54
ARM GAS  /tmp/cc5e0BXI.s 			page 183


 8012 0422 32000000 		.4byte	.LVL27
 8013 0426 3C000000 		.4byte	.LFE280
 8014 042a 0400     		.2byte	0x4
 8015 042c F3       		.byte	0xf3
 8016 042d 01       		.uleb128 0x1
 8017 042e 50       		.byte	0x50
 8018 042f 9F       		.byte	0x9f
 8019 0430 00000000 		.4byte	0
 8020 0434 00000000 		.4byte	0
 8021              	.LLST10:
 8022 0438 1A000000 		.4byte	.LVL24
 8023 043c 22000000 		.4byte	.LVL25
 8024 0440 0100     		.2byte	0x1
 8025 0442 53       		.byte	0x53
 8026 0443 22000000 		.4byte	.LVL25
 8027 0447 2C000000 		.4byte	.LVL26
 8028 044b 0200     		.2byte	0x2
 8029 044d 74       		.byte	0x74
 8030 044e 1C       		.sleb128 28
 8031 044f 00000000 		.4byte	0
 8032 0453 00000000 		.4byte	0
 8033              	.LLST24:
 8034 0457 00000000 		.4byte	.LVL43
 8035 045b 08000000 		.4byte	.LVL44
 8036 045f 0100     		.2byte	0x1
 8037 0461 50       		.byte	0x50
 8038 0462 08000000 		.4byte	.LVL44
 8039 0466 38000000 		.4byte	.LVL50
 8040 046a 0100     		.2byte	0x1
 8041 046c 54       		.byte	0x54
 8042 046d 38000000 		.4byte	.LVL50
 8043 0471 78000000 		.4byte	.LFE279
 8044 0475 0400     		.2byte	0x4
 8045 0477 F3       		.byte	0xf3
 8046 0478 01       		.uleb128 0x1
 8047 0479 50       		.byte	0x50
 8048 047a 9F       		.byte	0x9f
 8049 047b 00000000 		.4byte	0
 8050 047f 00000000 		.4byte	0
 8051              	.LLST25:
 8052 0483 00000000 		.4byte	.LVL43
 8053 0487 0F000000 		.4byte	.LVL45-1
 8054 048b 0100     		.2byte	0x1
 8055 048d 51       		.byte	0x51
 8056 048e 0F000000 		.4byte	.LVL45-1
 8057 0492 26000000 		.4byte	.LVL48
 8058 0496 0100     		.2byte	0x1
 8059 0498 55       		.byte	0x55
 8060 0499 26000000 		.4byte	.LVL48
 8061 049d 78000000 		.4byte	.LFE279
 8062 04a1 0400     		.2byte	0x4
 8063 04a3 F3       		.byte	0xf3
 8064 04a4 01       		.uleb128 0x1
 8065 04a5 51       		.byte	0x51
 8066 04a6 9F       		.byte	0x9f
 8067 04a7 00000000 		.4byte	0
 8068 04ab 00000000 		.4byte	0
ARM GAS  /tmp/cc5e0BXI.s 			page 184


 8069              	.LLST26:
 8070 04af 00000000 		.4byte	.LVL43
 8071 04b3 0F000000 		.4byte	.LVL45-1
 8072 04b7 0100     		.2byte	0x1
 8073 04b9 52       		.byte	0x52
 8074 04ba 0F000000 		.4byte	.LVL45-1
 8075 04be 70000000 		.4byte	.LVL53
 8076 04c2 0100     		.2byte	0x1
 8077 04c4 58       		.byte	0x58
 8078 04c5 70000000 		.4byte	.LVL53
 8079 04c9 78000000 		.4byte	.LFE279
 8080 04cd 0400     		.2byte	0x4
 8081 04cf F3       		.byte	0xf3
 8082 04d0 01       		.uleb128 0x1
 8083 04d1 52       		.byte	0x52
 8084 04d2 9F       		.byte	0x9f
 8085 04d3 00000000 		.4byte	0
 8086 04d7 00000000 		.4byte	0
 8087              	.LLST27:
 8088 04db 14000000 		.4byte	.LVL46
 8089 04df 4A000000 		.4byte	.LVL51
 8090 04e3 0100     		.2byte	0x1
 8091 04e5 50       		.byte	0x50
 8092 04e6 4A000000 		.4byte	.LVL51
 8093 04ea 78000000 		.4byte	.LFE279
 8094 04ee 0600     		.2byte	0x6
 8095 04f0 F3       		.byte	0xf3
 8096 04f1 01       		.uleb128 0x1
 8097 04f2 51       		.byte	0x51
 8098 04f3 34       		.byte	0x34
 8099 04f4 24       		.byte	0x24
 8100 04f5 9F       		.byte	0x9f
 8101 04f6 00000000 		.4byte	0
 8102 04fa 00000000 		.4byte	0
 8103              	.LLST28:
 8104 04fe 18000000 		.4byte	.LVL47
 8105 0502 34000000 		.4byte	.LVL49
 8106 0506 0100     		.2byte	0x1
 8107 0508 56       		.byte	0x56
 8108 0509 34000000 		.4byte	.LVL49
 8109 050d 38000000 		.4byte	.LVL50
 8110 0511 0200     		.2byte	0x2
 8111 0513 74       		.byte	0x74
 8112 0514 1C       		.sleb128 28
 8113 0515 38000000 		.4byte	.LVL50
 8114 0519 6A000000 		.4byte	.LVL52
 8115 051d 0500     		.2byte	0x5
 8116 051f F3       		.byte	0xf3
 8117 0520 01       		.uleb128 0x1
 8118 0521 50       		.byte	0x50
 8119 0522 23       		.byte	0x23
 8120 0523 1C       		.uleb128 0x1c
 8121 0524 00000000 		.4byte	0
 8122 0528 00000000 		.4byte	0
 8123              	.LLST33:
 8124 052c 00000000 		.4byte	.LVL57
 8125 0530 07000000 		.4byte	.LVL58-1
ARM GAS  /tmp/cc5e0BXI.s 			page 185


 8126 0534 0100     		.2byte	0x1
 8127 0536 50       		.byte	0x50
 8128 0537 07000000 		.4byte	.LVL58-1
 8129 053b 08000000 		.4byte	.LFE277
 8130 053f 0400     		.2byte	0x4
 8131 0541 F3       		.byte	0xf3
 8132 0542 01       		.uleb128 0x1
 8133 0543 50       		.byte	0x50
 8134 0544 9F       		.byte	0x9f
 8135 0545 00000000 		.4byte	0
 8136 0549 00000000 		.4byte	0
 8137              	.LLST34:
 8138 054d 00000000 		.4byte	.LVL57
 8139 0551 07000000 		.4byte	.LVL58-1
 8140 0555 0100     		.2byte	0x1
 8141 0557 51       		.byte	0x51
 8142 0558 07000000 		.4byte	.LVL58-1
 8143 055c 08000000 		.4byte	.LFE277
 8144 0560 0400     		.2byte	0x4
 8145 0562 F3       		.byte	0xf3
 8146 0563 01       		.uleb128 0x1
 8147 0564 51       		.byte	0x51
 8148 0565 9F       		.byte	0x9f
 8149 0566 00000000 		.4byte	0
 8150 056a 00000000 		.4byte	0
 8151              	.LLST35:
 8152 056e 00000000 		.4byte	.LVL57
 8153 0572 07000000 		.4byte	.LVL58-1
 8154 0576 0100     		.2byte	0x1
 8155 0578 51       		.byte	0x51
 8156 0579 07000000 		.4byte	.LVL58-1
 8157 057d 08000000 		.4byte	.LFE277
 8158 0581 0400     		.2byte	0x4
 8159 0583 F3       		.byte	0xf3
 8160 0584 01       		.uleb128 0x1
 8161 0585 51       		.byte	0x51
 8162 0586 9F       		.byte	0x9f
 8163 0587 00000000 		.4byte	0
 8164 058b 00000000 		.4byte	0
 8165              	.LLST36:
 8166 058f 00000000 		.4byte	.LVL57
 8167 0593 07000000 		.4byte	.LVL58-1
 8168 0597 0100     		.2byte	0x1
 8169 0599 50       		.byte	0x50
 8170 059a 07000000 		.4byte	.LVL58-1
 8171 059e 08000000 		.4byte	.LFE277
 8172 05a2 0400     		.2byte	0x4
 8173 05a4 F3       		.byte	0xf3
 8174 05a5 01       		.uleb128 0x1
 8175 05a6 50       		.byte	0x50
 8176 05a7 9F       		.byte	0x9f
 8177 05a8 00000000 		.4byte	0
 8178 05ac 00000000 		.4byte	0
 8179              	.LLST17:
 8180 05b0 00000000 		.4byte	.LVL37
 8181 05b4 10000000 		.4byte	.LVL38
 8182 05b8 0100     		.2byte	0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 186


 8183 05ba 51       		.byte	0x51
 8184 05bb 10000000 		.4byte	.LVL38
 8185 05bf 28000000 		.4byte	.LFE275
 8186 05c3 0200     		.2byte	0x2
 8187 05c5 70       		.byte	0x70
 8188 05c6 18       		.sleb128 24
 8189 05c7 00000000 		.4byte	0
 8190 05cb 00000000 		.4byte	0
 8191              	.LLST18:
 8192 05cf 00000000 		.4byte	.LVL37
 8193 05d3 12000000 		.4byte	.LVL39
 8194 05d7 0100     		.2byte	0x1
 8195 05d9 52       		.byte	0x52
 8196 05da 12000000 		.4byte	.LVL39
 8197 05de 28000000 		.4byte	.LFE275
 8198 05e2 0200     		.2byte	0x2
 8199 05e4 70       		.byte	0x70
 8200 05e5 1C       		.sleb128 28
 8201 05e6 00000000 		.4byte	0
 8202 05ea 00000000 		.4byte	0
 8203              	.LLST19:
 8204 05ee 00000000 		.4byte	.LVL37
 8205 05f2 22000000 		.4byte	.LVL42
 8206 05f6 0200     		.2byte	0x2
 8207 05f8 91       		.byte	0x91
 8208 05f9 00       		.sleb128 0
 8209 05fa 22000000 		.4byte	.LVL42
 8210 05fe 28000000 		.4byte	.LFE275
 8211 0602 0200     		.2byte	0x2
 8212 0604 7D       		.byte	0x7d
 8213 0605 00       		.sleb128 0
 8214 0606 00000000 		.4byte	0
 8215 060a 00000000 		.4byte	0
 8216              	.LLST20:
 8217 060e 00000000 		.4byte	.LVL37
 8218 0612 22000000 		.4byte	.LVL42
 8219 0616 0200     		.2byte	0x2
 8220 0618 91       		.byte	0x91
 8221 0619 04       		.sleb128 4
 8222 061a 22000000 		.4byte	.LVL42
 8223 061e 28000000 		.4byte	.LFE275
 8224 0622 0200     		.2byte	0x2
 8225 0624 7D       		.byte	0x7d
 8226 0625 04       		.sleb128 4
 8227 0626 00000000 		.4byte	0
 8228 062a 00000000 		.4byte	0
 8229              	.LLST21:
 8230 062e 00000000 		.4byte	.LVL37
 8231 0632 1A000000 		.4byte	.LVL41
 8232 0636 0100     		.2byte	0x1
 8233 0638 50       		.byte	0x50
 8234 0639 00000000 		.4byte	0
 8235 063d 00000000 		.4byte	0
 8236              	.LLST23:
 8237 0641 00000000 		.4byte	.LVL37
 8238 0645 18000000 		.4byte	.LVL40
 8239 0649 0100     		.2byte	0x1
ARM GAS  /tmp/cc5e0BXI.s 			page 187


 8240 064b 50       		.byte	0x50
 8241 064c 00000000 		.4byte	0
 8242 0650 00000000 		.4byte	0
 8243              	.LLST0:
 8244 0654 00000000 		.4byte	.LVL0
 8245 0658 02000000 		.4byte	.LVL1
 8246 065c 0100     		.2byte	0x1
 8247 065e 50       		.byte	0x50
 8248 065f 02000000 		.4byte	.LVL1
 8249 0663 04000000 		.4byte	.LFE262
 8250 0667 0400     		.2byte	0x4
 8251 0669 F3       		.byte	0xf3
 8252 066a 01       		.uleb128 0x1
 8253 066b 50       		.byte	0x50
 8254 066c 9F       		.byte	0x9f
 8255 066d 00000000 		.4byte	0
 8256 0671 00000000 		.4byte	0
 8257              	.LLST29:
 8258 0675 00000000 		.4byte	.LVL54
 8259 0679 07000000 		.4byte	.LVL56-1
 8260 067d 0100     		.2byte	0x1
 8261 067f 50       		.byte	0x50
 8262 0680 07000000 		.4byte	.LVL56-1
 8263 0684 08000000 		.4byte	.LFE278
 8264 0688 0400     		.2byte	0x4
 8265 068a F3       		.byte	0xf3
 8266 068b 01       		.uleb128 0x1
 8267 068c 50       		.byte	0x50
 8268 068d 9F       		.byte	0x9f
 8269 068e 00000000 		.4byte	0
 8270 0692 00000000 		.4byte	0
 8271              	.LLST30:
 8272 0696 00000000 		.4byte	.LVL54
 8273 069a 07000000 		.4byte	.LVL56-1
 8274 069e 0100     		.2byte	0x1
 8275 06a0 51       		.byte	0x51
 8276 06a1 07000000 		.4byte	.LVL56-1
 8277 06a5 08000000 		.4byte	.LFE278
 8278 06a9 0400     		.2byte	0x4
 8279 06ab F3       		.byte	0xf3
 8280 06ac 01       		.uleb128 0x1
 8281 06ad 51       		.byte	0x51
 8282 06ae 9F       		.byte	0x9f
 8283 06af 00000000 		.4byte	0
 8284 06b3 00000000 		.4byte	0
 8285              	.LLST31:
 8286 06b7 00000000 		.4byte	.LVL54
 8287 06bb 04000000 		.4byte	.LVL55
 8288 06bf 0100     		.2byte	0x1
 8289 06c1 52       		.byte	0x52
 8290 06c2 04000000 		.4byte	.LVL55
 8291 06c6 08000000 		.4byte	.LFE278
 8292 06ca 0400     		.2byte	0x4
 8293 06cc F3       		.byte	0xf3
 8294 06cd 01       		.uleb128 0x1
 8295 06ce 52       		.byte	0x52
 8296 06cf 9F       		.byte	0x9f
ARM GAS  /tmp/cc5e0BXI.s 			page 188


 8297 06d0 00000000 		.4byte	0
 8298 06d4 00000000 		.4byte	0
 8299              	.LLST32:
 8300 06d8 00000000 		.4byte	.LVL54
 8301 06dc 04000000 		.4byte	.LVL55
 8302 06e0 0B00     		.2byte	0xb
 8303 06e2 72       		.byte	0x72
 8304 06e3 00       		.sleb128 0
 8305 06e4 0A       		.byte	0xa
 8306 06e5 000E     		.2byte	0xe00
 8307 06e7 1A       		.byte	0x1a
 8308 06e8 0A       		.byte	0xa
 8309 06e9 FFFF     		.2byte	0xffff
 8310 06eb 1A       		.byte	0x1a
 8311 06ec 9F       		.byte	0x9f
 8312 06ed 04000000 		.4byte	.LVL55
 8313 06f1 08000000 		.4byte	.LFE278
 8314 06f5 0C00     		.2byte	0xc
 8315 06f7 F3       		.byte	0xf3
 8316 06f8 01       		.uleb128 0x1
 8317 06f9 52       		.byte	0x52
 8318 06fa 0A       		.byte	0xa
 8319 06fb 000E     		.2byte	0xe00
 8320 06fd 1A       		.byte	0x1a
 8321 06fe 0A       		.byte	0xa
 8322 06ff FFFF     		.2byte	0xffff
 8323 0701 1A       		.byte	0x1a
 8324 0702 9F       		.byte	0x9f
 8325 0703 00000000 		.4byte	0
 8326 0707 00000000 		.4byte	0
 8327              		.section	.debug_aranges,"",%progbits
 8328 0000 AC000000 		.4byte	0xac
 8329 0004 0200     		.2byte	0x2
 8330 0006 00000000 		.4byte	.Ldebug_info0
 8331 000a 04       		.byte	0x4
 8332 000b 00       		.byte	0
 8333 000c 0000     		.2byte	0
 8334 000e 0000     		.2byte	0
 8335 0010 00000000 		.4byte	.LFB262
 8336 0014 04000000 		.4byte	.LFE262-.LFB262
 8337 0018 00000000 		.4byte	.LFB283
 8338 001c 12000000 		.4byte	.LFE283-.LFB283
 8339 0020 00000000 		.4byte	.LFB285
 8340 0024 1E000000 		.4byte	.LFE285-.LFB285
 8341 0028 00000000 		.4byte	.LFB286
 8342 002c 2A000000 		.4byte	.LFE286-.LFB286
 8343 0030 00000000 		.4byte	.LFB287
 8344 0034 18000000 		.4byte	.LFE287-.LFB287
 8345 0038 00000000 		.4byte	.LFB288
 8346 003c 46000000 		.4byte	.LFE288-.LFB288
 8347 0040 00000000 		.4byte	.LFB290
 8348 0044 16000000 		.4byte	.LFE290-.LFB290
 8349 0048 00000000 		.4byte	.LFB293
 8350 004c 02000000 		.4byte	.LFE293-.LFB293
 8351 0050 00000000 		.4byte	.LFB280
 8352 0054 3C000000 		.4byte	.LFE280-.LFB280
 8353 0058 00000000 		.4byte	.LFB289
ARM GAS  /tmp/cc5e0BXI.s 			page 189


 8354 005c 2A000000 		.4byte	.LFE289-.LFB289
 8355 0060 00000000 		.4byte	.LFB295
 8356 0064 0E000000 		.4byte	.LFE295-.LFB295
 8357 0068 00000000 		.4byte	.LFB275
 8358 006c 28000000 		.4byte	.LFE275-.LFB275
 8359 0070 00000000 		.4byte	.LFB279
 8360 0074 78000000 		.4byte	.LFE279-.LFB279
 8361 0078 00000000 		.4byte	.LFB278
 8362 007c 08000000 		.4byte	.LFE278-.LFB278
 8363 0080 00000000 		.4byte	.LFB277
 8364 0084 08000000 		.4byte	.LFE277-.LFB277
 8365 0088 00000000 		.4byte	.LFB281
 8366 008c 34000000 		.4byte	.LFE281-.LFB281
 8367 0090 00000000 		.4byte	.LFB282
 8368 0094 24000000 		.4byte	.LFE282-.LFB282
 8369 0098 00000000 		.4byte	.LFB284
 8370 009c 1A000000 		.4byte	.LFE284-.LFB284
 8371 00a0 00000000 		.4byte	.LFB291
 8372 00a4 AE000000 		.4byte	.LFE291-.LFB291
 8373 00a8 00000000 		.4byte	0
 8374 00ac 00000000 		.4byte	0
 8375              		.section	.debug_ranges,"",%progbits
 8376              	.Ldebug_ranges0:
 8377 0000 18000000 		.4byte	.LBB73
 8378 0004 36000000 		.4byte	.LBE73
 8379 0008 38000000 		.4byte	.LBB74
 8380 000c 3A000000 		.4byte	.LBE74
 8381 0010 00000000 		.4byte	0
 8382 0014 00000000 		.4byte	0
 8383 0018 14000000 		.4byte	.LBB79
 8384 001c 16000000 		.4byte	.LBE79
 8385 0020 1A000000 		.4byte	.LBB82
 8386 0024 2C000000 		.4byte	.LBE82
 8387 0028 00000000 		.4byte	0
 8388 002c 00000000 		.4byte	0
 8389 0030 0E000000 		.4byte	.LBB83
 8390 0034 1C000000 		.4byte	.LBE83
 8391 0038 1E000000 		.4byte	.LBB84
 8392 003c 22000000 		.4byte	.LBE84
 8393 0040 00000000 		.4byte	0
 8394 0044 00000000 		.4byte	0
 8395 0048 02000000 		.4byte	.LBB86
 8396 004c 08000000 		.4byte	.LBE86
 8397 0050 12000000 		.4byte	.LBB97
 8398 0054 14000000 		.4byte	.LBE97
 8399 0058 16000000 		.4byte	.LBB98
 8400 005c 1A000000 		.4byte	.LBE98
 8401 0060 00000000 		.4byte	0
 8402 0064 00000000 		.4byte	0
 8403 0068 02000000 		.4byte	.LBB89
 8404 006c 04000000 		.4byte	.LBE89
 8405 0070 16000000 		.4byte	.LBB92
 8406 0074 18000000 		.4byte	.LBE92
 8407 0078 00000000 		.4byte	0
 8408 007c 00000000 		.4byte	0
 8409 0080 1E000000 		.4byte	.LBB100
 8410 0084 22000000 		.4byte	.LBE100
ARM GAS  /tmp/cc5e0BXI.s 			page 190


 8411 0088 24000000 		.4byte	.LBB107
 8412 008c 26000000 		.4byte	.LBE107
 8413 0090 28000000 		.4byte	.LBB108
 8414 0094 2A000000 		.4byte	.LBE108
 8415 0098 38000000 		.4byte	.LBB109
 8416 009c 3C000000 		.4byte	.LBE109
 8417 00a0 48000000 		.4byte	.LBB110
 8418 00a4 4A000000 		.4byte	.LBE110
 8419 00a8 66000000 		.4byte	.LBB111
 8420 00ac 6A000000 		.4byte	.LBE111
 8421 00b0 00000000 		.4byte	0
 8422 00b4 00000000 		.4byte	0
 8423 00b8 04000000 		.4byte	.LBB116
 8424 00bc 0E000000 		.4byte	.LBE116
 8425 00c0 10000000 		.4byte	.LBB119
 8426 00c4 24000000 		.4byte	.LBE119
 8427 00c8 00000000 		.4byte	0
 8428 00cc 00000000 		.4byte	0
 8429 00d0 0E000000 		.4byte	.LBB120
 8430 00d4 24000000 		.4byte	.LBE120
 8431 00d8 26000000 		.4byte	.LBB124
 8432 00dc 2C000000 		.4byte	.LBE124
 8433 00e0 9E000000 		.4byte	.LBB129
 8434 00e4 AE000000 		.4byte	.LBE129
 8435 00e8 00000000 		.4byte	0
 8436 00ec 00000000 		.4byte	0
 8437 00f0 64000000 		.4byte	.LBB125
 8438 00f4 82000000 		.4byte	.LBE125
 8439 00f8 86000000 		.4byte	.LBB128
 8440 00fc 94000000 		.4byte	.LBE128
 8441 0100 00000000 		.4byte	0
 8442 0104 00000000 		.4byte	0
 8443 0108 00000000 		.4byte	.LFB262
 8444 010c 04000000 		.4byte	.LFE262
 8445 0110 00000000 		.4byte	.LFB283
 8446 0114 12000000 		.4byte	.LFE283
 8447 0118 00000000 		.4byte	.LFB285
 8448 011c 1E000000 		.4byte	.LFE285
 8449 0120 00000000 		.4byte	.LFB286
 8450 0124 2A000000 		.4byte	.LFE286
 8451 0128 00000000 		.4byte	.LFB287
 8452 012c 18000000 		.4byte	.LFE287
 8453 0130 00000000 		.4byte	.LFB288
 8454 0134 46000000 		.4byte	.LFE288
 8455 0138 00000000 		.4byte	.LFB290
 8456 013c 16000000 		.4byte	.LFE290
 8457 0140 00000000 		.4byte	.LFB293
 8458 0144 02000000 		.4byte	.LFE293
 8459 0148 00000000 		.4byte	.LFB280
 8460 014c 3C000000 		.4byte	.LFE280
 8461 0150 00000000 		.4byte	.LFB289
 8462 0154 2A000000 		.4byte	.LFE289
 8463 0158 00000000 		.4byte	.LFB295
 8464 015c 0E000000 		.4byte	.LFE295
 8465 0160 00000000 		.4byte	.LFB275
 8466 0164 28000000 		.4byte	.LFE275
 8467 0168 00000000 		.4byte	.LFB279
ARM GAS  /tmp/cc5e0BXI.s 			page 191


 8468 016c 78000000 		.4byte	.LFE279
 8469 0170 00000000 		.4byte	.LFB278
 8470 0174 08000000 		.4byte	.LFE278
 8471 0178 00000000 		.4byte	.LFB277
 8472 017c 08000000 		.4byte	.LFE277
 8473 0180 00000000 		.4byte	.LFB281
 8474 0184 34000000 		.4byte	.LFE281
 8475 0188 00000000 		.4byte	.LFB282
 8476 018c 24000000 		.4byte	.LFE282
 8477 0190 00000000 		.4byte	.LFB284
 8478 0194 1A000000 		.4byte	.LFE284
 8479 0198 00000000 		.4byte	.LFB291
 8480 019c AE000000 		.4byte	.LFE291
 8481 01a0 00000000 		.4byte	0
 8482 01a4 00000000 		.4byte	0
 8483              		.section	.debug_line,"",%progbits
 8484              	.Ldebug_line0:
 8485 0000 D5060000 		.section	.debug_str,"MS",%progbits,1
 8485      02001304 
 8485      00000201 
 8485      FB0E0D00 
 8485      01010101 
 8486              	.LASF160:
 8487 0000 67657465 		.ascii	"getenv\000"
 8487      6E7600
 8488              	.LASF422:
 8489 0007 5F5A4E39 		.ascii	"_ZN9UARTClassD0Ev\000"
 8489      55415254 
 8489      436C6173 
 8489      73443045 
 8489      7600
 8490              	.LASF206:
 8491 0019 75696E74 		.ascii	"uint_fast16_t\000"
 8491      5F666173 
 8491      7431365F 
 8491      7400
 8492              	.LASF18:
 8493 0027 6C6F6E67 		.ascii	"long int\000"
 8493      20696E74 
 8493      00
 8494              	.LASF316:
 8495 0030 43504143 		.ascii	"CPACR\000"
 8495      5200
 8496              	.LASF254:
 8497 0036 4143435F 		.ascii	"ACC_IRQn\000"
 8497      4952516E 
 8497      00
 8498              	.LASF314:
 8499 003f 43435349 		.ascii	"CCSIDR\000"
 8499      445200
 8500              	.LASF348:
 8501 0046 55415254 		.ascii	"UART_RHR\000"
 8501      5F524852 
 8501      00
 8502              	.LASF31:
 8503 004f 5F5F7569 		.ascii	"__uint_least64_t\000"
 8503      6E745F6C 
ARM GAS  /tmp/cc5e0BXI.s 			page 192


 8503      65617374 
 8503      36345F74 
 8503      00
 8504              	.LASF351:
 8505 0060 55415254 		.ascii	"UART_CMPR\000"
 8505      5F434D50 
 8505      5200
 8506              	.LASF404:
 8507 006a 5F5A4E39 		.ascii	"_ZN9UARTClass5flushEv\000"
 8507      55415254 
 8507      436C6173 
 8507      7335666C 
 8507      75736845 
 8508              	.LASF399:
 8509 0080 5F5A4E39 		.ascii	"_ZN9UARTClass9availableEv\000"
 8509      55415254 
 8509      436C6173 
 8509      73396176 
 8509      61696C61 
 8510              	.LASF327:
 8511 009a 44434353 		.ascii	"DCCSW\000"
 8511      5700
 8512              	.LASF340:
 8513 00a0 53797374 		.ascii	"SystemCoreClock\000"
 8513      656D436F 
 8513      7265436C 
 8513      6F636B00 
 8514              	.LASF471:
 8515 00b0 72616E64 		.ascii	"rand\000"
 8515      00
 8516              	.LASF436:
 8517 00b5 70556172 		.ascii	"pUart\000"
 8517      7400
 8518              	.LASF48:
 8519 00bb 5F6D6178 		.ascii	"_maxwds\000"
 8519      77647300 
 8520              	.LASF271:
 8521 00c3 54433131 		.ascii	"TC11_IRQn\000"
 8521      5F495251 
 8521      6E00
 8522              	.LASF223:
 8523 00cd 52535443 		.ascii	"RSTC_IRQn\000"
 8523      5F495251 
 8523      6E00
 8524              	.LASF397:
 8525 00d7 61766169 		.ascii	"available\000"
 8525      6C61626C 
 8525      6500
 8526              	.LASF62:
 8527 00e1 5F6F6E5F 		.ascii	"_on_exit_args\000"
 8527      65786974 
 8527      5F617267 
 8527      7300
 8528              	.LASF171:
 8529 00ef 73797374 		.ascii	"system\000"
 8529      656D00
 8530              	.LASF373:
ARM GAS  /tmp/cc5e0BXI.s 			page 193


 8531 00f6 5F5A4E31 		.ascii	"_ZN10RingBuffer10storeBlockEPKhj\000"
 8531      3052696E 
 8531      67427566 
 8531      66657231 
 8531      3073746F 
 8532              	.LASF100:
 8533 0117 5F776374 		.ascii	"_wctomb_state\000"
 8533      6F6D625F 
 8533      73746174 
 8533      6500
 8534              	.LASF145:
 8535 0125 35646976 		.ascii	"5div_t\000"
 8535      5F7400
 8536              	.LASF383:
 8537 012c 5F705561 		.ascii	"_pUart\000"
 8537      727400
 8538              	.LASF324:
 8539 0133 44434953 		.ascii	"DCISW\000"
 8539      5700
 8540              	.LASF425:
 8541 0139 62756666 		.ascii	"buffer\000"
 8541      657200
 8542              	.LASF268:
 8543 0140 5443385F 		.ascii	"TC8_IRQn\000"
 8543      4952516E 
 8543      00
 8544              	.LASF388:
 8545 0149 5F5A4E39 		.ascii	"_ZN9UARTClassC4ERKS_\000"
 8545      55415254 
 8545      436C6173 
 8545      73433445 
 8545      524B535F 
 8546              	.LASF53:
 8547 015e 5F5F746D 		.ascii	"__tm_sec\000"
 8547      5F736563 
 8547      00
 8548              	.LASF102:
 8549 0167 5F736967 		.ascii	"_signal_buf\000"
 8549      6E616C5F 
 8549      62756600 
 8550              	.LASF162:
 8551 0173 6D626C65 		.ascii	"mblen\000"
 8551      6E00
 8552              	.LASF2:
 8553 0179 756E7369 		.ascii	"unsigned int\000"
 8553      676E6564 
 8553      20696E74 
 8553      00
 8554              	.LASF331:
 8555 0186 4954434D 		.ascii	"ITCMCR\000"
 8555      435200
 8556              	.LASF190:
 8557 018d 75696E74 		.ascii	"uint32_t\000"
 8557      33325F74 
 8557      00
 8558              	.LASF0:
 8559 0196 5F5F676E 		.ascii	"__gnu_cxx\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 194


 8559      755F6378 
 8559      7800
 8560              	.LASF333:
 8561 01a0 41484250 		.ascii	"AHBPCR\000"
 8561      435200
 8562              	.LASF320:
 8563 01a7 49434941 		.ascii	"ICIALLU\000"
 8563      4C4C5500 
 8564              	.LASF433:
 8565 01af 6D6F6465 		.ascii	"modeReg\000"
 8565      52656700 
 8566              	.LASF76:
 8567 01b7 5F6C6266 		.ascii	"_lbfsize\000"
 8567      73697A65 
 8567      00
 8568              	.LASF74:
 8569 01c0 5F666C61 		.ascii	"_flags\000"
 8569      677300
 8570              	.LASF211:
 8571 01c7 696E746D 		.ascii	"intmax_t\000"
 8571      61785F74 
 8571      00
 8572              	.LASF210:
 8573 01d0 75696E74 		.ascii	"uint_fast64_t\000"
 8573      5F666173 
 8573      7436345F 
 8573      7400
 8574              	.LASF205:
 8575 01de 696E745F 		.ascii	"int_fast16_t\000"
 8575      66617374 
 8575      31365F74 
 8575      00
 8576              	.LASF228:
 8577 01eb 4546435F 		.ascii	"EFC_IRQn\000"
 8577      4952516E 
 8577      00
 8578              	.LASF170:
 8579 01f4 73747274 		.ascii	"strtoul\000"
 8579      6F756C00 
 8580              	.LASF233:
 8581 01fc 50494F43 		.ascii	"PIOC_IRQn\000"
 8581      5F495251 
 8581      6E00
 8582              	.LASF113:
 8583 0206 5F657272 		.ascii	"_errno\000"
 8583      6E6F00
 8584              	.LASF164:
 8585 020d 77636861 		.ascii	"wchar_t\000"
 8585      725F7400 
 8586              	.LASF35:
 8587 0215 5F6F6666 		.ascii	"_off_t\000"
 8587      5F7400
 8588              	.LASF277:
 8589 021c 53445241 		.ascii	"SDRAMC_IRQn\000"
 8589      4D435F49 
 8589      52516E00 
 8590              	.LASF279:
ARM GAS  /tmp/cc5e0BXI.s 			page 195


 8591 0228 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 8591      50485F43 
 8591      4F554E54 
 8591      5F495251 
 8591      6E00
 8592              	.LASF182:
 8593 023a 73747265 		.ascii	"strerror\000"
 8593      72726F72 
 8593      00
 8594              	.LASF258:
 8595 0243 474D4143 		.ascii	"GMAC_IRQn\000"
 8595      5F495251 
 8595      6E00
 8596              	.LASF14:
 8597 024d 73686F72 		.ascii	"short int\000"
 8597      7420696E 
 8597      7400
 8598              	.LASF468:
 8599 0257 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 8599      5F5F676E 
 8599      755F6378 
 8599      78336469 
 8599      76457878 
 8600              	.LASF474:
 8601 026c 5F5A4E39 		.ascii	"_ZN9UARTClass3endEv\000"
 8601      55415254 
 8601      436C6173 
 8601      7333656E 
 8601      64457600 
 8602              	.LASF28:
 8603 0280 5F5F696E 		.ascii	"__int_least32_t\000"
 8603      745F6C65 
 8603      61737433 
 8603      325F7400 
 8604              	.LASF247:
 8605 0290 5443335F 		.ascii	"TC3_IRQn\000"
 8605      4952516E 
 8605      00
 8606              	.LASF88:
 8607 0299 5F6D6273 		.ascii	"_mbstate\000"
 8607      74617465 
 8607      00
 8608              	.LASF177:
 8609 02a2 73747274 		.ascii	"strtoull\000"
 8609      6F756C6C 
 8609      00
 8610              	.LASF391:
 8611 02ab 62656769 		.ascii	"begin\000"
 8611      6E00
 8612              	.LASF448:
 8613 02b1 5F5A4E31 		.ascii	"_ZN14HardwareSerialD4Ev\000"
 8613      34486172 
 8613      64776172 
 8613      65536572 
 8613      69616C44 
 8614              	.LASF104:
 8615 02c9 5F6D6272 		.ascii	"_mbrlen_state\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 196


 8615      6C656E5F 
 8615      73746174 
 8615      6500
 8616              	.LASF8:
 8617 02d7 6D61785F 		.ascii	"max_align_t\000"
 8617      616C6967 
 8617      6E5F7400 
 8618              	.LASF230:
 8619 02e3 55415254 		.ascii	"UART1_IRQn\000"
 8619      315F4952 
 8619      516E00
 8620              	.LASF276:
 8621 02ee 50574D31 		.ascii	"PWM1_IRQn\000"
 8621      5F495251 
 8621      6E00
 8622              	.LASF234:
 8623 02f8 55534152 		.ascii	"USART0_IRQn\000"
 8623      54305F49 
 8623      52516E00 
 8624              	.LASF265:
 8625 0304 55415254 		.ascii	"UART4_IRQn\000"
 8625      345F4952 
 8625      516E00
 8626              	.LASF465:
 8627 030f 2E2E2F63 		.ascii	"../cores/arduino/UARTClass.cpp\000"
 8627      6F726573 
 8627      2F617264 
 8627      75696E6F 
 8627      2F554152 
 8628              	.LASF413:
 8629 032e 49727148 		.ascii	"IrqHandler\000"
 8629      616E646C 
 8629      657200
 8630              	.LASF32:
 8631 0339 5F5F696E 		.ascii	"__intptr_t\000"
 8631      74707472 
 8631      5F7400
 8632              	.LASF36:
 8633 0344 5F66706F 		.ascii	"_fpos_t\000"
 8633      735F7400 
 8634              	.LASF69:
 8635 034c 5F666E73 		.ascii	"_fns\000"
 8635      00
 8636              	.LASF77:
 8637 0351 5F636F6F 		.ascii	"_cookie\000"
 8637      6B696500 
 8638              	.LASF457:
 8639 0359 5F5A4E35 		.ascii	"_ZN5PrintC2Ev\000"
 8639      5072696E 
 8639      74433245 
 8639      7600
 8640              	.LASF477:
 8641 0367 5F5A646C 		.ascii	"_ZdlPvj\000"
 8641      50766A00 
 8642              	.LASF274:
 8643 036f 58444D41 		.ascii	"XDMAC_IRQn\000"
 8643      435F4952 
ARM GAS  /tmp/cc5e0BXI.s 			page 197


 8643      516E00
 8644              	.LASF304:
 8645 037a 44465352 		.ascii	"DFSR\000"
 8645      00
 8646              	.LASF355:
 8647 037f 675F696E 		.ascii	"g_interrupt_enabled\000"
 8647      74657272 
 8647      7570745F 
 8647      656E6162 
 8647      6C656400 
 8648              	.LASF380:
 8649 0393 4D6F6465 		.ascii	"Mode_8S1\000"
 8649      5F385331 
 8649      00
 8650              	.LASF51:
 8651 039c 5F426967 		.ascii	"_Bigint\000"
 8651      696E7400 
 8652              	.LASF215:
 8653 03a4 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 8653      72794D61 
 8653      6E616765 
 8653      6D656E74 
 8653      5F495251 
 8654              	.LASF59:
 8655 03ba 5F5F746D 		.ascii	"__tm_wday\000"
 8655      5F776461 
 8655      7900
 8656              	.LASF191:
 8657 03c4 696E7436 		.ascii	"int64_t\000"
 8657      345F7400 
 8658              	.LASF406:
 8659 03cc 5F5A4E39 		.ascii	"_ZN9UARTClass5writeEPKhj\000"
 8659      55415254 
 8659      436C6173 
 8659      73357772 
 8659      69746545 
 8660              	.LASF180:
 8661 03e5 73747274 		.ascii	"strtold\000"
 8661      6F6C6400 
 8662              	.LASF476:
 8663 03ed 4E564943 		.ascii	"NVIC_GetPriority\000"
 8663      5F476574 
 8663      5072696F 
 8663      72697479 
 8663      00
 8664              	.LASF123:
 8665 03fe 5F726573 		.ascii	"_result\000"
 8665      756C7400 
 8666              	.LASF176:
 8667 0406 73747274 		.ascii	"strtoll\000"
 8667      6F6C6C00 
 8668              	.LASF198:
 8669 040e 75696E74 		.ascii	"uint_least16_t\000"
 8669      5F6C6561 
 8669      73743136 
 8669      5F7400
 8670              	.LASF308:
ARM GAS  /tmp/cc5e0BXI.s 			page 198


 8671 041d 49445F50 		.ascii	"ID_PFR\000"
 8671      465200
 8672              	.LASF185:
 8673 0424 696E7438 		.ascii	"int8_t\000"
 8673      5F7400
 8674              	.LASF55:
 8675 042b 5F5F746D 		.ascii	"__tm_hour\000"
 8675      5F686F75 
 8675      7200
 8676              	.LASF439:
 8677 0435 7052785F 		.ascii	"pRx_buffer\000"
 8677      62756666 
 8677      657200
 8678              	.LASF473:
 8679 0440 55415254 		.ascii	"UARTModes\000"
 8679      4D6F6465 
 8679      7300
 8680              	.LASF426:
 8681 044a 73697A65 		.ascii	"size\000"
 8681      00
 8682              	.LASF475:
 8683 044f 5F5A4E39 		.ascii	"_ZN9UARTClassD4Ev\000"
 8683      55415254 
 8683      436C6173 
 8683      73443445 
 8683      7600
 8684              	.LASF396:
 8685 0461 5F5A4E39 		.ascii	"_ZN9UARTClass17availableForWriteEv\000"
 8685      55415254 
 8685      436C6173 
 8685      73313761 
 8685      7661696C 
 8686              	.LASF40:
 8687 0484 5F5F636F 		.ascii	"__count\000"
 8687      756E7400 
 8688              	.LASF281:
 8689 048c 49534552 		.ascii	"ISER\000"
 8689      00
 8690              	.LASF262:
 8691 0491 51535049 		.ascii	"QSPI_IRQn\000"
 8691      5F495251 
 8691      6E00
 8692              	.LASF4:
 8693 049b 5F5F6D61 		.ascii	"__max_align_ld\000"
 8693      785F616C 
 8693      69676E5F 
 8693      6C6400
 8694              	.LASF251:
 8695 04aa 44414343 		.ascii	"DACC_IRQn\000"
 8695      5F495251 
 8695      6E00
 8696              	.LASF21:
 8697 04b4 5F5F696E 		.ascii	"__int64_t\000"
 8697      7436345F 
 8697      7400
 8698              	.LASF54:
 8699 04be 5F5F746D 		.ascii	"__tm_min\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 199


 8699      5F6D696E 
 8699      00
 8700              	.LASF142:
 8701 04c7 5F696D70 		.ascii	"_impure_ptr\000"
 8701      7572655F 
 8701      70747200 
 8702              	.LASF3:
 8703 04d3 5F5F6D61 		.ascii	"__max_align_ll\000"
 8703      785F616C 
 8703      69676E5F 
 8703      6C6C00
 8704              	.LASF110:
 8705 04e2 5F6E6578 		.ascii	"_nextf\000"
 8705      746600
 8706              	.LASF284:
 8707 04e9 52534552 		.ascii	"RSERVED1\000"
 8707      56454431 
 8707      00
 8708              	.LASF23:
 8709 04f2 6C6F6E67 		.ascii	"long long unsigned int\000"
 8709      206C6F6E 
 8709      6720756E 
 8709      7369676E 
 8709      65642069 
 8710              	.LASF469:
 8711 0509 31316D61 		.ascii	"11max_align_t\000"
 8711      785F616C 
 8711      69676E5F 
 8711      7400
 8712              	.LASF261:
 8713 0517 53504931 		.ascii	"SPI1_IRQn\000"
 8713      5F495251 
 8713      6E00
 8714              	.LASF250:
 8715 0521 41464543 		.ascii	"AFEC0_IRQn\000"
 8715      305F4952 
 8715      516E00
 8716              	.LASF106:
 8717 052c 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 8717      72746F77 
 8717      63735F73 
 8717      74617465 
 8717      00
 8718              	.LASF288:
 8719 053d 52455345 		.ascii	"RESERVED3\000"
 8719      52564544 
 8719      3300
 8720              	.LASF197:
 8721 0547 696E745F 		.ascii	"int_least16_t\000"
 8721      6C656173 
 8721      7431365F 
 8721      7400
 8722              	.LASF212:
 8723 0555 75696E74 		.ascii	"uintmax_t\000"
 8723      6D61785F 
 8723      7400
 8724              	.LASF342:
ARM GAS  /tmp/cc5e0BXI.s 			page 200


 8725 055f 55415254 		.ascii	"UART_CR\000"
 8725      5F435200 
 8726              	.LASF461:
 8727 0567 4E564943 		.ascii	"NVIC_EnableIRQ\000"
 8727      5F456E61 
 8727      626C6549 
 8727      525100
 8728              	.LASF165:
 8729 0576 6D62746F 		.ascii	"mbtowc\000"
 8729      776300
 8730              	.LASF371:
 8731 057d 5F5A4E31 		.ascii	"_ZN10RingBuffer10store_charEh\000"
 8731      3052696E 
 8731      67427566 
 8731      66657231 
 8731      3073746F 
 8732              	.LASF310:
 8733 059b 49445F41 		.ascii	"ID_AFR\000"
 8733      465200
 8734              	.LASF93:
 8735 05a2 5F617363 		.ascii	"_asctime_buf\000"
 8735      74696D65 
 8735      5F627566 
 8735      00
 8736              	.LASF138:
 8737 05af 5F72616E 		.ascii	"_rand48\000"
 8737      64343800 
 8738              	.LASF73:
 8739 05b7 5F5F7346 		.ascii	"__sFILE\000"
 8739      494C4500 
 8740              	.LASF50:
 8741 05bf 5F776473 		.ascii	"_wds\000"
 8741      00
 8742              	.LASF44:
 8743 05c4 5F666C6F 		.ascii	"_flock_t\000"
 8743      636B5F74 
 8743      00
 8744              	.LASF411:
 8745 05cd 67657449 		.ascii	"getInterruptPriority\000"
 8745      6E746572 
 8745      72757074 
 8745      5072696F 
 8745      72697479 
 8746              	.LASF322:
 8747 05e2 4943494D 		.ascii	"ICIMVAU\000"
 8747      56415500 
 8748              	.LASF97:
 8749 05ea 5F723438 		.ascii	"_r48\000"
 8749      00
 8750              	.LASF377:
 8751 05ef 4D6F6465 		.ascii	"Mode_8E1\000"
 8751      5F384531 
 8751      00
 8752              	.LASF19:
 8753 05f8 5F5F7569 		.ascii	"__uint32_t\000"
 8753      6E743332 
 8753      5F7400
ARM GAS  /tmp/cc5e0BXI.s 			page 201


 8754              	.LASF375:
 8755 0603 5F5A4E4B 		.ascii	"_ZNK10RingBuffer8roomLeftEv\000"
 8755      31305269 
 8755      6E674275 
 8755      66666572 
 8755      38726F6F 
 8756              	.LASF173:
 8757 061f 7763746F 		.ascii	"wctomb\000"
 8757      6D6200
 8758              	.LASF238:
 8759 0626 50494F45 		.ascii	"PIOE_IRQn\000"
 8759      5F495251 
 8759      6E00
 8760              	.LASF33:
 8761 0630 5F5F7569 		.ascii	"__uintptr_t\000"
 8761      6E747074 
 8761      725F7400 
 8762              	.LASF134:
 8763 063c 5F5F4649 		.ascii	"__FILE\000"
 8763      4C4500
 8764              	.LASF335:
 8765 0643 41484253 		.ascii	"AHBSCR\000"
 8765      435200
 8766              	.LASF85:
 8767 064a 5F6F6666 		.ascii	"_offset\000"
 8767      73657400 
 8768              	.LASF82:
 8769 0652 5F756275 		.ascii	"_ubuf\000"
 8769      6600
 8770              	.LASF38:
 8771 0658 5F5F7763 		.ascii	"__wch\000"
 8771      6800
 8772              	.LASF412:
 8773 065e 5F5A4E39 		.ascii	"_ZN9UARTClass20getInterruptPriorityEv\000"
 8773      55415254 
 8773      436C6173 
 8773      73323067 
 8773      6574496E 
 8774              	.LASF202:
 8775 0684 75696E74 		.ascii	"uint_least64_t\000"
 8775      5F6C6561 
 8775      73743634 
 8775      5F7400
 8776              	.LASF462:
 8777 0693 706D635F 		.ascii	"pmc_disable_periph_clk\000"
 8777      64697361 
 8777      626C655F 
 8777      70657269 
 8777      70685F63 
 8778              	.LASF174:
 8779 06aa 6C6C6469 		.ascii	"lldiv\000"
 8779      7600
 8780              	.LASF175:
 8781 06b0 61746F6C 		.ascii	"atoll\000"
 8781      6C00
 8782              	.LASF417:
 8783 06b6 696E6974 		.ascii	"init\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 202


 8783      00
 8784              	.LASF345:
 8785 06bb 55415254 		.ascii	"UART_IDR\000"
 8785      5F494452 
 8785      00
 8786              	.LASF118:
 8787 06c4 5F656D65 		.ascii	"_emergency\000"
 8787      7267656E 
 8787      637900
 8788              	.LASF437:
 8789 06cf 64774972 		.ascii	"dwIrq\000"
 8789      7100
 8790              	.LASF430:
 8791 06d5 7461696C 		.ascii	"tail\000"
 8791      00
 8792              	.LASF209:
 8793 06da 696E745F 		.ascii	"int_fast64_t\000"
 8793      66617374 
 8793      36345F74 
 8793      00
 8794              	.LASF280:
 8795 06e7 4952516E 		.ascii	"IRQn_Type\000"
 8795      5F547970 
 8795      6500
 8796              	.LASF49:
 8797 06f1 5F736967 		.ascii	"_sign\000"
 8797      6E00
 8798              	.LASF358:
 8799 06f7 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8799      6972715F 
 8799      70726576 
 8799      5F696E74 
 8799      65727275 
 8800              	.LASF244:
 8801 0714 5443305F 		.ascii	"TC0_IRQn\000"
 8801      4952516E 
 8801      00
 8802              	.LASF7:
 8803 071d 73697A65 		.ascii	"size_t\000"
 8803      5F7400
 8804              	.LASF168:
 8805 0724 73747274 		.ascii	"strtod\000"
 8805      6F6400
 8806              	.LASF195:
 8807 072b 696E745F 		.ascii	"int_least8_t\000"
 8807      6C656173 
 8807      74385F74 
 8807      00
 8808              	.LASF178:
 8809 0738 73747274 		.ascii	"strtof\000"
 8809      6F6600
 8810              	.LASF184:
 8811 073f 73747278 		.ascii	"strxfrm\000"
 8811      66726D00 
 8812              	.LASF311:
 8813 0747 49445F4D 		.ascii	"ID_MFR\000"
 8813      465200
ARM GAS  /tmp/cc5e0BXI.s 			page 203


 8814              	.LASF359:
 8815 074e 48617264 		.ascii	"HardwareSerial\000"
 8815      77617265 
 8815      53657269 
 8815      616C00
 8816              	.LASF201:
 8817 075d 696E745F 		.ascii	"int_least64_t\000"
 8817      6C656173 
 8817      7436345F 
 8817      7400
 8818              	.LASF296:
 8819 076b 43505549 		.ascii	"CPUID\000"
 8819      4400
 8820              	.LASF384:
 8821 0771 5F647749 		.ascii	"_dwIrq\000"
 8821      727100
 8822              	.LASF128:
 8823 0778 5F637674 		.ascii	"_cvtbuf\000"
 8823      62756600 
 8824              	.LASF183:
 8825 0780 73747274 		.ascii	"strtok\000"
 8825      6F6B00
 8826              	.LASF60:
 8827 0787 5F5F746D 		.ascii	"__tm_yday\000"
 8827      5F796461 
 8827      7900
 8828              	.LASF196:
 8829 0791 75696E74 		.ascii	"uint_least8_t\000"
 8829      5F6C6561 
 8829      7374385F 
 8829      7400
 8830              	.LASF117:
 8831 079f 5F696E63 		.ascii	"_inc\000"
 8831      00
 8832              	.LASF68:
 8833 07a4 5F696E64 		.ascii	"_ind\000"
 8833      00
 8834              	.LASF300:
 8835 07a9 53485052 		.ascii	"SHPR\000"
 8835      00
 8836              	.LASF29:
 8837 07ae 5F5F7569 		.ascii	"__uint_least32_t\000"
 8837      6E745F6C 
 8837      65617374 
 8837      33325F74 
 8837      00
 8838              	.LASF159:
 8839 07bf 62736561 		.ascii	"bsearch\000"
 8839      72636800 
 8840              	.LASF443:
 8841 07c7 5F5A4E31 		.ascii	"_ZN14HardwareSerialD2Ev\000"
 8841      34486172 
 8841      64776172 
 8841      65536572 
 8841      69616C44 
 8842              	.LASF438:
 8843 07df 64774964 		.ascii	"dwId\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 204


 8843      00
 8844              	.LASF270:
 8845 07e4 54433130 		.ascii	"TC10_IRQn\000"
 8845      5F495251 
 8845      6E00
 8846              	.LASF47:
 8847 07ee 5F6E6578 		.ascii	"_next\000"
 8847      7400
 8848              	.LASF339:
 8849 07f4 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8849      52784275 
 8849      66666572 
 8849      00
 8850              	.LASF365:
 8851 0801 77726974 		.ascii	"write\000"
 8851      6500
 8852              	.LASF22:
 8853 0807 5F5F7569 		.ascii	"__uint64_t\000"
 8853      6E743634 
 8853      5F7400
 8854              	.LASF307:
 8855 0812 41465352 		.ascii	"AFSR\000"
 8855      00
 8856              	.LASF344:
 8857 0817 55415254 		.ascii	"UART_IER\000"
 8857      5F494552 
 8857      00
 8858              	.LASF243:
 8859 0820 5353435F 		.ascii	"SSC_IRQn\000"
 8859      4952516E 
 8859      00
 8860              	.LASF410:
 8861 0829 5F5A4E39 		.ascii	"_ZN9UARTClass20setInterruptPriorityEm\000"
 8861      55415254 
 8861      436C6173 
 8861      73323073 
 8861      6574496E 
 8862              	.LASF41:
 8863 084f 5F5F7661 		.ascii	"__value\000"
 8863      6C756500 
 8864              	.LASF181:
 8865 0857 73747263 		.ascii	"strcoll\000"
 8865      6F6C6C00 
 8866              	.LASF15:
 8867 085f 5F5F7569 		.ascii	"__uint16_t\000"
 8867      6E743136 
 8867      5F7400
 8868              	.LASF460:
 8869 086a 4E564943 		.ascii	"NVIC_DisableIRQ\000"
 8869      5F446973 
 8869      61626C65 
 8869      49525100 
 8870              	.LASF240:
 8871 087a 54574948 		.ascii	"TWIHS0_IRQn\000"
 8871      53305F49 
 8871      52516E00 
 8872              	.LASF144:
ARM GAS  /tmp/cc5e0BXI.s 			page 205


 8873 0886 31305F6D 		.ascii	"10_mbstate_t\000"
 8873      62737461 
 8873      74655F74 
 8873      00
 8874              	.LASF303:
 8875 0893 48465352 		.ascii	"HFSR\000"
 8875      00
 8876              	.LASF46:
 8877 0898 5F5F554C 		.ascii	"__ULong\000"
 8877      6F6E6700 
 8878              	.LASF273:
 8879 08a0 54524E47 		.ascii	"TRNG_IRQn\000"
 8879      5F495251 
 8879      6E00
 8880              	.LASF108:
 8881 08aa 5F776373 		.ascii	"_wcsrtombs_state\000"
 8881      72746F6D 
 8881      62735F73 
 8881      74617465 
 8881      00
 8882              	.LASF98:
 8883 08bb 5F6D626C 		.ascii	"_mblen_state\000"
 8883      656E5F73 
 8883      74617465 
 8883      00
 8884              	.LASF249:
 8885 08c8 5443355F 		.ascii	"TC5_IRQn\000"
 8885      4952516E 
 8885      00
 8886              	.LASF387:
 8887 08d1 5F5A4E39 		.ascii	"_ZN9UARTClassC4EOS_\000"
 8887      55415254 
 8887      436C6173 
 8887      73433445 
 8887      4F535F00 
 8888              	.LASF241:
 8889 08e5 54574948 		.ascii	"TWIHS1_IRQn\000"
 8889      53315F49 
 8889      52516E00 
 8890              	.LASF45:
 8891 08f1 63686172 		.ascii	"char\000"
 8891      00
 8892              	.LASF56:
 8893 08f6 5F5F746D 		.ascii	"__tm_mday\000"
 8893      5F6D6461 
 8893      7900
 8894              	.LASF131:
 8895 0900 5F736967 		.ascii	"_sig_func\000"
 8895      5F66756E 
 8895      6300
 8896              	.LASF105:
 8897 090a 5F6D6272 		.ascii	"_mbrtowc_state\000"
 8897      746F7763 
 8897      5F737461 
 8897      746500
 8898              	.LASF130:
 8899 0919 5F617465 		.ascii	"_atexit0\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 206


 8899      78697430 
 8899      00
 8900              	.LASF17:
 8901 0922 5F5F696E 		.ascii	"__int32_t\000"
 8901      7433325F 
 8901      7400
 8902              	.LASF299:
 8903 092c 41495243 		.ascii	"AIRCR\000"
 8903      5200
 8904              	.LASF466:
 8905 0932 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 8905      652F746F 
 8905      72626A6F 
 8905      726E2F65 
 8905      636C6970 
 8906 0965 00       		.ascii	"\000"
 8907              	.LASF423:
 8908 0966 5F5A4E39 		.ascii	"_ZN9UARTClassD2Ev\000"
 8908      55415254 
 8908      436C6173 
 8908      73443245 
 8908      7600
 8909              	.LASF84:
 8910 0978 5F626C6B 		.ascii	"_blksize\000"
 8910      73697A65 
 8910      00
 8911              	.LASF405:
 8912 0981 5F5A4E39 		.ascii	"_ZN9UARTClass5writeEh\000"
 8912      55415254 
 8912      436C6173 
 8912      73357772 
 8912      69746545 
 8913              	.LASF309:
 8914 0997 49445F44 		.ascii	"ID_DFR\000"
 8914      465200
 8915              	.LASF124:
 8916 099e 5F726573 		.ascii	"_result_k\000"
 8916      756C745F 
 8916      6B00
 8917              	.LASF275:
 8918 09a8 4953495F 		.ascii	"ISI_IRQn\000"
 8918      4952516E 
 8918      00
 8919              	.LASF125:
 8920 09b1 5F703573 		.ascii	"_p5s\000"
 8920      00
 8921              	.LASF129:
 8922 09b6 5F6E6577 		.ascii	"_new\000"
 8922      00
 8923              	.LASF186:
 8924 09bb 75696E74 		.ascii	"uint8_t\000"
 8924      385F7400 
 8925              	.LASF363:
 8926 09c3 5F694865 		.ascii	"_iHead\000"
 8926      616400
 8927              	.LASF424:
 8928 09ca 73746174 		.ascii	"status\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 207


 8928      757300
 8929              	.LASF428:
 8930 09d1 75635F64 		.ascii	"uc_data\000"
 8930      61746100 
 8931              	.LASF146:
 8932 09d9 71756F74 		.ascii	"quot\000"
 8932      00
 8933              	.LASF81:
 8934 09de 5F636C6F 		.ascii	"_close\000"
 8934      736500
 8935              	.LASF408:
 8936 09e5 5F5A4E4B 		.ascii	"_ZNK9UARTClass8canWriteEv\000"
 8936      39554152 
 8936      54436C61 
 8936      73733863 
 8936      616E5772 
 8937              	.LASF121:
 8938 09ff 5F5F7364 		.ascii	"__sdidinit\000"
 8938      6964696E 
 8938      697400
 8939              	.LASF366:
 8940 0a0a 52696E67 		.ascii	"RingBuffer\000"
 8940      42756666 
 8940      657200
 8941              	.LASF453:
 8942 0a15 5F5A4E36 		.ascii	"_ZN6StreamD2Ev\000"
 8942      53747265 
 8942      616D4432 
 8942      457600
 8943              	.LASF334:
 8944 0a24 43414352 		.ascii	"CACR\000"
 8944      00
 8945              	.LASF368:
 8946 0a29 5F5A4E31 		.ascii	"_ZN10RingBufferC4Ev\000"
 8946      3052696E 
 8946      67427566 
 8946      66657243 
 8946      34457600 
 8947              	.LASF367:
 8948 0a3d 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 8948      5072696E 
 8948      74357772 
 8948      69746545 
 8948      504B636A 
 8949              	.LASF114:
 8950 0a52 5F737464 		.ascii	"_stdin\000"
 8950      696E00
 8951              	.LASF95:
 8952 0a59 5F67616D 		.ascii	"_gamma_signgam\000"
 8952      6D615F73 
 8952      69676E67 
 8952      616D00
 8953              	.LASF421:
 8954 0a68 5F5F696E 		.ascii	"__in_chrg\000"
 8954      5F636872 
 8954      6700
 8955              	.LASF329:
ARM GAS  /tmp/cc5e0BXI.s 			page 208


 8956 0a72 44434349 		.ascii	"DCCISW\000"
 8956      535700
 8957              	.LASF315:
 8958 0a79 43535345 		.ascii	"CSSELR\000"
 8958      4C5200
 8959              	.LASF5:
 8960 0a80 6C6F6E67 		.ascii	"long long int\000"
 8960      206C6F6E 
 8960      6720696E 
 8960      7400
 8961              	.LASF317:
 8962 0a8e 4D564652 		.ascii	"MVFR0\000"
 8962      3000
 8963              	.LASF452:
 8964 0a94 5F5A4E36 		.ascii	"_ZN6StreamD0Ev\000"
 8964      53747265 
 8964      616D4430 
 8964      457600
 8965              	.LASF362:
 8966 0aa3 5F617563 		.ascii	"_aucBuffer\000"
 8966      42756666 
 8966      657200
 8967              	.LASF6:
 8968 0aae 6C6F6E67 		.ascii	"long double\000"
 8968      20646F75 
 8968      626C6500 
 8969              	.LASF328:
 8970 0aba 44434349 		.ascii	"DCCIMVAC\000"
 8970      4D564143 
 8970      00
 8971              	.LASF71:
 8972 0ac3 5F626173 		.ascii	"_base\000"
 8972      6500
 8973              	.LASF126:
 8974 0ac9 5F667265 		.ascii	"_freelist\000"
 8974      656C6973 
 8974      7400
 8975              	.LASF450:
 8976 0ad3 5F5A4E36 		.ascii	"_ZN6StreamC4Ev\000"
 8976      53747265 
 8976      616D4334 
 8976      457600
 8977              	.LASF140:
 8978 0ae2 5F6D756C 		.ascii	"_mult\000"
 8978      7400
 8979              	.LASF326:
 8980 0ae8 4443434D 		.ascii	"DCCMVAC\000"
 8980      56414300 
 8981              	.LASF141:
 8982 0af0 5F616464 		.ascii	"_add\000"
 8982      00
 8983              	.LASF252:
 8984 0af5 50574D30 		.ascii	"PWM0_IRQn\000"
 8984      5F495251 
 8984      6E00
 8985              	.LASF302:
 8986 0aff 43465352 		.ascii	"CFSR\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 209


 8986      00
 8987              	.LASF264:
 8988 0b04 55415254 		.ascii	"UART3_IRQn\000"
 8988      335F4952 
 8988      516E00
 8989              	.LASF107:
 8990 0b0f 5F776372 		.ascii	"_wcrtomb_state\000"
 8990      746F6D62 
 8990      5F737461 
 8990      746500
 8991              	.LASF459:
 8992 0b1e 4E564943 		.ascii	"NVIC_SetPriority\000"
 8992      5F536574 
 8992      5072696F 
 8992      72697479 
 8992      00
 8993              	.LASF356:
 8994 0b2f 626F6F6C 		.ascii	"bool\000"
 8994      00
 8995              	.LASF1:
 8996 0b34 5F5F6378 		.ascii	"__cxx11\000"
 8996      78313100 
 8997              	.LASF325:
 8998 0b3c 4443434D 		.ascii	"DCCMVAU\000"
 8998      56415500 
 8999              	.LASF13:
 9000 0b44 5F5F696E 		.ascii	"__int16_t\000"
 9000      7431365F 
 9000      7400
 9001              	.LASF441:
 9002 0b4e 5F5A4E39 		.ascii	"_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_\000"
 9002      55415254 
 9002      436C6173 
 9002      73433245 
 9002      50345561 
 9003              	.LASF226:
 9004 0b7b 5744545F 		.ascii	"WDT_IRQn\000"
 9004      4952516E 
 9004      00
 9005              	.LASF446:
 9006 0b84 7E486172 		.ascii	"~HardwareSerial\000"
 9006      64776172 
 9006      65536572 
 9006      69616C00 
 9007              	.LASF392:
 9008 0b94 5F5A4E35 		.ascii	"_ZN5PrintD4Ev\000"
 9008      5072696E 
 9008      74443445 
 9008      7600
 9009              	.LASF139:
 9010 0ba2 5F736565 		.ascii	"_seed\000"
 9010      6400
 9011              	.LASF203:
 9012 0ba8 696E745F 		.ascii	"int_fast8_t\000"
 9012      66617374 
 9012      385F7400 
 9013              	.LASF353:
ARM GAS  /tmp/cc5e0BXI.s 			page 210


 9014 0bb4 55415254 		.ascii	"UART_WPMR\000"
 9014      5F57504D 
 9014      5200
 9015              	.LASF161:
 9016 0bbe 6C646976 		.ascii	"ldiv\000"
 9016      00
 9017              	.LASF122:
 9018 0bc3 5F5F636C 		.ascii	"__cleanup\000"
 9018      65616E75 
 9018      7000
 9019              	.LASF272:
 9020 0bcd 4145535F 		.ascii	"AES_IRQn\000"
 9020      4952516E 
 9020      00
 9021              	.LASF43:
 9022 0bd6 5F6D6273 		.ascii	"_mbstate_t\000"
 9022      74617465 
 9022      5F7400
 9023              	.LASF442:
 9024 0be1 5F5A4E31 		.ascii	"_ZN14HardwareSerialD0Ev\000"
 9024      34486172 
 9024      64776172 
 9024      65536572 
 9024      69616C44 
 9025              	.LASF323:
 9026 0bf9 4443494D 		.ascii	"DCIMVAU\000"
 9026      56415500 
 9027              	.LASF63:
 9028 0c01 5F666E61 		.ascii	"_fnargs\000"
 9028      72677300 
 9029              	.LASF220:
 9030 0c09 50656E64 		.ascii	"PendSV_IRQn\000"
 9030      53565F49 
 9030      52516E00 
 9031              	.LASF347:
 9032 0c15 55415254 		.ascii	"UART_SR\000"
 9032      5F535200 
 9033              	.LASF26:
 9034 0c1d 5F5F696E 		.ascii	"__int_least16_t\000"
 9034      745F6C65 
 9034      61737431 
 9034      365F7400 
 9035              	.LASF409:
 9036 0c2d 73657449 		.ascii	"setInterruptPriority\000"
 9036      6E746572 
 9036      72757074 
 9036      5072696F 
 9036      72697479 
 9037              	.LASF472:
 9038 0c42 5F5A4E31 		.ascii	"_ZN14HardwareSerialC4Ev\000"
 9038      34486172 
 9038      64776172 
 9038      65536572 
 9038      69616C43 
 9039              	.LASF260:
 9040 0c5a 54574948 		.ascii	"TWIHS2_IRQn\000"
 9040      53325F49 
ARM GAS  /tmp/cc5e0BXI.s 			page 211


 9040      52516E00 
 9041              	.LASF61:
 9042 0c66 5F5F746D 		.ascii	"__tm_isdst\000"
 9042      5F697364 
 9042      737400
 9043              	.LASF208:
 9044 0c71 75696E74 		.ascii	"uint_fast32_t\000"
 9044      5F666173 
 9044      7433325F 
 9044      7400
 9045              	.LASF231:
 9046 0c7f 50494F41 		.ascii	"PIOA_IRQn\000"
 9046      5F495251 
 9046      6E00
 9047              	.LASF257:
 9048 0c89 4D43414E 		.ascii	"MCAN1_IRQn\000"
 9048      315F4952 
 9048      516E00
 9049              	.LASF369:
 9050 0c94 73746F72 		.ascii	"store_char\000"
 9050      655F6368 
 9050      617200
 9051              	.LASF267:
 9052 0c9f 5443375F 		.ascii	"TC7_IRQn\000"
 9052      4952516E 
 9052      00
 9053              	.LASF109:
 9054 0ca8 5F685F65 		.ascii	"_h_errno\000"
 9054      72726E6F 
 9054      00
 9055              	.LASF287:
 9056 0cb1 49435052 		.ascii	"ICPR\000"
 9056      00
 9057              	.LASF434:
 9058 0cb6 62723136 		.ascii	"br16\000"
 9058      00
 9059              	.LASF429:
 9060 0cbb 68656164 		.ascii	"head\000"
 9060      00
 9061              	.LASF242:
 9062 0cc0 53504930 		.ascii	"SPI0_IRQn\000"
 9062      5F495251 
 9062      6E00
 9063              	.LASF246:
 9064 0cca 5443325F 		.ascii	"TC2_IRQn\000"
 9064      4952516E 
 9064      00
 9065              	.LASF255:
 9066 0cd3 55534248 		.ascii	"USBHS_IRQn\000"
 9066      535F4952 
 9066      516E00
 9067              	.LASF9:
 9068 0cde 5F5F696E 		.ascii	"__int8_t\000"
 9068      74385F74 
 9068      00
 9069              	.LASF236:
 9070 0ce7 55534152 		.ascii	"USART2_IRQn\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 212


 9070      54325F49 
 9070      52516E00 
 9071              	.LASF478:
 9072 0cf3 6F706572 		.ascii	"operator delete\000"
 9072      61746F72 
 9072      2064656C 
 9072      65746500 
 9073              	.LASF57:
 9074 0d03 5F5F746D 		.ascii	"__tm_mon\000"
 9074      5F6D6F6E 
 9074      00
 9075              	.LASF445:
 9076 0d0c 53747265 		.ascii	"Stream\000"
 9076      616D00
 9077              	.LASF295:
 9078 0d13 38534342 		.ascii	"8SCB_Type\000"
 9078      5F547970 
 9078      6500
 9079              	.LASF400:
 9080 0d1d 5F5A4E39 		.ascii	"_ZN9UARTClass4peekEv\000"
 9080      55415254 
 9080      436C6173 
 9080      73347065 
 9080      656B4576 
 9081              	.LASF143:
 9082 0d32 5F676C6F 		.ascii	"_global_impure_ptr\000"
 9082      62616C5F 
 9082      696D7075 
 9082      72655F70 
 9082      747200
 9083              	.LASF381:
 9084 0d45 5F72785F 		.ascii	"_rx_buffer\000"
 9084      62756666 
 9084      657200
 9085              	.LASF385:
 9086 0d50 5F647749 		.ascii	"_dwId\000"
 9086      6400
 9087              	.LASF193:
 9088 0d56 696E7470 		.ascii	"intptr_t\000"
 9088      74725F74 
 9088      00
 9089              	.LASF188:
 9090 0d5f 75696E74 		.ascii	"uint16_t\000"
 9090      31365F74 
 9090      00
 9091              	.LASF458:
 9092 0d68 4952516E 		.ascii	"IRQn\000"
 9092      00
 9093              	.LASF79:
 9094 0d6d 5F777269 		.ascii	"_write\000"
 9094      746500
 9095              	.LASF420:
 9096 0d74 74686973 		.ascii	"this\000"
 9096      00
 9097              	.LASF292:
 9098 0d79 53544952 		.ascii	"STIR\000"
 9098      00
ARM GAS  /tmp/cc5e0BXI.s 			page 213


 9099              	.LASF393:
 9100 0d7e 5F5A4E39 		.ascii	"_ZN9UARTClass5beginEm\000"
 9100      55415254 
 9100      436C6173 
 9100      73356265 
 9100      67696E45 
 9101              	.LASF96:
 9102 0d94 5F72616E 		.ascii	"_rand_next\000"
 9102      645F6E65 
 9102      787400
 9103              	.LASF374:
 9104 0d9f 726F6F6D 		.ascii	"roomLeft\000"
 9104      4C656674 
 9104      00
 9105              	.LASF216:
 9106 0da8 42757346 		.ascii	"BusFault_IRQn\000"
 9106      61756C74 
 9106      5F495251 
 9106      6E00
 9107              	.LASF232:
 9108 0db6 50494F42 		.ascii	"PIOB_IRQn\000"
 9108      5F495251 
 9108      6E00
 9109              	.LASF30:
 9110 0dc0 5F5F696E 		.ascii	"__int_least64_t\000"
 9110      745F6C65 
 9110      61737436 
 9110      345F7400 
 9111              	.LASF305:
 9112 0dd0 4D4D4641 		.ascii	"MMFAR\000"
 9112      5200
 9113              	.LASF67:
 9114 0dd6 5F617465 		.ascii	"_atexit\000"
 9114      78697400 
 9115              	.LASF418:
 9116 0dde 5F5A4E39 		.ascii	"_ZN9UARTClass4initEmm\000"
 9116      55415254 
 9116      436C6173 
 9116      7334696E 
 9116      6974456D 
 9117              	.LASF435:
 9118 0df4 636F6E66 		.ascii	"config\000"
 9118      696700
 9119              	.LASF224:
 9120 0dfb 5254435F 		.ascii	"RTC_IRQn\000"
 9120      4952516E 
 9120      00
 9121              	.LASF25:
 9122 0e04 5F5F7569 		.ascii	"__uint_least8_t\000"
 9122      6E745F6C 
 9122      65617374 
 9122      385F7400 
 9123              	.LASF207:
 9124 0e14 696E745F 		.ascii	"int_fast32_t\000"
 9124      66617374 
 9124      33325F74 
 9124      00
ARM GAS  /tmp/cc5e0BXI.s 			page 214


 9125              	.LASF282:
 9126 0e21 52455345 		.ascii	"RESERVED0\000"
 9126      52564544 
 9126      3000
 9127              	.LASF301:
 9128 0e2b 53484353 		.ascii	"SHCSR\000"
 9128      5200
 9129              	.LASF154:
 9130 0e31 61746578 		.ascii	"atexit\000"
 9130      697400
 9131              	.LASF290:
 9132 0e38 52455345 		.ascii	"RESERVED4\000"
 9132      52564544 
 9132      3400
 9133              	.LASF291:
 9134 0e42 52455345 		.ascii	"RESERVED5\000"
 9134      52564544 
 9134      3500
 9135              	.LASF321:
 9136 0e4c 52455345 		.ascii	"RESERVED6\000"
 9136      52564544 
 9136      3600
 9137              	.LASF337:
 9138 0e56 41424653 		.ascii	"ABFSR\000"
 9138      5200
 9139              	.LASF336:
 9140 0e5c 52455345 		.ascii	"RESERVED8\000"
 9140      52564544 
 9140      3800
 9141              	.LASF354:
 9142 0e66 55617274 		.ascii	"Uart\000"
 9142      00
 9143              	.LASF432:
 9144 0e6b 64774261 		.ascii	"dwBaudRate\000"
 9144      75645261 
 9144      746500
 9145              	.LASF163:
 9146 0e76 6D627374 		.ascii	"mbstowcs\000"
 9146      6F776373 
 9146      00
 9147              	.LASF235:
 9148 0e7f 55534152 		.ascii	"USART1_IRQn\000"
 9148      54315F49 
 9148      52516E00 
 9149              	.LASF294:
 9150 0e8b 394E5649 		.ascii	"9NVIC_Type\000"
 9150      435F5479 
 9150      706500
 9151              	.LASF386:
 9152 0e96 55415254 		.ascii	"UARTClass\000"
 9152      436C6173 
 9152      7300
 9153              	.LASF213:
 9154 0ea0 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 9154      61736B61 
 9154      626C6549 
 9154      6E745F49 
ARM GAS  /tmp/cc5e0BXI.s 			page 215


 9154      52516E00 
 9155              	.LASF187:
 9156 0eb4 696E7431 		.ascii	"int16_t\000"
 9156      365F7400 
 9157              	.LASF390:
 9158 0ebc 7E507269 		.ascii	"~Print\000"
 9158      6E7400
 9159              	.LASF133:
 9160 0ec3 5F5F7366 		.ascii	"__sf\000"
 9160      00
 9161              	.LASF431:
 9162 0ec8 7072696F 		.ascii	"priority\000"
 9162      72697479 
 9162      00
 9163              	.LASF229:
 9164 0ed1 55415254 		.ascii	"UART0_IRQn\000"
 9164      305F4952 
 9164      516E00
 9165              	.LASF402:
 9166 0edc 5F5A4E39 		.ascii	"_ZN9UARTClass4readEv\000"
 9166      55415254 
 9166      436C6173 
 9166      73347265 
 9166      61644576 
 9167              	.LASF221:
 9168 0ef1 53797354 		.ascii	"SysTick_IRQn\000"
 9168      69636B5F 
 9168      4952516E 
 9168      00
 9169              	.LASF120:
 9170 0efe 5F637572 		.ascii	"_current_locale\000"
 9170      72656E74 
 9170      5F6C6F63 
 9170      616C6500 
 9171              	.LASF454:
 9172 0f0e 5F5A4E36 		.ascii	"_ZN6StreamC2Ev\000"
 9172      53747265 
 9172      616D4332 
 9172      457600
 9173              	.LASF319:
 9174 0f1d 4D564652 		.ascii	"MVFR2\000"
 9174      3200
 9175              	.LASF86:
 9176 0f23 5F646174 		.ascii	"_data\000"
 9176      6100
 9177              	.LASF39:
 9178 0f29 5F5F7763 		.ascii	"__wchb\000"
 9178      686200
 9179              	.LASF192:
 9180 0f30 75696E74 		.ascii	"uint64_t\000"
 9180      36345F74 
 9180      00
 9181              	.LASF58:
 9182 0f39 5F5F746D 		.ascii	"__tm_year\000"
 9182      5F796561 
 9182      7200
 9183              	.LASF332:
ARM GAS  /tmp/cc5e0BXI.s 			page 216


 9184 0f43 4454434D 		.ascii	"DTCMCR\000"
 9184      435200
 9185              	.LASF75:
 9186 0f4a 5F66696C 		.ascii	"_file\000"
 9186      6500
 9187              	.LASF237:
 9188 0f50 50494F44 		.ascii	"PIOD_IRQn\000"
 9188      5F495251 
 9188      6E00
 9189              	.LASF92:
 9190 0f5a 5F737472 		.ascii	"_strtok_last\000"
 9190      746F6B5F 
 9190      6C617374 
 9190      00
 9191              	.LASF149:
 9192 0f67 6C646976 		.ascii	"ldiv_t\000"
 9192      5F7400
 9193              	.LASF94:
 9194 0f6e 5F6C6F63 		.ascii	"_localtime_buf\000"
 9194      616C7469 
 9194      6D655F62 
 9194      756600
 9195              	.LASF456:
 9196 0f7d 5F5A4E35 		.ascii	"_ZN5PrintD2Ev\000"
 9196      5072696E 
 9196      74443245 
 9196      7600
 9197              	.LASF112:
 9198 0f8b 5F756E75 		.ascii	"_unused\000"
 9198      73656400 
 9199              	.LASF11:
 9200 0f93 5F5F7569 		.ascii	"__uint8_t\000"
 9200      6E74385F 
 9200      7400
 9201              	.LASF269:
 9202 0f9d 5443395F 		.ascii	"TC9_IRQn\000"
 9202      4952516E 
 9202      00
 9203              	.LASF293:
 9204 0fa6 4E564943 		.ascii	"NVIC_Type\000"
 9204      5F547970 
 9204      6500
 9205              	.LASF338:
 9206 0fb0 5343425F 		.ascii	"SCB_Type\000"
 9206      54797065 
 9206      00
 9207              	.LASF127:
 9208 0fb9 5F637674 		.ascii	"_cvtlen\000"
 9208      6C656E00 
 9209              	.LASF401:
 9210 0fc1 72656164 		.ascii	"read\000"
 9210      00
 9211              	.LASF101:
 9212 0fc6 5F6C3634 		.ascii	"_l64a_buf\000"
 9212      615F6275 
 9212      6600
 9213              	.LASF119:
ARM GAS  /tmp/cc5e0BXI.s 			page 217


 9214 0fd0 5F637572 		.ascii	"_current_category\000"
 9214      72656E74 
 9214      5F636174 
 9214      65676F72 
 9214      7900
 9215              	.LASF464:
 9216 0fe2 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 9216      432B2B31 
 9216      3420362E 
 9216      332E3120 
 9216      32303137 
 9217 1015 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 9217      66707635 
 9217      2D643136 
 9217      202D6D66 
 9217      6C6F6174 
 9218 1048 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 9218      6374696F 
 9218      6E2D7365 
 9218      6374696F 
 9218      6E73202D 
 9219 107b 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 9219      69637320 
 9219      2D666E6F 
 9219      2D727474 
 9219      69202D66 
 9220 10ae 6E2D636F 		.ascii	"n-constant\000"
 9220      6E737461 
 9220      6E7400
 9221              	.LASF200:
 9222 10b9 75696E74 		.ascii	"uint_least32_t\000"
 9222      5F6C6561 
 9222      73743332 
 9222      5F7400
 9223              	.LASF415:
 9224 10c8 6F706572 		.ascii	"operator bool\000"
 9224      61746F72 
 9224      20626F6F 
 9224      6C00
 9225              	.LASF298:
 9226 10d6 56544F52 		.ascii	"VTOR\000"
 9226      00
 9227              	.LASF403:
 9228 10db 666C7573 		.ascii	"flush\000"
 9228      6800
 9229              	.LASF248:
 9230 10e1 5443345F 		.ascii	"TC4_IRQn\000"
 9230      4952516E 
 9230      00
 9231              	.LASF444:
 9232 10ea 5F5A4E31 		.ascii	"_ZN14HardwareSerialC2Ev\000"
 9232      34486172 
 9232      64776172 
 9232      65536572 
 9232      69616C43 
 9233              	.LASF352:
 9234 1102 52657365 		.ascii	"Reserved1\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 218


 9234      72766564 
 9234      3100
 9235              	.LASF395:
 9236 110c 61766169 		.ascii	"availableForWrite\000"
 9236      6C61626C 
 9236      65466F72 
 9236      57726974 
 9236      6500
 9237              	.LASF24:
 9238 111e 5F5F696E 		.ascii	"__int_least8_t\000"
 9238      745F6C65 
 9238      61737438 
 9238      5F7400
 9239              	.LASF194:
 9240 112d 75696E74 		.ascii	"uintptr_t\000"
 9240      7074725F 
 9240      7400
 9241              	.LASF52:
 9242 1137 5F5F746D 		.ascii	"__tm\000"
 9242      00
 9243              	.LASF382:
 9244 113c 5F74785F 		.ascii	"_tx_buffer\000"
 9244      62756666 
 9244      657200
 9245              	.LASF87:
 9246 1147 5F6C6F63 		.ascii	"_lock\000"
 9246      6B00
 9247              	.LASF372:
 9248 114d 73746F72 		.ascii	"storeBlock\000"
 9248      65426C6F 
 9248      636B00
 9249              	.LASF379:
 9250 1158 4D6F6465 		.ascii	"Mode_8M1\000"
 9250      5F384D31 
 9250      00
 9251              	.LASF42:
 9252 1161 73697A65 		.ascii	"sizetype\000"
 9252      74797065 
 9252      00
 9253              	.LASF297:
 9254 116a 49435352 		.ascii	"ICSR\000"
 9254      00
 9255              	.LASF394:
 9256 116f 5F5A4E39 		.ascii	"_ZN9UARTClass5beginEmNS_9UARTModesE\000"
 9256      55415254 
 9256      436C6173 
 9256      73356265 
 9256      67696E45 
 9257              	.LASF20:
 9258 1193 6C6F6E67 		.ascii	"long unsigned int\000"
 9258      20756E73 
 9258      69676E65 
 9258      6420696E 
 9258      7400
 9259              	.LASF361:
 9260 11a5 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 9260      414C5F42 
ARM GAS  /tmp/cc5e0BXI.s 			page 219


 9260      55464645 
 9260      525F5349 
 9260      5A4500
 9261              	.LASF357:
 9262 11b8 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 9262      6972715F 
 9262      63726974 
 9262      6963616C 
 9262      5F736563 
 9263              	.LASF136:
 9264 11d9 5F6E696F 		.ascii	"_niobs\000"
 9264      627300
 9265              	.LASF37:
 9266 11e0 77696E74 		.ascii	"wint_t\000"
 9266      5F7400
 9267              	.LASF179:
 9268 11e7 666C6F61 		.ascii	"float\000"
 9268      7400
 9269              	.LASF167:
 9270 11ed 7372616E 		.ascii	"srand\000"
 9270      6400
 9271              	.LASF189:
 9272 11f3 696E7433 		.ascii	"int32_t\000"
 9272      325F7400 
 9273              	.LASF199:
 9274 11fb 696E745F 		.ascii	"int_least32_t\000"
 9274      6C656173 
 9274      7433325F 
 9274      7400
 9275              	.LASF64:
 9276 1209 5F64736F 		.ascii	"_dso_handle\000"
 9276      5F68616E 
 9276      646C6500 
 9277              	.LASF222:
 9278 1215 53555043 		.ascii	"SUPC_IRQn\000"
 9278      5F495251 
 9278      6E00
 9279              	.LASF360:
 9280 121f 5072696E 		.ascii	"Print\000"
 9280      7400
 9281              	.LASF219:
 9282 1225 44656275 		.ascii	"DebugMonitor_IRQn\000"
 9282      674D6F6E 
 9282      69746F72 
 9282      5F495251 
 9282      6E00
 9283              	.LASF217:
 9284 1237 55736167 		.ascii	"UsageFault_IRQn\000"
 9284      65466175 
 9284      6C745F49 
 9284      52516E00 
 9285              	.LASF115:
 9286 1247 5F737464 		.ascii	"_stdout\000"
 9286      6F757400 
 9287              	.LASF350:
 9288 124f 55415254 		.ascii	"UART_BRGR\000"
 9288      5F425247 
ARM GAS  /tmp/cc5e0BXI.s 			page 220


 9288      5200
 9289              	.LASF12:
 9290 1259 756E7369 		.ascii	"unsigned char\000"
 9290      676E6564 
 9290      20636861 
 9290      7200
 9291              	.LASF467:
 9292 1267 5F5A5374 		.ascii	"_ZSt3absx\000"
 9292      33616273 
 9292      7800
 9293              	.LASF153:
 9294 1271 7375626F 		.ascii	"suboptarg\000"
 9294      70746172 
 9294      6700
 9295              	.LASF218:
 9296 127b 53564361 		.ascii	"SVCall_IRQn\000"
 9296      6C6C5F49 
 9296      52516E00 
 9297              	.LASF447:
 9298 1287 7E537472 		.ascii	"~Stream\000"
 9298      65616D00 
 9299              	.LASF34:
 9300 128f 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 9300      4B5F5245 
 9300      43555253 
 9300      4956455F 
 9300      5400
 9301              	.LASF376:
 9302 12a1 4D6F6465 		.ascii	"Mode_8N1\000"
 9302      5F384E31 
 9302      00
 9303              	.LASF470:
 9304 12aa 6465636C 		.ascii	"decltype(nullptr)\000"
 9304      74797065 
 9304      286E756C 
 9304      6C707472 
 9304      2900
 9305              	.LASF419:
 9306 12bc 7E554152 		.ascii	"~UARTClass\000"
 9306      54436C61 
 9306      737300
 9307              	.LASF204:
 9308 12c7 75696E74 		.ascii	"uint_fast8_t\000"
 9308      5F666173 
 9308      74385F74 
 9308      00
 9309              	.LASF78:
 9310 12d4 5F726561 		.ascii	"_read\000"
 9310      6400
 9311              	.LASF172:
 9312 12da 77637374 		.ascii	"wcstombs\000"
 9312      6F6D6273 
 9312      00
 9313              	.LASF169:
 9314 12e3 73747274 		.ascii	"strtol\000"
 9314      6F6C00
 9315              	.LASF278:
ARM GAS  /tmp/cc5e0BXI.s 			page 221


 9316 12ea 52535744 		.ascii	"RSWDT_IRQn\000"
 9316      545F4952 
 9316      516E00
 9317              	.LASF283:
 9318 12f5 49434552 		.ascii	"ICER\000"
 9318      00
 9319              	.LASF152:
 9320 12fa 5F5F636F 		.ascii	"__compar_fn_t\000"
 9320      6D706172 
 9320      5F666E5F 
 9320      7400
 9321              	.LASF70:
 9322 1308 5F5F7362 		.ascii	"__sbuf\000"
 9322      756600
 9323              	.LASF259:
 9324 130f 41464543 		.ascii	"AFEC1_IRQn\000"
 9324      315F4952 
 9324      516E00
 9325              	.LASF147:
 9326 131a 6469765F 		.ascii	"div_t\000"
 9326      7400
 9327              	.LASF289:
 9328 1320 49414252 		.ascii	"IABR\000"
 9328      00
 9329              	.LASF263:
 9330 1325 55415254 		.ascii	"UART2_IRQn\000"
 9330      325F4952 
 9330      516E00
 9331              	.LASF148:
 9332 1330 366C6469 		.ascii	"6ldiv_t\000"
 9332      765F7400 
 9333              	.LASF135:
 9334 1338 5F676C75 		.ascii	"_glue\000"
 9334      6500
 9335              	.LASF407:
 9336 133e 63616E57 		.ascii	"canWrite\000"
 9336      72697465 
 9336      00
 9337              	.LASF414:
 9338 1347 5F5A4E39 		.ascii	"_ZN9UARTClass10IrqHandlerEv\000"
 9338      55415254 
 9338      436C6173 
 9338      73313049 
 9338      72714861 
 9339              	.LASF346:
 9340 1363 55415254 		.ascii	"UART_IMR\000"
 9340      5F494D52 
 9340      00
 9341              	.LASF132:
 9342 136c 5F5F7367 		.ascii	"__sglue\000"
 9342      6C756500 
 9343              	.LASF103:
 9344 1374 5F676574 		.ascii	"_getdate_err\000"
 9344      64617465 
 9344      5F657272 
 9344      00
 9345              	.LASF343:
ARM GAS  /tmp/cc5e0BXI.s 			page 222


 9346 1381 55415254 		.ascii	"UART_MR\000"
 9346      5F4D5200 
 9347              	.LASF99:
 9348 1389 5F6D6274 		.ascii	"_mbtowc_state\000"
 9348      6F77635F 
 9348      73746174 
 9348      6500
 9349              	.LASF150:
 9350 1397 376C6C64 		.ascii	"7lldiv_t\000"
 9350      69765F74 
 9350      00
 9351              	.LASF463:
 9352 13a0 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 9352      656E6162 
 9352      6C655F70 
 9352      65726970 
 9352      685F636C 
 9353              	.LASF10:
 9354 13b6 7369676E 		.ascii	"signed char\000"
 9354      65642063 
 9354      68617200 
 9355              	.LASF256:
 9356 13c2 4D43414E 		.ascii	"MCAN0_IRQn\000"
 9356      305F4952 
 9356      516E00
 9357              	.LASF378:
 9358 13cd 4D6F6465 		.ascii	"Mode_8O1\000"
 9358      5F384F31 
 9358      00
 9359              	.LASF90:
 9360 13d6 5F726565 		.ascii	"_reent\000"
 9360      6E7400
 9361              	.LASF16:
 9362 13dd 73686F72 		.ascii	"short unsigned int\000"
 9362      7420756E 
 9362      7369676E 
 9362      65642069 
 9362      6E7400
 9363              	.LASF389:
 9364 13f0 5F5A4E39 		.ascii	"_ZN9UARTClassC4EP4Uart4IRQnmP10RingBufferS4_\000"
 9364      55415254 
 9364      436C6173 
 9364      73433445 
 9364      50345561 
 9365              	.LASF151:
 9366 141d 6C6C6469 		.ascii	"lldiv_t\000"
 9366      765F7400 
 9367              	.LASF225:
 9368 1425 5254545F 		.ascii	"RTT_IRQn\000"
 9368      4952516E 
 9368      00
 9369              	.LASF349:
 9370 142e 55415254 		.ascii	"UART_THR\000"
 9370      5F544852 
 9370      00
 9371              	.LASF155:
 9372 1437 61746F66 		.ascii	"atof\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 223


 9372      00
 9373              	.LASF157:
 9374 143c 61746F69 		.ascii	"atoi\000"
 9374      00
 9375              	.LASF214:
 9376 1441 48617264 		.ascii	"HardFault_IRQn\000"
 9376      4661756C 
 9376      745F4952 
 9376      516E00
 9377              	.LASF318:
 9378 1450 4D564652 		.ascii	"MVFR1\000"
 9378      3100
 9379              	.LASF158:
 9380 1456 61746F6C 		.ascii	"atol\000"
 9380      00
 9381              	.LASF306:
 9382 145b 42464152 		.ascii	"BFAR\000"
 9382      00
 9383              	.LASF285:
 9384 1460 49535052 		.ascii	"ISPR\000"
 9384      00
 9385              	.LASF65:
 9386 1465 5F666E74 		.ascii	"_fntypes\000"
 9386      79706573 
 9386      00
 9387              	.LASF266:
 9388 146e 5443365F 		.ascii	"TC6_IRQn\000"
 9388      4952516E 
 9388      00
 9389              	.LASF72:
 9390 1477 5F73697A 		.ascii	"_size\000"
 9390      6500
 9391              	.LASF156:
 9392 147d 646F7562 		.ascii	"double\000"
 9392      6C6500
 9393              	.LASF427:
 9394 1484 77726974 		.ascii	"written\000"
 9394      74656E00 
 9395              	.LASF341:
 9396 148c 34556172 		.ascii	"4Uart\000"
 9396      7400
 9397              	.LASF313:
 9398 1492 434C4944 		.ascii	"CLIDR\000"
 9398      5200
 9399              	.LASF286:
 9400 1498 52455345 		.ascii	"RESERVED2\000"
 9400      52564544 
 9400      3200
 9401              	.LASF455:
 9402 14a2 5F5A4E35 		.ascii	"_ZN5PrintD0Ev\000"
 9402      5072696E 
 9402      74443045 
 9402      7600
 9403              	.LASF83:
 9404 14b0 5F6E6275 		.ascii	"_nbuf\000"
 9404      6600
 9405              	.LASF91:
ARM GAS  /tmp/cc5e0BXI.s 			page 224


 9406 14b6 5F756E75 		.ascii	"_unused_rand\000"
 9406      7365645F 
 9406      72616E64 
 9406      00
 9407              	.LASF449:
 9408 14c3 5F5A4E36 		.ascii	"_ZN6StreamD4Ev\000"
 9408      53747265 
 9408      616D4434 
 9408      457600
 9409              	.LASF27:
 9410 14d2 5F5F7569 		.ascii	"__uint_least16_t\000"
 9410      6E745F6C 
 9410      65617374 
 9410      31365F74 
 9410      00
 9411              	.LASF245:
 9412 14e3 5443315F 		.ascii	"TC1_IRQn\000"
 9412      4952516E 
 9412      00
 9413              	.LASF227:
 9414 14ec 504D435F 		.ascii	"PMC_IRQn\000"
 9414      4952516E 
 9414      00
 9415              	.LASF330:
 9416 14f5 52455345 		.ascii	"RESERVED7\000"
 9416      52564544 
 9416      3700
 9417              	.LASF370:
 9418 14ff 5F5A4E35 		.ascii	"_ZN5PrintC4Ev\000"
 9418      5072696E 
 9418      74433445 
 9418      7600
 9419              	.LASF312:
 9420 150d 49445F49 		.ascii	"ID_ISAR\000"
 9420      53415200 
 9421              	.LASF89:
 9422 1515 5F666C61 		.ascii	"_flags2\000"
 9422      67733200 
 9423              	.LASF66:
 9424 151d 5F69735F 		.ascii	"_is_cxa\000"
 9424      63786100 
 9425              	.LASF239:
 9426 1525 48534D43 		.ascii	"HSMCI_IRQn\000"
 9426      495F4952 
 9426      516E00
 9427              	.LASF253:
 9428 1530 49434D5F 		.ascii	"ICM_IRQn\000"
 9428      4952516E 
 9428      00
 9429              	.LASF364:
 9430 1539 5F695461 		.ascii	"_iTail\000"
 9430      696C00
 9431              	.LASF398:
 9432 1540 7065656B 		.ascii	"peek\000"
 9432      00
 9433              	.LASF440:
 9434 1545 7054785F 		.ascii	"pTx_buffer\000"
ARM GAS  /tmp/cc5e0BXI.s 			page 225


 9434      62756666 
 9434      657200
 9435              	.LASF80:
 9436 1550 5F736565 		.ascii	"_seek\000"
 9436      6B00
 9437              	.LASF416:
 9438 1556 5F5A4E39 		.ascii	"_ZN9UARTClasscvbEv\000"
 9438      55415254 
 9438      436C6173 
 9438      73637662 
 9438      457600
 9439              	.LASF116:
 9440 1569 5F737464 		.ascii	"_stderr\000"
 9440      65727200 
 9441              	.LASF111:
 9442 1571 5F6E6D61 		.ascii	"_nmalloc\000"
 9442      6C6C6F63 
 9442      00
 9443              	.LASF137:
 9444 157a 5F696F62 		.ascii	"_iobs\000"
 9444      7300
 9445              	.LASF166:
 9446 1580 71736F72 		.ascii	"qsort\000"
 9446      7400
 9447              	.LASF451:
 9448 1586 5F5A4E4B 		.ascii	"_ZNK6Stream8canWriteEv\000"
 9448      36537472 
 9448      65616D38 
 9448      63616E57 
 9448      72697465 
 9449              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
