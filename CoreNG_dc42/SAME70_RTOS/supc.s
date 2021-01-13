ARM GAS  /tmp/ccwbGpTl.s 			page 1


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
  12              		.file	"supc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.supc_enable_backup_mode,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	supc_enable_backup_mode
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	supc_enable_backup_mode, %function
  25              	supc_enable_backup_mode:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/supc/supc.c"
   1:../asf/sam/drivers/supc/supc.c **** /**
   2:../asf/sam/drivers/supc/supc.c ****  * \file
   3:../asf/sam/drivers/supc/supc.c ****  *
   4:../asf/sam/drivers/supc/supc.c ****  * \brief Supply Controller (SUPC) driver for SAM.
   5:../asf/sam/drivers/supc/supc.c ****  *
   6:../asf/sam/drivers/supc/supc.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/supc/supc.c ****  *
   8:../asf/sam/drivers/supc/supc.c ****  * \asf_license_start
   9:../asf/sam/drivers/supc/supc.c ****  *
  10:../asf/sam/drivers/supc/supc.c ****  * \page License
  11:../asf/sam/drivers/supc/supc.c ****  *
  12:../asf/sam/drivers/supc/supc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/supc/supc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/supc/supc.c ****  *
  15:../asf/sam/drivers/supc/supc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/supc/supc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/supc/supc.c ****  *
  18:../asf/sam/drivers/supc/supc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/supc/supc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/supc/supc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/supc/supc.c ****  *
  22:../asf/sam/drivers/supc/supc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/supc/supc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/supc/supc.c ****  *
  25:../asf/sam/drivers/supc/supc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/supc/supc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/supc/supc.c ****  *
  28:../asf/sam/drivers/supc/supc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/supc/supc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/supc/supc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccwbGpTl.s 			page 2


  31:../asf/sam/drivers/supc/supc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/supc/supc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/supc/supc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/supc/supc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/supc/supc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/supc/supc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/supc/supc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/supc/supc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/supc/supc.c ****  *
  40:../asf/sam/drivers/supc/supc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/supc/supc.c ****  *
  42:../asf/sam/drivers/supc/supc.c ****  */
  43:../asf/sam/drivers/supc/supc.c **** /*
  44:../asf/sam/drivers/supc/supc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/supc/supc.c ****  */
  46:../asf/sam/drivers/supc/supc.c **** 
  47:../asf/sam/drivers/supc/supc.c **** #include "supc.h"
  48:../asf/sam/drivers/supc/supc.c **** 
  49:../asf/sam/drivers/supc/supc.c **** /// @cond 0
  50:../asf/sam/drivers/supc/supc.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/supc/supc.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/supc/supc.c **** extern "C" {
  53:../asf/sam/drivers/supc/supc.c **** #endif
  54:../asf/sam/drivers/supc/supc.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/supc/supc.c **** /// @endcond
  56:../asf/sam/drivers/supc/supc.c **** 
  57:../asf/sam/drivers/supc/supc.c **** /**
  58:../asf/sam/drivers/supc/supc.c ****  * \defgroup sam_drivers_supc_group Supply Controller (SUPC)
  59:../asf/sam/drivers/supc/supc.c ****  *
  60:../asf/sam/drivers/supc/supc.c ****  * Driver for the SUPC (Supply Controller). This driver provides access to the main
  61:../asf/sam/drivers/supc/supc.c ****  * features of the Supply Controller.
  62:../asf/sam/drivers/supc/supc.c ****  *
  63:../asf/sam/drivers/supc/supc.c ****  * @{
  64:../asf/sam/drivers/supc/supc.c ****  */
  65:../asf/sam/drivers/supc/supc.c **** 
  66:../asf/sam/drivers/supc/supc.c **** #if (!SAMG)
  67:../asf/sam/drivers/supc/supc.c **** /**
  68:../asf/sam/drivers/supc/supc.c ****  * \brief Switch off the voltage regulator to put the device in backup mode.
  69:../asf/sam/drivers/supc/supc.c ****  *
  70:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
  71:../asf/sam/drivers/supc/supc.c ****  */
  72:../asf/sam/drivers/supc/supc.c **** void supc_enable_backup_mode(Supc *p_supc)
  73:../asf/sam/drivers/supc/supc.c **** {
  28              		.loc 1 73 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  74:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_CR = SUPC_CR_KEY_PASSWD | SUPC_CR_VROFF;
  34              		.loc 1 74 0
  35 0000 034B     		ldr	r3, .L2
  36 0002 0360     		str	r3, [r0]
  75:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_dummy = p_supc->SUPC_MR;
  37              		.loc 1 75 0
  38 0004 8368     		ldr	r3, [r0, #8]
  39              	.LBB8:
ARM GAS  /tmp/ccwbGpTl.s 			page 3


  40              	.LBB9:
  41              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __CORE_CMINSTR_H
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CORE_CMINSTR_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ##########################  Core Instruction Access  ######################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   Access to dedicated instructions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 4


  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __NOP                             __nop
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFI                             __wfi
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFE                             __wfe
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SEV                             __sev
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ISB()                           __isb(0xF)
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DSB()                           __dsb(0xF)
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DMB()                           __dmb(0xF)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (32 bit)
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 5


 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in integer value.
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __REV                             __rev
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in two unsigned short values.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rev16_text"))) __STATIC_INLINE __ASM uint32_t __REV16(uint32_t value)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rev16 r0, r0
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order in signed short value
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in a signed short value with sign extension to integer.
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".revsh_text"))) __STATIC_INLINE __ASM int32_t __REVSH(int32_t value)
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   revsh r0, r0
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right in unsigned value (32 bit)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function Rotate Right (immediate) provides the value of the contents of a register rotated
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Number of Bits to rotate
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ROR                             __ror
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Breakpoint
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function causes the processor to enter Debug state.
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Debug tools can use this to investigate system state when the instruction at a particular addre
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  is ignored by the processor.
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****                    If required, a debugger can use it to store additional information about the bre
ARM GAS  /tmp/ccwbGpTl.s 			page 6


 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __BKPT(value)                       __breakpoint(value)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __RBIT                            __rbit
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (8 bit)
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 8 bit value.
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXB(ptr)                     ((uint8_t ) __ldrex(ptr))
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (16 bit)
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 16 bit values.
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXH(ptr)                     ((uint16_t) __ldrex(ptr))
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (32 bit)
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 32 bit values.
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXW(ptr)                     ((uint32_t ) __ldrex(ptr))
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (8 bit)
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 8 bit values.
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXB(value, ptr)              __strex(value, ptr)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 7


 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (16 bit)
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 16 bit values.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (32 bit)
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 32 bit values.
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Remove the exclusive lock
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function removes the exclusive lock which is created by LDREX.
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLREX                           __clrex
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Signed Saturate
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates a signed value.
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (1..32)
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SSAT                            __ssat
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Unsigned Saturate
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates an unsigned value.
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (0..31)
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __USAT                            __usat
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Count leading zeros
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 8


 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function counts the number of leading zeros of a data value.
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to count the leading zeros
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             number of leading zeros in value
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLZ                             __clz
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function moves each bit of a bitstring right by one bit. The carry input is shifted in at 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rrx_text"))) __STATIC_INLINE __ASM uint32_t __RRX(uint32_t value)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rrx r0, r0
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (8 bit)
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 8 bit value.
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRBT(ptr)                      ((uint8_t )  __ldrt(ptr))
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (16 bit)
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 16 bit values.
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRHT(ptr)                      ((uint16_t)  __ldrt(ptr))
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (32 bit)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 32 bit values.
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRT(ptr)                       ((uint32_t ) __ldrt(ptr))
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (8 bit)
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 8 bit values.
ARM GAS  /tmp/ccwbGpTl.s 			page 9


 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRBT(value, ptr)               __strt(value, ptr)
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 16 bit values.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRHT(value, ptr)               __strt(value, ptr)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (32 bit)
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 32 bit values.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRT(value, ptr)                __strt(value, ptr)
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* GNU gcc specific functions */
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Define macros for porting to both thumb1 and thumb2.
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * For thumb1, use low register (r0-r7), specified by constrant "l"
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * Otherwise, use general registers, specified by constrant "r" */
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if defined (__thumb__) && !defined (__thumb2__)
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #else
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __NOP(void)
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("nop");
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
ARM GAS  /tmp/ccwbGpTl.s 			page 10


 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFI(void)
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfi");
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFE(void)
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfe");
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __SEV(void)
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("sev");
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __ISB(void)
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("isb");
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dsb");
  42              		.loc 2 445 0
  43              		.syntax unified
  44              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  45 0006 BFF34F8F 		dsb
  46              	@ 0 "" 2
  47              		.thumb
  48              		.syntax unified
  49              	.LBE9:
  50              	.LBE8:
ARM GAS  /tmp/ccwbGpTl.s 			page 11


  51              	.LBB10:
  52              	.LBB11:
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
  53              		.loc 2 412 0
  54              		.syntax unified
  55              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  56 000a 20BF     		wfe
  57              	@ 0 "" 2
  58              		.thumb
  59              		.syntax unified
  60              	.LBE11:
  61              	.LBE10:
  62              	.LBB12:
  63              	.LBB13:
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
  64              		.loc 2 401 0
  65              		.syntax unified
  66              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  67 000c 30BF     		wfi
  68              	@ 0 "" 2
  69              		.thumb
  70              		.syntax unified
  71 000e 7047     		bx	lr
  72              	.L3:
  73              		.align	2
  74              	.L2:
  75 0010 040000A5 		.word	-1526726652
  76              	.LBE13:
  77              	.LBE12:
  78              		.cfi_endproc
  79              	.LFE142:
  80              		.size	supc_enable_backup_mode, .-supc_enable_backup_mode
  81              		.section	.text.supc_enable_voltage_regulator,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	supc_enable_voltage_regulator
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv5-d16
  89              		.type	supc_enable_voltage_regulator, %function
  90              	supc_enable_voltage_regulator:
  91              	.LFB143:
  76:../asf/sam/drivers/supc/supc.c **** #if 1	// dc42
  77:../asf/sam/drivers/supc/supc.c **** 	UNUSED(ul_dummy);
  78:../asf/sam/drivers/supc/supc.c **** #endif
  79:../asf/sam/drivers/supc/supc.c **** 	__DSB();
  80:../asf/sam/drivers/supc/supc.c **** 	__WFE();
  81:../asf/sam/drivers/supc/supc.c **** 	__WFI();
  82:../asf/sam/drivers/supc/supc.c **** }
  83:../asf/sam/drivers/supc/supc.c **** 
  84:../asf/sam/drivers/supc/supc.c **** /**
  85:../asf/sam/drivers/supc/supc.c ****  * \brief Enable the internal voltage regulator.
  86:../asf/sam/drivers/supc/supc.c ****  *
  87:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
  88:../asf/sam/drivers/supc/supc.c ****  */
  89:../asf/sam/drivers/supc/supc.c **** void supc_enable_voltage_regulator(Supc *p_supc)
ARM GAS  /tmp/ccwbGpTl.s 			page 12


  90:../asf/sam/drivers/supc/supc.c **** {
  92              		.loc 1 90 0
  93              		.cfi_startproc
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97              	.LVL1:
  91:../asf/sam/drivers/supc/supc.c **** #if (SAM3U || SAM3XA)
  92:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_VDDIORDYONREG));
  93:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_VDDIORDYONREG;
  94:../asf/sam/drivers/supc/supc.c **** #else
  95:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_ONREG));
  98              		.loc 1 95 0
  99 0000 8168     		ldr	r1, [r0, #8]
 100              	.LVL2:
 101 0002 034A     		ldr	r2, .L5
  96:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_ONREG;
 102              		.loc 1 96 0
 103 0004 034B     		ldr	r3, .L5+4
  95:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_ONREG;
 104              		.loc 1 95 0
 105 0006 0A40     		ands	r2, r2, r1
 106              	.LVL3:
 107              		.loc 1 96 0
 108 0008 1343     		orrs	r3, r3, r2
 109 000a 8360     		str	r3, [r0, #8]
 110 000c 7047     		bx	lr
 111              	.L6:
 112 000e 00BF     		.align	2
 113              	.L5:
 114 0010 FFBFFF00 		.word	16760831
 115 0014 004000A5 		.word	-1526710272
 116              		.cfi_endproc
 117              	.LFE143:
 118              		.size	supc_enable_voltage_regulator, .-supc_enable_voltage_regulator
 119              		.section	.text.supc_disable_voltage_regulator,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	supc_disable_voltage_regulator
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv5-d16
 127              		.type	supc_disable_voltage_regulator, %function
 128              	supc_disable_voltage_regulator:
 129              	.LFB144:
  97:../asf/sam/drivers/supc/supc.c **** #endif
  98:../asf/sam/drivers/supc/supc.c **** }
  99:../asf/sam/drivers/supc/supc.c **** 
 100:../asf/sam/drivers/supc/supc.c **** /**
 101:../asf/sam/drivers/supc/supc.c ****  * \brief Disable the internal voltage regulator to supply VDDCORE with an external supply.
 102:../asf/sam/drivers/supc/supc.c ****  *
 103:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 104:../asf/sam/drivers/supc/supc.c ****  */
 105:../asf/sam/drivers/supc/supc.c **** void supc_disable_voltage_regulator(Supc *p_supc)
 106:../asf/sam/drivers/supc/supc.c **** {
 130              		.loc 1 106 0
ARM GAS  /tmp/ccwbGpTl.s 			page 13


 131              		.cfi_startproc
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134              		@ link register save eliminated.
 135              	.LVL4:
 107:../asf/sam/drivers/supc/supc.c **** #if (SAM3U || SAM3XA)
 108:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_VDDIORDYONREG));
 109:../asf/sam/drivers/supc/supc.c **** #else
 110:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_ONREG));
 136              		.loc 1 110 0
 137 0000 8268     		ldr	r2, [r0, #8]
 138              	.LVL5:
 139 0002 034B     		ldr	r3, .L8
 140 0004 1340     		ands	r3, r3, r2
 141              	.LVL6:
 111:../asf/sam/drivers/supc/supc.c **** #endif
 112:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr;
 142              		.loc 1 112 0
 143 0006 43F02543 		orr	r3, r3, #-1526726656
 144              	.LVL7:
 145 000a 8360     		str	r3, [r0, #8]
 146 000c 7047     		bx	lr
 147              	.L9:
 148 000e 00BF     		.align	2
 149              	.L8:
 150 0010 FFBFFF00 		.word	16760831
 151              		.cfi_endproc
 152              	.LFE144:
 153              		.size	supc_disable_voltage_regulator, .-supc_disable_voltage_regulator
 154              		.section	.text.supc_switch_sclk_to_32kxtal,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	supc_switch_sclk_to_32kxtal
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv5-d16
 162              		.type	supc_switch_sclk_to_32kxtal, %function
 163              	supc_switch_sclk_to_32kxtal:
 164              	.LFB145:
 113:../asf/sam/drivers/supc/supc.c **** }
 114:../asf/sam/drivers/supc/supc.c **** #endif
 115:../asf/sam/drivers/supc/supc.c **** 
 116:../asf/sam/drivers/supc/supc.c **** /**
 117:../asf/sam/drivers/supc/supc.c ****  * \brief Switch slow clock source selection to external 32k (Xtal or Bypass) oscillator.
 118:../asf/sam/drivers/supc/supc.c ****  * This function disables the PLLs.
 119:../asf/sam/drivers/supc/supc.c ****  *
 120:../asf/sam/drivers/supc/supc.c ****  * \note Switching sclk back to 32krc is only possible by shutting down the VDDIO power supply.
 121:../asf/sam/drivers/supc/supc.c ****  *
 122:../asf/sam/drivers/supc/supc.c ****  * \param ul_bypass 0 for Xtal, 1 for bypass.
 123:../asf/sam/drivers/supc/supc.c ****  */
 124:../asf/sam/drivers/supc/supc.c **** void supc_switch_sclk_to_32kxtal(Supc *p_supc, uint32_t ul_bypass)
 125:../asf/sam/drivers/supc/supc.c **** {
 165              		.loc 1 125 0
 166              		.cfi_startproc
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccwbGpTl.s 			page 14


 169              		@ link register save eliminated.
 170              	.LVL8:
 126:../asf/sam/drivers/supc/supc.c **** 	/* Set Bypass mode if required */
 127:../asf/sam/drivers/supc/supc.c **** 	if (ul_bypass == 1) {
 171              		.loc 1 127 0
 172 0000 0129     		cmp	r1, #1
 128:../asf/sam/drivers/supc/supc.c **** 		p_supc->SUPC_MR |= SUPC_MR_KEY_PASSWD | SUPC_MR_OSCBYPASS;
 173              		.loc 1 128 0
 174 0002 8268     		ldr	r2, [r0, #8]
 127:../asf/sam/drivers/supc/supc.c **** 		p_supc->SUPC_MR |= SUPC_MR_KEY_PASSWD | SUPC_MR_OSCBYPASS;
 175              		.loc 1 127 0
 176 0004 07D0     		beq	.L14
 129:../asf/sam/drivers/supc/supc.c **** 	} else {
 130:../asf/sam/drivers/supc/supc.c **** 		p_supc->SUPC_MR &= ~(SUPC_MR_KEY_PASSWD | SUPC_MR_OSCBYPASS);
 177              		.loc 1 130 0
 178 0006 064B     		ldr	r3, .L15
 179 0008 1340     		ands	r3, r3, r2
 180 000a 8360     		str	r3, [r0, #8]
 181              	.L12:
 131:../asf/sam/drivers/supc/supc.c **** 	}
 132:../asf/sam/drivers/supc/supc.c **** 
 133:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_CR |= SUPC_CR_KEY_PASSWD | SUPC_CR_XTALSEL;
 182              		.loc 1 133 0
 183 000c 0268     		ldr	r2, [r0]
 184 000e 054B     		ldr	r3, .L15+4
 185 0010 1343     		orrs	r3, r3, r2
 186 0012 0360     		str	r3, [r0]
 187 0014 7047     		bx	lr
 188              	.L14:
 128:../asf/sam/drivers/supc/supc.c **** 	} else {
 189              		.loc 1 128 0
 190 0016 044B     		ldr	r3, .L15+8
 191 0018 1343     		orrs	r3, r3, r2
 192 001a 8360     		str	r3, [r0, #8]
 193 001c F6E7     		b	.L12
 194              	.L16:
 195 001e 00BF     		.align	2
 196              	.L15:
 197 0020 FFFFEF5A 		.word	1525678079
 198 0024 080000A5 		.word	-1526726648
 199 0028 000010A5 		.word	-1525678080
 200              		.cfi_endproc
 201              	.LFE145:
 202              		.size	supc_switch_sclk_to_32kxtal, .-supc_switch_sclk_to_32kxtal
 203              		.section	.text.supc_enable_brownout_detector,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	supc_enable_brownout_detector
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv5-d16
 211              		.type	supc_enable_brownout_detector, %function
 212              	supc_enable_brownout_detector:
 213              	.LFB146:
 134:../asf/sam/drivers/supc/supc.c **** }
 135:../asf/sam/drivers/supc/supc.c **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 15


 136:../asf/sam/drivers/supc/supc.c **** /**
 137:../asf/sam/drivers/supc/supc.c ****  * \brief Enable the core brownout detector.
 138:../asf/sam/drivers/supc/supc.c ****  *
 139:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 140:../asf/sam/drivers/supc/supc.c ****  */
 141:../asf/sam/drivers/supc/supc.c **** void supc_enable_brownout_detector(Supc *p_supc)
 142:../asf/sam/drivers/supc/supc.c **** {
 214              		.loc 1 142 0
 215              		.cfi_startproc
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219              	.LVL9:
 143:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODDIS));
 220              		.loc 1 143 0
 221 0000 8268     		ldr	r2, [r0, #8]
 222              	.LVL10:
 223 0002 034B     		ldr	r3, .L18
 224 0004 1340     		ands	r3, r3, r2
 225              	.LVL11:
 144:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr;
 226              		.loc 1 144 0
 227 0006 43F02543 		orr	r3, r3, #-1526726656
 228              	.LVL12:
 229 000a 8360     		str	r3, [r0, #8]
 230 000c 7047     		bx	lr
 231              	.L19:
 232 000e 00BF     		.align	2
 233              	.L18:
 234 0010 FFDFFF00 		.word	16769023
 235              		.cfi_endproc
 236              	.LFE146:
 237              		.size	supc_enable_brownout_detector, .-supc_enable_brownout_detector
 238              		.section	.text.supc_disable_brownout_detector,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	supc_disable_brownout_detector
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv5-d16
 246              		.type	supc_disable_brownout_detector, %function
 247              	supc_disable_brownout_detector:
 248              	.LFB147:
 145:../asf/sam/drivers/supc/supc.c **** }
 146:../asf/sam/drivers/supc/supc.c **** 
 147:../asf/sam/drivers/supc/supc.c **** /**
 148:../asf/sam/drivers/supc/supc.c ****  * \brief Disable the core brownout detector.
 149:../asf/sam/drivers/supc/supc.c ****  *
 150:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 151:../asf/sam/drivers/supc/supc.c ****  */
 152:../asf/sam/drivers/supc/supc.c **** void supc_disable_brownout_detector(Supc *p_supc)
 153:../asf/sam/drivers/supc/supc.c **** {
 249              		.loc 1 153 0
 250              		.cfi_startproc
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccwbGpTl.s 			page 16


 253              		@ link register save eliminated.
 254              	.LVL13:
 154:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODDIS));
 255              		.loc 1 154 0
 256 0000 8168     		ldr	r1, [r0, #8]
 257              	.LVL14:
 258 0002 034A     		ldr	r2, .L21
 155:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_BODDIS;
 259              		.loc 1 155 0
 260 0004 034B     		ldr	r3, .L21+4
 154:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODDIS));
 261              		.loc 1 154 0
 262 0006 0A40     		ands	r2, r2, r1
 263              	.LVL15:
 264              		.loc 1 155 0
 265 0008 1343     		orrs	r3, r3, r2
 266 000a 8360     		str	r3, [r0, #8]
 267 000c 7047     		bx	lr
 268              	.L22:
 269 000e 00BF     		.align	2
 270              	.L21:
 271 0010 FFDFFF00 		.word	16769023
 272 0014 002000A5 		.word	-1526718464
 273              		.cfi_endproc
 274              	.LFE147:
 275              		.size	supc_disable_brownout_detector, .-supc_disable_brownout_detector
 276              		.section	.text.supc_enable_brownout_reset,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	supc_enable_brownout_reset
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv5-d16
 284              		.type	supc_enable_brownout_reset, %function
 285              	supc_enable_brownout_reset:
 286              	.LFB148:
 156:../asf/sam/drivers/supc/supc.c **** }
 157:../asf/sam/drivers/supc/supc.c **** 
 158:../asf/sam/drivers/supc/supc.c **** /**
 159:../asf/sam/drivers/supc/supc.c ****  * \brief Enable the assertion of core reset signal when a brownout detection occurs.
 160:../asf/sam/drivers/supc/supc.c ****  *
 161:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 162:../asf/sam/drivers/supc/supc.c ****  */
 163:../asf/sam/drivers/supc/supc.c **** void supc_enable_brownout_reset(Supc *p_supc)
 164:../asf/sam/drivers/supc/supc.c **** {
 287              		.loc 1 164 0
 288              		.cfi_startproc
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292              	.LVL16:
 165:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODRSTEN));
 293              		.loc 1 165 0
 294 0000 8168     		ldr	r1, [r0, #8]
 295              	.LVL17:
 296 0002 034A     		ldr	r2, .L24
ARM GAS  /tmp/ccwbGpTl.s 			page 17


 166:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_BODRSTEN;
 297              		.loc 1 166 0
 298 0004 034B     		ldr	r3, .L24+4
 165:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODRSTEN));
 299              		.loc 1 165 0
 300 0006 0A40     		ands	r2, r2, r1
 301              	.LVL18:
 302              		.loc 1 166 0
 303 0008 1343     		orrs	r3, r3, r2
 304 000a 8360     		str	r3, [r0, #8]
 305 000c 7047     		bx	lr
 306              	.L25:
 307 000e 00BF     		.align	2
 308              	.L24:
 309 0010 FFEFFF00 		.word	16773119
 310 0014 001000A5 		.word	-1526722560
 311              		.cfi_endproc
 312              	.LFE148:
 313              		.size	supc_enable_brownout_reset, .-supc_enable_brownout_reset
 314              		.section	.text.supc_disable_brownout_reset,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	supc_disable_brownout_reset
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv5-d16
 322              		.type	supc_disable_brownout_reset, %function
 323              	supc_disable_brownout_reset:
 324              	.LFB149:
 167:../asf/sam/drivers/supc/supc.c **** }
 168:../asf/sam/drivers/supc/supc.c **** 
 169:../asf/sam/drivers/supc/supc.c **** /**
 170:../asf/sam/drivers/supc/supc.c ****  * \brief Disable the assertion of core reset signal when a brownout detection occurs.
 171:../asf/sam/drivers/supc/supc.c ****  *
 172:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 173:../asf/sam/drivers/supc/supc.c ****  */
 174:../asf/sam/drivers/supc/supc.c **** void supc_disable_brownout_reset(Supc *p_supc)
 175:../asf/sam/drivers/supc/supc.c **** {
 325              		.loc 1 175 0
 326              		.cfi_startproc
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329              		@ link register save eliminated.
 330              	.LVL19:
 176:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BODRSTEN));
 331              		.loc 1 176 0
 332 0000 8268     		ldr	r2, [r0, #8]
 333              	.LVL20:
 334 0002 034B     		ldr	r3, .L27
 335 0004 1340     		ands	r3, r3, r2
 336              	.LVL21:
 177:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr;
 337              		.loc 1 177 0
 338 0006 43F02543 		orr	r3, r3, #-1526726656
 339              	.LVL22:
 340 000a 8360     		str	r3, [r0, #8]
ARM GAS  /tmp/ccwbGpTl.s 			page 18


 341 000c 7047     		bx	lr
 342              	.L28:
 343 000e 00BF     		.align	2
 344              	.L27:
 345 0010 FFEFFF00 		.word	16773119
 346              		.cfi_endproc
 347              	.LFE149:
 348              		.size	supc_disable_brownout_reset, .-supc_disable_brownout_reset
 349              		.section	.text.supc_set_monitor_threshold,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	supc_set_monitor_threshold
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv5-d16
 357              		.type	supc_set_monitor_threshold, %function
 358              	supc_set_monitor_threshold:
 359              	.LFB150:
 178:../asf/sam/drivers/supc/supc.c **** }
 179:../asf/sam/drivers/supc/supc.c **** 
 180:../asf/sam/drivers/supc/supc.c **** /**
 181:../asf/sam/drivers/supc/supc.c ****  * \brief Set Supply monitor threshold.
 182:../asf/sam/drivers/supc/supc.c ****  *
 183:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 184:../asf/sam/drivers/supc/supc.c ****  * \param ul_threshold Supply monitor threshold (between 1.9V and 3.4V).
 185:../asf/sam/drivers/supc/supc.c ****  */
 186:../asf/sam/drivers/supc/supc.c **** void supc_set_monitor_threshold(Supc *p_supc, uint32_t ul_threshold)
 187:../asf/sam/drivers/supc/supc.c **** {
 360              		.loc 1 187 0
 361              		.cfi_startproc
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364              		@ link register save eliminated.
 365              	.LVL23:
 188:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_smmr = p_supc->SUPC_SMMR & (~SUPC_SMMR_SMTH_Msk);
 189:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR = ul_smmr | (SUPC_SMMR_SMTH_Msk & ul_threshold);
 366              		.loc 1 189 0
 367 0000 01F00F03 		and	r3, r1, #15
 188:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_smmr = p_supc->SUPC_SMMR & (~SUPC_SMMR_SMTH_Msk);
 368              		.loc 1 188 0
 369 0004 4168     		ldr	r1, [r0, #4]
 370              	.LVL24:
 371 0006 21F00F01 		bic	r1, r1, #15
 372              	.LVL25:
 373              		.loc 1 189 0
 374 000a 1943     		orrs	r1, r1, r3
 375              	.LVL26:
 376 000c 4160     		str	r1, [r0, #4]
 377 000e 7047     		bx	lr
 378              		.cfi_endproc
 379              	.LFE150:
 380              		.size	supc_set_monitor_threshold, .-supc_set_monitor_threshold
 381              		.section	.text.supc_set_monitor_sampling_period,"ax",%progbits
 382              		.align	1
 383              		.p2align 2,,3
 384              		.global	supc_set_monitor_sampling_period
ARM GAS  /tmp/ccwbGpTl.s 			page 19


 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv5-d16
 389              		.type	supc_set_monitor_sampling_period, %function
 390              	supc_set_monitor_sampling_period:
 391              	.LFB151:
 190:../asf/sam/drivers/supc/supc.c **** }
 191:../asf/sam/drivers/supc/supc.c **** 
 192:../asf/sam/drivers/supc/supc.c **** /**
 193:../asf/sam/drivers/supc/supc.c ****  * \brief Set Supply monitor sampling period.
 194:../asf/sam/drivers/supc/supc.c ****  *
 195:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 196:../asf/sam/drivers/supc/supc.c ****  * \param ul_period Supply monitor sampling period.
 197:../asf/sam/drivers/supc/supc.c ****  */
 198:../asf/sam/drivers/supc/supc.c **** void supc_set_monitor_sampling_period(Supc *p_supc, uint32_t ul_period)
 199:../asf/sam/drivers/supc/supc.c **** {
 392              		.loc 1 199 0
 393              		.cfi_startproc
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397              	.LVL27:
 200:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_smmr = p_supc->SUPC_SMMR & (~SUPC_SMMR_SMSMPL_Msk);
 201:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR = ul_smmr | (SUPC_SMMR_SMSMPL_Msk & ul_period);
 398              		.loc 1 201 0
 399 0000 01F4E063 		and	r3, r1, #1792
 200:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_smmr = p_supc->SUPC_SMMR & (~SUPC_SMMR_SMSMPL_Msk);
 400              		.loc 1 200 0
 401 0004 4168     		ldr	r1, [r0, #4]
 402              	.LVL28:
 403 0006 21F4E061 		bic	r1, r1, #1792
 404              	.LVL29:
 405              		.loc 1 201 0
 406 000a 1943     		orrs	r1, r1, r3
 407              	.LVL30:
 408 000c 4160     		str	r1, [r0, #4]
 409 000e 7047     		bx	lr
 410              		.cfi_endproc
 411              	.LFE151:
 412              		.size	supc_set_monitor_sampling_period, .-supc_set_monitor_sampling_period
 413              		.section	.text.supc_enable_monitor_reset,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	supc_enable_monitor_reset
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu fpv5-d16
 421              		.type	supc_enable_monitor_reset, %function
 422              	supc_enable_monitor_reset:
 423              	.LFB152:
 202:../asf/sam/drivers/supc/supc.c **** }
 203:../asf/sam/drivers/supc/supc.c **** 
 204:../asf/sam/drivers/supc/supc.c **** /**
 205:../asf/sam/drivers/supc/supc.c ****  * \brief Enable the assertion of the core reset signal when a supply monitor detection occurs.
 206:../asf/sam/drivers/supc/supc.c ****  *
ARM GAS  /tmp/ccwbGpTl.s 			page 20


 207:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 208:../asf/sam/drivers/supc/supc.c ****  */
 209:../asf/sam/drivers/supc/supc.c **** void supc_enable_monitor_reset(Supc *p_supc)
 210:../asf/sam/drivers/supc/supc.c **** {
 424              		.loc 1 210 0
 425              		.cfi_startproc
 426              		@ args = 0, pretend = 0, frame = 0
 427              		@ frame_needed = 0, uses_anonymous_args = 0
 428              		@ link register save eliminated.
 429              	.LVL31:
 211:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR |= SUPC_SMMR_SMRSTEN;
 430              		.loc 1 211 0
 431 0000 4368     		ldr	r3, [r0, #4]
 432 0002 43F48053 		orr	r3, r3, #4096
 433 0006 4360     		str	r3, [r0, #4]
 434 0008 7047     		bx	lr
 435              		.cfi_endproc
 436              	.LFE152:
 437              		.size	supc_enable_monitor_reset, .-supc_enable_monitor_reset
 438 000a 00BF     		.section	.text.supc_disable_monitor_reset,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	supc_disable_monitor_reset
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu fpv5-d16
 446              		.type	supc_disable_monitor_reset, %function
 447              	supc_disable_monitor_reset:
 448              	.LFB153:
 212:../asf/sam/drivers/supc/supc.c **** }
 213:../asf/sam/drivers/supc/supc.c **** 
 214:../asf/sam/drivers/supc/supc.c **** /**
 215:../asf/sam/drivers/supc/supc.c ****  * \brief Disable the assertion of core reset signal when a supply monitor detection occurs.
 216:../asf/sam/drivers/supc/supc.c ****  *
 217:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 218:../asf/sam/drivers/supc/supc.c ****  */
 219:../asf/sam/drivers/supc/supc.c **** void supc_disable_monitor_reset(Supc *p_supc)
 220:../asf/sam/drivers/supc/supc.c **** {
 449              		.loc 1 220 0
 450              		.cfi_startproc
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453              		@ link register save eliminated.
 454              	.LVL32:
 221:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR &= ~SUPC_SMMR_SMRSTEN;
 455              		.loc 1 221 0
 456 0000 4368     		ldr	r3, [r0, #4]
 457 0002 23F48053 		bic	r3, r3, #4096
 458 0006 4360     		str	r3, [r0, #4]
 459 0008 7047     		bx	lr
 460              		.cfi_endproc
 461              	.LFE153:
 462              		.size	supc_disable_monitor_reset, .-supc_disable_monitor_reset
 463 000a 00BF     		.section	.text.supc_enable_monitor_interrupt,"ax",%progbits
 464              		.align	1
 465              		.p2align 2,,3
ARM GAS  /tmp/ccwbGpTl.s 			page 21


 466              		.global	supc_enable_monitor_interrupt
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu fpv5-d16
 471              		.type	supc_enable_monitor_interrupt, %function
 472              	supc_enable_monitor_interrupt:
 473              	.LFB154:
 222:../asf/sam/drivers/supc/supc.c **** }
 223:../asf/sam/drivers/supc/supc.c **** 
 224:../asf/sam/drivers/supc/supc.c **** /**
 225:../asf/sam/drivers/supc/supc.c ****  * \brief Enable the assertion of SUPC interrupt signal when a supply monitor detection occurs.
 226:../asf/sam/drivers/supc/supc.c ****  *
 227:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 228:../asf/sam/drivers/supc/supc.c ****  */
 229:../asf/sam/drivers/supc/supc.c **** void supc_enable_monitor_interrupt(Supc *p_supc)
 230:../asf/sam/drivers/supc/supc.c **** {
 474              		.loc 1 230 0
 475              		.cfi_startproc
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478              		@ link register save eliminated.
 479              	.LVL33:
 231:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR |= SUPC_SMMR_SMIEN;
 480              		.loc 1 231 0
 481 0000 4368     		ldr	r3, [r0, #4]
 482 0002 43F40053 		orr	r3, r3, #8192
 483 0006 4360     		str	r3, [r0, #4]
 484 0008 7047     		bx	lr
 485              		.cfi_endproc
 486              	.LFE154:
 487              		.size	supc_enable_monitor_interrupt, .-supc_enable_monitor_interrupt
 488 000a 00BF     		.section	.text.supc_disable_monitor_interrupt,"ax",%progbits
 489              		.align	1
 490              		.p2align 2,,3
 491              		.global	supc_disable_monitor_interrupt
 492              		.syntax unified
 493              		.thumb
 494              		.thumb_func
 495              		.fpu fpv5-d16
 496              		.type	supc_disable_monitor_interrupt, %function
 497              	supc_disable_monitor_interrupt:
 498              	.LFB155:
 232:../asf/sam/drivers/supc/supc.c **** }
 233:../asf/sam/drivers/supc/supc.c **** 
 234:../asf/sam/drivers/supc/supc.c **** /**
 235:../asf/sam/drivers/supc/supc.c ****  * \brief Disable the assertion of SUPC interrupt signal when a supply monitor detection occurs.
 236:../asf/sam/drivers/supc/supc.c ****  *
 237:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 238:../asf/sam/drivers/supc/supc.c ****  */
 239:../asf/sam/drivers/supc/supc.c **** void supc_disable_monitor_interrupt(Supc *p_supc)
 240:../asf/sam/drivers/supc/supc.c **** {
 499              		.loc 1 240 0
 500              		.cfi_startproc
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
ARM GAS  /tmp/ccwbGpTl.s 			page 22


 504              	.LVL34:
 241:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_SMMR &= ~SUPC_SMMR_SMIEN;
 505              		.loc 1 241 0
 506 0000 4368     		ldr	r3, [r0, #4]
 507 0002 23F40053 		bic	r3, r3, #8192
 508 0006 4360     		str	r3, [r0, #4]
 509 0008 7047     		bx	lr
 510              		.cfi_endproc
 511              	.LFE155:
 512              		.size	supc_disable_monitor_interrupt, .-supc_disable_monitor_interrupt
 513 000a 00BF     		.section	.text.supc_set_wakeup_mode,"ax",%progbits
 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	supc_set_wakeup_mode
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv5-d16
 521              		.type	supc_set_wakeup_mode, %function
 522              	supc_set_wakeup_mode:
 523              	.LFB156:
 242:../asf/sam/drivers/supc/supc.c **** }
 243:../asf/sam/drivers/supc/supc.c **** 
 244:../asf/sam/drivers/supc/supc.c **** #if (!(SAMG51 || SAMG53 || SAMG54))
 245:../asf/sam/drivers/supc/supc.c **** /**
 246:../asf/sam/drivers/supc/supc.c ****  * \brief Set system controller wake up mode.
 247:../asf/sam/drivers/supc/supc.c ****  *
 248:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 249:../asf/sam/drivers/supc/supc.c ****  * \param ul_mode Bitmask of wake up mode (please refer to datasheet for more details).
 250:../asf/sam/drivers/supc/supc.c ****  */
 251:../asf/sam/drivers/supc/supc.c **** void supc_set_wakeup_mode(Supc *p_supc, uint32_t ul_mode)
 252:../asf/sam/drivers/supc/supc.c **** {
 524              		.loc 1 252 0
 525              		.cfi_startproc
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528              		@ link register save eliminated.
 529              	.LVL35:
 253:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_WUMR = ul_mode;
 530              		.loc 1 253 0
 531 0000 C160     		str	r1, [r0, #12]
 532 0002 7047     		bx	lr
 533              		.cfi_endproc
 534              	.LFE156:
 535              		.size	supc_set_wakeup_mode, .-supc_set_wakeup_mode
 536              		.section	.text.supc_set_wakeup_inputs,"ax",%progbits
 537              		.align	1
 538              		.p2align 2,,3
 539              		.global	supc_set_wakeup_inputs
 540              		.syntax unified
 541              		.thumb
 542              		.thumb_func
 543              		.fpu fpv5-d16
 544              		.type	supc_set_wakeup_inputs, %function
 545              	supc_set_wakeup_inputs:
 546              	.LFB157:
 254:../asf/sam/drivers/supc/supc.c **** }
ARM GAS  /tmp/ccwbGpTl.s 			page 23


 255:../asf/sam/drivers/supc/supc.c **** 
 256:../asf/sam/drivers/supc/supc.c **** /**
 257:../asf/sam/drivers/supc/supc.c ****  * \brief Set system controller wake up inputs.
 258:../asf/sam/drivers/supc/supc.c ****  *
 259:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 260:../asf/sam/drivers/supc/supc.c ****  * \param ul_inputs Bitmask of wake-up inputs that can force wake up of
 261:../asf/sam/drivers/supc/supc.c ****  * the core power supply.
 262:../asf/sam/drivers/supc/supc.c ****  * \param ul_transition Bitmask of level transition of the wake-up inputs.
 263:../asf/sam/drivers/supc/supc.c ****  * 1 means a high-to-low level transition forces the wake up of core power supply.
 264:../asf/sam/drivers/supc/supc.c ****  * 0 means a low-to-high level transition forces the wake up of core power supply.
 265:../asf/sam/drivers/supc/supc.c ****  */
 266:../asf/sam/drivers/supc/supc.c **** void supc_set_wakeup_inputs(Supc *p_supc, uint32_t ul_inputs,
 267:../asf/sam/drivers/supc/supc.c **** 		uint32_t ul_transition)
 268:../asf/sam/drivers/supc/supc.c **** {
 547              		.loc 1 268 0
 548              		.cfi_startproc
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552              	.LVL36:
 269:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_WUIR = ul_inputs | ul_transition;
 553              		.loc 1 269 0
 554 0000 0A43     		orrs	r2, r2, r1
 555              	.LVL37:
 556 0002 0261     		str	r2, [r0, #16]
 557 0004 7047     		bx	lr
 558              		.cfi_endproc
 559              	.LFE157:
 560              		.size	supc_set_wakeup_inputs, .-supc_set_wakeup_inputs
 561 0006 00BF     		.section	.text.supc_get_status,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	supc_get_status
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv5-d16
 569              		.type	supc_get_status, %function
 570              	supc_get_status:
 571              	.LFB158:
 270:../asf/sam/drivers/supc/supc.c **** }
 271:../asf/sam/drivers/supc/supc.c **** #endif
 272:../asf/sam/drivers/supc/supc.c **** 
 273:../asf/sam/drivers/supc/supc.c **** /**
 274:../asf/sam/drivers/supc/supc.c ****  * \brief Get supply controller status.
 275:../asf/sam/drivers/supc/supc.c ****  *
 276:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 277:../asf/sam/drivers/supc/supc.c ****  *
 278:../asf/sam/drivers/supc/supc.c ****  * \return The status of supply controller.
 279:../asf/sam/drivers/supc/supc.c ****  */
 280:../asf/sam/drivers/supc/supc.c **** uint32_t supc_get_status(Supc *p_supc)
 281:../asf/sam/drivers/supc/supc.c **** {
 572              		.loc 1 281 0
 573              		.cfi_startproc
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
ARM GAS  /tmp/ccwbGpTl.s 			page 24


 577              	.LVL38:
 282:../asf/sam/drivers/supc/supc.c **** 	return p_supc->SUPC_SR;
 578              		.loc 1 282 0
 579 0000 4069     		ldr	r0, [r0, #20]
 580              	.LVL39:
 283:../asf/sam/drivers/supc/supc.c **** }
 581              		.loc 1 283 0
 582 0002 7047     		bx	lr
 583              		.cfi_endproc
 584              	.LFE158:
 585              		.size	supc_get_status, .-supc_get_status
 586              		.section	.text.supc_backup_sram_on,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	supc_backup_sram_on
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv5-d16
 594              		.type	supc_backup_sram_on, %function
 595              	supc_backup_sram_on:
 596              	.LFB159:
 284:../asf/sam/drivers/supc/supc.c **** 
 285:../asf/sam/drivers/supc/supc.c **** #if (SAM4C || SAM4CP || SAM4CM)
 286:../asf/sam/drivers/supc/supc.c **** /**
 287:../asf/sam/drivers/supc/supc.c ****  * \brief Enable Backup Area Power-On Reset.
 288:../asf/sam/drivers/supc/supc.c ****  *
 289:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 290:../asf/sam/drivers/supc/supc.c ****  */
 291:../asf/sam/drivers/supc/supc.c **** void supc_enable_backup_power_on_reset(Supc *p_supc)
 292:../asf/sam/drivers/supc/supc.c **** {
 293:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BUPPOREN));
 294:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_BUPPOREN;
 295:../asf/sam/drivers/supc/supc.c **** }
 296:../asf/sam/drivers/supc/supc.c **** 
 297:../asf/sam/drivers/supc/supc.c **** /**
 298:../asf/sam/drivers/supc/supc.c ****  * \brief Disable Backup Area Power-On Reset.
 299:../asf/sam/drivers/supc/supc.c ****  *
 300:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 301:../asf/sam/drivers/supc/supc.c ****  */
 302:../asf/sam/drivers/supc/supc.c **** void supc_disable_backup_power_on_reset(Supc *p_supc)
 303:../asf/sam/drivers/supc/supc.c **** {
 304:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~(SUPC_MR_KEY_Msk | SUPC_MR_BUPPOREN));
 305:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr;
 306:../asf/sam/drivers/supc/supc.c **** }
 307:../asf/sam/drivers/supc/supc.c **** /**
 308:../asf/sam/drivers/supc/supc.c ****  * \brief Get SLCD power mode.
 309:../asf/sam/drivers/supc/supc.c ****  *
 310:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 311:../asf/sam/drivers/supc/supc.c ****  *
 312:../asf/sam/drivers/supc/supc.c ****  * \return The mode of SLCDC.
 313:../asf/sam/drivers/supc/supc.c ****  */
 314:../asf/sam/drivers/supc/supc.c **** enum slcdc_power_mode supc_get_slcd_power_mode(Supc *p_supc)
 315:../asf/sam/drivers/supc/supc.c **** {
 316:../asf/sam/drivers/supc/supc.c **** 	return (enum slcdc_power_mode)(p_supc->SUPC_MR & SUPC_MR_LCDMODE_Msk);
 317:../asf/sam/drivers/supc/supc.c **** }
 318:../asf/sam/drivers/supc/supc.c **** 
ARM GAS  /tmp/ccwbGpTl.s 			page 25


 319:../asf/sam/drivers/supc/supc.c **** /**
 320:../asf/sam/drivers/supc/supc.c ****  * \brief Set SLCD power mode.
 321:../asf/sam/drivers/supc/supc.c ****  *
 322:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 323:../asf/sam/drivers/supc/supc.c ****  * \param mode The mode of SLCDC.
 324:../asf/sam/drivers/supc/supc.c ****  */
 325:../asf/sam/drivers/supc/supc.c **** void supc_set_slcd_power_mode(Supc *p_supc, enum slcdc_power_mode mode)
 326:../asf/sam/drivers/supc/supc.c **** {
 327:../asf/sam/drivers/supc/supc.c **** 	enum slcdc_power_mode pre_mode;
 328:../asf/sam/drivers/supc/supc.c **** 	uint32_t tmp;
 329:../asf/sam/drivers/supc/supc.c **** 
 330:../asf/sam/drivers/supc/supc.c **** 	pre_mode = supc_get_slcd_power_mode(p_supc);
 331:../asf/sam/drivers/supc/supc.c **** 
 332:../asf/sam/drivers/supc/supc.c **** 	if ((pre_mode == SLCDC_POWER_MODE_LCDON_EXTVR) &&
 333:../asf/sam/drivers/supc/supc.c **** 			(mode == SLCDC_POWER_MODE_LCDON_INVR)) {
 334:../asf/sam/drivers/supc/supc.c **** 		return;
 335:../asf/sam/drivers/supc/supc.c **** 	} else if ((pre_mode == SLCDC_POWER_MODE_LCDON_INVR) &&
 336:../asf/sam/drivers/supc/supc.c **** 			(mode == SLCDC_POWER_MODE_LCDON_EXTVR)) {
 337:../asf/sam/drivers/supc/supc.c **** 		return;
 338:../asf/sam/drivers/supc/supc.c **** 	}
 339:../asf/sam/drivers/supc/supc.c **** 	tmp = p_supc->SUPC_MR;
 340:../asf/sam/drivers/supc/supc.c **** 	tmp &= ~SUPC_MR_LCDMODE_Msk;
 341:../asf/sam/drivers/supc/supc.c **** 	tmp |=  SUPC_MR_KEY_PASSWD | mode;
 342:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = tmp;
 343:../asf/sam/drivers/supc/supc.c **** 
 344:../asf/sam/drivers/supc/supc.c **** 	if (mode == SLCDC_POWER_MODE_LCDOFF) {
 345:../asf/sam/drivers/supc/supc.c **** 		while(supc_get_status(p_supc) & SUPC_SR_LCDS_ENABLED);
 346:../asf/sam/drivers/supc/supc.c **** 	} else {
 347:../asf/sam/drivers/supc/supc.c **** 		while(!(supc_get_status(p_supc) & SUPC_SR_LCDS_ENABLED));
 348:../asf/sam/drivers/supc/supc.c **** 	}
 349:../asf/sam/drivers/supc/supc.c **** }
 350:../asf/sam/drivers/supc/supc.c **** 
 351:../asf/sam/drivers/supc/supc.c **** /**
 352:../asf/sam/drivers/supc/supc.c ****  * \brief Set LCD Voltage Regulator Output.
 353:../asf/sam/drivers/supc/supc.c ****  *
 354:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 355:../asf/sam/drivers/supc/supc.c ****  * \param vol  The voltage of Regulator Output.
 356:../asf/sam/drivers/supc/supc.c ****  */
 357:../asf/sam/drivers/supc/supc.c **** void supc_set_slcd_vol(Supc *p_supc, uint32_t vol)
 358:../asf/sam/drivers/supc/supc.c **** {
 359:../asf/sam/drivers/supc/supc.c **** 	uint32_t tmp= p_supc->SUPC_MR;
 360:../asf/sam/drivers/supc/supc.c **** 	tmp &= ~SUPC_MR_LCDVROUT_Msk;
 361:../asf/sam/drivers/supc/supc.c **** 	tmp |=  SUPC_MR_KEY_PASSWD |  SUPC_MR_LCDVROUT(vol);
 362:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = tmp;
 363:../asf/sam/drivers/supc/supc.c **** 
 364:../asf/sam/drivers/supc/supc.c **** }
 365:../asf/sam/drivers/supc/supc.c **** #endif
 366:../asf/sam/drivers/supc/supc.c **** 
 367:../asf/sam/drivers/supc/supc.c **** #if (SAMG54 || SAMG55)
 368:../asf/sam/drivers/supc/supc.c **** /**
 369:../asf/sam/drivers/supc/supc.c ****  * \brief Set the internal voltage regulator to use factory trim value.
 370:../asf/sam/drivers/supc/supc.c ****  *
 371:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 372:../asf/sam/drivers/supc/supc.c ****  */
 373:../asf/sam/drivers/supc/supc.c **** void supc_set_regulator_trim_factory(Supc *p_supc)
 374:../asf/sam/drivers/supc/supc.c **** {
 375:../asf/sam/drivers/supc/supc.c **** #if SAMG54
ARM GAS  /tmp/ccwbGpTl.s 			page 26


 376:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR &
 377:../asf/sam/drivers/supc/supc.c **** 			(~(SUPC_MR_VRVDD_Msk | SUPC_MR_VDDSEL_USER_VRVDD));
 378:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr;
 379:../asf/sam/drivers/supc/supc.c **** #else
 380:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_pwmr = p_supc->SUPC_PWMR & (~SUPC_PWMR_ECPWRS);
 381:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_PWMR = SUPC_PWMR_KEY_PASSWD | ul_pwmr;
 382:../asf/sam/drivers/supc/supc.c **** #endif
 383:../asf/sam/drivers/supc/supc.c **** }
 384:../asf/sam/drivers/supc/supc.c **** 
 385:../asf/sam/drivers/supc/supc.c **** /**
 386:../asf/sam/drivers/supc/supc.c ****  * \brief Set the internal voltage regulator trim value.
 387:../asf/sam/drivers/supc/supc.c ****  *
 388:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 389:../asf/sam/drivers/supc/supc.c ****  * \param value the trim value.
 390:../asf/sam/drivers/supc/supc.c ****  *
 391:../asf/sam/drivers/supc/supc.c ****  * \note For the trim value in 96M PLL, please read the value in flash unique identifier area.
 392:../asf/sam/drivers/supc/supc.c ****  */
 393:../asf/sam/drivers/supc/supc.c **** void supc_set_regulator_trim_user(Supc *p_supc, uint32_t value)
 394:../asf/sam/drivers/supc/supc.c **** {
 395:../asf/sam/drivers/supc/supc.c **** #if SAMG54
 396:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_mr = p_supc->SUPC_MR & (~SUPC_MR_VRVDD_Msk);
 397:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR = SUPC_MR_KEY_PASSWD | ul_mr | SUPC_MR_VDDSEL_USER_VRVDD
 398:../asf/sam/drivers/supc/supc.c **** 		 | SUPC_MR_VRVDD(value);
 399:../asf/sam/drivers/supc/supc.c **** #else
 400:../asf/sam/drivers/supc/supc.c **** 	uint32_t ul_pwmr = p_supc->SUPC_PWMR & (~(0xFu << 9));
 401:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_PWMR = SUPC_PWMR_KEY_PASSWD | ul_pwmr | SUPC_PWMR_ECPWRS
 402:../asf/sam/drivers/supc/supc.c **** 		| ((value & 0xFu) << 9);
 403:../asf/sam/drivers/supc/supc.c **** #endif
 404:../asf/sam/drivers/supc/supc.c **** }
 405:../asf/sam/drivers/supc/supc.c **** 
 406:../asf/sam/drivers/supc/supc.c **** #endif
 407:../asf/sam/drivers/supc/supc.c **** 
 408:../asf/sam/drivers/supc/supc.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 409:../asf/sam/drivers/supc/supc.c **** /**
 410:../asf/sam/drivers/supc/supc.c ****  * \brief SRAM On In Backup Mode.
 411:../asf/sam/drivers/supc/supc.c ****  *
 412:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 413:../asf/sam/drivers/supc/supc.c ****  *
 414:../asf/sam/drivers/supc/supc.c ****  */
 415:../asf/sam/drivers/supc/supc.c **** void supc_backup_sram_on(Supc *p_supc)
 416:../asf/sam/drivers/supc/supc.c **** {
 597              		.loc 1 416 0
 598              		.cfi_startproc
 599              		@ args = 0, pretend = 0, frame = 0
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601              		@ link register save eliminated.
 602              	.LVL40:
 417:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR |= (SUPC_MR_KEY_PASSWD | SUPC_MR_BKUPRETON);
 603              		.loc 1 417 0
 604 0000 8268     		ldr	r2, [r0, #8]
 605 0002 024B     		ldr	r3, .L39
 606 0004 1343     		orrs	r3, r3, r2
 607 0006 8360     		str	r3, [r0, #8]
 608 0008 7047     		bx	lr
 609              	.L40:
 610 000a 00BF     		.align	2
 611              	.L39:
ARM GAS  /tmp/ccwbGpTl.s 			page 27


 612 000c 000002A5 		.word	-1526595584
 613              		.cfi_endproc
 614              	.LFE159:
 615              		.size	supc_backup_sram_on, .-supc_backup_sram_on
 616              		.section	.text.supc_backup_sram_off,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	supc_backup_sram_off
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu fpv5-d16
 624              		.type	supc_backup_sram_off, %function
 625              	supc_backup_sram_off:
 626              	.LFB160:
 418:../asf/sam/drivers/supc/supc.c **** }
 419:../asf/sam/drivers/supc/supc.c **** 
 420:../asf/sam/drivers/supc/supc.c **** /**
 421:../asf/sam/drivers/supc/supc.c ****  * \brief SRAM Off In Backup Mode.
 422:../asf/sam/drivers/supc/supc.c ****  *
 423:../asf/sam/drivers/supc/supc.c ****  * \param p_supc Pointer to a SUPC instance.
 424:../asf/sam/drivers/supc/supc.c ****  *
 425:../asf/sam/drivers/supc/supc.c ****  */
 426:../asf/sam/drivers/supc/supc.c **** void supc_backup_sram_off(Supc *p_supc)
 427:../asf/sam/drivers/supc/supc.c **** {
 627              		.loc 1 427 0
 628              		.cfi_startproc
 629              		@ args = 0, pretend = 0, frame = 0
 630              		@ frame_needed = 0, uses_anonymous_args = 0
 631              		@ link register save eliminated.
 632              	.LVL41:
 428:../asf/sam/drivers/supc/supc.c **** 	p_supc->SUPC_MR &= (~(SUPC_MR_KEY_PASSWD | SUPC_MR_BKUPRETON));	
 633              		.loc 1 428 0
 634 0000 8268     		ldr	r2, [r0, #8]
 635 0002 024B     		ldr	r3, .L42
 636 0004 1340     		ands	r3, r3, r2
 637 0006 8360     		str	r3, [r0, #8]
 638 0008 7047     		bx	lr
 639              	.L43:
 640 000a 00BF     		.align	2
 641              	.L42:
 642 000c FFFFFD5A 		.word	1526595583
 643              		.cfi_endproc
 644              	.LFE160:
 645              		.size	supc_backup_sram_off, .-supc_backup_sram_off
 646              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 647              		.align	2
 648              		.type	cpu_irq_critical_section_counter, %object
 649              		.size	cpu_irq_critical_section_counter, 4
 650              	cpu_irq_critical_section_counter:
 651 0000 00000000 		.space	4
 652              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 653              		.type	cpu_irq_prev_interrupt_state, %object
 654              		.size	cpu_irq_prev_interrupt_state, 1
 655              	cpu_irq_prev_interrupt_state:
 656 0000 00       		.space	1
 657              		.text
ARM GAS  /tmp/ccwbGpTl.s 			page 28


 658              	.Letext0:
 659              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 660              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 661              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 662              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 663              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/supc
 664              		.file 8 "/usr/include/newlib/sys/lock.h"
 665              		.file 9 "/usr/include/newlib/sys/_types.h"
 666              		.file 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 667              		.file 11 "/usr/include/newlib/sys/reent.h"
 668              		.file 12 "/usr/include/newlib/stdlib.h"
 669              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 670              		.section	.debug_info,"",%progbits
 671              	.Ldebug_info0:
 672 0000 4B0D0000 		.4byte	0xd4b
 673 0004 0400     		.2byte	0x4
 674 0006 00000000 		.4byte	.Ldebug_abbrev0
 675 000a 04       		.byte	0x4
 676 000b 01       		.uleb128 0x1
 677 000c 64030000 		.4byte	.LASF170
 678 0010 0C       		.byte	0xc
 679 0011 FF060000 		.4byte	.LASF171
 680 0015 0E080000 		.4byte	.LASF172
 681 0019 00000000 		.4byte	.Ldebug_ranges0+0
 682 001d 00000000 		.4byte	0
 683 0021 00000000 		.4byte	.Ldebug_line0
 684 0025 02       		.uleb128 0x2
 685 0026 04       		.byte	0x4
 686 0027 05       		.byte	0x5
 687 0028 696E7400 		.ascii	"int\000"
 688 002c 03       		.uleb128 0x3
 689 002d 04       		.byte	0x4
 690 002e 07       		.byte	0x7
 691 002f 7B060000 		.4byte	.LASF0
 692 0033 03       		.uleb128 0x3
 693 0034 01       		.byte	0x1
 694 0035 06       		.byte	0x6
 695 0036 FB000000 		.4byte	.LASF1
 696 003a 03       		.uleb128 0x3
 697 003b 01       		.byte	0x1
 698 003c 08       		.byte	0x8
 699 003d 22050000 		.4byte	.LASF2
 700 0041 03       		.uleb128 0x3
 701 0042 02       		.byte	0x2
 702 0043 05       		.byte	0x5
 703 0044 21000000 		.4byte	.LASF3
 704 0048 03       		.uleb128 0x3
 705 0049 02       		.byte	0x2
 706 004a 07       		.byte	0x7
 707 004b D2060000 		.4byte	.LASF4
 708 004f 04       		.uleb128 0x4
 709 0050 A9060000 		.4byte	.LASF6
 710 0054 03       		.byte	0x3
 711 0055 3F       		.byte	0x3f
 712 0056 5A000000 		.4byte	0x5a
 713 005a 03       		.uleb128 0x3
 714 005b 04       		.byte	0x4
ARM GAS  /tmp/ccwbGpTl.s 			page 29


 715 005c 05       		.byte	0x5
 716 005d 51010000 		.4byte	.LASF5
 717 0061 04       		.uleb128 0x4
 718 0062 07020000 		.4byte	.LASF7
 719 0066 03       		.byte	0x3
 720 0067 41       		.byte	0x41
 721 0068 6C000000 		.4byte	0x6c
 722 006c 03       		.uleb128 0x3
 723 006d 04       		.byte	0x4
 724 006e 07       		.byte	0x7
 725 006f 8F020000 		.4byte	.LASF8
 726 0073 03       		.uleb128 0x3
 727 0074 08       		.byte	0x8
 728 0075 05       		.byte	0x5
 729 0076 84010000 		.4byte	.LASF9
 730 007a 03       		.uleb128 0x3
 731 007b 08       		.byte	0x8
 732 007c 07       		.byte	0x7
 733 007d 0D010000 		.4byte	.LASF10
 734 0081 04       		.uleb128 0x4
 735 0082 1A050000 		.4byte	.LASF11
 736 0086 04       		.byte	0x4
 737 0087 2C       		.byte	0x2c
 738 0088 4F000000 		.4byte	0x4f
 739 008c 05       		.uleb128 0x5
 740 008d 81000000 		.4byte	0x81
 741 0091 04       		.uleb128 0x4
 742 0092 43070000 		.4byte	.LASF12
 743 0096 04       		.byte	0x4
 744 0097 30       		.byte	0x30
 745 0098 61000000 		.4byte	0x61
 746 009c 05       		.uleb128 0x5
 747 009d 91000000 		.4byte	0x91
 748 00a1 06       		.uleb128 0x6
 749 00a2 9C000000 		.4byte	0x9c
 750 00a6 07       		.uleb128 0x7
 751 00a7 04       		.byte	0x4
 752 00a8 03       		.uleb128 0x3
 753 00a9 04       		.byte	0x4
 754 00aa 07       		.byte	0x7
 755 00ab 3F030000 		.4byte	.LASF13
 756 00af 08       		.uleb128 0x8
 757 00b0 36050000 		.4byte	.LASF14
 758 00b4 05       		.byte	0x5
 759 00b5 6508     		.2byte	0x865
 760 00b7 8C000000 		.4byte	0x8c
 761 00bb 09       		.uleb128 0x9
 762 00bc 6F020000 		.4byte	.LASF15
 763 00c0 06       		.byte	0x6
 764 00c1 3A       		.byte	0x3a
 765 00c2 91000000 		.4byte	0x91
 766 00c6 0A       		.uleb128 0xa
 767 00c7 18       		.byte	0x18
 768 00c8 07       		.byte	0x7
 769 00c9 37       		.byte	0x37
 770 00ca 17010000 		.4byte	0x117
 771 00ce 0B       		.uleb128 0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 30


 772 00cf FA010000 		.4byte	.LASF16
 773 00d3 07       		.byte	0x7
 774 00d4 38       		.byte	0x38
 775 00d5 9C000000 		.4byte	0x9c
 776 00d9 00       		.byte	0
 777 00da 0B       		.uleb128 0xb
 778 00db 46000000 		.4byte	.LASF17
 779 00df 07       		.byte	0x7
 780 00e0 39       		.byte	0x39
 781 00e1 9C000000 		.4byte	0x9c
 782 00e5 04       		.byte	0x4
 783 00e6 0B       		.uleb128 0xb
 784 00e7 6D040000 		.4byte	.LASF18
 785 00eb 07       		.byte	0x7
 786 00ec 3A       		.byte	0x3a
 787 00ed 9C000000 		.4byte	0x9c
 788 00f1 08       		.byte	0x8
 789 00f2 0B       		.uleb128 0xb
 790 00f3 B8000000 		.4byte	.LASF19
 791 00f7 07       		.byte	0x7
 792 00f8 3B       		.byte	0x3b
 793 00f9 9C000000 		.4byte	0x9c
 794 00fd 0C       		.byte	0xc
 795 00fe 0B       		.uleb128 0xb
 796 00ff E6040000 		.4byte	.LASF20
 797 0103 07       		.byte	0x7
 798 0104 3C       		.byte	0x3c
 799 0105 9C000000 		.4byte	0x9c
 800 0109 10       		.byte	0x10
 801 010a 0B       		.uleb128 0xb
 802 010b AC020000 		.4byte	.LASF21
 803 010f 07       		.byte	0x7
 804 0110 3D       		.byte	0x3d
 805 0111 A1000000 		.4byte	0xa1
 806 0115 14       		.byte	0x14
 807 0116 00       		.byte	0
 808 0117 04       		.uleb128 0x4
 809 0118 C2000000 		.4byte	.LASF22
 810 011c 07       		.byte	0x7
 811 011d 3E       		.byte	0x3e
 812 011e C6000000 		.4byte	0xc6
 813 0122 04       		.uleb128 0x4
 814 0123 D4040000 		.4byte	.LASF23
 815 0127 08       		.byte	0x8
 816 0128 07       		.byte	0x7
 817 0129 25000000 		.4byte	0x25
 818 012d 04       		.uleb128 0x4
 819 012e ED000000 		.4byte	.LASF24
 820 0132 09       		.byte	0x9
 821 0133 2C       		.byte	0x2c
 822 0134 5A000000 		.4byte	0x5a
 823 0138 04       		.uleb128 0x4
 824 0139 58060000 		.4byte	.LASF25
 825 013d 09       		.byte	0x9
 826 013e 72       		.byte	0x72
 827 013f 5A000000 		.4byte	0x5a
 828 0143 0C       		.uleb128 0xc
ARM GAS  /tmp/ccwbGpTl.s 			page 31


 829 0144 4E040000 		.4byte	.LASF26
 830 0148 0A       		.byte	0xa
 831 0149 6501     		.2byte	0x165
 832 014b 2C000000 		.4byte	0x2c
 833 014f 0D       		.uleb128 0xd
 834 0150 04       		.byte	0x4
 835 0151 09       		.byte	0x9
 836 0152 A6       		.byte	0xa6
 837 0153 6E010000 		.4byte	0x16e
 838 0157 0E       		.uleb128 0xe
 839 0158 E9020000 		.4byte	.LASF27
 840 015c 09       		.byte	0x9
 841 015d A8       		.byte	0xa8
 842 015e 43010000 		.4byte	0x143
 843 0162 0E       		.uleb128 0xe
 844 0163 68020000 		.4byte	.LASF28
 845 0167 09       		.byte	0x9
 846 0168 A9       		.byte	0xa9
 847 0169 6E010000 		.4byte	0x16e
 848 016d 00       		.byte	0
 849 016e 0F       		.uleb128 0xf
 850 016f 3A000000 		.4byte	0x3a
 851 0173 7E010000 		.4byte	0x17e
 852 0177 10       		.uleb128 0x10
 853 0178 A8000000 		.4byte	0xa8
 854 017c 03       		.byte	0x3
 855 017d 00       		.byte	0
 856 017e 0A       		.uleb128 0xa
 857 017f 08       		.byte	0x8
 858 0180 09       		.byte	0x9
 859 0181 A3       		.byte	0xa3
 860 0182 9F010000 		.4byte	0x19f
 861 0186 0B       		.uleb128 0xb
 862 0187 38060000 		.4byte	.LASF29
 863 018b 09       		.byte	0x9
 864 018c A5       		.byte	0xa5
 865 018d 25000000 		.4byte	0x25
 866 0191 00       		.byte	0
 867 0192 0B       		.uleb128 0xb
 868 0193 40060000 		.4byte	.LASF30
 869 0197 09       		.byte	0x9
 870 0198 AA       		.byte	0xaa
 871 0199 4F010000 		.4byte	0x14f
 872 019d 04       		.byte	0x4
 873 019e 00       		.byte	0
 874 019f 04       		.uleb128 0x4
 875 01a0 9B050000 		.4byte	.LASF31
 876 01a4 09       		.byte	0x9
 877 01a5 AB       		.byte	0xab
 878 01a6 7E010000 		.4byte	0x17e
 879 01aa 04       		.uleb128 0x4
 880 01ab 4C050000 		.4byte	.LASF32
 881 01af 09       		.byte	0x9
 882 01b0 AF       		.byte	0xaf
 883 01b1 22010000 		.4byte	0x122
 884 01b5 04       		.uleb128 0x4
 885 01b6 EA060000 		.4byte	.LASF33
ARM GAS  /tmp/ccwbGpTl.s 			page 32


 886 01ba 0B       		.byte	0xb
 887 01bb 16       		.byte	0x16
 888 01bc 6C000000 		.4byte	0x6c
 889 01c0 11       		.uleb128 0x11
 890 01c1 43020000 		.4byte	.LASF38
 891 01c5 18       		.byte	0x18
 892 01c6 0B       		.byte	0xb
 893 01c7 2D       		.byte	0x2d
 894 01c8 13020000 		.4byte	0x213
 895 01cc 0B       		.uleb128 0xb
 896 01cd 4B020000 		.4byte	.LASF34
 897 01d1 0B       		.byte	0xb
 898 01d2 2F       		.byte	0x2f
 899 01d3 13020000 		.4byte	0x213
 900 01d7 00       		.byte	0
 901 01d8 12       		.uleb128 0x12
 902 01d9 5F6B00   		.ascii	"_k\000"
 903 01dc 0B       		.byte	0xb
 904 01dd 30       		.byte	0x30
 905 01de 25000000 		.4byte	0x25
 906 01e2 04       		.byte	0x4
 907 01e3 0B       		.uleb128 0xb
 908 01e4 23060000 		.4byte	.LASF35
 909 01e8 0B       		.byte	0xb
 910 01e9 30       		.byte	0x30
 911 01ea 25000000 		.4byte	0x25
 912 01ee 08       		.byte	0x8
 913 01ef 0B       		.uleb128 0xb
 914 01f0 29020000 		.4byte	.LASF36
 915 01f4 0B       		.byte	0xb
 916 01f5 30       		.byte	0x30
 917 01f6 25000000 		.4byte	0x25
 918 01fa 0C       		.byte	0xc
 919 01fb 0B       		.uleb128 0xb
 920 01fc 87070000 		.4byte	.LASF37
 921 0200 0B       		.byte	0xb
 922 0201 30       		.byte	0x30
 923 0202 25000000 		.4byte	0x25
 924 0206 10       		.byte	0x10
 925 0207 12       		.uleb128 0x12
 926 0208 5F7800   		.ascii	"_x\000"
 927 020b 0B       		.byte	0xb
 928 020c 31       		.byte	0x31
 929 020d 19020000 		.4byte	0x219
 930 0211 14       		.byte	0x14
 931 0212 00       		.byte	0
 932 0213 13       		.uleb128 0x13
 933 0214 04       		.byte	0x4
 934 0215 C0010000 		.4byte	0x1c0
 935 0219 0F       		.uleb128 0xf
 936 021a B5010000 		.4byte	0x1b5
 937 021e 29020000 		.4byte	0x229
 938 0222 10       		.uleb128 0x10
 939 0223 A8000000 		.4byte	0xa8
 940 0227 00       		.byte	0
 941 0228 00       		.byte	0
 942 0229 11       		.uleb128 0x11
ARM GAS  /tmp/ccwbGpTl.s 			page 33


 943 022a 5D020000 		.4byte	.LASF39
 944 022e 24       		.byte	0x24
 945 022f 0B       		.byte	0xb
 946 0230 35       		.byte	0x35
 947 0231 A2020000 		.4byte	0x2a2
 948 0235 0B       		.uleb128 0xb
 949 0236 E4000000 		.4byte	.LASF40
 950 023a 0B       		.byte	0xb
 951 023b 37       		.byte	0x37
 952 023c 25000000 		.4byte	0x25
 953 0240 00       		.byte	0
 954 0241 0B       		.uleb128 0xb
 955 0242 66080000 		.4byte	.LASF41
 956 0246 0B       		.byte	0xb
 957 0247 38       		.byte	0x38
 958 0248 25000000 		.4byte	0x25
 959 024c 04       		.byte	0x4
 960 024d 0B       		.uleb128 0xb
 961 024e 24010000 		.4byte	.LASF42
 962 0252 0B       		.byte	0xb
 963 0253 39       		.byte	0x39
 964 0254 25000000 		.4byte	0x25
 965 0258 08       		.byte	0x8
 966 0259 0B       		.uleb128 0xb
 967 025a A7080000 		.4byte	.LASF43
 968 025e 0B       		.byte	0xb
 969 025f 3A       		.byte	0x3a
 970 0260 25000000 		.4byte	0x25
 971 0264 0C       		.byte	0xc
 972 0265 0B       		.uleb128 0xb
 973 0266 05040000 		.4byte	.LASF44
 974 026a 0B       		.byte	0xb
 975 026b 3B       		.byte	0x3b
 976 026c 25000000 		.4byte	0x25
 977 0270 10       		.byte	0x10
 978 0271 0B       		.uleb128 0xb
 979 0272 14030000 		.4byte	.LASF45
 980 0276 0B       		.byte	0xb
 981 0277 3C       		.byte	0x3c
 982 0278 25000000 		.4byte	0x25
 983 027c 14       		.byte	0x14
 984 027d 0B       		.uleb128 0xb
 985 027e 4E060000 		.4byte	.LASF46
 986 0282 0B       		.byte	0xb
 987 0283 3D       		.byte	0x3d
 988 0284 25000000 		.4byte	0x25
 989 0288 18       		.byte	0x18
 990 0289 0B       		.uleb128 0xb
 991 028a 9D080000 		.4byte	.LASF47
 992 028e 0B       		.byte	0xb
 993 028f 3E       		.byte	0x3e
 994 0290 25000000 		.4byte	0x25
 995 0294 1C       		.byte	0x1c
 996 0295 0B       		.uleb128 0xb
 997 0296 34030000 		.4byte	.LASF48
 998 029a 0B       		.byte	0xb
 999 029b 3F       		.byte	0x3f
ARM GAS  /tmp/ccwbGpTl.s 			page 34


 1000 029c 25000000 		.4byte	0x25
 1001 02a0 20       		.byte	0x20
 1002 02a1 00       		.byte	0
 1003 02a2 14       		.uleb128 0x14
 1004 02a3 33010000 		.4byte	.LASF49
 1005 02a7 0801     		.2byte	0x108
 1006 02a9 0B       		.byte	0xb
 1007 02aa 48       		.byte	0x48
 1008 02ab E2020000 		.4byte	0x2e2
 1009 02af 0B       		.uleb128 0xb
 1010 02b0 2B000000 		.4byte	.LASF50
 1011 02b4 0B       		.byte	0xb
 1012 02b5 49       		.byte	0x49
 1013 02b6 E2020000 		.4byte	0x2e2
 1014 02ba 00       		.byte	0
 1015 02bb 0B       		.uleb128 0xb
 1016 02bc 00000000 		.4byte	.LASF51
 1017 02c0 0B       		.byte	0xb
 1018 02c1 4A       		.byte	0x4a
 1019 02c2 E2020000 		.4byte	0x2e2
 1020 02c6 80       		.byte	0x80
 1021 02c7 15       		.uleb128 0x15
 1022 02c8 C9060000 		.4byte	.LASF52
 1023 02cc 0B       		.byte	0xb
 1024 02cd 4C       		.byte	0x4c
 1025 02ce B5010000 		.4byte	0x1b5
 1026 02d2 0001     		.2byte	0x100
 1027 02d4 15       		.uleb128 0x15
 1028 02d5 6B010000 		.4byte	.LASF53
 1029 02d9 0B       		.byte	0xb
 1030 02da 4F       		.byte	0x4f
 1031 02db B5010000 		.4byte	0x1b5
 1032 02df 0401     		.2byte	0x104
 1033 02e1 00       		.byte	0
 1034 02e2 0F       		.uleb128 0xf
 1035 02e3 A6000000 		.4byte	0xa6
 1036 02e7 F2020000 		.4byte	0x2f2
 1037 02eb 10       		.uleb128 0x10
 1038 02ec A8000000 		.4byte	0xa8
 1039 02f0 1F       		.byte	0x1f
 1040 02f1 00       		.byte	0
 1041 02f2 14       		.uleb128 0x14
 1042 02f3 0E040000 		.4byte	.LASF54
 1043 02f7 9001     		.2byte	0x190
 1044 02f9 0B       		.byte	0xb
 1045 02fa 5B       		.byte	0x5b
 1046 02fb 30030000 		.4byte	0x330
 1047 02ff 0B       		.uleb128 0xb
 1048 0300 4B020000 		.4byte	.LASF34
 1049 0304 0B       		.byte	0xb
 1050 0305 5C       		.byte	0x5c
 1051 0306 30030000 		.4byte	0x330
 1052 030a 00       		.byte	0
 1053 030b 0B       		.uleb128 0xb
 1054 030c E5050000 		.4byte	.LASF55
 1055 0310 0B       		.byte	0xb
 1056 0311 5D       		.byte	0x5d
ARM GAS  /tmp/ccwbGpTl.s 			page 35


 1057 0312 25000000 		.4byte	0x25
 1058 0316 04       		.byte	0x4
 1059 0317 0B       		.uleb128 0xb
 1060 0318 02020000 		.4byte	.LASF56
 1061 031c 0B       		.byte	0xb
 1062 031d 5F       		.byte	0x5f
 1063 031e 36030000 		.4byte	0x336
 1064 0322 08       		.byte	0x8
 1065 0323 0B       		.uleb128 0xb
 1066 0324 33010000 		.4byte	.LASF49
 1067 0328 0B       		.byte	0xb
 1068 0329 60       		.byte	0x60
 1069 032a A2020000 		.4byte	0x2a2
 1070 032e 88       		.byte	0x88
 1071 032f 00       		.byte	0
 1072 0330 13       		.uleb128 0x13
 1073 0331 04       		.byte	0x4
 1074 0332 F2020000 		.4byte	0x2f2
 1075 0336 0F       		.uleb128 0xf
 1076 0337 46030000 		.4byte	0x346
 1077 033b 46030000 		.4byte	0x346
 1078 033f 10       		.uleb128 0x10
 1079 0340 A8000000 		.4byte	0xa8
 1080 0344 1F       		.byte	0x1f
 1081 0345 00       		.byte	0
 1082 0346 13       		.uleb128 0x13
 1083 0347 04       		.byte	0x4
 1084 0348 4C030000 		.4byte	0x34c
 1085 034c 16       		.uleb128 0x16
 1086 034d 11       		.uleb128 0x11
 1087 034e 74050000 		.4byte	.LASF57
 1088 0352 08       		.byte	0x8
 1089 0353 0B       		.byte	0xb
 1090 0354 73       		.byte	0x73
 1091 0355 72030000 		.4byte	0x372
 1092 0359 0B       		.uleb128 0xb
 1093 035a F0040000 		.4byte	.LASF58
 1094 035e 0B       		.byte	0xb
 1095 035f 74       		.byte	0x74
 1096 0360 72030000 		.4byte	0x372
 1097 0364 00       		.byte	0
 1098 0365 0B       		.uleb128 0xb
 1099 0366 75060000 		.4byte	.LASF59
 1100 036a 0B       		.byte	0xb
 1101 036b 75       		.byte	0x75
 1102 036c 25000000 		.4byte	0x25
 1103 0370 04       		.byte	0x4
 1104 0371 00       		.byte	0
 1105 0372 13       		.uleb128 0x13
 1106 0373 04       		.byte	0x4
 1107 0374 3A000000 		.4byte	0x3a
 1108 0378 11       		.uleb128 0x11
 1109 0379 A6050000 		.4byte	.LASF60
 1110 037d 68       		.byte	0x68
 1111 037e 0B       		.byte	0xb
 1112 037f B3       		.byte	0xb3
 1113 0380 A2040000 		.4byte	0x4a2
ARM GAS  /tmp/ccwbGpTl.s 			page 36


 1114 0384 12       		.uleb128 0x12
 1115 0385 5F7000   		.ascii	"_p\000"
 1116 0388 0B       		.byte	0xb
 1117 0389 B4       		.byte	0xb4
 1118 038a 72030000 		.4byte	0x372
 1119 038e 00       		.byte	0
 1120 038f 12       		.uleb128 0x12
 1121 0390 5F7200   		.ascii	"_r\000"
 1122 0393 0B       		.byte	0xb
 1123 0394 B5       		.byte	0xb5
 1124 0395 25000000 		.4byte	0x25
 1125 0399 04       		.byte	0x4
 1126 039a 12       		.uleb128 0x12
 1127 039b 5F7700   		.ascii	"_w\000"
 1128 039e 0B       		.byte	0xb
 1129 039f B6       		.byte	0xb6
 1130 03a0 25000000 		.4byte	0x25
 1131 03a4 08       		.byte	0x8
 1132 03a5 0B       		.uleb128 0xb
 1133 03a6 64010000 		.4byte	.LASF61
 1134 03aa 0B       		.byte	0xb
 1135 03ab B7       		.byte	0xb7
 1136 03ac 41000000 		.4byte	0x41
 1137 03b0 0C       		.byte	0xc
 1138 03b1 0B       		.uleb128 0xb
 1139 03b2 81070000 		.4byte	.LASF62
 1140 03b6 0B       		.byte	0xb
 1141 03b7 B8       		.byte	0xb8
 1142 03b8 41000000 		.4byte	0x41
 1143 03bc 0E       		.byte	0xe
 1144 03bd 12       		.uleb128 0x12
 1145 03be 5F626600 		.ascii	"_bf\000"
 1146 03c2 0B       		.byte	0xb
 1147 03c3 B9       		.byte	0xb9
 1148 03c4 4D030000 		.4byte	0x34d
 1149 03c8 10       		.byte	0x10
 1150 03c9 0B       		.uleb128 0xb
 1151 03ca A8000000 		.4byte	.LASF63
 1152 03ce 0B       		.byte	0xb
 1153 03cf BA       		.byte	0xba
 1154 03d0 25000000 		.4byte	0x25
 1155 03d4 18       		.byte	0x18
 1156 03d5 0B       		.uleb128 0xb
 1157 03d6 41010000 		.4byte	.LASF64
 1158 03da 0B       		.byte	0xb
 1159 03db C1       		.byte	0xc1
 1160 03dc A6000000 		.4byte	0xa6
 1161 03e0 1C       		.byte	0x1c
 1162 03e1 0B       		.uleb128 0xb
 1163 03e2 51020000 		.4byte	.LASF65
 1164 03e6 0B       		.byte	0xb
 1165 03e7 C3       		.byte	0xc3
 1166 03e8 0F060000 		.4byte	0x60f
 1167 03ec 20       		.byte	0x20
 1168 03ed 0B       		.uleb128 0xb
 1169 03ee 0D030000 		.4byte	.LASF66
 1170 03f2 0B       		.byte	0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 37


 1171 03f3 C5       		.byte	0xc5
 1172 03f4 39060000 		.4byte	0x639
 1173 03f8 24       		.byte	0x24
 1174 03f9 0B       		.uleb128 0xb
 1175 03fa 48060000 		.4byte	.LASF67
 1176 03fe 0B       		.byte	0xb
 1177 03ff C8       		.byte	0xc8
 1178 0400 5D060000 		.4byte	0x65d
 1179 0404 28       		.byte	0x28
 1180 0405 0B       		.uleb128 0xb
 1181 0406 F4000000 		.4byte	.LASF68
 1182 040a 0B       		.byte	0xb
 1183 040b C9       		.byte	0xc9
 1184 040c 77060000 		.4byte	0x677
 1185 0410 2C       		.byte	0x2c
 1186 0411 12       		.uleb128 0x12
 1187 0412 5F756200 		.ascii	"_ub\000"
 1188 0416 0B       		.byte	0xb
 1189 0417 CC       		.byte	0xcc
 1190 0418 4D030000 		.4byte	0x34d
 1191 041c 30       		.byte	0x30
 1192 041d 12       		.uleb128 0x12
 1193 041e 5F757000 		.ascii	"_up\000"
 1194 0422 0B       		.byte	0xb
 1195 0423 CD       		.byte	0xcd
 1196 0424 72030000 		.4byte	0x372
 1197 0428 38       		.byte	0x38
 1198 0429 12       		.uleb128 0x12
 1199 042a 5F757200 		.ascii	"_ur\000"
 1200 042e 0B       		.byte	0xb
 1201 042f CE       		.byte	0xce
 1202 0430 25000000 		.4byte	0x25
 1203 0434 3C       		.byte	0x3c
 1204 0435 0B       		.uleb128 0xb
 1205 0436 07010000 		.4byte	.LASF69
 1206 043a 0B       		.byte	0xb
 1207 043b D1       		.byte	0xd1
 1208 043c 7D060000 		.4byte	0x67d
 1209 0440 40       		.byte	0x40
 1210 0441 0B       		.uleb128 0xb
 1211 0442 00080000 		.4byte	.LASF70
 1212 0446 0B       		.byte	0xb
 1213 0447 D2       		.byte	0xd2
 1214 0448 8D060000 		.4byte	0x68d
 1215 044c 43       		.byte	0x43
 1216 044d 12       		.uleb128 0x12
 1217 044e 5F6C6200 		.ascii	"_lb\000"
 1218 0452 0B       		.byte	0xb
 1219 0453 D5       		.byte	0xd5
 1220 0454 4D030000 		.4byte	0x34d
 1221 0458 44       		.byte	0x44
 1222 0459 0B       		.uleb128 0xb
 1223 045a 6C060000 		.4byte	.LASF71
 1224 045e 0B       		.byte	0xb
 1225 045f D8       		.byte	0xd8
 1226 0460 25000000 		.4byte	0x25
 1227 0464 4C       		.byte	0x4c
ARM GAS  /tmp/ccwbGpTl.s 			page 38


 1228 0465 0B       		.uleb128 0xb
 1229 0466 BB010000 		.4byte	.LASF72
 1230 046a 0B       		.byte	0xb
 1231 046b D9       		.byte	0xd9
 1232 046c 2D010000 		.4byte	0x12d
 1233 0470 50       		.byte	0x50
 1234 0471 0B       		.uleb128 0xb
 1235 0472 A6020000 		.4byte	.LASF73
 1236 0476 0B       		.byte	0xb
 1237 0477 DC       		.byte	0xdc
 1238 0478 C0040000 		.4byte	0x4c0
 1239 047c 54       		.byte	0x54
 1240 047d 0B       		.uleb128 0xb
 1241 047e FB020000 		.4byte	.LASF74
 1242 0482 0B       		.byte	0xb
 1243 0483 E0       		.byte	0xe0
 1244 0484 AA010000 		.4byte	0x1aa
 1245 0488 58       		.byte	0x58
 1246 0489 0B       		.uleb128 0xb
 1247 048a AE050000 		.4byte	.LASF75
 1248 048e 0B       		.byte	0xb
 1249 048f E2       		.byte	0xe2
 1250 0490 9F010000 		.4byte	0x19f
 1251 0494 5C       		.byte	0x5c
 1252 0495 0B       		.uleb128 0xb
 1253 0496 7B050000 		.4byte	.LASF76
 1254 049a 0B       		.byte	0xb
 1255 049b E3       		.byte	0xe3
 1256 049c 25000000 		.4byte	0x25
 1257 04a0 64       		.byte	0x64
 1258 04a1 00       		.byte	0
 1259 04a2 17       		.uleb128 0x17
 1260 04a3 25000000 		.4byte	0x25
 1261 04a7 C0040000 		.4byte	0x4c0
 1262 04ab 18       		.uleb128 0x18
 1263 04ac C0040000 		.4byte	0x4c0
 1264 04b0 18       		.uleb128 0x18
 1265 04b1 A6000000 		.4byte	0xa6
 1266 04b5 18       		.uleb128 0x18
 1267 04b6 FD050000 		.4byte	0x5fd
 1268 04ba 18       		.uleb128 0x18
 1269 04bb 25000000 		.4byte	0x25
 1270 04bf 00       		.byte	0
 1271 04c0 13       		.uleb128 0x13
 1272 04c1 04       		.byte	0x4
 1273 04c2 CB040000 		.4byte	0x4cb
 1274 04c6 06       		.uleb128 0x6
 1275 04c7 C0040000 		.4byte	0x4c0
 1276 04cb 19       		.uleb128 0x19
 1277 04cc 2B060000 		.4byte	.LASF77
 1278 04d0 2804     		.2byte	0x428
 1279 04d2 0B       		.byte	0xb
 1280 04d3 3802     		.2byte	0x238
 1281 04d5 FD050000 		.4byte	0x5fd
 1282 04d9 1A       		.uleb128 0x1a
 1283 04da 60060000 		.4byte	.LASF78
 1284 04de 0B       		.byte	0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 39


 1285 04df 3A02     		.2byte	0x23a
 1286 04e1 25000000 		.4byte	0x25
 1287 04e5 00       		.byte	0
 1288 04e6 1A       		.uleb128 0x1a
 1289 04e7 73010000 		.4byte	.LASF79
 1290 04eb 0B       		.byte	0xb
 1291 04ec 3F02     		.2byte	0x23f
 1292 04ee E4060000 		.4byte	0x6e4
 1293 04f2 04       		.byte	0x4
 1294 04f3 1A       		.uleb128 0x1a
 1295 04f4 7F020000 		.4byte	.LASF80
 1296 04f8 0B       		.byte	0xb
 1297 04f9 3F02     		.2byte	0x23f
 1298 04fb E4060000 		.4byte	0x6e4
 1299 04ff 08       		.byte	0x8
 1300 0500 1A       		.uleb128 0x1a
 1301 0501 3B020000 		.4byte	.LASF81
 1302 0505 0B       		.byte	0xb
 1303 0506 3F02     		.2byte	0x23f
 1304 0508 E4060000 		.4byte	0x6e4
 1305 050c 0C       		.byte	0xc
 1306 050d 1A       		.uleb128 0x1a
 1307 050e E0050000 		.4byte	.LASF82
 1308 0512 0B       		.byte	0xb
 1309 0513 4102     		.2byte	0x241
 1310 0515 25000000 		.4byte	0x25
 1311 0519 10       		.byte	0x10
 1312 051a 1A       		.uleb128 0x1a
 1313 051b 3B000000 		.4byte	.LASF83
 1314 051f 0B       		.byte	0xb
 1315 0520 4202     		.2byte	0x242
 1316 0522 C6080000 		.4byte	0x8c6
 1317 0526 14       		.byte	0x14
 1318 0527 1A       		.uleb128 0x1a
 1319 0528 31070000 		.4byte	.LASF84
 1320 052c 0B       		.byte	0xb
 1321 052d 4402     		.2byte	0x244
 1322 052f 25000000 		.4byte	0x25
 1323 0533 30       		.byte	0x30
 1324 0534 1A       		.uleb128 0x1a
 1325 0535 EA050000 		.4byte	.LASF85
 1326 0539 0B       		.byte	0xb
 1327 053a 4502     		.2byte	0x245
 1328 053c 33060000 		.4byte	0x633
 1329 0540 34       		.byte	0x34
 1330 0541 1A       		.uleb128 0x1a
 1331 0542 92070000 		.4byte	.LASF86
 1332 0546 0B       		.byte	0xb
 1333 0547 4702     		.2byte	0x247
 1334 0549 25000000 		.4byte	0x25
 1335 054d 38       		.byte	0x38
 1336 054e 1A       		.uleb128 0x1a
 1337 054f 19060000 		.4byte	.LASF87
 1338 0553 0B       		.byte	0xb
 1339 0554 4902     		.2byte	0x249
 1340 0556 E1080000 		.4byte	0x8e1
 1341 055a 3C       		.byte	0x3c
ARM GAS  /tmp/ccwbGpTl.s 			page 40


 1342 055b 1A       		.uleb128 0x1a
 1343 055c E1020000 		.4byte	.LASF88
 1344 0560 0B       		.byte	0xb
 1345 0561 4C02     		.2byte	0x24c
 1346 0563 13020000 		.4byte	0x213
 1347 0567 40       		.byte	0x40
 1348 0568 1A       		.uleb128 0x1a
 1349 0569 7A010000 		.4byte	.LASF89
 1350 056d 0B       		.byte	0xb
 1351 056e 4D02     		.2byte	0x24d
 1352 0570 25000000 		.4byte	0x25
 1353 0574 44       		.byte	0x44
 1354 0575 1A       		.uleb128 0x1a
 1355 0576 98080000 		.4byte	.LASF90
 1356 057a 0B       		.byte	0xb
 1357 057b 4E02     		.2byte	0x24e
 1358 057d 13020000 		.4byte	0x213
 1359 0581 48       		.byte	0x48
 1360 0582 1A       		.uleb128 0x1a
 1361 0583 83050000 		.4byte	.LASF91
 1362 0587 0B       		.byte	0xb
 1363 0588 4F02     		.2byte	0x24f
 1364 058a E7080000 		.4byte	0x8e7
 1365 058e 4C       		.byte	0x4c
 1366 058f 1A       		.uleb128 0x1a
 1367 0590 87020000 		.4byte	.LASF92
 1368 0594 0B       		.byte	0xb
 1369 0595 5202     		.2byte	0x252
 1370 0597 25000000 		.4byte	0x25
 1371 059b 50       		.byte	0x50
 1372 059c 1A       		.uleb128 0x1a
 1373 059d B3010000 		.4byte	.LASF93
 1374 05a1 0B       		.byte	0xb
 1375 05a2 5302     		.2byte	0x253
 1376 05a4 FD050000 		.4byte	0x5fd
 1377 05a8 54       		.byte	0x54
 1378 05a9 1A       		.uleb128 0x1a
 1379 05aa F6020000 		.4byte	.LASF94
 1380 05ae 0B       		.byte	0xb
 1381 05af 7602     		.2byte	0x276
 1382 05b1 A4080000 		.4byte	0x8a4
 1383 05b5 58       		.byte	0x58
 1384 05b6 1B       		.uleb128 0x1b
 1385 05b7 0E040000 		.4byte	.LASF54
 1386 05bb 0B       		.byte	0xb
 1387 05bc 7A02     		.2byte	0x27a
 1388 05be 30030000 		.4byte	0x330
 1389 05c2 4801     		.2byte	0x148
 1390 05c4 1B       		.uleb128 0x1b
 1391 05c5 BF020000 		.4byte	.LASF95
 1392 05c9 0B       		.byte	0xb
 1393 05ca 7B02     		.2byte	0x27b
 1394 05cc F2020000 		.4byte	0x2f2
 1395 05d0 4C01     		.2byte	0x14c
 1396 05d2 1B       		.uleb128 0x1b
 1397 05d3 C5070000 		.4byte	.LASF96
 1398 05d7 0B       		.byte	0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 41


 1399 05d8 7F02     		.2byte	0x27f
 1400 05da F8080000 		.4byte	0x8f8
 1401 05de DC02     		.2byte	0x2dc
 1402 05e0 1B       		.uleb128 0x1b
 1403 05e1 49010000 		.4byte	.LASF97
 1404 05e5 0B       		.byte	0xb
 1405 05e6 8402     		.2byte	0x284
 1406 05e8 A9060000 		.4byte	0x6a9
 1407 05ec E002     		.2byte	0x2e0
 1408 05ee 1B       		.uleb128 0x1b
 1409 05ef 2E010000 		.4byte	.LASF98
 1410 05f3 0B       		.byte	0xb
 1411 05f4 8502     		.2byte	0x285
 1412 05f6 04090000 		.4byte	0x904
 1413 05fa EC02     		.2byte	0x2ec
 1414 05fc 00       		.byte	0
 1415 05fd 13       		.uleb128 0x13
 1416 05fe 04       		.byte	0x4
 1417 05ff 03060000 		.4byte	0x603
 1418 0603 03       		.uleb128 0x3
 1419 0604 01       		.byte	0x1
 1420 0605 08       		.byte	0x8
 1421 0606 67060000 		.4byte	.LASF99
 1422 060a 06       		.uleb128 0x6
 1423 060b 03060000 		.4byte	0x603
 1424 060f 13       		.uleb128 0x13
 1425 0610 04       		.byte	0x4
 1426 0611 A2040000 		.4byte	0x4a2
 1427 0615 17       		.uleb128 0x17
 1428 0616 25000000 		.4byte	0x25
 1429 061a 33060000 		.4byte	0x633
 1430 061e 18       		.uleb128 0x18
 1431 061f C0040000 		.4byte	0x4c0
 1432 0623 18       		.uleb128 0x18
 1433 0624 A6000000 		.4byte	0xa6
 1434 0628 18       		.uleb128 0x18
 1435 0629 33060000 		.4byte	0x633
 1436 062d 18       		.uleb128 0x18
 1437 062e 25000000 		.4byte	0x25
 1438 0632 00       		.byte	0
 1439 0633 13       		.uleb128 0x13
 1440 0634 04       		.byte	0x4
 1441 0635 0A060000 		.4byte	0x60a
 1442 0639 13       		.uleb128 0x13
 1443 063a 04       		.byte	0x4
 1444 063b 15060000 		.4byte	0x615
 1445 063f 17       		.uleb128 0x17
 1446 0640 38010000 		.4byte	0x138
 1447 0644 5D060000 		.4byte	0x65d
 1448 0648 18       		.uleb128 0x18
 1449 0649 C0040000 		.4byte	0x4c0
 1450 064d 18       		.uleb128 0x18
 1451 064e A6000000 		.4byte	0xa6
 1452 0652 18       		.uleb128 0x18
 1453 0653 38010000 		.4byte	0x138
 1454 0657 18       		.uleb128 0x18
 1455 0658 25000000 		.4byte	0x25
ARM GAS  /tmp/ccwbGpTl.s 			page 42


 1456 065c 00       		.byte	0
 1457 065d 13       		.uleb128 0x13
 1458 065e 04       		.byte	0x4
 1459 065f 3F060000 		.4byte	0x63f
 1460 0663 17       		.uleb128 0x17
 1461 0664 25000000 		.4byte	0x25
 1462 0668 77060000 		.4byte	0x677
 1463 066c 18       		.uleb128 0x18
 1464 066d C0040000 		.4byte	0x4c0
 1465 0671 18       		.uleb128 0x18
 1466 0672 A6000000 		.4byte	0xa6
 1467 0676 00       		.byte	0
 1468 0677 13       		.uleb128 0x13
 1469 0678 04       		.byte	0x4
 1470 0679 63060000 		.4byte	0x663
 1471 067d 0F       		.uleb128 0xf
 1472 067e 3A000000 		.4byte	0x3a
 1473 0682 8D060000 		.4byte	0x68d
 1474 0686 10       		.uleb128 0x10
 1475 0687 A8000000 		.4byte	0xa8
 1476 068b 02       		.byte	0x2
 1477 068c 00       		.byte	0
 1478 068d 0F       		.uleb128 0xf
 1479 068e 3A000000 		.4byte	0x3a
 1480 0692 9D060000 		.4byte	0x69d
 1481 0696 10       		.uleb128 0x10
 1482 0697 A8000000 		.4byte	0xa8
 1483 069b 00       		.byte	0
 1484 069c 00       		.byte	0
 1485 069d 0C       		.uleb128 0xc
 1486 069e 94050000 		.4byte	.LASF100
 1487 06a2 0B       		.byte	0xb
 1488 06a3 1D01     		.2byte	0x11d
 1489 06a5 78030000 		.4byte	0x378
 1490 06a9 1C       		.uleb128 0x1c
 1491 06aa 8C070000 		.4byte	.LASF101
 1492 06ae 0C       		.byte	0xc
 1493 06af 0B       		.byte	0xb
 1494 06b0 2101     		.2byte	0x121
 1495 06b2 DE060000 		.4byte	0x6de
 1496 06b6 1A       		.uleb128 0x1a
 1497 06b7 4B020000 		.4byte	.LASF34
 1498 06bb 0B       		.byte	0xb
 1499 06bc 2301     		.2byte	0x123
 1500 06be DE060000 		.4byte	0x6de
 1501 06c2 00       		.byte	0
 1502 06c3 1A       		.uleb128 0x1a
 1503 06c4 B1000000 		.4byte	.LASF102
 1504 06c8 0B       		.byte	0xb
 1505 06c9 2401     		.2byte	0x124
 1506 06cb 25000000 		.4byte	0x25
 1507 06cf 04       		.byte	0x4
 1508 06d0 1A       		.uleb128 0x1a
 1509 06d1 30050000 		.4byte	.LASF103
 1510 06d5 0B       		.byte	0xb
 1511 06d6 2501     		.2byte	0x125
 1512 06d8 E4060000 		.4byte	0x6e4
ARM GAS  /tmp/ccwbGpTl.s 			page 43


 1513 06dc 08       		.byte	0x8
 1514 06dd 00       		.byte	0
 1515 06de 13       		.uleb128 0x13
 1516 06df 04       		.byte	0x4
 1517 06e0 A9060000 		.4byte	0x6a9
 1518 06e4 13       		.uleb128 0x13
 1519 06e5 04       		.byte	0x4
 1520 06e6 9D060000 		.4byte	0x69d
 1521 06ea 1C       		.uleb128 0x1c
 1522 06eb 33000000 		.4byte	.LASF104
 1523 06ef 0E       		.byte	0xe
 1524 06f0 0B       		.byte	0xb
 1525 06f1 3D01     		.2byte	0x13d
 1526 06f3 1F070000 		.4byte	0x71f
 1527 06f7 1A       		.uleb128 0x1a
 1528 06f8 32060000 		.4byte	.LASF105
 1529 06fc 0B       		.byte	0xb
 1530 06fd 3E01     		.2byte	0x13e
 1531 06ff 1F070000 		.4byte	0x71f
 1532 0703 00       		.byte	0
 1533 0704 1A       		.uleb128 0x1a
 1534 0705 01030000 		.4byte	.LASF106
 1535 0709 0B       		.byte	0xb
 1536 070a 3F01     		.2byte	0x13f
 1537 070c 1F070000 		.4byte	0x71f
 1538 0710 06       		.byte	0x6
 1539 0711 1A       		.uleb128 0x1a
 1540 0712 E5060000 		.4byte	.LASF107
 1541 0716 0B       		.byte	0xb
 1542 0717 4001     		.2byte	0x140
 1543 0719 48000000 		.4byte	0x48
 1544 071d 0C       		.byte	0xc
 1545 071e 00       		.byte	0
 1546 071f 0F       		.uleb128 0xf
 1547 0720 48000000 		.4byte	0x48
 1548 0724 2F070000 		.4byte	0x72f
 1549 0728 10       		.uleb128 0x10
 1550 0729 A8000000 		.4byte	0xa8
 1551 072d 02       		.byte	0x2
 1552 072e 00       		.byte	0
 1553 072f 1D       		.uleb128 0x1d
 1554 0730 D0       		.byte	0xd0
 1555 0731 0B       		.byte	0xb
 1556 0732 5702     		.2byte	0x257
 1557 0734 30080000 		.4byte	0x830
 1558 0738 1A       		.uleb128 0x1a
 1559 0739 6A070000 		.4byte	.LASF108
 1560 073d 0B       		.byte	0xb
 1561 073e 5902     		.2byte	0x259
 1562 0740 2C000000 		.4byte	0x2c
 1563 0744 00       		.byte	0
 1564 0745 1A       		.uleb128 0x1a
 1565 0746 BC060000 		.4byte	.LASF109
 1566 074a 0B       		.byte	0xb
 1567 074b 5A02     		.2byte	0x25a
 1568 074d FD050000 		.4byte	0x5fd
 1569 0751 04       		.byte	0x4
ARM GAS  /tmp/ccwbGpTl.s 			page 44


 1570 0752 1A       		.uleb128 0x1a
 1571 0753 D4020000 		.4byte	.LASF110
 1572 0757 0B       		.byte	0xb
 1573 0758 5B02     		.2byte	0x25b
 1574 075a 30080000 		.4byte	0x830
 1575 075e 08       		.byte	0x8
 1576 075f 1A       		.uleb128 0x1a
 1577 0760 57080000 		.4byte	.LASF111
 1578 0764 0B       		.byte	0xb
 1579 0765 5C02     		.2byte	0x25c
 1580 0767 29020000 		.4byte	0x229
 1581 076b 24       		.byte	0x24
 1582 076c 1A       		.uleb128 0x1a
 1583 076d 3F040000 		.4byte	.LASF112
 1584 0771 0B       		.byte	0xb
 1585 0772 5D02     		.2byte	0x25d
 1586 0774 25000000 		.4byte	0x25
 1587 0778 48       		.byte	0x48
 1588 0779 1A       		.uleb128 0x1a
 1589 077a B4020000 		.4byte	.LASF113
 1590 077e 0B       		.byte	0xb
 1591 077f 5E02     		.2byte	0x25e
 1592 0781 7A000000 		.4byte	0x7a
 1593 0785 50       		.byte	0x50
 1594 0786 1A       		.uleb128 0x1a
 1595 0787 A1020000 		.4byte	.LASF114
 1596 078b 0B       		.byte	0xb
 1597 078c 5F02     		.2byte	0x25f
 1598 078e EA060000 		.4byte	0x6ea
 1599 0792 58       		.byte	0x58
 1600 0793 1A       		.uleb128 0x1a
 1601 0794 D3050000 		.4byte	.LASF115
 1602 0798 0B       		.byte	0xb
 1603 0799 6002     		.2byte	0x260
 1604 079b 9F010000 		.4byte	0x19f
 1605 079f 68       		.byte	0x68
 1606 07a0 1A       		.uleb128 0x1a
 1607 07a1 8A080000 		.4byte	.LASF116
 1608 07a5 0B       		.byte	0xb
 1609 07a6 6102     		.2byte	0x261
 1610 07a8 9F010000 		.4byte	0x19f
 1611 07ac 70       		.byte	0x70
 1612 07ad 1A       		.uleb128 0x1a
 1613 07ae D6000000 		.4byte	.LASF117
 1614 07b2 0B       		.byte	0xb
 1615 07b3 6202     		.2byte	0x262
 1616 07b5 9F010000 		.4byte	0x19f
 1617 07b9 78       		.byte	0x78
 1618 07ba 1A       		.uleb128 0x1a
 1619 07bb 9D070000 		.4byte	.LASF118
 1620 07bf 0B       		.byte	0xb
 1621 07c0 6302     		.2byte	0x263
 1622 07c2 40080000 		.4byte	0x840
 1623 07c6 80       		.byte	0x80
 1624 07c7 1A       		.uleb128 0x1a
 1625 07c8 C8020000 		.4byte	.LASF119
 1626 07cc 0B       		.byte	0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 45


 1627 07cd 6402     		.2byte	0x264
 1628 07cf 50080000 		.4byte	0x850
 1629 07d3 88       		.byte	0x88
 1630 07d4 1A       		.uleb128 0x1a
 1631 07d5 F2060000 		.4byte	.LASF120
 1632 07d9 0B       		.byte	0xb
 1633 07da 6502     		.2byte	0x265
 1634 07dc 25000000 		.4byte	0x25
 1635 07e0 A0       		.byte	0xa0
 1636 07e1 1A       		.uleb128 0x1a
 1637 07e2 DE010000 		.4byte	.LASF121
 1638 07e6 0B       		.byte	0xb
 1639 07e7 6602     		.2byte	0x266
 1640 07e9 9F010000 		.4byte	0x19f
 1641 07ed A4       		.byte	0xa4
 1642 07ee 1A       		.uleb128 0x1a
 1643 07ef C7000000 		.4byte	.LASF122
 1644 07f3 0B       		.byte	0xb
 1645 07f4 6702     		.2byte	0x267
 1646 07f6 9F010000 		.4byte	0x19f
 1647 07fa AC       		.byte	0xac
 1648 07fb 1A       		.uleb128 0x1a
 1649 07fc C3010000 		.4byte	.LASF123
 1650 0800 0B       		.byte	0xb
 1651 0801 6802     		.2byte	0x268
 1652 0803 9F010000 		.4byte	0x19f
 1653 0807 B4       		.byte	0xb4
 1654 0808 1A       		.uleb128 0x1a
 1655 0809 6B000000 		.4byte	.LASF124
 1656 080d 0B       		.byte	0xb
 1657 080e 6902     		.2byte	0x269
 1658 0810 9F010000 		.4byte	0x19f
 1659 0814 BC       		.byte	0xbc
 1660 0815 1A       		.uleb128 0x1a
 1661 0816 7A000000 		.4byte	.LASF125
 1662 081a 0B       		.byte	0xb
 1663 081b 6A02     		.2byte	0x26a
 1664 081d 9F010000 		.4byte	0x19f
 1665 0821 C4       		.byte	0xc4
 1666 0822 1A       		.uleb128 0x1a
 1667 0823 43050000 		.4byte	.LASF126
 1668 0827 0B       		.byte	0xb
 1669 0828 6B02     		.2byte	0x26b
 1670 082a 25000000 		.4byte	0x25
 1671 082e CC       		.byte	0xcc
 1672 082f 00       		.byte	0
 1673 0830 0F       		.uleb128 0xf
 1674 0831 03060000 		.4byte	0x603
 1675 0835 40080000 		.4byte	0x840
 1676 0839 10       		.uleb128 0x10
 1677 083a A8000000 		.4byte	0xa8
 1678 083e 19       		.byte	0x19
 1679 083f 00       		.byte	0
 1680 0840 0F       		.uleb128 0xf
 1681 0841 03060000 		.4byte	0x603
 1682 0845 50080000 		.4byte	0x850
 1683 0849 10       		.uleb128 0x10
ARM GAS  /tmp/ccwbGpTl.s 			page 46


 1684 084a A8000000 		.4byte	0xa8
 1685 084e 07       		.byte	0x7
 1686 084f 00       		.byte	0
 1687 0850 0F       		.uleb128 0xf
 1688 0851 03060000 		.4byte	0x603
 1689 0855 60080000 		.4byte	0x860
 1690 0859 10       		.uleb128 0x10
 1691 085a A8000000 		.4byte	0xa8
 1692 085e 17       		.byte	0x17
 1693 085f 00       		.byte	0
 1694 0860 1D       		.uleb128 0x1d
 1695 0861 F0       		.byte	0xf0
 1696 0862 0B       		.byte	0xb
 1697 0863 7002     		.2byte	0x270
 1698 0865 84080000 		.4byte	0x884
 1699 0869 1A       		.uleb128 0x1a
 1700 086a EF020000 		.4byte	.LASF127
 1701 086e 0B       		.byte	0xb
 1702 086f 7302     		.2byte	0x273
 1703 0871 84080000 		.4byte	0x884
 1704 0875 00       		.byte	0
 1705 0876 1A       		.uleb128 0x1a
 1706 0877 2B030000 		.4byte	.LASF128
 1707 087b 0B       		.byte	0xb
 1708 087c 7402     		.2byte	0x274
 1709 087e 94080000 		.4byte	0x894
 1710 0882 78       		.byte	0x78
 1711 0883 00       		.byte	0
 1712 0884 0F       		.uleb128 0xf
 1713 0885 72030000 		.4byte	0x372
 1714 0889 94080000 		.4byte	0x894
 1715 088d 10       		.uleb128 0x10
 1716 088e A8000000 		.4byte	0xa8
 1717 0892 1D       		.byte	0x1d
 1718 0893 00       		.byte	0
 1719 0894 0F       		.uleb128 0xf
 1720 0895 2C000000 		.4byte	0x2c
 1721 0899 A4080000 		.4byte	0x8a4
 1722 089d 10       		.uleb128 0x10
 1723 089e A8000000 		.4byte	0xa8
 1724 08a2 1D       		.byte	0x1d
 1725 08a3 00       		.byte	0
 1726 08a4 1E       		.uleb128 0x1e
 1727 08a5 F0       		.byte	0xf0
 1728 08a6 0B       		.byte	0xb
 1729 08a7 5502     		.2byte	0x255
 1730 08a9 C6080000 		.4byte	0x8c6
 1731 08ad 1F       		.uleb128 0x1f
 1732 08ae 2B060000 		.4byte	.LASF77
 1733 08b2 0B       		.byte	0xb
 1734 08b3 6C02     		.2byte	0x26c
 1735 08b5 2F070000 		.4byte	0x72f
 1736 08b9 1F       		.uleb128 0x1f
 1737 08ba 06080000 		.4byte	.LASF129
 1738 08be 0B       		.byte	0xb
 1739 08bf 7502     		.2byte	0x275
 1740 08c1 60080000 		.4byte	0x860
ARM GAS  /tmp/ccwbGpTl.s 			page 47


 1741 08c5 00       		.byte	0
 1742 08c6 0F       		.uleb128 0xf
 1743 08c7 03060000 		.4byte	0x603
 1744 08cb D6080000 		.4byte	0x8d6
 1745 08cf 10       		.uleb128 0x10
 1746 08d0 A8000000 		.4byte	0xa8
 1747 08d4 18       		.byte	0x18
 1748 08d5 00       		.byte	0
 1749 08d6 20       		.uleb128 0x20
 1750 08d7 E1080000 		.4byte	0x8e1
 1751 08db 18       		.uleb128 0x18
 1752 08dc C0040000 		.4byte	0x4c0
 1753 08e0 00       		.byte	0
 1754 08e1 13       		.uleb128 0x13
 1755 08e2 04       		.byte	0x4
 1756 08e3 D6080000 		.4byte	0x8d6
 1757 08e7 13       		.uleb128 0x13
 1758 08e8 04       		.byte	0x4
 1759 08e9 13020000 		.4byte	0x213
 1760 08ed 20       		.uleb128 0x20
 1761 08ee F8080000 		.4byte	0x8f8
 1762 08f2 18       		.uleb128 0x18
 1763 08f3 25000000 		.4byte	0x25
 1764 08f7 00       		.byte	0
 1765 08f8 13       		.uleb128 0x13
 1766 08f9 04       		.byte	0x4
 1767 08fa FE080000 		.4byte	0x8fe
 1768 08fe 13       		.uleb128 0x13
 1769 08ff 04       		.byte	0x4
 1770 0900 ED080000 		.4byte	0x8ed
 1771 0904 0F       		.uleb128 0xf
 1772 0905 9D060000 		.4byte	0x69d
 1773 0909 14090000 		.4byte	0x914
 1774 090d 10       		.uleb128 0x10
 1775 090e A8000000 		.4byte	0xa8
 1776 0912 02       		.byte	0x2
 1777 0913 00       		.byte	0
 1778 0914 08       		.uleb128 0x8
 1779 0915 2F020000 		.4byte	.LASF130
 1780 0919 0B       		.byte	0xb
 1781 091a FD02     		.2byte	0x2fd
 1782 091c C0040000 		.4byte	0x4c0
 1783 0920 08       		.uleb128 0x8
 1784 0921 1E070000 		.4byte	.LASF131
 1785 0925 0B       		.byte	0xb
 1786 0926 FE02     		.2byte	0x2fe
 1787 0928 C6040000 		.4byte	0x4c6
 1788 092c 09       		.uleb128 0x9
 1789 092d 16040000 		.4byte	.LASF132
 1790 0931 0C       		.byte	0xc
 1791 0932 5F       		.byte	0x5f
 1792 0933 FD050000 		.4byte	0x5fd
 1793 0937 09       		.uleb128 0x9
 1794 0938 9F040000 		.4byte	.LASF133
 1795 093c 0D       		.byte	0xd
 1796 093d 8F       		.byte	0x8f
 1797 093e 49090000 		.4byte	0x949
ARM GAS  /tmp/ccwbGpTl.s 			page 48


 1798 0942 03       		.uleb128 0x3
 1799 0943 01       		.byte	0x1
 1800 0944 02       		.byte	0x2
 1801 0945 14050000 		.4byte	.LASF134
 1802 0949 05       		.uleb128 0x5
 1803 094a 42090000 		.4byte	0x942
 1804 094e 21       		.uleb128 0x21
 1805 094f CF070000 		.4byte	.LASF135
 1806 0953 0D       		.byte	0xd
 1807 0954 94       		.byte	0x94
 1808 0955 9C000000 		.4byte	0x9c
 1809 0959 05       		.uleb128 0x5
 1810 095a 03       		.byte	0x3
 1811 095b 00000000 		.4byte	cpu_irq_critical_section_counter
 1812 095f 21       		.uleb128 0x21
 1813 0960 8B000000 		.4byte	.LASF136
 1814 0964 0D       		.byte	0xd
 1815 0965 95       		.byte	0x95
 1816 0966 49090000 		.4byte	0x949
 1817 096a 05       		.uleb128 0x5
 1818 096b 03       		.byte	0x3
 1819 096c 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1820 0970 03       		.uleb128 0x3
 1821 0971 04       		.byte	0x4
 1822 0972 04       		.byte	0x4
 1823 0973 91040000 		.4byte	.LASF137
 1824 0977 03       		.uleb128 0x3
 1825 0978 08       		.byte	0x8
 1826 0979 04       		.byte	0x4
 1827 097a 92010000 		.4byte	.LASF138
 1828 097e 22       		.uleb128 0x22
 1829 097f 42080000 		.4byte	.LASF139
 1830 0983 01       		.byte	0x1
 1831 0984 AA01     		.2byte	0x1aa
 1832 0986 00000000 		.4byte	.LFB160
 1833 098a 10000000 		.4byte	.LFE160-.LFB160
 1834 098e 01       		.uleb128 0x1
 1835 098f 9C       		.byte	0x9c
 1836 0990 A3090000 		.4byte	0x9a3
 1837 0994 23       		.uleb128 0x23
 1838 0995 8D050000 		.4byte	.LASF141
 1839 0999 01       		.byte	0x1
 1840 099a AA01     		.2byte	0x1aa
 1841 099c A3090000 		.4byte	0x9a3
 1842 09a0 01       		.uleb128 0x1
 1843 09a1 50       		.byte	0x50
 1844 09a2 00       		.byte	0
 1845 09a3 13       		.uleb128 0x13
 1846 09a4 04       		.byte	0x4
 1847 09a5 17010000 		.4byte	0x117
 1848 09a9 22       		.uleb128 0x22
 1849 09aa 50030000 		.4byte	.LASF140
 1850 09ae 01       		.byte	0x1
 1851 09af 9F01     		.2byte	0x19f
 1852 09b1 00000000 		.4byte	.LFB159
 1853 09b5 10000000 		.4byte	.LFE159-.LFB159
 1854 09b9 01       		.uleb128 0x1
ARM GAS  /tmp/ccwbGpTl.s 			page 49


 1855 09ba 9C       		.byte	0x9c
 1856 09bb CE090000 		.4byte	0x9ce
 1857 09bf 23       		.uleb128 0x23
 1858 09c0 8D050000 		.4byte	.LASF141
 1859 09c4 01       		.byte	0x1
 1860 09c5 9F01     		.2byte	0x19f
 1861 09c7 A3090000 		.4byte	0x9a3
 1862 09cb 01       		.uleb128 0x1
 1863 09cc 50       		.byte	0x50
 1864 09cd 00       		.byte	0
 1865 09ce 24       		.uleb128 0x24
 1866 09cf F0070000 		.4byte	.LASF173
 1867 09d3 01       		.byte	0x1
 1868 09d4 1801     		.2byte	0x118
 1869 09d6 91000000 		.4byte	0x91
 1870 09da 00000000 		.4byte	.LFB158
 1871 09de 04000000 		.4byte	.LFE158-.LFB158
 1872 09e2 01       		.uleb128 0x1
 1873 09e3 9C       		.byte	0x9c
 1874 09e4 F9090000 		.4byte	0x9f9
 1875 09e8 25       		.uleb128 0x25
 1876 09e9 8D050000 		.4byte	.LASF141
 1877 09ed 01       		.byte	0x1
 1878 09ee 1801     		.2byte	0x118
 1879 09f0 A3090000 		.4byte	0x9a3
 1880 09f4 00000000 		.4byte	.LLST11
 1881 09f8 00       		.byte	0
 1882 09f9 22       		.uleb128 0x22
 1883 09fa 12020000 		.4byte	.LASF142
 1884 09fe 01       		.byte	0x1
 1885 09ff 0A01     		.2byte	0x10a
 1886 0a01 00000000 		.4byte	.LFB157
 1887 0a05 06000000 		.4byte	.LFE157-.LFB157
 1888 0a09 01       		.uleb128 0x1
 1889 0a0a 9C       		.byte	0x9c
 1890 0a0b 3C0A0000 		.4byte	0xa3c
 1891 0a0f 23       		.uleb128 0x23
 1892 0a10 8D050000 		.4byte	.LASF141
 1893 0a14 01       		.byte	0x1
 1894 0a15 0A01     		.2byte	0x10a
 1895 0a17 A3090000 		.4byte	0x9a3
 1896 0a1b 01       		.uleb128 0x1
 1897 0a1c 50       		.byte	0x50
 1898 0a1d 23       		.uleb128 0x23
 1899 0a1e D4010000 		.4byte	.LASF143
 1900 0a22 01       		.byte	0x1
 1901 0a23 0A01     		.2byte	0x10a
 1902 0a25 91000000 		.4byte	0x91
 1903 0a29 01       		.uleb128 0x1
 1904 0a2a 51       		.byte	0x51
 1905 0a2b 25       		.uleb128 0x25
 1906 0a2c EC010000 		.4byte	.LASF144
 1907 0a30 01       		.byte	0x1
 1908 0a31 0B01     		.2byte	0x10b
 1909 0a33 91000000 		.4byte	0x91
 1910 0a37 21000000 		.4byte	.LLST10
 1911 0a3b 00       		.byte	0
ARM GAS  /tmp/ccwbGpTl.s 			page 50


 1912 0a3c 26       		.uleb128 0x26
 1913 0a3d 0C000000 		.4byte	.LASF145
 1914 0a41 01       		.byte	0x1
 1915 0a42 FB       		.byte	0xfb
 1916 0a43 00000000 		.4byte	.LFB156
 1917 0a47 04000000 		.4byte	.LFE156-.LFB156
 1918 0a4b 01       		.uleb128 0x1
 1919 0a4c 9C       		.byte	0x9c
 1920 0a4d 6C0A0000 		.4byte	0xa6c
 1921 0a51 27       		.uleb128 0x27
 1922 0a52 8D050000 		.4byte	.LASF141
 1923 0a56 01       		.byte	0x1
 1924 0a57 FB       		.byte	0xfb
 1925 0a58 A3090000 		.4byte	0x9a3
 1926 0a5c 01       		.uleb128 0x1
 1927 0a5d 50       		.byte	0x50
 1928 0a5e 27       		.uleb128 0x27
 1929 0a5f 97040000 		.4byte	.LASF146
 1930 0a63 01       		.byte	0x1
 1931 0a64 FB       		.byte	0xfb
 1932 0a65 91000000 		.4byte	0x91
 1933 0a69 01       		.uleb128 0x1
 1934 0a6a 51       		.byte	0x51
 1935 0a6b 00       		.byte	0
 1936 0a6c 26       		.uleb128 0x26
 1937 0a6d 20040000 		.4byte	.LASF147
 1938 0a71 01       		.byte	0x1
 1939 0a72 EF       		.byte	0xef
 1940 0a73 00000000 		.4byte	.LFB155
 1941 0a77 0A000000 		.4byte	.LFE155-.LFB155
 1942 0a7b 01       		.uleb128 0x1
 1943 0a7c 9C       		.byte	0x9c
 1944 0a7d 8F0A0000 		.4byte	0xa8f
 1945 0a81 27       		.uleb128 0x27
 1946 0a82 8D050000 		.4byte	.LASF141
 1947 0a86 01       		.byte	0x1
 1948 0a87 EF       		.byte	0xef
 1949 0a88 A3090000 		.4byte	0x9a3
 1950 0a8c 01       		.uleb128 0x1
 1951 0a8d 50       		.byte	0x50
 1952 0a8e 00       		.byte	0
 1953 0a8f 26       		.uleb128 0x26
 1954 0a90 F6040000 		.4byte	.LASF148
 1955 0a94 01       		.byte	0x1
 1956 0a95 E5       		.byte	0xe5
 1957 0a96 00000000 		.4byte	.LFB154
 1958 0a9a 0A000000 		.4byte	.LFE154-.LFB154
 1959 0a9e 01       		.uleb128 0x1
 1960 0a9f 9C       		.byte	0x9c
 1961 0aa0 B20A0000 		.4byte	0xab2
 1962 0aa4 27       		.uleb128 0x27
 1963 0aa5 8D050000 		.4byte	.LASF141
 1964 0aa9 01       		.byte	0x1
 1965 0aaa E5       		.byte	0xe5
 1966 0aab A3090000 		.4byte	0x9a3
 1967 0aaf 01       		.uleb128 0x1
 1968 0ab0 50       		.byte	0x50
ARM GAS  /tmp/ccwbGpTl.s 			page 51


 1969 0ab1 00       		.byte	0
 1970 0ab2 26       		.uleb128 0x26
 1971 0ab3 50000000 		.4byte	.LASF149
 1972 0ab7 01       		.byte	0x1
 1973 0ab8 DB       		.byte	0xdb
 1974 0ab9 00000000 		.4byte	.LFB153
 1975 0abd 0A000000 		.4byte	.LFE153-.LFB153
 1976 0ac1 01       		.uleb128 0x1
 1977 0ac2 9C       		.byte	0x9c
 1978 0ac3 D50A0000 		.4byte	0xad5
 1979 0ac7 27       		.uleb128 0x27
 1980 0ac8 8D050000 		.4byte	.LASF141
 1981 0acc 01       		.byte	0x1
 1982 0acd DB       		.byte	0xdb
 1983 0ace A3090000 		.4byte	0x9a3
 1984 0ad2 01       		.uleb128 0x1
 1985 0ad3 50       		.byte	0x50
 1986 0ad4 00       		.byte	0
 1987 0ad5 26       		.uleb128 0x26
 1988 0ad6 99010000 		.4byte	.LASF150
 1989 0ada 01       		.byte	0x1
 1990 0adb D1       		.byte	0xd1
 1991 0adc 00000000 		.4byte	.LFB152
 1992 0ae0 0A000000 		.4byte	.LFE152-.LFB152
 1993 0ae4 01       		.uleb128 0x1
 1994 0ae5 9C       		.byte	0x9c
 1995 0ae6 F80A0000 		.4byte	0xaf8
 1996 0aea 27       		.uleb128 0x27
 1997 0aeb 8D050000 		.4byte	.LASF141
 1998 0aef 01       		.byte	0x1
 1999 0af0 D1       		.byte	0xd1
 2000 0af1 A3090000 		.4byte	0x9a3
 2001 0af5 01       		.uleb128 0x1
 2002 0af6 50       		.byte	0x50
 2003 0af7 00       		.byte	0
 2004 0af8 26       		.uleb128 0x26
 2005 0af9 B3040000 		.4byte	.LASF151
 2006 0afd 01       		.byte	0x1
 2007 0afe C6       		.byte	0xc6
 2008 0aff 00000000 		.4byte	.LFB151
 2009 0b03 10000000 		.4byte	.LFE151-.LFB151
 2010 0b07 01       		.uleb128 0x1
 2011 0b08 9C       		.byte	0x9c
 2012 0b09 390B0000 		.4byte	0xb39
 2013 0b0d 27       		.uleb128 0x27
 2014 0b0e 8D050000 		.4byte	.LASF141
 2015 0b12 01       		.byte	0x1
 2016 0b13 C6       		.byte	0xc6
 2017 0b14 A3090000 		.4byte	0x9a3
 2018 0b18 01       		.uleb128 0x1
 2019 0b19 50       		.byte	0x50
 2020 0b1a 28       		.uleb128 0x28
 2021 0b1b 77070000 		.4byte	.LASF152
 2022 0b1f 01       		.byte	0x1
 2023 0b20 C6       		.byte	0xc6
 2024 0b21 91000000 		.4byte	0x91
 2025 0b25 42000000 		.4byte	.LLST8
ARM GAS  /tmp/ccwbGpTl.s 			page 52


 2026 0b29 29       		.uleb128 0x29
 2027 0b2a 48030000 		.4byte	.LASF153
 2028 0b2e 01       		.byte	0x1
 2029 0b2f C8       		.byte	0xc8
 2030 0b30 91000000 		.4byte	0x91
 2031 0b34 63000000 		.4byte	.LLST9
 2032 0b38 00       		.byte	0
 2033 0b39 26       		.uleb128 0x26
 2034 0b3a 88060000 		.4byte	.LASF154
 2035 0b3e 01       		.byte	0x1
 2036 0b3f BA       		.byte	0xba
 2037 0b40 00000000 		.4byte	.LFB150
 2038 0b44 10000000 		.4byte	.LFE150-.LFB150
 2039 0b48 01       		.uleb128 0x1
 2040 0b49 9C       		.byte	0x9c
 2041 0b4a 7A0B0000 		.4byte	0xb7a
 2042 0b4e 27       		.uleb128 0x27
 2043 0b4f 8D050000 		.4byte	.LASF141
 2044 0b53 01       		.byte	0x1
 2045 0b54 BA       		.byte	0xba
 2046 0b55 A3090000 		.4byte	0x9a3
 2047 0b59 01       		.uleb128 0x1
 2048 0b5a 50       		.byte	0x50
 2049 0b5b 28       		.uleb128 0x28
 2050 0b5c 1E030000 		.4byte	.LASF155
 2051 0b60 01       		.byte	0x1
 2052 0b61 BA       		.byte	0xba
 2053 0b62 91000000 		.4byte	0x91
 2054 0b66 87000000 		.4byte	.LLST6
 2055 0b6a 29       		.uleb128 0x29
 2056 0b6b 48030000 		.4byte	.LASF153
 2057 0b6f 01       		.byte	0x1
 2058 0b70 BC       		.byte	0xbc
 2059 0b71 91000000 		.4byte	0x91
 2060 0b75 A8000000 		.4byte	.LLST7
 2061 0b79 00       		.byte	0
 2062 0b7a 26       		.uleb128 0x26
 2063 0b7b 75040000 		.4byte	.LASF156
 2064 0b7f 01       		.byte	0x1
 2065 0b80 AE       		.byte	0xae
 2066 0b81 00000000 		.4byte	.LFB149
 2067 0b85 14000000 		.4byte	.LFE149-.LFB149
 2068 0b89 01       		.uleb128 0x1
 2069 0b8a 9C       		.byte	0x9c
 2070 0b8b AC0B0000 		.4byte	0xbac
 2071 0b8f 27       		.uleb128 0x27
 2072 0b90 8D050000 		.4byte	.LASF141
 2073 0b94 01       		.byte	0x1
 2074 0b95 AE       		.byte	0xae
 2075 0b96 A3090000 		.4byte	0x9a3
 2076 0b9a 01       		.uleb128 0x1
 2077 0b9b 50       		.byte	0x50
 2078 0b9c 29       		.uleb128 0x29
 2079 0b9d A3060000 		.4byte	.LASF157
 2080 0ba1 01       		.byte	0x1
 2081 0ba2 B0       		.byte	0xb0
 2082 0ba3 91000000 		.4byte	0x91
ARM GAS  /tmp/ccwbGpTl.s 			page 53


 2083 0ba7 CB000000 		.4byte	.LLST5
 2084 0bab 00       		.byte	0
 2085 0bac 26       		.uleb128 0x26
 2086 0bad 6F080000 		.4byte	.LASF158
 2087 0bb1 01       		.byte	0x1
 2088 0bb2 A3       		.byte	0xa3
 2089 0bb3 00000000 		.4byte	.LFB148
 2090 0bb7 18000000 		.4byte	.LFE148-.LFB148
 2091 0bbb 01       		.uleb128 0x1
 2092 0bbc 9C       		.byte	0x9c
 2093 0bbd DE0B0000 		.4byte	0xbde
 2094 0bc1 27       		.uleb128 0x27
 2095 0bc2 8D050000 		.4byte	.LASF141
 2096 0bc6 01       		.byte	0x1
 2097 0bc7 A3       		.byte	0xa3
 2098 0bc8 A3090000 		.4byte	0x9a3
 2099 0bcc 01       		.uleb128 0x1
 2100 0bcd 50       		.byte	0x50
 2101 0bce 29       		.uleb128 0x29
 2102 0bcf A3060000 		.4byte	.LASF157
 2103 0bd3 01       		.byte	0x1
 2104 0bd4 A5       		.byte	0xa5
 2105 0bd5 91000000 		.4byte	0x91
 2106 0bd9 04010000 		.4byte	.LLST4
 2107 0bdd 00       		.byte	0
 2108 0bde 26       		.uleb128 0x26
 2109 0bdf 55050000 		.4byte	.LASF159
 2110 0be3 01       		.byte	0x1
 2111 0be4 98       		.byte	0x98
 2112 0be5 00000000 		.4byte	.LFB147
 2113 0be9 18000000 		.4byte	.LFE147-.LFB147
 2114 0bed 01       		.uleb128 0x1
 2115 0bee 9C       		.byte	0x9c
 2116 0bef 100C0000 		.4byte	0xc10
 2117 0bf3 27       		.uleb128 0x27
 2118 0bf4 8D050000 		.4byte	.LASF141
 2119 0bf8 01       		.byte	0x1
 2120 0bf9 98       		.byte	0x98
 2121 0bfa A3090000 		.4byte	0x9a3
 2122 0bfe 01       		.uleb128 0x1
 2123 0bff 50       		.byte	0x50
 2124 0c00 29       		.uleb128 0x29
 2125 0c01 A3060000 		.4byte	.LASF157
 2126 0c05 01       		.byte	0x1
 2127 0c06 9A       		.byte	0x9a
 2128 0c07 91000000 		.4byte	0x91
 2129 0c0b 2A010000 		.4byte	.LLST3
 2130 0c0f 00       		.byte	0
 2131 0c10 26       		.uleb128 0x26
 2132 0c11 4C070000 		.4byte	.LASF160
 2133 0c15 01       		.byte	0x1
 2134 0c16 8D       		.byte	0x8d
 2135 0c17 00000000 		.4byte	.LFB146
 2136 0c1b 14000000 		.4byte	.LFE146-.LFB146
 2137 0c1f 01       		.uleb128 0x1
 2138 0c20 9C       		.byte	0x9c
 2139 0c21 420C0000 		.4byte	0xc42
ARM GAS  /tmp/ccwbGpTl.s 			page 54


 2140 0c25 27       		.uleb128 0x27
 2141 0c26 8D050000 		.4byte	.LASF141
 2142 0c2a 01       		.byte	0x1
 2143 0c2b 8D       		.byte	0x8d
 2144 0c2c A3090000 		.4byte	0x9a3
 2145 0c30 01       		.uleb128 0x1
 2146 0c31 50       		.byte	0x50
 2147 0c32 29       		.uleb128 0x29
 2148 0c33 A3060000 		.4byte	.LASF157
 2149 0c37 01       		.byte	0x1
 2150 0c38 8F       		.byte	0x8f
 2151 0c39 91000000 		.4byte	0x91
 2152 0c3d 50010000 		.4byte	.LLST2
 2153 0c41 00       		.byte	0
 2154 0c42 26       		.uleb128 0x26
 2155 0c43 B7050000 		.4byte	.LASF161
 2156 0c47 01       		.byte	0x1
 2157 0c48 7C       		.byte	0x7c
 2158 0c49 00000000 		.4byte	.LFB145
 2159 0c4d 2C000000 		.4byte	.LFE145-.LFB145
 2160 0c51 01       		.uleb128 0x1
 2161 0c52 9C       		.byte	0x9c
 2162 0c53 720C0000 		.4byte	0xc72
 2163 0c57 27       		.uleb128 0x27
 2164 0c58 8D050000 		.4byte	.LASF141
 2165 0c5c 01       		.byte	0x1
 2166 0c5d 7C       		.byte	0x7c
 2167 0c5e A3090000 		.4byte	0x9a3
 2168 0c62 01       		.uleb128 0x1
 2169 0c63 50       		.byte	0x50
 2170 0c64 27       		.uleb128 0x27
 2171 0c65 5A010000 		.4byte	.LASF162
 2172 0c69 01       		.byte	0x1
 2173 0c6a 7C       		.byte	0x7c
 2174 0c6b 91000000 		.4byte	0x91
 2175 0c6f 01       		.uleb128 0x1
 2176 0c70 51       		.byte	0x51
 2177 0c71 00       		.byte	0
 2178 0c72 26       		.uleb128 0x26
 2179 0c73 FA050000 		.4byte	.LASF163
 2180 0c77 01       		.byte	0x1
 2181 0c78 69       		.byte	0x69
 2182 0c79 00000000 		.4byte	.LFB144
 2183 0c7d 14000000 		.4byte	.LFE144-.LFB144
 2184 0c81 01       		.uleb128 0x1
 2185 0c82 9C       		.byte	0x9c
 2186 0c83 A40C0000 		.4byte	0xca4
 2187 0c87 27       		.uleb128 0x27
 2188 0c88 8D050000 		.4byte	.LASF141
 2189 0c8c 01       		.byte	0x1
 2190 0c8d 69       		.byte	0x69
 2191 0c8e A3090000 		.4byte	0x9a3
 2192 0c92 01       		.uleb128 0x1
 2193 0c93 50       		.byte	0x50
 2194 0c94 29       		.uleb128 0x29
 2195 0c95 A3060000 		.4byte	.LASF157
 2196 0c99 01       		.byte	0x1
ARM GAS  /tmp/ccwbGpTl.s 			page 55


 2197 0c9a 6E       		.byte	0x6e
 2198 0c9b 91000000 		.4byte	0x91
 2199 0c9f 89010000 		.4byte	.LLST1
 2200 0ca3 00       		.byte	0
 2201 0ca4 26       		.uleb128 0x26
 2202 0ca5 A7070000 		.4byte	.LASF164
 2203 0ca9 01       		.byte	0x1
 2204 0caa 59       		.byte	0x59
 2205 0cab 00000000 		.4byte	.LFB143
 2206 0caf 18000000 		.4byte	.LFE143-.LFB143
 2207 0cb3 01       		.uleb128 0x1
 2208 0cb4 9C       		.byte	0x9c
 2209 0cb5 D60C0000 		.4byte	0xcd6
 2210 0cb9 27       		.uleb128 0x27
 2211 0cba 8D050000 		.4byte	.LASF141
 2212 0cbe 01       		.byte	0x1
 2213 0cbf 59       		.byte	0x59
 2214 0cc0 A3090000 		.4byte	0x9a3
 2215 0cc4 01       		.uleb128 0x1
 2216 0cc5 50       		.byte	0x50
 2217 0cc6 29       		.uleb128 0x29
 2218 0cc7 A3060000 		.4byte	.LASF157
 2219 0ccb 01       		.byte	0x1
 2220 0ccc 5F       		.byte	0x5f
 2221 0ccd 91000000 		.4byte	0x91
 2222 0cd1 C2010000 		.4byte	.LLST0
 2223 0cd5 00       		.byte	0
 2224 0cd6 26       		.uleb128 0x26
 2225 0cd7 55040000 		.4byte	.LASF165
 2226 0cdb 01       		.byte	0x1
 2227 0cdc 48       		.byte	0x48
 2228 0cdd 00000000 		.4byte	.LFB142
 2229 0ce1 14000000 		.4byte	.LFE142-.LFB142
 2230 0ce5 01       		.uleb128 0x1
 2231 0ce6 9C       		.byte	0x9c
 2232 0ce7 330D0000 		.4byte	0xd33
 2233 0ceb 27       		.uleb128 0x27
 2234 0cec 8D050000 		.4byte	.LASF141
 2235 0cf0 01       		.byte	0x1
 2236 0cf1 48       		.byte	0x48
 2237 0cf2 A3090000 		.4byte	0x9a3
 2238 0cf6 01       		.uleb128 0x1
 2239 0cf7 50       		.byte	0x50
 2240 0cf8 21       		.uleb128 0x21
 2241 0cf9 B3060000 		.4byte	.LASF166
 2242 0cfd 01       		.byte	0x1
 2243 0cfe 4B       		.byte	0x4b
 2244 0cff 91000000 		.4byte	0x91
 2245 0d03 01       		.uleb128 0x1
 2246 0d04 53       		.byte	0x53
 2247 0d05 2A       		.uleb128 0x2a
 2248 0d06 330D0000 		.4byte	0xd33
 2249 0d0a 06000000 		.4byte	.LBB8
 2250 0d0e 04000000 		.4byte	.LBE8-.LBB8
 2251 0d12 01       		.byte	0x1
 2252 0d13 4F       		.byte	0x4f
 2253 0d14 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccwbGpTl.s 			page 56


 2254 0d15 3C0D0000 		.4byte	0xd3c
 2255 0d19 0A000000 		.4byte	.LBB10
 2256 0d1d 02000000 		.4byte	.LBE10-.LBB10
 2257 0d21 01       		.byte	0x1
 2258 0d22 50       		.byte	0x50
 2259 0d23 2A       		.uleb128 0x2a
 2260 0d24 450D0000 		.4byte	0xd45
 2261 0d28 0C000000 		.4byte	.LBB12
 2262 0d2c 08000000 		.4byte	.LBE12-.LBB12
 2263 0d30 01       		.byte	0x1
 2264 0d31 51       		.byte	0x51
 2265 0d32 00       		.byte	0
 2266 0d33 2B       		.uleb128 0x2b
 2267 0d34 07030000 		.4byte	.LASF167
 2268 0d38 02       		.byte	0x2
 2269 0d39 BB01     		.2byte	0x1bb
 2270 0d3b 03       		.byte	0x3
 2271 0d3c 2B       		.uleb128 0x2b
 2272 0d3d 57020000 		.4byte	.LASF168
 2273 0d41 02       		.byte	0x2
 2274 0d42 9A01     		.2byte	0x19a
 2275 0d44 03       		.byte	0x3
 2276 0d45 2B       		.uleb128 0x2b
 2277 0d46 62020000 		.4byte	.LASF169
 2278 0d4a 02       		.byte	0x2
 2279 0d4b 8F01     		.2byte	0x18f
 2280 0d4d 03       		.byte	0x3
 2281 0d4e 00       		.byte	0
 2282              		.section	.debug_abbrev,"",%progbits
 2283              	.Ldebug_abbrev0:
 2284 0000 01       		.uleb128 0x1
 2285 0001 11       		.uleb128 0x11
 2286 0002 01       		.byte	0x1
 2287 0003 25       		.uleb128 0x25
 2288 0004 0E       		.uleb128 0xe
 2289 0005 13       		.uleb128 0x13
 2290 0006 0B       		.uleb128 0xb
 2291 0007 03       		.uleb128 0x3
 2292 0008 0E       		.uleb128 0xe
 2293 0009 1B       		.uleb128 0x1b
 2294 000a 0E       		.uleb128 0xe
 2295 000b 55       		.uleb128 0x55
 2296 000c 17       		.uleb128 0x17
 2297 000d 11       		.uleb128 0x11
 2298 000e 01       		.uleb128 0x1
 2299 000f 10       		.uleb128 0x10
 2300 0010 17       		.uleb128 0x17
 2301 0011 00       		.byte	0
 2302 0012 00       		.byte	0
 2303 0013 02       		.uleb128 0x2
 2304 0014 24       		.uleb128 0x24
 2305 0015 00       		.byte	0
 2306 0016 0B       		.uleb128 0xb
 2307 0017 0B       		.uleb128 0xb
 2308 0018 3E       		.uleb128 0x3e
 2309 0019 0B       		.uleb128 0xb
 2310 001a 03       		.uleb128 0x3
ARM GAS  /tmp/ccwbGpTl.s 			page 57


 2311 001b 08       		.uleb128 0x8
 2312 001c 00       		.byte	0
 2313 001d 00       		.byte	0
 2314 001e 03       		.uleb128 0x3
 2315 001f 24       		.uleb128 0x24
 2316 0020 00       		.byte	0
 2317 0021 0B       		.uleb128 0xb
 2318 0022 0B       		.uleb128 0xb
 2319 0023 3E       		.uleb128 0x3e
 2320 0024 0B       		.uleb128 0xb
 2321 0025 03       		.uleb128 0x3
 2322 0026 0E       		.uleb128 0xe
 2323 0027 00       		.byte	0
 2324 0028 00       		.byte	0
 2325 0029 04       		.uleb128 0x4
 2326 002a 16       		.uleb128 0x16
 2327 002b 00       		.byte	0
 2328 002c 03       		.uleb128 0x3
 2329 002d 0E       		.uleb128 0xe
 2330 002e 3A       		.uleb128 0x3a
 2331 002f 0B       		.uleb128 0xb
 2332 0030 3B       		.uleb128 0x3b
 2333 0031 0B       		.uleb128 0xb
 2334 0032 49       		.uleb128 0x49
 2335 0033 13       		.uleb128 0x13
 2336 0034 00       		.byte	0
 2337 0035 00       		.byte	0
 2338 0036 05       		.uleb128 0x5
 2339 0037 35       		.uleb128 0x35
 2340 0038 00       		.byte	0
 2341 0039 49       		.uleb128 0x49
 2342 003a 13       		.uleb128 0x13
 2343 003b 00       		.byte	0
 2344 003c 00       		.byte	0
 2345 003d 06       		.uleb128 0x6
 2346 003e 26       		.uleb128 0x26
 2347 003f 00       		.byte	0
 2348 0040 49       		.uleb128 0x49
 2349 0041 13       		.uleb128 0x13
 2350 0042 00       		.byte	0
 2351 0043 00       		.byte	0
 2352 0044 07       		.uleb128 0x7
 2353 0045 0F       		.uleb128 0xf
 2354 0046 00       		.byte	0
 2355 0047 0B       		.uleb128 0xb
 2356 0048 0B       		.uleb128 0xb
 2357 0049 00       		.byte	0
 2358 004a 00       		.byte	0
 2359 004b 08       		.uleb128 0x8
 2360 004c 34       		.uleb128 0x34
 2361 004d 00       		.byte	0
 2362 004e 03       		.uleb128 0x3
 2363 004f 0E       		.uleb128 0xe
 2364 0050 3A       		.uleb128 0x3a
 2365 0051 0B       		.uleb128 0xb
 2366 0052 3B       		.uleb128 0x3b
 2367 0053 05       		.uleb128 0x5
ARM GAS  /tmp/ccwbGpTl.s 			page 58


 2368 0054 49       		.uleb128 0x49
 2369 0055 13       		.uleb128 0x13
 2370 0056 3F       		.uleb128 0x3f
 2371 0057 19       		.uleb128 0x19
 2372 0058 3C       		.uleb128 0x3c
 2373 0059 19       		.uleb128 0x19
 2374 005a 00       		.byte	0
 2375 005b 00       		.byte	0
 2376 005c 09       		.uleb128 0x9
 2377 005d 34       		.uleb128 0x34
 2378 005e 00       		.byte	0
 2379 005f 03       		.uleb128 0x3
 2380 0060 0E       		.uleb128 0xe
 2381 0061 3A       		.uleb128 0x3a
 2382 0062 0B       		.uleb128 0xb
 2383 0063 3B       		.uleb128 0x3b
 2384 0064 0B       		.uleb128 0xb
 2385 0065 49       		.uleb128 0x49
 2386 0066 13       		.uleb128 0x13
 2387 0067 3F       		.uleb128 0x3f
 2388 0068 19       		.uleb128 0x19
 2389 0069 3C       		.uleb128 0x3c
 2390 006a 19       		.uleb128 0x19
 2391 006b 00       		.byte	0
 2392 006c 00       		.byte	0
 2393 006d 0A       		.uleb128 0xa
 2394 006e 13       		.uleb128 0x13
 2395 006f 01       		.byte	0x1
 2396 0070 0B       		.uleb128 0xb
 2397 0071 0B       		.uleb128 0xb
 2398 0072 3A       		.uleb128 0x3a
 2399 0073 0B       		.uleb128 0xb
 2400 0074 3B       		.uleb128 0x3b
 2401 0075 0B       		.uleb128 0xb
 2402 0076 01       		.uleb128 0x1
 2403 0077 13       		.uleb128 0x13
 2404 0078 00       		.byte	0
 2405 0079 00       		.byte	0
 2406 007a 0B       		.uleb128 0xb
 2407 007b 0D       		.uleb128 0xd
 2408 007c 00       		.byte	0
 2409 007d 03       		.uleb128 0x3
 2410 007e 0E       		.uleb128 0xe
 2411 007f 3A       		.uleb128 0x3a
 2412 0080 0B       		.uleb128 0xb
 2413 0081 3B       		.uleb128 0x3b
 2414 0082 0B       		.uleb128 0xb
 2415 0083 49       		.uleb128 0x49
 2416 0084 13       		.uleb128 0x13
 2417 0085 38       		.uleb128 0x38
 2418 0086 0B       		.uleb128 0xb
 2419 0087 00       		.byte	0
 2420 0088 00       		.byte	0
 2421 0089 0C       		.uleb128 0xc
 2422 008a 16       		.uleb128 0x16
 2423 008b 00       		.byte	0
 2424 008c 03       		.uleb128 0x3
ARM GAS  /tmp/ccwbGpTl.s 			page 59


 2425 008d 0E       		.uleb128 0xe
 2426 008e 3A       		.uleb128 0x3a
 2427 008f 0B       		.uleb128 0xb
 2428 0090 3B       		.uleb128 0x3b
 2429 0091 05       		.uleb128 0x5
 2430 0092 49       		.uleb128 0x49
 2431 0093 13       		.uleb128 0x13
 2432 0094 00       		.byte	0
 2433 0095 00       		.byte	0
 2434 0096 0D       		.uleb128 0xd
 2435 0097 17       		.uleb128 0x17
 2436 0098 01       		.byte	0x1
 2437 0099 0B       		.uleb128 0xb
 2438 009a 0B       		.uleb128 0xb
 2439 009b 3A       		.uleb128 0x3a
 2440 009c 0B       		.uleb128 0xb
 2441 009d 3B       		.uleb128 0x3b
 2442 009e 0B       		.uleb128 0xb
 2443 009f 01       		.uleb128 0x1
 2444 00a0 13       		.uleb128 0x13
 2445 00a1 00       		.byte	0
 2446 00a2 00       		.byte	0
 2447 00a3 0E       		.uleb128 0xe
 2448 00a4 0D       		.uleb128 0xd
 2449 00a5 00       		.byte	0
 2450 00a6 03       		.uleb128 0x3
 2451 00a7 0E       		.uleb128 0xe
 2452 00a8 3A       		.uleb128 0x3a
 2453 00a9 0B       		.uleb128 0xb
 2454 00aa 3B       		.uleb128 0x3b
 2455 00ab 0B       		.uleb128 0xb
 2456 00ac 49       		.uleb128 0x49
 2457 00ad 13       		.uleb128 0x13
 2458 00ae 00       		.byte	0
 2459 00af 00       		.byte	0
 2460 00b0 0F       		.uleb128 0xf
 2461 00b1 01       		.uleb128 0x1
 2462 00b2 01       		.byte	0x1
 2463 00b3 49       		.uleb128 0x49
 2464 00b4 13       		.uleb128 0x13
 2465 00b5 01       		.uleb128 0x1
 2466 00b6 13       		.uleb128 0x13
 2467 00b7 00       		.byte	0
 2468 00b8 00       		.byte	0
 2469 00b9 10       		.uleb128 0x10
 2470 00ba 21       		.uleb128 0x21
 2471 00bb 00       		.byte	0
 2472 00bc 49       		.uleb128 0x49
 2473 00bd 13       		.uleb128 0x13
 2474 00be 2F       		.uleb128 0x2f
 2475 00bf 0B       		.uleb128 0xb
 2476 00c0 00       		.byte	0
 2477 00c1 00       		.byte	0
 2478 00c2 11       		.uleb128 0x11
 2479 00c3 13       		.uleb128 0x13
 2480 00c4 01       		.byte	0x1
 2481 00c5 03       		.uleb128 0x3
ARM GAS  /tmp/ccwbGpTl.s 			page 60


 2482 00c6 0E       		.uleb128 0xe
 2483 00c7 0B       		.uleb128 0xb
 2484 00c8 0B       		.uleb128 0xb
 2485 00c9 3A       		.uleb128 0x3a
 2486 00ca 0B       		.uleb128 0xb
 2487 00cb 3B       		.uleb128 0x3b
 2488 00cc 0B       		.uleb128 0xb
 2489 00cd 01       		.uleb128 0x1
 2490 00ce 13       		.uleb128 0x13
 2491 00cf 00       		.byte	0
 2492 00d0 00       		.byte	0
 2493 00d1 12       		.uleb128 0x12
 2494 00d2 0D       		.uleb128 0xd
 2495 00d3 00       		.byte	0
 2496 00d4 03       		.uleb128 0x3
 2497 00d5 08       		.uleb128 0x8
 2498 00d6 3A       		.uleb128 0x3a
 2499 00d7 0B       		.uleb128 0xb
 2500 00d8 3B       		.uleb128 0x3b
 2501 00d9 0B       		.uleb128 0xb
 2502 00da 49       		.uleb128 0x49
 2503 00db 13       		.uleb128 0x13
 2504 00dc 38       		.uleb128 0x38
 2505 00dd 0B       		.uleb128 0xb
 2506 00de 00       		.byte	0
 2507 00df 00       		.byte	0
 2508 00e0 13       		.uleb128 0x13
 2509 00e1 0F       		.uleb128 0xf
 2510 00e2 00       		.byte	0
 2511 00e3 0B       		.uleb128 0xb
 2512 00e4 0B       		.uleb128 0xb
 2513 00e5 49       		.uleb128 0x49
 2514 00e6 13       		.uleb128 0x13
 2515 00e7 00       		.byte	0
 2516 00e8 00       		.byte	0
 2517 00e9 14       		.uleb128 0x14
 2518 00ea 13       		.uleb128 0x13
 2519 00eb 01       		.byte	0x1
 2520 00ec 03       		.uleb128 0x3
 2521 00ed 0E       		.uleb128 0xe
 2522 00ee 0B       		.uleb128 0xb
 2523 00ef 05       		.uleb128 0x5
 2524 00f0 3A       		.uleb128 0x3a
 2525 00f1 0B       		.uleb128 0xb
 2526 00f2 3B       		.uleb128 0x3b
 2527 00f3 0B       		.uleb128 0xb
 2528 00f4 01       		.uleb128 0x1
 2529 00f5 13       		.uleb128 0x13
 2530 00f6 00       		.byte	0
 2531 00f7 00       		.byte	0
 2532 00f8 15       		.uleb128 0x15
 2533 00f9 0D       		.uleb128 0xd
 2534 00fa 00       		.byte	0
 2535 00fb 03       		.uleb128 0x3
 2536 00fc 0E       		.uleb128 0xe
 2537 00fd 3A       		.uleb128 0x3a
 2538 00fe 0B       		.uleb128 0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 61


 2539 00ff 3B       		.uleb128 0x3b
 2540 0100 0B       		.uleb128 0xb
 2541 0101 49       		.uleb128 0x49
 2542 0102 13       		.uleb128 0x13
 2543 0103 38       		.uleb128 0x38
 2544 0104 05       		.uleb128 0x5
 2545 0105 00       		.byte	0
 2546 0106 00       		.byte	0
 2547 0107 16       		.uleb128 0x16
 2548 0108 15       		.uleb128 0x15
 2549 0109 00       		.byte	0
 2550 010a 27       		.uleb128 0x27
 2551 010b 19       		.uleb128 0x19
 2552 010c 00       		.byte	0
 2553 010d 00       		.byte	0
 2554 010e 17       		.uleb128 0x17
 2555 010f 15       		.uleb128 0x15
 2556 0110 01       		.byte	0x1
 2557 0111 27       		.uleb128 0x27
 2558 0112 19       		.uleb128 0x19
 2559 0113 49       		.uleb128 0x49
 2560 0114 13       		.uleb128 0x13
 2561 0115 01       		.uleb128 0x1
 2562 0116 13       		.uleb128 0x13
 2563 0117 00       		.byte	0
 2564 0118 00       		.byte	0
 2565 0119 18       		.uleb128 0x18
 2566 011a 05       		.uleb128 0x5
 2567 011b 00       		.byte	0
 2568 011c 49       		.uleb128 0x49
 2569 011d 13       		.uleb128 0x13
 2570 011e 00       		.byte	0
 2571 011f 00       		.byte	0
 2572 0120 19       		.uleb128 0x19
 2573 0121 13       		.uleb128 0x13
 2574 0122 01       		.byte	0x1
 2575 0123 03       		.uleb128 0x3
 2576 0124 0E       		.uleb128 0xe
 2577 0125 0B       		.uleb128 0xb
 2578 0126 05       		.uleb128 0x5
 2579 0127 3A       		.uleb128 0x3a
 2580 0128 0B       		.uleb128 0xb
 2581 0129 3B       		.uleb128 0x3b
 2582 012a 05       		.uleb128 0x5
 2583 012b 01       		.uleb128 0x1
 2584 012c 13       		.uleb128 0x13
 2585 012d 00       		.byte	0
 2586 012e 00       		.byte	0
 2587 012f 1A       		.uleb128 0x1a
 2588 0130 0D       		.uleb128 0xd
 2589 0131 00       		.byte	0
 2590 0132 03       		.uleb128 0x3
 2591 0133 0E       		.uleb128 0xe
 2592 0134 3A       		.uleb128 0x3a
 2593 0135 0B       		.uleb128 0xb
 2594 0136 3B       		.uleb128 0x3b
 2595 0137 05       		.uleb128 0x5
ARM GAS  /tmp/ccwbGpTl.s 			page 62


 2596 0138 49       		.uleb128 0x49
 2597 0139 13       		.uleb128 0x13
 2598 013a 38       		.uleb128 0x38
 2599 013b 0B       		.uleb128 0xb
 2600 013c 00       		.byte	0
 2601 013d 00       		.byte	0
 2602 013e 1B       		.uleb128 0x1b
 2603 013f 0D       		.uleb128 0xd
 2604 0140 00       		.byte	0
 2605 0141 03       		.uleb128 0x3
 2606 0142 0E       		.uleb128 0xe
 2607 0143 3A       		.uleb128 0x3a
 2608 0144 0B       		.uleb128 0xb
 2609 0145 3B       		.uleb128 0x3b
 2610 0146 05       		.uleb128 0x5
 2611 0147 49       		.uleb128 0x49
 2612 0148 13       		.uleb128 0x13
 2613 0149 38       		.uleb128 0x38
 2614 014a 05       		.uleb128 0x5
 2615 014b 00       		.byte	0
 2616 014c 00       		.byte	0
 2617 014d 1C       		.uleb128 0x1c
 2618 014e 13       		.uleb128 0x13
 2619 014f 01       		.byte	0x1
 2620 0150 03       		.uleb128 0x3
 2621 0151 0E       		.uleb128 0xe
 2622 0152 0B       		.uleb128 0xb
 2623 0153 0B       		.uleb128 0xb
 2624 0154 3A       		.uleb128 0x3a
 2625 0155 0B       		.uleb128 0xb
 2626 0156 3B       		.uleb128 0x3b
 2627 0157 05       		.uleb128 0x5
 2628 0158 01       		.uleb128 0x1
 2629 0159 13       		.uleb128 0x13
 2630 015a 00       		.byte	0
 2631 015b 00       		.byte	0
 2632 015c 1D       		.uleb128 0x1d
 2633 015d 13       		.uleb128 0x13
 2634 015e 01       		.byte	0x1
 2635 015f 0B       		.uleb128 0xb
 2636 0160 0B       		.uleb128 0xb
 2637 0161 3A       		.uleb128 0x3a
 2638 0162 0B       		.uleb128 0xb
 2639 0163 3B       		.uleb128 0x3b
 2640 0164 05       		.uleb128 0x5
 2641 0165 01       		.uleb128 0x1
 2642 0166 13       		.uleb128 0x13
 2643 0167 00       		.byte	0
 2644 0168 00       		.byte	0
 2645 0169 1E       		.uleb128 0x1e
 2646 016a 17       		.uleb128 0x17
 2647 016b 01       		.byte	0x1
 2648 016c 0B       		.uleb128 0xb
 2649 016d 0B       		.uleb128 0xb
 2650 016e 3A       		.uleb128 0x3a
 2651 016f 0B       		.uleb128 0xb
 2652 0170 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccwbGpTl.s 			page 63


 2653 0171 05       		.uleb128 0x5
 2654 0172 01       		.uleb128 0x1
 2655 0173 13       		.uleb128 0x13
 2656 0174 00       		.byte	0
 2657 0175 00       		.byte	0
 2658 0176 1F       		.uleb128 0x1f
 2659 0177 0D       		.uleb128 0xd
 2660 0178 00       		.byte	0
 2661 0179 03       		.uleb128 0x3
 2662 017a 0E       		.uleb128 0xe
 2663 017b 3A       		.uleb128 0x3a
 2664 017c 0B       		.uleb128 0xb
 2665 017d 3B       		.uleb128 0x3b
 2666 017e 05       		.uleb128 0x5
 2667 017f 49       		.uleb128 0x49
 2668 0180 13       		.uleb128 0x13
 2669 0181 00       		.byte	0
 2670 0182 00       		.byte	0
 2671 0183 20       		.uleb128 0x20
 2672 0184 15       		.uleb128 0x15
 2673 0185 01       		.byte	0x1
 2674 0186 27       		.uleb128 0x27
 2675 0187 19       		.uleb128 0x19
 2676 0188 01       		.uleb128 0x1
 2677 0189 13       		.uleb128 0x13
 2678 018a 00       		.byte	0
 2679 018b 00       		.byte	0
 2680 018c 21       		.uleb128 0x21
 2681 018d 34       		.uleb128 0x34
 2682 018e 00       		.byte	0
 2683 018f 03       		.uleb128 0x3
 2684 0190 0E       		.uleb128 0xe
 2685 0191 3A       		.uleb128 0x3a
 2686 0192 0B       		.uleb128 0xb
 2687 0193 3B       		.uleb128 0x3b
 2688 0194 0B       		.uleb128 0xb
 2689 0195 49       		.uleb128 0x49
 2690 0196 13       		.uleb128 0x13
 2691 0197 02       		.uleb128 0x2
 2692 0198 18       		.uleb128 0x18
 2693 0199 00       		.byte	0
 2694 019a 00       		.byte	0
 2695 019b 22       		.uleb128 0x22
 2696 019c 2E       		.uleb128 0x2e
 2697 019d 01       		.byte	0x1
 2698 019e 3F       		.uleb128 0x3f
 2699 019f 19       		.uleb128 0x19
 2700 01a0 03       		.uleb128 0x3
 2701 01a1 0E       		.uleb128 0xe
 2702 01a2 3A       		.uleb128 0x3a
 2703 01a3 0B       		.uleb128 0xb
 2704 01a4 3B       		.uleb128 0x3b
 2705 01a5 05       		.uleb128 0x5
 2706 01a6 27       		.uleb128 0x27
 2707 01a7 19       		.uleb128 0x19
 2708 01a8 11       		.uleb128 0x11
 2709 01a9 01       		.uleb128 0x1
ARM GAS  /tmp/ccwbGpTl.s 			page 64


 2710 01aa 12       		.uleb128 0x12
 2711 01ab 06       		.uleb128 0x6
 2712 01ac 40       		.uleb128 0x40
 2713 01ad 18       		.uleb128 0x18
 2714 01ae 9742     		.uleb128 0x2117
 2715 01b0 19       		.uleb128 0x19
 2716 01b1 01       		.uleb128 0x1
 2717 01b2 13       		.uleb128 0x13
 2718 01b3 00       		.byte	0
 2719 01b4 00       		.byte	0
 2720 01b5 23       		.uleb128 0x23
 2721 01b6 05       		.uleb128 0x5
 2722 01b7 00       		.byte	0
 2723 01b8 03       		.uleb128 0x3
 2724 01b9 0E       		.uleb128 0xe
 2725 01ba 3A       		.uleb128 0x3a
 2726 01bb 0B       		.uleb128 0xb
 2727 01bc 3B       		.uleb128 0x3b
 2728 01bd 05       		.uleb128 0x5
 2729 01be 49       		.uleb128 0x49
 2730 01bf 13       		.uleb128 0x13
 2731 01c0 02       		.uleb128 0x2
 2732 01c1 18       		.uleb128 0x18
 2733 01c2 00       		.byte	0
 2734 01c3 00       		.byte	0
 2735 01c4 24       		.uleb128 0x24
 2736 01c5 2E       		.uleb128 0x2e
 2737 01c6 01       		.byte	0x1
 2738 01c7 3F       		.uleb128 0x3f
 2739 01c8 19       		.uleb128 0x19
 2740 01c9 03       		.uleb128 0x3
 2741 01ca 0E       		.uleb128 0xe
 2742 01cb 3A       		.uleb128 0x3a
 2743 01cc 0B       		.uleb128 0xb
 2744 01cd 3B       		.uleb128 0x3b
 2745 01ce 05       		.uleb128 0x5
 2746 01cf 27       		.uleb128 0x27
 2747 01d0 19       		.uleb128 0x19
 2748 01d1 49       		.uleb128 0x49
 2749 01d2 13       		.uleb128 0x13
 2750 01d3 11       		.uleb128 0x11
 2751 01d4 01       		.uleb128 0x1
 2752 01d5 12       		.uleb128 0x12
 2753 01d6 06       		.uleb128 0x6
 2754 01d7 40       		.uleb128 0x40
 2755 01d8 18       		.uleb128 0x18
 2756 01d9 9742     		.uleb128 0x2117
 2757 01db 19       		.uleb128 0x19
 2758 01dc 01       		.uleb128 0x1
 2759 01dd 13       		.uleb128 0x13
 2760 01de 00       		.byte	0
 2761 01df 00       		.byte	0
 2762 01e0 25       		.uleb128 0x25
 2763 01e1 05       		.uleb128 0x5
 2764 01e2 00       		.byte	0
 2765 01e3 03       		.uleb128 0x3
 2766 01e4 0E       		.uleb128 0xe
ARM GAS  /tmp/ccwbGpTl.s 			page 65


 2767 01e5 3A       		.uleb128 0x3a
 2768 01e6 0B       		.uleb128 0xb
 2769 01e7 3B       		.uleb128 0x3b
 2770 01e8 05       		.uleb128 0x5
 2771 01e9 49       		.uleb128 0x49
 2772 01ea 13       		.uleb128 0x13
 2773 01eb 02       		.uleb128 0x2
 2774 01ec 17       		.uleb128 0x17
 2775 01ed 00       		.byte	0
 2776 01ee 00       		.byte	0
 2777 01ef 26       		.uleb128 0x26
 2778 01f0 2E       		.uleb128 0x2e
 2779 01f1 01       		.byte	0x1
 2780 01f2 3F       		.uleb128 0x3f
 2781 01f3 19       		.uleb128 0x19
 2782 01f4 03       		.uleb128 0x3
 2783 01f5 0E       		.uleb128 0xe
 2784 01f6 3A       		.uleb128 0x3a
 2785 01f7 0B       		.uleb128 0xb
 2786 01f8 3B       		.uleb128 0x3b
 2787 01f9 0B       		.uleb128 0xb
 2788 01fa 27       		.uleb128 0x27
 2789 01fb 19       		.uleb128 0x19
 2790 01fc 11       		.uleb128 0x11
 2791 01fd 01       		.uleb128 0x1
 2792 01fe 12       		.uleb128 0x12
 2793 01ff 06       		.uleb128 0x6
 2794 0200 40       		.uleb128 0x40
 2795 0201 18       		.uleb128 0x18
 2796 0202 9742     		.uleb128 0x2117
 2797 0204 19       		.uleb128 0x19
 2798 0205 01       		.uleb128 0x1
 2799 0206 13       		.uleb128 0x13
 2800 0207 00       		.byte	0
 2801 0208 00       		.byte	0
 2802 0209 27       		.uleb128 0x27
 2803 020a 05       		.uleb128 0x5
 2804 020b 00       		.byte	0
 2805 020c 03       		.uleb128 0x3
 2806 020d 0E       		.uleb128 0xe
 2807 020e 3A       		.uleb128 0x3a
 2808 020f 0B       		.uleb128 0xb
 2809 0210 3B       		.uleb128 0x3b
 2810 0211 0B       		.uleb128 0xb
 2811 0212 49       		.uleb128 0x49
 2812 0213 13       		.uleb128 0x13
 2813 0214 02       		.uleb128 0x2
 2814 0215 18       		.uleb128 0x18
 2815 0216 00       		.byte	0
 2816 0217 00       		.byte	0
 2817 0218 28       		.uleb128 0x28
 2818 0219 05       		.uleb128 0x5
 2819 021a 00       		.byte	0
 2820 021b 03       		.uleb128 0x3
 2821 021c 0E       		.uleb128 0xe
 2822 021d 3A       		.uleb128 0x3a
 2823 021e 0B       		.uleb128 0xb
ARM GAS  /tmp/ccwbGpTl.s 			page 66


 2824 021f 3B       		.uleb128 0x3b
 2825 0220 0B       		.uleb128 0xb
 2826 0221 49       		.uleb128 0x49
 2827 0222 13       		.uleb128 0x13
 2828 0223 02       		.uleb128 0x2
 2829 0224 17       		.uleb128 0x17
 2830 0225 00       		.byte	0
 2831 0226 00       		.byte	0
 2832 0227 29       		.uleb128 0x29
 2833 0228 34       		.uleb128 0x34
 2834 0229 00       		.byte	0
 2835 022a 03       		.uleb128 0x3
 2836 022b 0E       		.uleb128 0xe
 2837 022c 3A       		.uleb128 0x3a
 2838 022d 0B       		.uleb128 0xb
 2839 022e 3B       		.uleb128 0x3b
 2840 022f 0B       		.uleb128 0xb
 2841 0230 49       		.uleb128 0x49
 2842 0231 13       		.uleb128 0x13
 2843 0232 02       		.uleb128 0x2
 2844 0233 17       		.uleb128 0x17
 2845 0234 00       		.byte	0
 2846 0235 00       		.byte	0
 2847 0236 2A       		.uleb128 0x2a
 2848 0237 1D       		.uleb128 0x1d
 2849 0238 00       		.byte	0
 2850 0239 31       		.uleb128 0x31
 2851 023a 13       		.uleb128 0x13
 2852 023b 11       		.uleb128 0x11
 2853 023c 01       		.uleb128 0x1
 2854 023d 12       		.uleb128 0x12
 2855 023e 06       		.uleb128 0x6
 2856 023f 58       		.uleb128 0x58
 2857 0240 0B       		.uleb128 0xb
 2858 0241 59       		.uleb128 0x59
 2859 0242 0B       		.uleb128 0xb
 2860 0243 00       		.byte	0
 2861 0244 00       		.byte	0
 2862 0245 2B       		.uleb128 0x2b
 2863 0246 2E       		.uleb128 0x2e
 2864 0247 00       		.byte	0
 2865 0248 03       		.uleb128 0x3
 2866 0249 0E       		.uleb128 0xe
 2867 024a 3A       		.uleb128 0x3a
 2868 024b 0B       		.uleb128 0xb
 2869 024c 3B       		.uleb128 0x3b
 2870 024d 05       		.uleb128 0x5
 2871 024e 27       		.uleb128 0x27
 2872 024f 19       		.uleb128 0x19
 2873 0250 20       		.uleb128 0x20
 2874 0251 0B       		.uleb128 0xb
 2875 0252 00       		.byte	0
 2876 0253 00       		.byte	0
 2877 0254 00       		.byte	0
 2878              		.section	.debug_loc,"",%progbits
 2879              	.Ldebug_loc0:
 2880              	.LLST11:
ARM GAS  /tmp/ccwbGpTl.s 			page 67


 2881 0000 00000000 		.4byte	.LVL38
 2882 0004 02000000 		.4byte	.LVL39
 2883 0008 0100     		.2byte	0x1
 2884 000a 50       		.byte	0x50
 2885 000b 02000000 		.4byte	.LVL39
 2886 000f 04000000 		.4byte	.LFE158
 2887 0013 0400     		.2byte	0x4
 2888 0015 F3       		.byte	0xf3
 2889 0016 01       		.uleb128 0x1
 2890 0017 50       		.byte	0x50
 2891 0018 9F       		.byte	0x9f
 2892 0019 00000000 		.4byte	0
 2893 001d 00000000 		.4byte	0
 2894              	.LLST10:
 2895 0021 00000000 		.4byte	.LVL36
 2896 0025 02000000 		.4byte	.LVL37
 2897 0029 0100     		.2byte	0x1
 2898 002b 52       		.byte	0x52
 2899 002c 02000000 		.4byte	.LVL37
 2900 0030 06000000 		.4byte	.LFE157
 2901 0034 0400     		.2byte	0x4
 2902 0036 F3       		.byte	0xf3
 2903 0037 01       		.uleb128 0x1
 2904 0038 52       		.byte	0x52
 2905 0039 9F       		.byte	0x9f
 2906 003a 00000000 		.4byte	0
 2907 003e 00000000 		.4byte	0
 2908              	.LLST8:
 2909 0042 00000000 		.4byte	.LVL27
 2910 0046 06000000 		.4byte	.LVL28
 2911 004a 0100     		.2byte	0x1
 2912 004c 51       		.byte	0x51
 2913 004d 06000000 		.4byte	.LVL28
 2914 0051 10000000 		.4byte	.LFE151
 2915 0055 0400     		.2byte	0x4
 2916 0057 F3       		.byte	0xf3
 2917 0058 01       		.uleb128 0x1
 2918 0059 51       		.byte	0x51
 2919 005a 9F       		.byte	0x9f
 2920 005b 00000000 		.4byte	0
 2921 005f 00000000 		.4byte	0
 2922              	.LLST9:
 2923 0063 06000000 		.4byte	.LVL28
 2924 0067 0A000000 		.4byte	.LVL29
 2925 006b 0700     		.2byte	0x7
 2926 006d 71       		.byte	0x71
 2927 006e 00       		.sleb128 0
 2928 006f 0B       		.byte	0xb
 2929 0070 FFF8     		.2byte	0xf8ff
 2930 0072 1A       		.byte	0x1a
 2931 0073 9F       		.byte	0x9f
 2932 0074 0A000000 		.4byte	.LVL29
 2933 0078 0C000000 		.4byte	.LVL30
 2934 007c 0100     		.2byte	0x1
 2935 007e 51       		.byte	0x51
 2936 007f 00000000 		.4byte	0
 2937 0083 00000000 		.4byte	0
ARM GAS  /tmp/ccwbGpTl.s 			page 68


 2938              	.LLST6:
 2939 0087 00000000 		.4byte	.LVL23
 2940 008b 06000000 		.4byte	.LVL24
 2941 008f 0100     		.2byte	0x1
 2942 0091 51       		.byte	0x51
 2943 0092 06000000 		.4byte	.LVL24
 2944 0096 10000000 		.4byte	.LFE150
 2945 009a 0400     		.2byte	0x4
 2946 009c F3       		.byte	0xf3
 2947 009d 01       		.uleb128 0x1
 2948 009e 51       		.byte	0x51
 2949 009f 9F       		.byte	0x9f
 2950 00a0 00000000 		.4byte	0
 2951 00a4 00000000 		.4byte	0
 2952              	.LLST7:
 2953 00a8 06000000 		.4byte	.LVL24
 2954 00ac 0A000000 		.4byte	.LVL25
 2955 00b0 0600     		.2byte	0x6
 2956 00b2 71       		.byte	0x71
 2957 00b3 00       		.sleb128 0
 2958 00b4 09       		.byte	0x9
 2959 00b5 F0       		.byte	0xf0
 2960 00b6 1A       		.byte	0x1a
 2961 00b7 9F       		.byte	0x9f
 2962 00b8 0A000000 		.4byte	.LVL25
 2963 00bc 0C000000 		.4byte	.LVL26
 2964 00c0 0100     		.2byte	0x1
 2965 00c2 51       		.byte	0x51
 2966 00c3 00000000 		.4byte	0
 2967 00c7 00000000 		.4byte	0
 2968              	.LLST5:
 2969 00cb 02000000 		.4byte	.LVL20
 2970 00cf 06000000 		.4byte	.LVL21
 2971 00d3 0900     		.2byte	0x9
 2972 00d5 72       		.byte	0x72
 2973 00d6 00       		.sleb128 0
 2974 00d7 0C       		.byte	0xc
 2975 00d8 FFEFFF00 		.4byte	0xffefff
 2976 00dc 1A       		.byte	0x1a
 2977 00dd 9F       		.byte	0x9f
 2978 00de 06000000 		.4byte	.LVL21
 2979 00e2 0A000000 		.4byte	.LVL22
 2980 00e6 0100     		.2byte	0x1
 2981 00e8 53       		.byte	0x53
 2982 00e9 0A000000 		.4byte	.LVL22
 2983 00ed 14000000 		.4byte	.LFE149
 2984 00f1 0900     		.2byte	0x9
 2985 00f3 72       		.byte	0x72
 2986 00f4 00       		.sleb128 0
 2987 00f5 0C       		.byte	0xc
 2988 00f6 FFEFFF00 		.4byte	0xffefff
 2989 00fa 1A       		.byte	0x1a
 2990 00fb 9F       		.byte	0x9f
 2991 00fc 00000000 		.4byte	0
 2992 0100 00000000 		.4byte	0
 2993              	.LLST4:
 2994 0104 02000000 		.4byte	.LVL17
ARM GAS  /tmp/ccwbGpTl.s 			page 69


 2995 0108 08000000 		.4byte	.LVL18
 2996 010c 0900     		.2byte	0x9
 2997 010e 71       		.byte	0x71
 2998 010f 00       		.sleb128 0
 2999 0110 0C       		.byte	0xc
 3000 0111 FFEFFF00 		.4byte	0xffefff
 3001 0115 1A       		.byte	0x1a
 3002 0116 9F       		.byte	0x9f
 3003 0117 08000000 		.4byte	.LVL18
 3004 011b 18000000 		.4byte	.LFE148
 3005 011f 0100     		.2byte	0x1
 3006 0121 52       		.byte	0x52
 3007 0122 00000000 		.4byte	0
 3008 0126 00000000 		.4byte	0
 3009              	.LLST3:
 3010 012a 02000000 		.4byte	.LVL14
 3011 012e 08000000 		.4byte	.LVL15
 3012 0132 0900     		.2byte	0x9
 3013 0134 71       		.byte	0x71
 3014 0135 00       		.sleb128 0
 3015 0136 0C       		.byte	0xc
 3016 0137 FFDFFF00 		.4byte	0xffdfff
 3017 013b 1A       		.byte	0x1a
 3018 013c 9F       		.byte	0x9f
 3019 013d 08000000 		.4byte	.LVL15
 3020 0141 18000000 		.4byte	.LFE147
 3021 0145 0100     		.2byte	0x1
 3022 0147 52       		.byte	0x52
 3023 0148 00000000 		.4byte	0
 3024 014c 00000000 		.4byte	0
 3025              	.LLST2:
 3026 0150 02000000 		.4byte	.LVL10
 3027 0154 06000000 		.4byte	.LVL11
 3028 0158 0900     		.2byte	0x9
 3029 015a 72       		.byte	0x72
 3030 015b 00       		.sleb128 0
 3031 015c 0C       		.byte	0xc
 3032 015d FFDFFF00 		.4byte	0xffdfff
 3033 0161 1A       		.byte	0x1a
 3034 0162 9F       		.byte	0x9f
 3035 0163 06000000 		.4byte	.LVL11
 3036 0167 0A000000 		.4byte	.LVL12
 3037 016b 0100     		.2byte	0x1
 3038 016d 53       		.byte	0x53
 3039 016e 0A000000 		.4byte	.LVL12
 3040 0172 14000000 		.4byte	.LFE146
 3041 0176 0900     		.2byte	0x9
 3042 0178 72       		.byte	0x72
 3043 0179 00       		.sleb128 0
 3044 017a 0C       		.byte	0xc
 3045 017b FFDFFF00 		.4byte	0xffdfff
 3046 017f 1A       		.byte	0x1a
 3047 0180 9F       		.byte	0x9f
 3048 0181 00000000 		.4byte	0
 3049 0185 00000000 		.4byte	0
 3050              	.LLST1:
 3051 0189 02000000 		.4byte	.LVL5
ARM GAS  /tmp/ccwbGpTl.s 			page 70


 3052 018d 06000000 		.4byte	.LVL6
 3053 0191 0900     		.2byte	0x9
 3054 0193 72       		.byte	0x72
 3055 0194 00       		.sleb128 0
 3056 0195 0C       		.byte	0xc
 3057 0196 FFBFFF00 		.4byte	0xffbfff
 3058 019a 1A       		.byte	0x1a
 3059 019b 9F       		.byte	0x9f
 3060 019c 06000000 		.4byte	.LVL6
 3061 01a0 0A000000 		.4byte	.LVL7
 3062 01a4 0100     		.2byte	0x1
 3063 01a6 53       		.byte	0x53
 3064 01a7 0A000000 		.4byte	.LVL7
 3065 01ab 14000000 		.4byte	.LFE144
 3066 01af 0900     		.2byte	0x9
 3067 01b1 72       		.byte	0x72
 3068 01b2 00       		.sleb128 0
 3069 01b3 0C       		.byte	0xc
 3070 01b4 FFBFFF00 		.4byte	0xffbfff
 3071 01b8 1A       		.byte	0x1a
 3072 01b9 9F       		.byte	0x9f
 3073 01ba 00000000 		.4byte	0
 3074 01be 00000000 		.4byte	0
 3075              	.LLST0:
 3076 01c2 02000000 		.4byte	.LVL2
 3077 01c6 08000000 		.4byte	.LVL3
 3078 01ca 0900     		.2byte	0x9
 3079 01cc 71       		.byte	0x71
 3080 01cd 00       		.sleb128 0
 3081 01ce 0C       		.byte	0xc
 3082 01cf FFBFFF00 		.4byte	0xffbfff
 3083 01d3 1A       		.byte	0x1a
 3084 01d4 9F       		.byte	0x9f
 3085 01d5 08000000 		.4byte	.LVL3
 3086 01d9 18000000 		.4byte	.LFE143
 3087 01dd 0100     		.2byte	0x1
 3088 01df 52       		.byte	0x52
 3089 01e0 00000000 		.4byte	0
 3090 01e4 00000000 		.4byte	0
 3091              		.section	.debug_aranges,"",%progbits
 3092 0000 AC000000 		.4byte	0xac
 3093 0004 0200     		.2byte	0x2
 3094 0006 00000000 		.4byte	.Ldebug_info0
 3095 000a 04       		.byte	0x4
 3096 000b 00       		.byte	0
 3097 000c 0000     		.2byte	0
 3098 000e 0000     		.2byte	0
 3099 0010 00000000 		.4byte	.LFB142
 3100 0014 14000000 		.4byte	.LFE142-.LFB142
 3101 0018 00000000 		.4byte	.LFB143
 3102 001c 18000000 		.4byte	.LFE143-.LFB143
 3103 0020 00000000 		.4byte	.LFB144
 3104 0024 14000000 		.4byte	.LFE144-.LFB144
 3105 0028 00000000 		.4byte	.LFB145
 3106 002c 2C000000 		.4byte	.LFE145-.LFB145
 3107 0030 00000000 		.4byte	.LFB146
 3108 0034 14000000 		.4byte	.LFE146-.LFB146
ARM GAS  /tmp/ccwbGpTl.s 			page 71


 3109 0038 00000000 		.4byte	.LFB147
 3110 003c 18000000 		.4byte	.LFE147-.LFB147
 3111 0040 00000000 		.4byte	.LFB148
 3112 0044 18000000 		.4byte	.LFE148-.LFB148
 3113 0048 00000000 		.4byte	.LFB149
 3114 004c 14000000 		.4byte	.LFE149-.LFB149
 3115 0050 00000000 		.4byte	.LFB150
 3116 0054 10000000 		.4byte	.LFE150-.LFB150
 3117 0058 00000000 		.4byte	.LFB151
 3118 005c 10000000 		.4byte	.LFE151-.LFB151
 3119 0060 00000000 		.4byte	.LFB152
 3120 0064 0A000000 		.4byte	.LFE152-.LFB152
 3121 0068 00000000 		.4byte	.LFB153
 3122 006c 0A000000 		.4byte	.LFE153-.LFB153
 3123 0070 00000000 		.4byte	.LFB154
 3124 0074 0A000000 		.4byte	.LFE154-.LFB154
 3125 0078 00000000 		.4byte	.LFB155
 3126 007c 0A000000 		.4byte	.LFE155-.LFB155
 3127 0080 00000000 		.4byte	.LFB156
 3128 0084 04000000 		.4byte	.LFE156-.LFB156
 3129 0088 00000000 		.4byte	.LFB157
 3130 008c 06000000 		.4byte	.LFE157-.LFB157
 3131 0090 00000000 		.4byte	.LFB158
 3132 0094 04000000 		.4byte	.LFE158-.LFB158
 3133 0098 00000000 		.4byte	.LFB159
 3134 009c 10000000 		.4byte	.LFE159-.LFB159
 3135 00a0 00000000 		.4byte	.LFB160
 3136 00a4 10000000 		.4byte	.LFE160-.LFB160
 3137 00a8 00000000 		.4byte	0
 3138 00ac 00000000 		.4byte	0
 3139              		.section	.debug_ranges,"",%progbits
 3140              	.Ldebug_ranges0:
 3141 0000 00000000 		.4byte	.LFB142
 3142 0004 14000000 		.4byte	.LFE142
 3143 0008 00000000 		.4byte	.LFB143
 3144 000c 18000000 		.4byte	.LFE143
 3145 0010 00000000 		.4byte	.LFB144
 3146 0014 14000000 		.4byte	.LFE144
 3147 0018 00000000 		.4byte	.LFB145
 3148 001c 2C000000 		.4byte	.LFE145
 3149 0020 00000000 		.4byte	.LFB146
 3150 0024 14000000 		.4byte	.LFE146
 3151 0028 00000000 		.4byte	.LFB147
 3152 002c 18000000 		.4byte	.LFE147
 3153 0030 00000000 		.4byte	.LFB148
 3154 0034 18000000 		.4byte	.LFE148
 3155 0038 00000000 		.4byte	.LFB149
 3156 003c 14000000 		.4byte	.LFE149
 3157 0040 00000000 		.4byte	.LFB150
 3158 0044 10000000 		.4byte	.LFE150
 3159 0048 00000000 		.4byte	.LFB151
 3160 004c 10000000 		.4byte	.LFE151
 3161 0050 00000000 		.4byte	.LFB152
 3162 0054 0A000000 		.4byte	.LFE152
 3163 0058 00000000 		.4byte	.LFB153
 3164 005c 0A000000 		.4byte	.LFE153
 3165 0060 00000000 		.4byte	.LFB154
ARM GAS  /tmp/ccwbGpTl.s 			page 72


 3166 0064 0A000000 		.4byte	.LFE154
 3167 0068 00000000 		.4byte	.LFB155
 3168 006c 0A000000 		.4byte	.LFE155
 3169 0070 00000000 		.4byte	.LFB156
 3170 0074 04000000 		.4byte	.LFE156
 3171 0078 00000000 		.4byte	.LFB157
 3172 007c 06000000 		.4byte	.LFE157
 3173 0080 00000000 		.4byte	.LFB158
 3174 0084 04000000 		.4byte	.LFE158
 3175 0088 00000000 		.4byte	.LFB159
 3176 008c 10000000 		.4byte	.LFE159
 3177 0090 00000000 		.4byte	.LFB160
 3178 0094 10000000 		.4byte	.LFE160
 3179 0098 00000000 		.4byte	0
 3180 009c 00000000 		.4byte	0
 3181              		.section	.debug_line,"",%progbits
 3182              	.Ldebug_line0:
 3183 0000 D6030000 		.section	.debug_str,"MS",%progbits,1
 3183      02006A02 
 3183      00000201 
 3183      FB0E0D00 
 3183      01010101 
 3184              	.LASF51:
 3185 0000 5F64736F 		.ascii	"_dso_handle\000"
 3185      5F68616E 
 3185      646C6500 
 3186              	.LASF145:
 3187 000c 73757063 		.ascii	"supc_set_wakeup_mode\000"
 3187      5F736574 
 3187      5F77616B 
 3187      6575705F 
 3187      6D6F6465 
 3188              	.LASF3:
 3189 0021 73686F72 		.ascii	"short int\000"
 3189      7420696E 
 3189      7400
 3190              	.LASF50:
 3191 002b 5F666E61 		.ascii	"_fnargs\000"
 3191      72677300 
 3192              	.LASF104:
 3193 0033 5F72616E 		.ascii	"_rand48\000"
 3193      64343800 
 3194              	.LASF83:
 3195 003b 5F656D65 		.ascii	"_emergency\000"
 3195      7267656E 
 3195      637900
 3196              	.LASF17:
 3197 0046 53555043 		.ascii	"SUPC_SMMR\000"
 3197      5F534D4D 
 3197      5200
 3198              	.LASF149:
 3199 0050 73757063 		.ascii	"supc_disable_monitor_reset\000"
 3199      5F646973 
 3199      61626C65 
 3199      5F6D6F6E 
 3199      69746F72 
 3200              	.LASF124:
ARM GAS  /tmp/ccwbGpTl.s 			page 73


 3201 006b 5F776372 		.ascii	"_wcrtomb_state\000"
 3201      746F6D62 
 3201      5F737461 
 3201      746500
 3202              	.LASF125:
 3203 007a 5F776373 		.ascii	"_wcsrtombs_state\000"
 3203      72746F6D 
 3203      62735F73 
 3203      74617465 
 3203      00
 3204              	.LASF136:
 3205 008b 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3205      6972715F 
 3205      70726576 
 3205      5F696E74 
 3205      65727275 
 3206              	.LASF63:
 3207 00a8 5F6C6266 		.ascii	"_lbfsize\000"
 3207      73697A65 
 3207      00
 3208              	.LASF102:
 3209 00b1 5F6E696F 		.ascii	"_niobs\000"
 3209      627300
 3210              	.LASF19:
 3211 00b8 53555043 		.ascii	"SUPC_WUMR\000"
 3211      5F57554D 
 3211      5200
 3212              	.LASF22:
 3213 00c2 53757063 		.ascii	"Supc\000"
 3213      00
 3214              	.LASF122:
 3215 00c7 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3215      746F7763 
 3215      5F737461 
 3215      746500
 3216              	.LASF117:
 3217 00d6 5F776374 		.ascii	"_wctomb_state\000"
 3217      6F6D625F 
 3217      73746174 
 3217      6500
 3218              	.LASF40:
 3219 00e4 5F5F746D 		.ascii	"__tm_sec\000"
 3219      5F736563 
 3219      00
 3220              	.LASF24:
 3221 00ed 5F6F6666 		.ascii	"_off_t\000"
 3221      5F7400
 3222              	.LASF68:
 3223 00f4 5F636C6F 		.ascii	"_close\000"
 3223      736500
 3224              	.LASF1:
 3225 00fb 7369676E 		.ascii	"signed char\000"
 3225      65642063 
 3225      68617200 
 3226              	.LASF69:
 3227 0107 5F756275 		.ascii	"_ubuf\000"
 3227      6600
ARM GAS  /tmp/ccwbGpTl.s 			page 74


 3228              	.LASF10:
 3229 010d 6C6F6E67 		.ascii	"long long unsigned int\000"
 3229      206C6F6E 
 3229      6720756E 
 3229      7369676E 
 3229      65642069 
 3230              	.LASF42:
 3231 0124 5F5F746D 		.ascii	"__tm_hour\000"
 3231      5F686F75 
 3231      7200
 3232              	.LASF98:
 3233 012e 5F5F7366 		.ascii	"__sf\000"
 3233      00
 3234              	.LASF49:
 3235 0133 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3235      65786974 
 3235      5F617267 
 3235      7300
 3236              	.LASF64:
 3237 0141 5F636F6F 		.ascii	"_cookie\000"
 3237      6B696500 
 3238              	.LASF97:
 3239 0149 5F5F7367 		.ascii	"__sglue\000"
 3239      6C756500 
 3240              	.LASF5:
 3241 0151 6C6F6E67 		.ascii	"long int\000"
 3241      20696E74 
 3241      00
 3242              	.LASF162:
 3243 015a 756C5F62 		.ascii	"ul_bypass\000"
 3243      79706173 
 3243      7300
 3244              	.LASF61:
 3245 0164 5F666C61 		.ascii	"_flags\000"
 3245      677300
 3246              	.LASF53:
 3247 016b 5F69735F 		.ascii	"_is_cxa\000"
 3247      63786100 
 3248              	.LASF79:
 3249 0173 5F737464 		.ascii	"_stdin\000"
 3249      696E00
 3250              	.LASF89:
 3251 017a 5F726573 		.ascii	"_result_k\000"
 3251      756C745F 
 3251      6B00
 3252              	.LASF9:
 3253 0184 6C6F6E67 		.ascii	"long long int\000"
 3253      206C6F6E 
 3253      6720696E 
 3253      7400
 3254              	.LASF138:
 3255 0192 646F7562 		.ascii	"double\000"
 3255      6C6500
 3256              	.LASF150:
 3257 0199 73757063 		.ascii	"supc_enable_monitor_reset\000"
 3257      5F656E61 
 3257      626C655F 
ARM GAS  /tmp/ccwbGpTl.s 			page 75


 3257      6D6F6E69 
 3257      746F725F 
 3258              	.LASF93:
 3259 01b3 5F637674 		.ascii	"_cvtbuf\000"
 3259      62756600 
 3260              	.LASF72:
 3261 01bb 5F6F6666 		.ascii	"_offset\000"
 3261      73657400 
 3262              	.LASF123:
 3263 01c3 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3263      72746F77 
 3263      63735F73 
 3263      74617465 
 3263      00
 3264              	.LASF143:
 3265 01d4 756C5F69 		.ascii	"ul_inputs\000"
 3265      6E707574 
 3265      7300
 3266              	.LASF121:
 3267 01de 5F6D6272 		.ascii	"_mbrlen_state\000"
 3267      6C656E5F 
 3267      73746174 
 3267      6500
 3268              	.LASF144:
 3269 01ec 756C5F74 		.ascii	"ul_transition\000"
 3269      72616E73 
 3269      6974696F 
 3269      6E00
 3270              	.LASF16:
 3271 01fa 53555043 		.ascii	"SUPC_CR\000"
 3271      5F435200 
 3272              	.LASF56:
 3273 0202 5F666E73 		.ascii	"_fns\000"
 3273      00
 3274              	.LASF7:
 3275 0207 5F5F7569 		.ascii	"__uint32_t\000"
 3275      6E743332 
 3275      5F7400
 3276              	.LASF142:
 3277 0212 73757063 		.ascii	"supc_set_wakeup_inputs\000"
 3277      5F736574 
 3277      5F77616B 
 3277      6575705F 
 3277      696E7075 
 3278              	.LASF36:
 3279 0229 5F736967 		.ascii	"_sign\000"
 3279      6E00
 3280              	.LASF130:
 3281 022f 5F696D70 		.ascii	"_impure_ptr\000"
 3281      7572655F 
 3281      70747200 
 3282              	.LASF81:
 3283 023b 5F737464 		.ascii	"_stderr\000"
 3283      65727200 
 3284              	.LASF38:
 3285 0243 5F426967 		.ascii	"_Bigint\000"
 3285      696E7400 
ARM GAS  /tmp/ccwbGpTl.s 			page 76


 3286              	.LASF34:
 3287 024b 5F6E6578 		.ascii	"_next\000"
 3287      7400
 3288              	.LASF65:
 3289 0251 5F726561 		.ascii	"_read\000"
 3289      6400
 3290              	.LASF168:
 3291 0257 5F5F5746 		.ascii	"__WFE\000"
 3291      4500
 3292              	.LASF39:
 3293 025d 5F5F746D 		.ascii	"__tm\000"
 3293      00
 3294              	.LASF169:
 3295 0262 5F5F5746 		.ascii	"__WFI\000"
 3295      4900
 3296              	.LASF28:
 3297 0268 5F5F7763 		.ascii	"__wchb\000"
 3297      686200
 3298              	.LASF15:
 3299 026f 53797374 		.ascii	"SystemCoreClock\000"
 3299      656D436F 
 3299      7265436C 
 3299      6F636B00 
 3300              	.LASF80:
 3301 027f 5F737464 		.ascii	"_stdout\000"
 3301      6F757400 
 3302              	.LASF92:
 3303 0287 5F637674 		.ascii	"_cvtlen\000"
 3303      6C656E00 
 3304              	.LASF8:
 3305 028f 6C6F6E67 		.ascii	"long unsigned int\000"
 3305      20756E73 
 3305      69676E65 
 3305      6420696E 
 3305      7400
 3306              	.LASF114:
 3307 02a1 5F723438 		.ascii	"_r48\000"
 3307      00
 3308              	.LASF73:
 3309 02a6 5F646174 		.ascii	"_data\000"
 3309      6100
 3310              	.LASF21:
 3311 02ac 53555043 		.ascii	"SUPC_SR\000"
 3311      5F535200 
 3312              	.LASF113:
 3313 02b4 5F72616E 		.ascii	"_rand_next\000"
 3313      645F6E65 
 3313      787400
 3314              	.LASF95:
 3315 02bf 5F617465 		.ascii	"_atexit0\000"
 3315      78697430 
 3315      00
 3316              	.LASF119:
 3317 02c8 5F736967 		.ascii	"_signal_buf\000"
 3317      6E616C5F 
 3317      62756600 
 3318              	.LASF110:
ARM GAS  /tmp/ccwbGpTl.s 			page 77


 3319 02d4 5F617363 		.ascii	"_asctime_buf\000"
 3319      74696D65 
 3319      5F627566 
 3319      00
 3320              	.LASF88:
 3321 02e1 5F726573 		.ascii	"_result\000"
 3321      756C7400 
 3322              	.LASF27:
 3323 02e9 5F5F7763 		.ascii	"__wch\000"
 3323      6800
 3324              	.LASF127:
 3325 02ef 5F6E6578 		.ascii	"_nextf\000"
 3325      746600
 3326              	.LASF94:
 3327 02f6 5F6E6577 		.ascii	"_new\000"
 3327      00
 3328              	.LASF74:
 3329 02fb 5F6C6F63 		.ascii	"_lock\000"
 3329      6B00
 3330              	.LASF106:
 3331 0301 5F6D756C 		.ascii	"_mult\000"
 3331      7400
 3332              	.LASF167:
 3333 0307 5F5F4453 		.ascii	"__DSB\000"
 3333      4200
 3334              	.LASF66:
 3335 030d 5F777269 		.ascii	"_write\000"
 3335      746500
 3336              	.LASF45:
 3337 0314 5F5F746D 		.ascii	"__tm_year\000"
 3337      5F796561 
 3337      7200
 3338              	.LASF155:
 3339 031e 756C5F74 		.ascii	"ul_threshold\000"
 3339      68726573 
 3339      686F6C64 
 3339      00
 3340              	.LASF128:
 3341 032b 5F6E6D61 		.ascii	"_nmalloc\000"
 3341      6C6C6F63 
 3341      00
 3342              	.LASF48:
 3343 0334 5F5F746D 		.ascii	"__tm_isdst\000"
 3343      5F697364 
 3343      737400
 3344              	.LASF13:
 3345 033f 73697A65 		.ascii	"sizetype\000"
 3345      74797065 
 3345      00
 3346              	.LASF153:
 3347 0348 756C5F73 		.ascii	"ul_smmr\000"
 3347      6D6D7200 
 3348              	.LASF140:
 3349 0350 73757063 		.ascii	"supc_backup_sram_on\000"
 3349      5F626163 
 3349      6B75705F 
 3349      7372616D 
ARM GAS  /tmp/ccwbGpTl.s 			page 78


 3349      5F6F6E00 
 3350              	.LASF170:
 3351 0364 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3351      43393920 
 3351      362E332E 
 3351      31203230 
 3351      31373036 
 3352 0397 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3352      76352D64 
 3352      3136202D 
 3352      6D666C6F 
 3352      61742D61 
 3353 03ca 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3353      6E2D7365 
 3353      6374696F 
 3353      6E73202D 
 3353      66646174 
 3354 03fd 6F6E7374 		.ascii	"onstant\000"
 3354      616E7400 
 3355              	.LASF44:
 3356 0405 5F5F746D 		.ascii	"__tm_mon\000"
 3356      5F6D6F6E 
 3356      00
 3357              	.LASF54:
 3358 040e 5F617465 		.ascii	"_atexit\000"
 3358      78697400 
 3359              	.LASF132:
 3360 0416 7375626F 		.ascii	"suboptarg\000"
 3360      70746172 
 3360      6700
 3361              	.LASF147:
 3362 0420 73757063 		.ascii	"supc_disable_monitor_interrupt\000"
 3362      5F646973 
 3362      61626C65 
 3362      5F6D6F6E 
 3362      69746F72 
 3363              	.LASF112:
 3364 043f 5F67616D 		.ascii	"_gamma_signgam\000"
 3364      6D615F73 
 3364      69676E67 
 3364      616D00
 3365              	.LASF26:
 3366 044e 77696E74 		.ascii	"wint_t\000"
 3366      5F7400
 3367              	.LASF165:
 3368 0455 73757063 		.ascii	"supc_enable_backup_mode\000"
 3368      5F656E61 
 3368      626C655F 
 3368      6261636B 
 3368      75705F6D 
 3369              	.LASF18:
 3370 046d 53555043 		.ascii	"SUPC_MR\000"
 3370      5F4D5200 
 3371              	.LASF156:
 3372 0475 73757063 		.ascii	"supc_disable_brownout_reset\000"
 3372      5F646973 
 3372      61626C65 
ARM GAS  /tmp/ccwbGpTl.s 			page 79


 3372      5F62726F 
 3372      776E6F75 
 3373              	.LASF137:
 3374 0491 666C6F61 		.ascii	"float\000"
 3374      7400
 3375              	.LASF146:
 3376 0497 756C5F6D 		.ascii	"ul_mode\000"
 3376      6F646500 
 3377              	.LASF133:
 3378 049f 675F696E 		.ascii	"g_interrupt_enabled\000"
 3378      74657272 
 3378      7570745F 
 3378      656E6162 
 3378      6C656400 
 3379              	.LASF151:
 3380 04b3 73757063 		.ascii	"supc_set_monitor_sampling_period\000"
 3380      5F736574 
 3380      5F6D6F6E 
 3380      69746F72 
 3380      5F73616D 
 3381              	.LASF23:
 3382 04d4 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3382      4B5F5245 
 3382      43555253 
 3382      4956455F 
 3382      5400
 3383              	.LASF20:
 3384 04e6 53555043 		.ascii	"SUPC_WUIR\000"
 3384      5F575549 
 3384      5200
 3385              	.LASF58:
 3386 04f0 5F626173 		.ascii	"_base\000"
 3386      6500
 3387              	.LASF148:
 3388 04f6 73757063 		.ascii	"supc_enable_monitor_interrupt\000"
 3388      5F656E61 
 3388      626C655F 
 3388      6D6F6E69 
 3388      746F725F 
 3389              	.LASF134:
 3390 0514 5F426F6F 		.ascii	"_Bool\000"
 3390      6C00
 3391              	.LASF11:
 3392 051a 696E7433 		.ascii	"int32_t\000"
 3392      325F7400 
 3393              	.LASF2:
 3394 0522 756E7369 		.ascii	"unsigned char\000"
 3394      676E6564 
 3394      20636861 
 3394      7200
 3395              	.LASF103:
 3396 0530 5F696F62 		.ascii	"_iobs\000"
 3396      7300
 3397              	.LASF14:
 3398 0536 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3398      52784275 
 3398      66666572 
ARM GAS  /tmp/ccwbGpTl.s 			page 80


 3398      00
 3399              	.LASF126:
 3400 0543 5F685F65 		.ascii	"_h_errno\000"
 3400      72726E6F 
 3400      00
 3401              	.LASF32:
 3402 054c 5F666C6F 		.ascii	"_flock_t\000"
 3402      636B5F74 
 3402      00
 3403              	.LASF159:
 3404 0555 73757063 		.ascii	"supc_disable_brownout_detector\000"
 3404      5F646973 
 3404      61626C65 
 3404      5F62726F 
 3404      776E6F75 
 3405              	.LASF57:
 3406 0574 5F5F7362 		.ascii	"__sbuf\000"
 3406      756600
 3407              	.LASF76:
 3408 057b 5F666C61 		.ascii	"_flags2\000"
 3408      67733200 
 3409              	.LASF91:
 3410 0583 5F667265 		.ascii	"_freelist\000"
 3410      656C6973 
 3410      7400
 3411              	.LASF141:
 3412 058d 705F7375 		.ascii	"p_supc\000"
 3412      706300
 3413              	.LASF100:
 3414 0594 5F5F4649 		.ascii	"__FILE\000"
 3414      4C4500
 3415              	.LASF31:
 3416 059b 5F6D6273 		.ascii	"_mbstate_t\000"
 3416      74617465 
 3416      5F7400
 3417              	.LASF60:
 3418 05a6 5F5F7346 		.ascii	"__sFILE\000"
 3418      494C4500 
 3419              	.LASF75:
 3420 05ae 5F6D6273 		.ascii	"_mbstate\000"
 3420      74617465 
 3420      00
 3421              	.LASF161:
 3422 05b7 73757063 		.ascii	"supc_switch_sclk_to_32kxtal\000"
 3422      5F737769 
 3422      7463685F 
 3422      73636C6B 
 3422      5F746F5F 
 3423              	.LASF115:
 3424 05d3 5F6D626C 		.ascii	"_mblen_state\000"
 3424      656E5F73 
 3424      74617465 
 3424      00
 3425              	.LASF82:
 3426 05e0 5F696E63 		.ascii	"_inc\000"
 3426      00
 3427              	.LASF55:
ARM GAS  /tmp/ccwbGpTl.s 			page 81


 3428 05e5 5F696E64 		.ascii	"_ind\000"
 3428      00
 3429              	.LASF85:
 3430 05ea 5F637572 		.ascii	"_current_locale\000"
 3430      72656E74 
 3430      5F6C6F63 
 3430      616C6500 
 3431              	.LASF163:
 3432 05fa 73757063 		.ascii	"supc_disable_voltage_regulator\000"
 3432      5F646973 
 3432      61626C65 
 3432      5F766F6C 
 3432      74616765 
 3433              	.LASF87:
 3434 0619 5F5F636C 		.ascii	"__cleanup\000"
 3434      65616E75 
 3434      7000
 3435              	.LASF35:
 3436 0623 5F6D6178 		.ascii	"_maxwds\000"
 3436      77647300 
 3437              	.LASF77:
 3438 062b 5F726565 		.ascii	"_reent\000"
 3438      6E7400
 3439              	.LASF105:
 3440 0632 5F736565 		.ascii	"_seed\000"
 3440      6400
 3441              	.LASF29:
 3442 0638 5F5F636F 		.ascii	"__count\000"
 3442      756E7400 
 3443              	.LASF30:
 3444 0640 5F5F7661 		.ascii	"__value\000"
 3444      6C756500 
 3445              	.LASF67:
 3446 0648 5F736565 		.ascii	"_seek\000"
 3446      6B00
 3447              	.LASF46:
 3448 064e 5F5F746D 		.ascii	"__tm_wday\000"
 3448      5F776461 
 3448      7900
 3449              	.LASF25:
 3450 0658 5F66706F 		.ascii	"_fpos_t\000"
 3450      735F7400 
 3451              	.LASF78:
 3452 0660 5F657272 		.ascii	"_errno\000"
 3452      6E6F00
 3453              	.LASF99:
 3454 0667 63686172 		.ascii	"char\000"
 3454      00
 3455              	.LASF71:
 3456 066c 5F626C6B 		.ascii	"_blksize\000"
 3456      73697A65 
 3456      00
 3457              	.LASF59:
 3458 0675 5F73697A 		.ascii	"_size\000"
 3458      6500
 3459              	.LASF0:
 3460 067b 756E7369 		.ascii	"unsigned int\000"
ARM GAS  /tmp/ccwbGpTl.s 			page 82


 3460      676E6564 
 3460      20696E74 
 3460      00
 3461              	.LASF154:
 3462 0688 73757063 		.ascii	"supc_set_monitor_threshold\000"
 3462      5F736574 
 3462      5F6D6F6E 
 3462      69746F72 
 3462      5F746872 
 3463              	.LASF157:
 3464 06a3 756C5F6D 		.ascii	"ul_mr\000"
 3464      7200
 3465              	.LASF6:
 3466 06a9 5F5F696E 		.ascii	"__int32_t\000"
 3466      7433325F 
 3466      7400
 3467              	.LASF166:
 3468 06b3 756C5F64 		.ascii	"ul_dummy\000"
 3468      756D6D79 
 3468      00
 3469              	.LASF109:
 3470 06bc 5F737472 		.ascii	"_strtok_last\000"
 3470      746F6B5F 
 3470      6C617374 
 3470      00
 3471              	.LASF52:
 3472 06c9 5F666E74 		.ascii	"_fntypes\000"
 3472      79706573 
 3472      00
 3473              	.LASF4:
 3474 06d2 73686F72 		.ascii	"short unsigned int\000"
 3474      7420756E 
 3474      7369676E 
 3474      65642069 
 3474      6E7400
 3475              	.LASF107:
 3476 06e5 5F616464 		.ascii	"_add\000"
 3476      00
 3477              	.LASF33:
 3478 06ea 5F5F554C 		.ascii	"__ULong\000"
 3478      6F6E6700 
 3479              	.LASF120:
 3480 06f2 5F676574 		.ascii	"_getdate_err\000"
 3480      64617465 
 3480      5F657272 
 3480      00
 3481              	.LASF171:
 3482 06ff 2E2E2F61 		.ascii	"../asf/sam/drivers/supc/supc.c\000"
 3482      73662F73 
 3482      616D2F64 
 3482      72697665 
 3482      72732F73 
 3483              	.LASF131:
 3484 071e 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3484      62616C5F 
 3484      696D7075 
 3484      72655F70 
ARM GAS  /tmp/ccwbGpTl.s 			page 83


 3484      747200
 3485              	.LASF84:
 3486 0731 5F637572 		.ascii	"_current_category\000"
 3486      72656E74 
 3486      5F636174 
 3486      65676F72 
 3486      7900
 3487              	.LASF12:
 3488 0743 75696E74 		.ascii	"uint32_t\000"
 3488      33325F74 
 3488      00
 3489              	.LASF160:
 3490 074c 73757063 		.ascii	"supc_enable_brownout_detector\000"
 3490      5F656E61 
 3490      626C655F 
 3490      62726F77 
 3490      6E6F7574 
 3491              	.LASF108:
 3492 076a 5F756E75 		.ascii	"_unused_rand\000"
 3492      7365645F 
 3492      72616E64 
 3492      00
 3493              	.LASF152:
 3494 0777 756C5F70 		.ascii	"ul_period\000"
 3494      6572696F 
 3494      6400
 3495              	.LASF62:
 3496 0781 5F66696C 		.ascii	"_file\000"
 3496      6500
 3497              	.LASF37:
 3498 0787 5F776473 		.ascii	"_wds\000"
 3498      00
 3499              	.LASF101:
 3500 078c 5F676C75 		.ascii	"_glue\000"
 3500      6500
 3501              	.LASF86:
 3502 0792 5F5F7364 		.ascii	"__sdidinit\000"
 3502      6964696E 
 3502      697400
 3503              	.LASF118:
 3504 079d 5F6C3634 		.ascii	"_l64a_buf\000"
 3504      615F6275 
 3504      6600
 3505              	.LASF164:
 3506 07a7 73757063 		.ascii	"supc_enable_voltage_regulator\000"
 3506      5F656E61 
 3506      626C655F 
 3506      766F6C74 
 3506      6167655F 
 3507              	.LASF96:
 3508 07c5 5F736967 		.ascii	"_sig_func\000"
 3508      5F66756E 
 3508      6300
 3509              	.LASF135:
 3510 07cf 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3510      6972715F 
 3510      63726974 
ARM GAS  /tmp/ccwbGpTl.s 			page 84


 3510      6963616C 
 3510      5F736563 
 3511              	.LASF173:
 3512 07f0 73757063 		.ascii	"supc_get_status\000"
 3512      5F676574 
 3512      5F737461 
 3512      74757300 
 3513              	.LASF70:
 3514 0800 5F6E6275 		.ascii	"_nbuf\000"
 3514      6600
 3515              	.LASF129:
 3516 0806 5F756E75 		.ascii	"_unused\000"
 3516      73656400 
 3517              	.LASF172:
 3518 080e 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 3518      652F746F 
 3518      72626A6F 
 3518      726E2F65 
 3518      636C6970 
 3519 0841 00       		.ascii	"\000"
 3520              	.LASF139:
 3521 0842 73757063 		.ascii	"supc_backup_sram_off\000"
 3521      5F626163 
 3521      6B75705F 
 3521      7372616D 
 3521      5F6F6666 
 3522              	.LASF111:
 3523 0857 5F6C6F63 		.ascii	"_localtime_buf\000"
 3523      616C7469 
 3523      6D655F62 
 3523      756600
 3524              	.LASF41:
 3525 0866 5F5F746D 		.ascii	"__tm_min\000"
 3525      5F6D696E 
 3525      00
 3526              	.LASF158:
 3527 086f 73757063 		.ascii	"supc_enable_brownout_reset\000"
 3527      5F656E61 
 3527      626C655F 
 3527      62726F77 
 3527      6E6F7574 
 3528              	.LASF116:
 3529 088a 5F6D6274 		.ascii	"_mbtowc_state\000"
 3529      6F77635F 
 3529      73746174 
 3529      6500
 3530              	.LASF90:
 3531 0898 5F703573 		.ascii	"_p5s\000"
 3531      00
 3532              	.LASF47:
 3533 089d 5F5F746D 		.ascii	"__tm_yday\000"
 3533      5F796461 
 3533      7900
 3534              	.LASF43:
 3535 08a7 5F5F746D 		.ascii	"__tm_mday\000"
 3535      5F6D6461 
 3535      7900
ARM GAS  /tmp/ccwbGpTl.s 			page 85


 3536              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
