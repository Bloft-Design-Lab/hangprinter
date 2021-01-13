ARM GAS  /tmp/ccFplMB9.s 			page 1


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
  12              		.file	"ctrl_access.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.get_nb_lun,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	get_nb_lun
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	get_nb_lun, %function
  25              	get_nb_lun:
  26              	.LFB142:
  27              		.file 1 "../libraries/Storage/ctrl_access.c"
   1:../libraries/Storage/ctrl_access.c **** /*****************************************************************************
   2:../libraries/Storage/ctrl_access.c ****  *
   3:../libraries/Storage/ctrl_access.c ****  * \file
   4:../libraries/Storage/ctrl_access.c ****  *
   5:../libraries/Storage/ctrl_access.c ****  * \brief Abstraction layer for memory interfaces.
   6:../libraries/Storage/ctrl_access.c ****  *
   7:../libraries/Storage/ctrl_access.c ****  * This module contains the interfaces:
   8:../libraries/Storage/ctrl_access.c ****  *   - MEM <-> USB;
   9:../libraries/Storage/ctrl_access.c ****  *   - MEM <-> RAM;
  10:../libraries/Storage/ctrl_access.c ****  *   - MEM <-> MEM.
  11:../libraries/Storage/ctrl_access.c ****  *
  12:../libraries/Storage/ctrl_access.c ****  * This module may be configured and expanded to support the following features:
  13:../libraries/Storage/ctrl_access.c ****  *   - write-protected globals;
  14:../libraries/Storage/ctrl_access.c ****  *   - password-protected data;
  15:../libraries/Storage/ctrl_access.c ****  *   - specific features;
  16:../libraries/Storage/ctrl_access.c ****  *   - etc.
  17:../libraries/Storage/ctrl_access.c ****  *
  18:../libraries/Storage/ctrl_access.c ****  * Copyright (c) 2009-2015 Atmel Corporation. All rights reserved.
  19:../libraries/Storage/ctrl_access.c ****  *
  20:../libraries/Storage/ctrl_access.c ****  * \asf_license_start
  21:../libraries/Storage/ctrl_access.c ****  *
  22:../libraries/Storage/ctrl_access.c ****  * \page License
  23:../libraries/Storage/ctrl_access.c ****  *
  24:../libraries/Storage/ctrl_access.c ****  * Redistribution and use in source and binary forms, with or without
  25:../libraries/Storage/ctrl_access.c ****  * modification, are permitted provided that the following conditions are met:
  26:../libraries/Storage/ctrl_access.c ****  *
  27:../libraries/Storage/ctrl_access.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  28:../libraries/Storage/ctrl_access.c ****  *    this list of conditions and the following disclaimer.
  29:../libraries/Storage/ctrl_access.c ****  *
  30:../libraries/Storage/ctrl_access.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
ARM GAS  /tmp/ccFplMB9.s 			page 2


  31:../libraries/Storage/ctrl_access.c ****  *    this list of conditions and the following disclaimer in the documentation
  32:../libraries/Storage/ctrl_access.c ****  *    and/or other materials provided with the distribution.
  33:../libraries/Storage/ctrl_access.c ****  *
  34:../libraries/Storage/ctrl_access.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  35:../libraries/Storage/ctrl_access.c ****  *    from this software without specific prior written permission.
  36:../libraries/Storage/ctrl_access.c ****  *
  37:../libraries/Storage/ctrl_access.c ****  * 4. This software may only be redistributed and used in connection with an
  38:../libraries/Storage/ctrl_access.c ****  *    Atmel microcontroller product.
  39:../libraries/Storage/ctrl_access.c ****  *
  40:../libraries/Storage/ctrl_access.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  41:../libraries/Storage/ctrl_access.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  42:../libraries/Storage/ctrl_access.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  43:../libraries/Storage/ctrl_access.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  44:../libraries/Storage/ctrl_access.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  45:../libraries/Storage/ctrl_access.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  46:../libraries/Storage/ctrl_access.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  47:../libraries/Storage/ctrl_access.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  48:../libraries/Storage/ctrl_access.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  49:../libraries/Storage/ctrl_access.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  50:../libraries/Storage/ctrl_access.c ****  * POSSIBILITY OF SUCH DAMAGE.
  51:../libraries/Storage/ctrl_access.c ****  *
  52:../libraries/Storage/ctrl_access.c ****  * \asf_license_stop
  53:../libraries/Storage/ctrl_access.c ****  *
  54:../libraries/Storage/ctrl_access.c ****  ******************************************************************************/
  55:../libraries/Storage/ctrl_access.c **** /*
  56:../libraries/Storage/ctrl_access.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  57:../libraries/Storage/ctrl_access.c ****  */
  58:../libraries/Storage/ctrl_access.c **** 
  59:../libraries/Storage/ctrl_access.c **** 
  60:../libraries/Storage/ctrl_access.c **** //_____ I N C L U D E S ____________________________________________________
  61:../libraries/Storage/ctrl_access.c **** 
  62:../libraries/Storage/ctrl_access.c **** #include "compiler.h"
  63:../libraries/Storage/ctrl_access.c **** #include "preprocessor.h"
  64:../libraries/Storage/ctrl_access.c **** #ifdef FREERTOS_USED
  65:../libraries/Storage/ctrl_access.c **** #include "FreeRTOS.h"
  66:../libraries/Storage/ctrl_access.c **** #include "semphr.h"
  67:../libraries/Storage/ctrl_access.c **** #endif
  68:../libraries/Storage/ctrl_access.c **** #include "ctrl_access.h"
  69:../libraries/Storage/ctrl_access.c **** 
  70:../libraries/Storage/ctrl_access.c **** 
  71:../libraries/Storage/ctrl_access.c **** //_____ D E F I N I T I O N S ______________________________________________
  72:../libraries/Storage/ctrl_access.c **** 
  73:../libraries/Storage/ctrl_access.c **** #ifdef FREERTOS_USED
  74:../libraries/Storage/ctrl_access.c **** 
  75:../libraries/Storage/ctrl_access.c **** /*! \name LUN Access Protection Macros
  76:../libraries/Storage/ctrl_access.c ****  */
  77:../libraries/Storage/ctrl_access.c **** //! @{
  78:../libraries/Storage/ctrl_access.c **** 
  79:../libraries/Storage/ctrl_access.c **** /*! \brief Locks accesses to LUNs.
  80:../libraries/Storage/ctrl_access.c ****  *
  81:../libraries/Storage/ctrl_access.c ****  * \return \c true if the access was successfully locked, else \c false.
  82:../libraries/Storage/ctrl_access.c ****  */
  83:../libraries/Storage/ctrl_access.c **** #define Ctrl_access_lock()    ctrl_access_lock()
  84:../libraries/Storage/ctrl_access.c **** 
  85:../libraries/Storage/ctrl_access.c **** /*! \brief Unlocks accesses to LUNs.
  86:../libraries/Storage/ctrl_access.c ****  */
  87:../libraries/Storage/ctrl_access.c **** #define Ctrl_access_unlock()  xSemaphoreGive(ctrl_access_semphr)
ARM GAS  /tmp/ccFplMB9.s 			page 3


  88:../libraries/Storage/ctrl_access.c **** 
  89:../libraries/Storage/ctrl_access.c **** //! @}
  90:../libraries/Storage/ctrl_access.c **** 
  91:../libraries/Storage/ctrl_access.c **** //! Handle to the semaphore protecting accesses to LUNs.
  92:../libraries/Storage/ctrl_access.c **** static xSemaphoreHandle ctrl_access_semphr = NULL;
  93:../libraries/Storage/ctrl_access.c **** 
  94:../libraries/Storage/ctrl_access.c **** #else
  95:../libraries/Storage/ctrl_access.c **** 
  96:../libraries/Storage/ctrl_access.c **** /*! \name LUN Access Protection Macros
  97:../libraries/Storage/ctrl_access.c ****  */
  98:../libraries/Storage/ctrl_access.c **** //! @{
  99:../libraries/Storage/ctrl_access.c **** 
 100:../libraries/Storage/ctrl_access.c **** /*! \brief Locks accesses to LUNs.
 101:../libraries/Storage/ctrl_access.c ****  *
 102:../libraries/Storage/ctrl_access.c ****  * \return \c true if the access was successfully locked, else \c false.
 103:../libraries/Storage/ctrl_access.c ****  */
 104:../libraries/Storage/ctrl_access.c **** #define Ctrl_access_lock()    true
 105:../libraries/Storage/ctrl_access.c **** 
 106:../libraries/Storage/ctrl_access.c **** /*! \brief Unlocks accesses to LUNs.
 107:../libraries/Storage/ctrl_access.c ****  */
 108:../libraries/Storage/ctrl_access.c **** #define Ctrl_access_unlock()
 109:../libraries/Storage/ctrl_access.c **** 
 110:../libraries/Storage/ctrl_access.c **** //! @}
 111:../libraries/Storage/ctrl_access.c **** 
 112:../libraries/Storage/ctrl_access.c **** #endif  // FREERTOS_USED
 113:../libraries/Storage/ctrl_access.c **** 
 114:../libraries/Storage/ctrl_access.c **** 
 115:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 116:../libraries/Storage/ctrl_access.c **** 
 117:../libraries/Storage/ctrl_access.c **** /*! \brief Initializes an entry of the LUN descriptor table.
 118:../libraries/Storage/ctrl_access.c ****  *
 119:../libraries/Storage/ctrl_access.c ****  * \param lun Logical Unit Number.
 120:../libraries/Storage/ctrl_access.c ****  *
 121:../libraries/Storage/ctrl_access.c ****  * \return LUN descriptor table entry initializer.
 122:../libraries/Storage/ctrl_access.c ****  */
 123:../libraries/Storage/ctrl_access.c **** #if ACCESS_USB == true && ACCESS_MEM_TO_RAM == true
 124:../libraries/Storage/ctrl_access.c **** #define Lun_desc_entry(lun) \
 125:../libraries/Storage/ctrl_access.c ****   {\
 126:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _test_unit_ready),\
 127:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _read_capacity),\
 128:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _unload),\
 129:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _wr_protect),\
 130:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _removal),\
 131:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _usb_read_10),\
 132:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _usb_write_10),\
 133:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _mem_2_ram),\
 134:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _ram_2_mem),\
 135:../libraries/Storage/ctrl_access.c ****     TPASTE3(LUN_, lun, _NAME)\
 136:../libraries/Storage/ctrl_access.c ****   }
 137:../libraries/Storage/ctrl_access.c **** #elif ACCESS_USB == true
 138:../libraries/Storage/ctrl_access.c **** #define Lun_desc_entry(lun) \
 139:../libraries/Storage/ctrl_access.c ****   {\
 140:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _test_unit_ready),\
 141:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _read_capacity),\
 142:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _unload),\
 143:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _wr_protect),\
 144:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _removal),\
ARM GAS  /tmp/ccFplMB9.s 			page 4


 145:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _usb_read_10),\
 146:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _usb_write_10),\
 147:../libraries/Storage/ctrl_access.c ****     TPASTE3(LUN_, lun, _NAME)\
 148:../libraries/Storage/ctrl_access.c ****   }
 149:../libraries/Storage/ctrl_access.c **** #elif ACCESS_MEM_TO_RAM == true
 150:../libraries/Storage/ctrl_access.c **** #define Lun_desc_entry(lun) \
 151:../libraries/Storage/ctrl_access.c ****   {\
 152:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _test_unit_ready),\
 153:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _read_capacity),\
 154:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _unload),\
 155:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _wr_protect),\
 156:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _removal),\
 157:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _mem_2_ram),\
 158:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _ram_2_mem),\
 159:../libraries/Storage/ctrl_access.c ****     TPASTE3(LUN_, lun, _NAME)\
 160:../libraries/Storage/ctrl_access.c ****   }
 161:../libraries/Storage/ctrl_access.c **** #else
 162:../libraries/Storage/ctrl_access.c **** #define Lun_desc_entry(lun) \
 163:../libraries/Storage/ctrl_access.c ****   {\
 164:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _test_unit_ready),\
 165:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _read_capacity),\
 166:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _unload),\
 167:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _wr_protect),\
 168:../libraries/Storage/ctrl_access.c ****     TPASTE3(Lun_, lun, _removal),\
 169:../libraries/Storage/ctrl_access.c ****     TPASTE3(LUN_, lun, _NAME)\
 170:../libraries/Storage/ctrl_access.c ****   }
 171:../libraries/Storage/ctrl_access.c **** #endif
 172:../libraries/Storage/ctrl_access.c **** 
 173:../libraries/Storage/ctrl_access.c **** //! LUN descriptor table.
 174:../libraries/Storage/ctrl_access.c **** static const struct
 175:../libraries/Storage/ctrl_access.c **** {
 176:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*test_unit_ready)(void);
 177:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*read_capacity)(U32 *);
 178:../libraries/Storage/ctrl_access.c ****   bool (*unload)(bool);
 179:../libraries/Storage/ctrl_access.c ****   bool (*wr_protect)(void);
 180:../libraries/Storage/ctrl_access.c ****   bool (*removal)(void);
 181:../libraries/Storage/ctrl_access.c **** #if ACCESS_USB == true
 182:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*usb_read_10)(U32, U16);
 183:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*usb_write_10)(U32, U16);
 184:../libraries/Storage/ctrl_access.c **** #endif
 185:../libraries/Storage/ctrl_access.c **** #if ACCESS_MEM_TO_RAM == true
 186:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*mem_2_ram)(U32, void *, U32);
 187:../libraries/Storage/ctrl_access.c ****   Ctrl_status (*ram_2_mem)(U32, const void *, U32);
 188:../libraries/Storage/ctrl_access.c **** #endif
 189:../libraries/Storage/ctrl_access.c ****   const char *name;
 190:../libraries/Storage/ctrl_access.c **** } lun_desc[MAX_LUN] =
 191:../libraries/Storage/ctrl_access.c **** {
 192:../libraries/Storage/ctrl_access.c **** #if LUN_0 == ENABLE
 193:../libraries/Storage/ctrl_access.c **** # ifndef Lun_0_unload
 194:../libraries/Storage/ctrl_access.c **** #  define Lun_0_unload NULL
 195:../libraries/Storage/ctrl_access.c **** # endif
 196:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(0),
 197:../libraries/Storage/ctrl_access.c **** #endif
 198:../libraries/Storage/ctrl_access.c **** #if LUN_1 == ENABLE
 199:../libraries/Storage/ctrl_access.c **** # ifndef Lun_1_unload
 200:../libraries/Storage/ctrl_access.c **** #  define Lun_1_unload NULL
 201:../libraries/Storage/ctrl_access.c **** # endif
ARM GAS  /tmp/ccFplMB9.s 			page 5


 202:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(1),
 203:../libraries/Storage/ctrl_access.c **** #endif
 204:../libraries/Storage/ctrl_access.c **** #if LUN_2 == ENABLE
 205:../libraries/Storage/ctrl_access.c **** # ifndef Lun_2_unload
 206:../libraries/Storage/ctrl_access.c **** #  define Lun_2_unload NULL
 207:../libraries/Storage/ctrl_access.c **** # endif
 208:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(2),
 209:../libraries/Storage/ctrl_access.c **** #endif
 210:../libraries/Storage/ctrl_access.c **** #if LUN_3 == ENABLE
 211:../libraries/Storage/ctrl_access.c **** # ifndef Lun_3_unload
 212:../libraries/Storage/ctrl_access.c **** #  define Lun_3_unload NULL
 213:../libraries/Storage/ctrl_access.c **** # endif
 214:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(3),
 215:../libraries/Storage/ctrl_access.c **** #endif
 216:../libraries/Storage/ctrl_access.c **** #if LUN_4 == ENABLE
 217:../libraries/Storage/ctrl_access.c **** # ifndef Lun_4_unload
 218:../libraries/Storage/ctrl_access.c **** #  define Lun_4_unload NULL
 219:../libraries/Storage/ctrl_access.c **** # endif
 220:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(4),
 221:../libraries/Storage/ctrl_access.c **** #endif
 222:../libraries/Storage/ctrl_access.c **** #if LUN_5 == ENABLE
 223:../libraries/Storage/ctrl_access.c **** # ifndef Lun_5_unload
 224:../libraries/Storage/ctrl_access.c **** #  define Lun_5_unload NULL
 225:../libraries/Storage/ctrl_access.c **** # endif
 226:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(5),
 227:../libraries/Storage/ctrl_access.c **** #endif
 228:../libraries/Storage/ctrl_access.c **** #if LUN_6 == ENABLE
 229:../libraries/Storage/ctrl_access.c **** # ifndef Lun_6_unload
 230:../libraries/Storage/ctrl_access.c **** #  define Lun_6_unload NULL
 231:../libraries/Storage/ctrl_access.c **** # endif
 232:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(6),
 233:../libraries/Storage/ctrl_access.c **** #endif
 234:../libraries/Storage/ctrl_access.c **** #if LUN_7 == ENABLE
 235:../libraries/Storage/ctrl_access.c **** # ifndef Lun_7_unload
 236:../libraries/Storage/ctrl_access.c **** #  define Lun_7_unload NULL
 237:../libraries/Storage/ctrl_access.c **** # endif
 238:../libraries/Storage/ctrl_access.c ****   Lun_desc_entry(7)
 239:../libraries/Storage/ctrl_access.c **** #endif
 240:../libraries/Storage/ctrl_access.c **** };
 241:../libraries/Storage/ctrl_access.c **** 
 242:../libraries/Storage/ctrl_access.c **** #endif
 243:../libraries/Storage/ctrl_access.c **** 
 244:../libraries/Storage/ctrl_access.c **** 
 245:../libraries/Storage/ctrl_access.c **** #if GLOBAL_WR_PROTECT == true
 246:../libraries/Storage/ctrl_access.c **** bool g_wr_protect;
 247:../libraries/Storage/ctrl_access.c **** #endif
 248:../libraries/Storage/ctrl_access.c **** 
 249:../libraries/Storage/ctrl_access.c **** 
 250:../libraries/Storage/ctrl_access.c **** /*! \name Control Interface
 251:../libraries/Storage/ctrl_access.c ****  */
 252:../libraries/Storage/ctrl_access.c **** //! @{
 253:../libraries/Storage/ctrl_access.c **** 
 254:../libraries/Storage/ctrl_access.c **** 
 255:../libraries/Storage/ctrl_access.c **** #ifdef FREERTOS_USED
 256:../libraries/Storage/ctrl_access.c **** 
 257:../libraries/Storage/ctrl_access.c **** bool ctrl_access_init(void)
 258:../libraries/Storage/ctrl_access.c **** {
ARM GAS  /tmp/ccFplMB9.s 			page 6


 259:../libraries/Storage/ctrl_access.c ****   // If the handle to the protecting semaphore is not valid,
 260:../libraries/Storage/ctrl_access.c ****   if (!ctrl_access_semphr)
 261:../libraries/Storage/ctrl_access.c ****   {
 262:../libraries/Storage/ctrl_access.c ****     // try to create the semaphore.
 263:../libraries/Storage/ctrl_access.c ****     vSemaphoreCreateBinary(ctrl_access_semphr);
 264:../libraries/Storage/ctrl_access.c **** 
 265:../libraries/Storage/ctrl_access.c ****     // If the semaphore could not be created, there is no backup solution.
 266:../libraries/Storage/ctrl_access.c ****     if (!ctrl_access_semphr) return false;
 267:../libraries/Storage/ctrl_access.c ****   }
 268:../libraries/Storage/ctrl_access.c **** 
 269:../libraries/Storage/ctrl_access.c ****   return true;
 270:../libraries/Storage/ctrl_access.c **** }
 271:../libraries/Storage/ctrl_access.c **** 
 272:../libraries/Storage/ctrl_access.c **** 
 273:../libraries/Storage/ctrl_access.c **** /*! \brief Locks accesses to LUNs.
 274:../libraries/Storage/ctrl_access.c ****  *
 275:../libraries/Storage/ctrl_access.c ****  * \return \c true if the access was successfully locked, else \c false.
 276:../libraries/Storage/ctrl_access.c ****  */
 277:../libraries/Storage/ctrl_access.c **** static bool ctrl_access_lock(void)
 278:../libraries/Storage/ctrl_access.c **** {
 279:../libraries/Storage/ctrl_access.c ****   // If the semaphore could not be created, there is no backup solution.
 280:../libraries/Storage/ctrl_access.c ****   if (!ctrl_access_semphr) return false;
 281:../libraries/Storage/ctrl_access.c **** 
 282:../libraries/Storage/ctrl_access.c ****   // Wait for the semaphore.
 283:../libraries/Storage/ctrl_access.c ****   while (!xSemaphoreTake(ctrl_access_semphr, portMAX_DELAY));
 284:../libraries/Storage/ctrl_access.c **** 
 285:../libraries/Storage/ctrl_access.c ****   return true;
 286:../libraries/Storage/ctrl_access.c **** }
 287:../libraries/Storage/ctrl_access.c **** 
 288:../libraries/Storage/ctrl_access.c **** #endif  // FREERTOS_USED
 289:../libraries/Storage/ctrl_access.c **** 
 290:../libraries/Storage/ctrl_access.c **** 
 291:../libraries/Storage/ctrl_access.c **** U8 get_nb_lun(void)
 292:../libraries/Storage/ctrl_access.c **** {
  28              		.loc 1 292 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
 293:../libraries/Storage/ctrl_access.c **** #if MEM_USB == ENABLE
 294:../libraries/Storage/ctrl_access.c **** #  ifndef Lun_usb_get_lun
 295:../libraries/Storage/ctrl_access.c **** #    define Lun_usb_get_lun()  host_get_lun()
 296:../libraries/Storage/ctrl_access.c **** #  endif
 297:../libraries/Storage/ctrl_access.c ****   U8 nb_lun;
 298:../libraries/Storage/ctrl_access.c **** 
 299:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return MAX_LUN;
 300:../libraries/Storage/ctrl_access.c **** 
 301:../libraries/Storage/ctrl_access.c ****   nb_lun = MAX_LUN + Lun_usb_get_lun();
 302:../libraries/Storage/ctrl_access.c **** 
 303:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 304:../libraries/Storage/ctrl_access.c **** 
 305:../libraries/Storage/ctrl_access.c ****   return nb_lun;
 306:../libraries/Storage/ctrl_access.c **** #else
 307:../libraries/Storage/ctrl_access.c ****   return MAX_LUN;
 308:../libraries/Storage/ctrl_access.c **** #endif
 309:../libraries/Storage/ctrl_access.c **** }
  33              		.loc 1 309 0
ARM GAS  /tmp/ccFplMB9.s 			page 7


  34 0000 0220     		movs	r0, #2
  35 0002 7047     		bx	lr
  36              		.cfi_endproc
  37              	.LFE142:
  38              		.size	get_nb_lun, .-get_nb_lun
  39              		.section	.text.get_cur_lun,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	get_cur_lun
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv5-d16
  47              		.type	get_cur_lun, %function
  48              	get_cur_lun:
  49              	.LFB143:
 310:../libraries/Storage/ctrl_access.c **** 
 311:../libraries/Storage/ctrl_access.c **** 
 312:../libraries/Storage/ctrl_access.c **** U8 get_cur_lun(void)
 313:../libraries/Storage/ctrl_access.c **** {
  50              		.loc 1 313 0
  51              		.cfi_startproc
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
 314:../libraries/Storage/ctrl_access.c ****   return LUN_ID_0;
 315:../libraries/Storage/ctrl_access.c **** }
  55              		.loc 1 315 0
  56 0000 0020     		movs	r0, #0
  57 0002 7047     		bx	lr
  58              		.cfi_endproc
  59              	.LFE143:
  60              		.size	get_cur_lun, .-get_cur_lun
  61              		.section	.text.mem_test_unit_ready,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	mem_test_unit_ready
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv5-d16
  69              		.type	mem_test_unit_ready, %function
  70              	mem_test_unit_ready:
  71              	.LFB144:
 316:../libraries/Storage/ctrl_access.c **** 
 317:../libraries/Storage/ctrl_access.c **** 
 318:../libraries/Storage/ctrl_access.c **** Ctrl_status mem_test_unit_ready(U8 lun)
 319:../libraries/Storage/ctrl_access.c **** {
  72              		.loc 1 319 0
  73              		.cfi_startproc
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77              	.LVL0:
 320:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 321:../libraries/Storage/ctrl_access.c **** 
 322:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
ARM GAS  /tmp/ccFplMB9.s 			page 8


 323:../libraries/Storage/ctrl_access.c **** 
 324:../libraries/Storage/ctrl_access.c ****   status =
 325:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 326:../libraries/Storage/ctrl_access.c ****          (lun < MAX_LUN) ? lun_desc[lun].test_unit_ready() :
  78              		.loc 1 326 0
  79 0000 0128     		cmp	r0, #1
  80 0002 01D9     		bls	.L6
  81              	.LVL1:
 327:../libraries/Storage/ctrl_access.c **** #endif
 328:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 329:../libraries/Storage/ctrl_access.c ****                              Lun_usb_test_unit_ready(lun - LUN_ID_USB);
 330:../libraries/Storage/ctrl_access.c **** #else
 331:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 332:../libraries/Storage/ctrl_access.c **** #endif
 333:../libraries/Storage/ctrl_access.c **** 
 334:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 335:../libraries/Storage/ctrl_access.c **** 
 336:../libraries/Storage/ctrl_access.c ****   return status;
 337:../libraries/Storage/ctrl_access.c **** }
  82              		.loc 1 337 0
  83 0004 0120     		movs	r0, #1
  84              	.LVL2:
  85 0006 7047     		bx	lr
  86              	.LVL3:
  87              	.L6:
 326:../libraries/Storage/ctrl_access.c **** #endif
  88              		.loc 1 326 0 discriminator 1
  89 0008 4001     		lsls	r0, r0, #5
  90              	.LVL4:
  91 000a 014B     		ldr	r3, .L7
  92 000c 1B58     		ldr	r3, [r3, r0]
  93 000e 1847     		bx	r3
  94              	.LVL5:
  95              	.L8:
  96              		.align	2
  97              	.L7:
  98 0010 00000000 		.word	.LANCHOR0
  99              		.cfi_endproc
 100              	.LFE144:
 101              		.size	mem_test_unit_ready, .-mem_test_unit_ready
 102              		.section	.text.mem_read_capacity,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	mem_read_capacity
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv5-d16
 110              		.type	mem_read_capacity, %function
 111              	mem_read_capacity:
 112              	.LFB145:
 338:../libraries/Storage/ctrl_access.c **** 
 339:../libraries/Storage/ctrl_access.c **** 
 340:../libraries/Storage/ctrl_access.c **** Ctrl_status mem_read_capacity(U8 lun, U32 *u32_nb_sector)
 341:../libraries/Storage/ctrl_access.c **** {
 113              		.loc 1 341 0
 114              		.cfi_startproc
ARM GAS  /tmp/ccFplMB9.s 			page 9


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117              		@ link register save eliminated.
 118              	.LVL6:
 342:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 343:../libraries/Storage/ctrl_access.c **** 
 344:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
 345:../libraries/Storage/ctrl_access.c **** 
 346:../libraries/Storage/ctrl_access.c ****   status =
 347:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 348:../libraries/Storage/ctrl_access.c ****          (lun < MAX_LUN) ? lun_desc[lun].read_capacity(u32_nb_sector) :
 119              		.loc 1 348 0
 120 0000 0128     		cmp	r0, #1
 341:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 121              		.loc 1 341 0
 122 0002 0346     		mov	r3, r0
 123              		.loc 1 348 0
 124 0004 01D9     		bls	.L11
 125              	.LVL7:
 349:../libraries/Storage/ctrl_access.c **** #endif
 350:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 351:../libraries/Storage/ctrl_access.c ****                              Lun_usb_read_capacity(lun - LUN_ID_USB, u32_nb_sector);
 352:../libraries/Storage/ctrl_access.c **** #else
 353:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 354:../libraries/Storage/ctrl_access.c **** #endif
 355:../libraries/Storage/ctrl_access.c **** 
 356:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 357:../libraries/Storage/ctrl_access.c **** 
 358:../libraries/Storage/ctrl_access.c ****   return status;
 359:../libraries/Storage/ctrl_access.c **** }
 126              		.loc 1 359 0
 127 0006 0120     		movs	r0, #1
 128              	.LVL8:
 129 0008 7047     		bx	lr
 130              	.LVL9:
 131              	.L11:
 348:../libraries/Storage/ctrl_access.c **** #endif
 132              		.loc 1 348 0 discriminator 1
 133 000a 034A     		ldr	r2, .L12
 134 000c 0846     		mov	r0, r1
 135              	.LVL10:
 136 000e 02EB4313 		add	r3, r2, r3, lsl #5
 137 0012 5B68     		ldr	r3, [r3, #4]
 138 0014 1847     		bx	r3
 139              	.LVL11:
 140              	.L13:
 141 0016 00BF     		.align	2
 142              	.L12:
 143 0018 00000000 		.word	.LANCHOR0
 144              		.cfi_endproc
 145              	.LFE145:
 146              		.size	mem_read_capacity, .-mem_read_capacity
 147              		.section	.text.mem_sector_size,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	mem_sector_size
 151              		.syntax unified
ARM GAS  /tmp/ccFplMB9.s 			page 10


 152              		.thumb
 153              		.thumb_func
 154              		.fpu fpv5-d16
 155              		.type	mem_sector_size, %function
 156              	mem_sector_size:
 157              	.LFB146:
 360:../libraries/Storage/ctrl_access.c **** 
 361:../libraries/Storage/ctrl_access.c **** 
 362:../libraries/Storage/ctrl_access.c **** U8 mem_sector_size(U8 lun)
 363:../libraries/Storage/ctrl_access.c **** {
 158              		.loc 1 363 0
 159              		.cfi_startproc
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163              	.LVL12:
 364:../libraries/Storage/ctrl_access.c ****   U8 sector_size;
 365:../libraries/Storage/ctrl_access.c **** 
 366:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return 0;
 367:../libraries/Storage/ctrl_access.c **** 
 368:../libraries/Storage/ctrl_access.c ****   sector_size =
 369:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 370:../libraries/Storage/ctrl_access.c ****               (lun < MAX_LUN) ? 1 :
 371:../libraries/Storage/ctrl_access.c **** #endif
 372:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 373:../libraries/Storage/ctrl_access.c ****                                   Lun_usb_read_sector_size(lun - LUN_ID_USB);
 374:../libraries/Storage/ctrl_access.c **** #else
 375:../libraries/Storage/ctrl_access.c ****                                   0;
 376:../libraries/Storage/ctrl_access.c **** #endif
 377:../libraries/Storage/ctrl_access.c **** 
 378:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 379:../libraries/Storage/ctrl_access.c **** 
 380:../libraries/Storage/ctrl_access.c ****   return sector_size;
 381:../libraries/Storage/ctrl_access.c **** }
 164              		.loc 1 381 0
 165 0000 0128     		cmp	r0, #1
 166 0002 8CBF     		ite	hi
 167 0004 0020     		movhi	r0, #0
 168              	.LVL13:
 169 0006 0120     		movls	r0, #1
 170 0008 7047     		bx	lr
 171              		.cfi_endproc
 172              	.LFE146:
 173              		.size	mem_sector_size, .-mem_sector_size
 174 000a 00BF     		.section	.text.mem_unload,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	mem_unload
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv5-d16
 182              		.type	mem_unload, %function
 183              	mem_unload:
 184              	.LFB147:
 382:../libraries/Storage/ctrl_access.c **** 
 383:../libraries/Storage/ctrl_access.c **** 
ARM GAS  /tmp/ccFplMB9.s 			page 11


 384:../libraries/Storage/ctrl_access.c **** bool mem_unload(U8 lun, bool unload)
 385:../libraries/Storage/ctrl_access.c **** {
 185              		.loc 1 385 0
 186              		.cfi_startproc
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190              	.LVL14:
 386:../libraries/Storage/ctrl_access.c ****   bool unloaded;
 387:../libraries/Storage/ctrl_access.c **** #if !MAX_LUN || !defined(Lun_usb_unload)
 388:../libraries/Storage/ctrl_access.c ****   UNUSED(lun);
 389:../libraries/Storage/ctrl_access.c **** #endif
 390:../libraries/Storage/ctrl_access.c **** 
 391:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return false;
 392:../libraries/Storage/ctrl_access.c **** 
 393:../libraries/Storage/ctrl_access.c ****   unloaded =
 394:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 395:../libraries/Storage/ctrl_access.c ****           (lun < MAX_LUN) ?
 396:../libraries/Storage/ctrl_access.c ****               (lun_desc[lun].unload ?
 397:../libraries/Storage/ctrl_access.c ****                   lun_desc[lun].unload(unload) : !unload) :
 191              		.loc 1 397 0
 192 0000 0128     		cmp	r0, #1
 193 0002 01D9     		bls	.L19
 194 0004 0020     		movs	r0, #0
 195              	.LVL15:
 398:../libraries/Storage/ctrl_access.c **** #endif
 399:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 400:../libraries/Storage/ctrl_access.c **** # if defined(Lun_usb_unload)
 401:../libraries/Storage/ctrl_access.c ****               Lun_usb_unload(lun - LUN_ID_USB, unload);
 402:../libraries/Storage/ctrl_access.c **** # else
 403:../libraries/Storage/ctrl_access.c ****               !unload; /* Can not unload: load success, unload fail */
 404:../libraries/Storage/ctrl_access.c **** # endif
 405:../libraries/Storage/ctrl_access.c **** #else
 406:../libraries/Storage/ctrl_access.c ****               false; /* No mem, unload/load fail */
 407:../libraries/Storage/ctrl_access.c **** #endif
 408:../libraries/Storage/ctrl_access.c **** 
 409:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 410:../libraries/Storage/ctrl_access.c **** 
 411:../libraries/Storage/ctrl_access.c ****   return unloaded;
 412:../libraries/Storage/ctrl_access.c **** }
 196              		.loc 1 412 0
 197 0006 7047     		bx	lr
 198              	.LVL16:
 199              	.L19:
 396:../libraries/Storage/ctrl_access.c ****                   lun_desc[lun].unload(unload) : !unload) :
 200              		.loc 1 396 0 discriminator 1
 201 0008 044B     		ldr	r3, .L20
 202 000a 03EB4010 		add	r0, r3, r0, lsl #5
 203              	.LVL17:
 204 000e 8368     		ldr	r3, [r0, #8]
 397:../libraries/Storage/ctrl_access.c **** #endif
 205              		.loc 1 397 0 discriminator 1
 206 0010 0BB1     		cbz	r3, .L17
 397:../libraries/Storage/ctrl_access.c **** #endif
 207              		.loc 1 397 0 is_stmt 0 discriminator 3
 208 0012 0846     		mov	r0, r1
 209 0014 1847     		bx	r3
ARM GAS  /tmp/ccFplMB9.s 			page 12


 210              	.LVL18:
 211              	.L17:
 406:../libraries/Storage/ctrl_access.c **** #endif
 212              		.loc 1 406 0 is_stmt 1 discriminator 4
 213 0016 81F00100 		eor	r0, r1, #1
 214 001a 7047     		bx	lr
 215              	.L21:
 216              		.align	2
 217              	.L20:
 218 001c 00000000 		.word	.LANCHOR0
 219              		.cfi_endproc
 220              	.LFE147:
 221              		.size	mem_unload, .-mem_unload
 222              		.section	.text.mem_wr_protect,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	mem_wr_protect
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
 229              		.fpu fpv5-d16
 230              		.type	mem_wr_protect, %function
 231              	mem_wr_protect:
 232              	.LFB148:
 413:../libraries/Storage/ctrl_access.c **** 
 414:../libraries/Storage/ctrl_access.c **** bool mem_wr_protect(U8 lun)
 415:../libraries/Storage/ctrl_access.c **** {
 233              		.loc 1 415 0
 234              		.cfi_startproc
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238              	.LVL19:
 416:../libraries/Storage/ctrl_access.c ****   bool wr_protect;
 417:../libraries/Storage/ctrl_access.c **** 
 418:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return true;
 419:../libraries/Storage/ctrl_access.c **** 
 420:../libraries/Storage/ctrl_access.c ****   wr_protect =
 421:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 422:../libraries/Storage/ctrl_access.c ****              (lun < MAX_LUN) ? lun_desc[lun].wr_protect() :
 239              		.loc 1 422 0
 240 0000 0128     		cmp	r0, #1
 241 0002 01D9     		bls	.L24
 242              	.LVL20:
 423:../libraries/Storage/ctrl_access.c **** #endif
 424:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 425:../libraries/Storage/ctrl_access.c ****                                  Lun_usb_wr_protect(lun - LUN_ID_USB);
 426:../libraries/Storage/ctrl_access.c **** #else
 427:../libraries/Storage/ctrl_access.c ****                                  true;
 428:../libraries/Storage/ctrl_access.c **** #endif
 429:../libraries/Storage/ctrl_access.c **** 
 430:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 431:../libraries/Storage/ctrl_access.c **** 
 432:../libraries/Storage/ctrl_access.c ****   return wr_protect;
 433:../libraries/Storage/ctrl_access.c **** }
 243              		.loc 1 433 0
 244 0004 0120     		movs	r0, #1
ARM GAS  /tmp/ccFplMB9.s 			page 13


 245              	.LVL21:
 246 0006 7047     		bx	lr
 247              	.LVL22:
 248              	.L24:
 422:../libraries/Storage/ctrl_access.c **** #endif
 249              		.loc 1 422 0 discriminator 2
 250 0008 024B     		ldr	r3, .L25
 251 000a 03EB4010 		add	r0, r3, r0, lsl #5
 252              	.LVL23:
 253 000e C368     		ldr	r3, [r0, #12]
 254 0010 1847     		bx	r3
 255              	.LVL24:
 256              	.L26:
 257 0012 00BF     		.align	2
 258              	.L25:
 259 0014 00000000 		.word	.LANCHOR0
 260              		.cfi_endproc
 261              	.LFE148:
 262              		.size	mem_wr_protect, .-mem_wr_protect
 263              		.section	.text.mem_removal,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	mem_removal
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv5-d16
 271              		.type	mem_removal, %function
 272              	mem_removal:
 273              	.LFB149:
 434:../libraries/Storage/ctrl_access.c **** 
 435:../libraries/Storage/ctrl_access.c **** 
 436:../libraries/Storage/ctrl_access.c **** bool mem_removal(U8 lun)
 437:../libraries/Storage/ctrl_access.c **** {
 274              		.loc 1 437 0
 275              		.cfi_startproc
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279              	.LVL25:
 438:../libraries/Storage/ctrl_access.c ****   bool removal;
 439:../libraries/Storage/ctrl_access.c **** #if MAX_LUN==0
 440:../libraries/Storage/ctrl_access.c ****   UNUSED(lun);
 441:../libraries/Storage/ctrl_access.c **** #endif
 442:../libraries/Storage/ctrl_access.c **** 
 443:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return true;
 444:../libraries/Storage/ctrl_access.c **** 
 445:../libraries/Storage/ctrl_access.c ****   removal =
 446:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 447:../libraries/Storage/ctrl_access.c ****           (lun < MAX_LUN) ? lun_desc[lun].removal() :
 280              		.loc 1 447 0
 281 0000 0128     		cmp	r0, #1
 282 0002 01D9     		bls	.L29
 283              	.LVL26:
 448:../libraries/Storage/ctrl_access.c **** #endif
 449:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 450:../libraries/Storage/ctrl_access.c ****                               Lun_usb_removal();
ARM GAS  /tmp/ccFplMB9.s 			page 14


 451:../libraries/Storage/ctrl_access.c **** #else
 452:../libraries/Storage/ctrl_access.c ****                               true;
 453:../libraries/Storage/ctrl_access.c **** #endif
 454:../libraries/Storage/ctrl_access.c **** 
 455:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 456:../libraries/Storage/ctrl_access.c **** 
 457:../libraries/Storage/ctrl_access.c ****   return removal;
 458:../libraries/Storage/ctrl_access.c **** }
 284              		.loc 1 458 0
 285 0004 0120     		movs	r0, #1
 286              	.LVL27:
 287 0006 7047     		bx	lr
 288              	.LVL28:
 289              	.L29:
 447:../libraries/Storage/ctrl_access.c **** #endif
 290              		.loc 1 447 0 discriminator 2
 291 0008 024B     		ldr	r3, .L30
 292 000a 03EB4010 		add	r0, r3, r0, lsl #5
 293              	.LVL29:
 294 000e 0369     		ldr	r3, [r0, #16]
 295 0010 1847     		bx	r3
 296              	.LVL30:
 297              	.L31:
 298 0012 00BF     		.align	2
 299              	.L30:
 300 0014 00000000 		.word	.LANCHOR0
 301              		.cfi_endproc
 302              	.LFE149:
 303              		.size	mem_removal, .-mem_removal
 304              		.section	.text.mem_name,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	mem_name
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv5-d16
 312              		.type	mem_name, %function
 313              	mem_name:
 314              	.LFB150:
 459:../libraries/Storage/ctrl_access.c **** 
 460:../libraries/Storage/ctrl_access.c **** 
 461:../libraries/Storage/ctrl_access.c **** const char *mem_name(U8 lun)
 462:../libraries/Storage/ctrl_access.c **** {
 315              		.loc 1 462 0
 316              		.cfi_startproc
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320              	.LVL31:
 463:../libraries/Storage/ctrl_access.c **** #if MAX_LUN==0
 464:../libraries/Storage/ctrl_access.c ****   UNUSED(lun);
 465:../libraries/Storage/ctrl_access.c **** #endif
 466:../libraries/Storage/ctrl_access.c ****   return
 467:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 468:../libraries/Storage/ctrl_access.c ****        (lun < MAX_LUN) ? lun_desc[lun].name :
 321              		.loc 1 468 0
ARM GAS  /tmp/ccFplMB9.s 			page 15


 322 0000 0128     		cmp	r0, #1
 323 0002 04D8     		bhi	.L34
 324              		.loc 1 468 0 is_stmt 0 discriminator 1
 325 0004 034B     		ldr	r3, .L35
 326 0006 03EB4010 		add	r0, r3, r0, lsl #5
 327              	.LVL32:
 328 000a C069     		ldr	r0, [r0, #28]
 329 000c 7047     		bx	lr
 330              	.LVL33:
 331              	.L34:
 332              		.loc 1 468 0
 333 000e 0020     		movs	r0, #0
 334              	.LVL34:
 469:../libraries/Storage/ctrl_access.c **** #endif
 470:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 471:../libraries/Storage/ctrl_access.c ****                            LUN_USB_NAME;
 472:../libraries/Storage/ctrl_access.c **** #else
 473:../libraries/Storage/ctrl_access.c ****                            NULL;
 474:../libraries/Storage/ctrl_access.c **** #endif
 475:../libraries/Storage/ctrl_access.c **** }
 335              		.loc 1 475 0 is_stmt 1
 336 0010 7047     		bx	lr
 337              	.L36:
 338 0012 00BF     		.align	2
 339              	.L35:
 340 0014 00000000 		.word	.LANCHOR0
 341              		.cfi_endproc
 342              	.LFE150:
 343              		.size	mem_name, .-mem_name
 344              		.section	.text.memory_2_ram,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	memory_2_ram
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv5-d16
 352              		.type	memory_2_ram, %function
 353              	memory_2_ram:
 354              	.LFB151:
 476:../libraries/Storage/ctrl_access.c **** 
 477:../libraries/Storage/ctrl_access.c **** 
 478:../libraries/Storage/ctrl_access.c **** //! @}
 479:../libraries/Storage/ctrl_access.c **** 
 480:../libraries/Storage/ctrl_access.c **** 
 481:../libraries/Storage/ctrl_access.c **** #if ACCESS_USB == true
 482:../libraries/Storage/ctrl_access.c **** 
 483:../libraries/Storage/ctrl_access.c **** /*! \name MEM <-> USB Interface
 484:../libraries/Storage/ctrl_access.c ****  */
 485:../libraries/Storage/ctrl_access.c **** //! @{
 486:../libraries/Storage/ctrl_access.c **** 
 487:../libraries/Storage/ctrl_access.c **** 
 488:../libraries/Storage/ctrl_access.c **** Ctrl_status memory_2_usb(U8 lun, U32 addr, U16 nb_sector)
 489:../libraries/Storage/ctrl_access.c **** {
 490:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 491:../libraries/Storage/ctrl_access.c **** 
 492:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
ARM GAS  /tmp/ccFplMB9.s 			page 16


 493:../libraries/Storage/ctrl_access.c **** 
 494:../libraries/Storage/ctrl_access.c ****   memory_start_read_action(nb_sector);
 495:../libraries/Storage/ctrl_access.c ****   status =
 496:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 497:../libraries/Storage/ctrl_access.c ****            (lun < MAX_LUN) ? lun_desc[lun].usb_read_10(addr, nb_sector) :
 498:../libraries/Storage/ctrl_access.c **** #endif
 499:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 500:../libraries/Storage/ctrl_access.c ****   memory_stop_read_action();
 501:../libraries/Storage/ctrl_access.c **** 
 502:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 503:../libraries/Storage/ctrl_access.c **** 
 504:../libraries/Storage/ctrl_access.c ****   return status;
 505:../libraries/Storage/ctrl_access.c **** }
 506:../libraries/Storage/ctrl_access.c **** 
 507:../libraries/Storage/ctrl_access.c **** 
 508:../libraries/Storage/ctrl_access.c **** Ctrl_status usb_2_memory(U8 lun, U32 addr, U16 nb_sector)
 509:../libraries/Storage/ctrl_access.c **** {
 510:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 511:../libraries/Storage/ctrl_access.c **** 
 512:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
 513:../libraries/Storage/ctrl_access.c **** 
 514:../libraries/Storage/ctrl_access.c ****   memory_start_write_action(nb_sector);
 515:../libraries/Storage/ctrl_access.c ****   status =
 516:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 517:../libraries/Storage/ctrl_access.c ****            (lun < MAX_LUN) ? lun_desc[lun].usb_write_10(addr, nb_sector) :
 518:../libraries/Storage/ctrl_access.c **** #endif
 519:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 520:../libraries/Storage/ctrl_access.c ****   memory_stop_write_action();
 521:../libraries/Storage/ctrl_access.c **** 
 522:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 523:../libraries/Storage/ctrl_access.c **** 
 524:../libraries/Storage/ctrl_access.c ****   return status;
 525:../libraries/Storage/ctrl_access.c **** }
 526:../libraries/Storage/ctrl_access.c **** 
 527:../libraries/Storage/ctrl_access.c **** 
 528:../libraries/Storage/ctrl_access.c **** //! @}
 529:../libraries/Storage/ctrl_access.c **** 
 530:../libraries/Storage/ctrl_access.c **** #endif  // ACCESS_USB == true
 531:../libraries/Storage/ctrl_access.c **** 
 532:../libraries/Storage/ctrl_access.c **** 
 533:../libraries/Storage/ctrl_access.c **** #if ACCESS_MEM_TO_RAM == true
 534:../libraries/Storage/ctrl_access.c **** 
 535:../libraries/Storage/ctrl_access.c **** /*! \name MEM <-> RAM Interface
 536:../libraries/Storage/ctrl_access.c ****  */
 537:../libraries/Storage/ctrl_access.c **** //! @{
 538:../libraries/Storage/ctrl_access.c **** 
 539:../libraries/Storage/ctrl_access.c **** 
 540:../libraries/Storage/ctrl_access.c **** Ctrl_status memory_2_ram(U8 lun, U32 addr, void *ram, uint32_t numBlocks)
 541:../libraries/Storage/ctrl_access.c **** {
 355              		.loc 1 541 0
 356              		.cfi_startproc
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359              		@ link register save eliminated.
 360              	.LVL35:
 542:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 543:../libraries/Storage/ctrl_access.c **** #if MAX_LUN==0
ARM GAS  /tmp/ccFplMB9.s 			page 17


 544:../libraries/Storage/ctrl_access.c ****   UNUSED(lun);
 545:../libraries/Storage/ctrl_access.c **** #endif
 546:../libraries/Storage/ctrl_access.c **** 
 547:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
 548:../libraries/Storage/ctrl_access.c **** 
 549:../libraries/Storage/ctrl_access.c ****   memory_start_read_action(1);
 550:../libraries/Storage/ctrl_access.c ****   status =
 551:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 552:../libraries/Storage/ctrl_access.c ****            (lun < MAX_LUN) ? lun_desc[lun].mem_2_ram(addr, ram, numBlocks) :
 361              		.loc 1 552 0
 362 0000 0128     		cmp	r0, #1
 541:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 363              		.loc 1 541 0
 364 0002 30B4     		push	{r4, r5}
 365              		.cfi_def_cfa_offset 8
 366              		.cfi_offset 4, -8
 367              		.cfi_offset 5, -4
 541:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 368              		.loc 1 541 0
 369 0004 0446     		mov	r4, r0
 370              		.loc 1 552 0
 371 0006 02D9     		bls	.L40
 372              	.LVL36:
 553:../libraries/Storage/ctrl_access.c **** #endif
 554:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 555:../libraries/Storage/ctrl_access.c ****                              Lun_usb_mem_2_ram(addr, ram, numBlocks);
 556:../libraries/Storage/ctrl_access.c **** #else
 557:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 558:../libraries/Storage/ctrl_access.c **** #endif
 559:../libraries/Storage/ctrl_access.c ****   memory_stop_read_action();
 560:../libraries/Storage/ctrl_access.c **** 
 561:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 562:../libraries/Storage/ctrl_access.c **** 
 563:../libraries/Storage/ctrl_access.c ****   return status;
 564:../libraries/Storage/ctrl_access.c **** }
 373              		.loc 1 564 0
 374 0008 0120     		movs	r0, #1
 375              	.LVL37:
 376 000a 30BC     		pop	{r4, r5}
 377              		.cfi_remember_state
 378              		.cfi_restore 5
 379              		.cfi_restore 4
 380              		.cfi_def_cfa_offset 0
 381 000c 7047     		bx	lr
 382              	.LVL38:
 383              	.L40:
 384              		.cfi_restore_state
 552:../libraries/Storage/ctrl_access.c **** #endif
 385              		.loc 1 552 0 discriminator 1
 386 000e 044D     		ldr	r5, .L41
 387 0010 0846     		mov	r0, r1
 388              	.LVL39:
 389 0012 1146     		mov	r1, r2
 390              	.LVL40:
 391 0014 1A46     		mov	r2, r3
 392              	.LVL41:
 393 0016 05EB4414 		add	r4, r5, r4, lsl #5
ARM GAS  /tmp/ccFplMB9.s 			page 18


 394 001a 6369     		ldr	r3, [r4, #20]
 395              	.LVL42:
 396              		.loc 1 564 0 discriminator 1
 397 001c 30BC     		pop	{r4, r5}
 398              		.cfi_restore 5
 399              		.cfi_restore 4
 400              		.cfi_def_cfa_offset 0
 552:../libraries/Storage/ctrl_access.c **** #endif
 401              		.loc 1 552 0 discriminator 1
 402 001e 1847     		bx	r3
 403              	.LVL43:
 404              	.L42:
 405              		.align	2
 406              	.L41:
 407 0020 00000000 		.word	.LANCHOR0
 408              		.cfi_endproc
 409              	.LFE151:
 410              		.size	memory_2_ram, .-memory_2_ram
 411              		.section	.text.ram_2_memory,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	ram_2_memory
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv5-d16
 419              		.type	ram_2_memory, %function
 420              	ram_2_memory:
 421              	.LFB152:
 565:../libraries/Storage/ctrl_access.c **** 
 566:../libraries/Storage/ctrl_access.c **** 
 567:../libraries/Storage/ctrl_access.c **** Ctrl_status ram_2_memory(U8 lun, U32 addr, const void *ram, uint32_t numBlocks)
 568:../libraries/Storage/ctrl_access.c **** {
 422              		.loc 1 568 0
 423              		.cfi_startproc
 424              		@ args = 0, pretend = 0, frame = 0
 425              		@ frame_needed = 0, uses_anonymous_args = 0
 426              		@ link register save eliminated.
 427              	.LVL44:
 569:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 570:../libraries/Storage/ctrl_access.c **** #if MAX_LUN==0
 571:../libraries/Storage/ctrl_access.c ****   UNUSED(lun);
 572:../libraries/Storage/ctrl_access.c **** #endif
 573:../libraries/Storage/ctrl_access.c **** 
 574:../libraries/Storage/ctrl_access.c ****   if (!Ctrl_access_lock()) return CTRL_FAIL;
 575:../libraries/Storage/ctrl_access.c **** 
 576:../libraries/Storage/ctrl_access.c ****   memory_start_write_action(1);
 577:../libraries/Storage/ctrl_access.c ****   status =
 578:../libraries/Storage/ctrl_access.c **** #if MAX_LUN
 579:../libraries/Storage/ctrl_access.c ****            (lun < MAX_LUN) ? lun_desc[lun].ram_2_mem(addr, ram, numBlocks) :
 428              		.loc 1 579 0
 429 0000 0128     		cmp	r0, #1
 568:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 430              		.loc 1 568 0
 431 0002 30B4     		push	{r4, r5}
 432              		.cfi_def_cfa_offset 8
 433              		.cfi_offset 4, -8
ARM GAS  /tmp/ccFplMB9.s 			page 19


 434              		.cfi_offset 5, -4
 568:../libraries/Storage/ctrl_access.c ****   Ctrl_status status;
 435              		.loc 1 568 0
 436 0004 0446     		mov	r4, r0
 437              		.loc 1 579 0
 438 0006 02D9     		bls	.L46
 439              	.LVL45:
 580:../libraries/Storage/ctrl_access.c **** #endif
 581:../libraries/Storage/ctrl_access.c **** #if LUN_USB == ENABLE
 582:../libraries/Storage/ctrl_access.c ****                              Lun_usb_ram_2_mem(addr, ram, numBlocks);
 583:../libraries/Storage/ctrl_access.c **** #else
 584:../libraries/Storage/ctrl_access.c ****                              CTRL_FAIL;
 585:../libraries/Storage/ctrl_access.c **** #endif
 586:../libraries/Storage/ctrl_access.c ****   memory_stop_write_action();
 587:../libraries/Storage/ctrl_access.c **** 
 588:../libraries/Storage/ctrl_access.c ****   Ctrl_access_unlock();
 589:../libraries/Storage/ctrl_access.c **** 
 590:../libraries/Storage/ctrl_access.c ****   return status;
 591:../libraries/Storage/ctrl_access.c **** }
 440              		.loc 1 591 0
 441 0008 0120     		movs	r0, #1
 442              	.LVL46:
 443 000a 30BC     		pop	{r4, r5}
 444              		.cfi_remember_state
 445              		.cfi_restore 5
 446              		.cfi_restore 4
 447              		.cfi_def_cfa_offset 0
 448 000c 7047     		bx	lr
 449              	.LVL47:
 450              	.L46:
 451              		.cfi_restore_state
 579:../libraries/Storage/ctrl_access.c **** #endif
 452              		.loc 1 579 0 discriminator 1
 453 000e 044D     		ldr	r5, .L47
 454 0010 0846     		mov	r0, r1
 455              	.LVL48:
 456 0012 1146     		mov	r1, r2
 457              	.LVL49:
 458 0014 1A46     		mov	r2, r3
 459              	.LVL50:
 460 0016 05EB4414 		add	r4, r5, r4, lsl #5
 461 001a A369     		ldr	r3, [r4, #24]
 462              	.LVL51:
 463              		.loc 1 591 0 discriminator 1
 464 001c 30BC     		pop	{r4, r5}
 465              		.cfi_restore 5
 466              		.cfi_restore 4
 467              		.cfi_def_cfa_offset 0
 579:../libraries/Storage/ctrl_access.c **** #endif
 468              		.loc 1 579 0 discriminator 1
 469 001e 1847     		bx	r3
 470              	.LVL52:
 471              	.L48:
 472              		.align	2
 473              	.L47:
 474 0020 00000000 		.word	.LANCHOR0
 475              		.cfi_endproc
ARM GAS  /tmp/ccFplMB9.s 			page 20


 476              	.LFE152:
 477              		.size	ram_2_memory, .-ram_2_memory
 478              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 479              		.align	2
 480              		.type	cpu_irq_critical_section_counter, %object
 481              		.size	cpu_irq_critical_section_counter, 4
 482              	cpu_irq_critical_section_counter:
 483 0000 00000000 		.space	4
 484              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 485              		.type	cpu_irq_prev_interrupt_state, %object
 486              		.size	cpu_irq_prev_interrupt_state, 1
 487              	cpu_irq_prev_interrupt_state:
 488 0000 00       		.space	1
 489              		.section	.rodata.lun_desc,"a",%progbits
 490              		.align	2
 491              		.set	.LANCHOR0,. + 0
 492              		.type	lun_desc, %object
 493              		.size	lun_desc, 64
 494              	lun_desc:
 495 0000 00000000 		.word	sd_mmc_test_unit_ready_0
 496 0004 00000000 		.word	sd_mmc_read_capacity_0
 497 0008 00000000 		.word	0
 498 000c 00000000 		.word	sd_mmc_wr_protect_0
 499 0010 00000000 		.word	sd_mmc_removal_0
 500 0014 00000000 		.word	sd_mmc_mem_2_ram_0
 501 0018 00000000 		.word	sd_mmc_ram_2_mem_0
 502 001c 00000000 		.word	.LC0
 503 0020 00000000 		.word	sd_mmc_test_unit_ready_1
 504 0024 00000000 		.word	sd_mmc_read_capacity_1
 505 0028 00000000 		.word	0
 506 002c 00000000 		.word	sd_mmc_wr_protect_1
 507 0030 00000000 		.word	sd_mmc_removal_1
 508 0034 00000000 		.word	sd_mmc_mem_2_ram_1
 509 0038 00000000 		.word	sd_mmc_ram_2_mem_1
 510 003c 18000000 		.word	.LC1
 511              		.section	.rodata.str1.4,"aMS",%progbits,1
 512              		.align	2
 513              	.LC0:
 514 0000 2253442F 		.ascii	"\"SD/MMC Card Slot 0\"\000"
 514      4D4D4320 
 514      43617264 
 514      20536C6F 
 514      74203022 
 515 0015 000000   		.space	3
 516              	.LC1:
 517 0018 2253442F 		.ascii	"\"SD/MMC Card Slot 1\"\000"
 517      4D4D4320 
 517      43617264 
 517      20536C6F 
 517      74203122 
 518              		.text
 519              	.Letext0:
 520              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 521              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 522              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 523              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 524              		.file 6 "/usr/include/newlib/sys/lock.h"
ARM GAS  /tmp/ccFplMB9.s 			page 21


 525              		.file 7 "/usr/include/newlib/sys/_types.h"
 526              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 527              		.file 9 "/usr/include/newlib/sys/reent.h"
 528              		.file 10 "/usr/include/newlib/stdlib.h"
 529              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 530              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/compiler.h"
 531              		.file 13 "../libraries/Storage/ctrl_access.h"
 532              		.section	.debug_info,"",%progbits
 533              	.Ldebug_info0:
 534 0000 880D0000 		.4byte	0xd88
 535 0004 0400     		.2byte	0x4
 536 0006 00000000 		.4byte	.Ldebug_abbrev0
 537 000a 04       		.byte	0x4
 538 000b 01       		.uleb128 0x1
 539 000c 27030000 		.4byte	.LASF165
 540 0010 0C       		.byte	0xc
 541 0011 15060000 		.4byte	.LASF166
 542 0015 04070000 		.4byte	.LASF167
 543 0019 00000000 		.4byte	.Ldebug_ranges0+0
 544 001d 00000000 		.4byte	0
 545 0021 00000000 		.4byte	.Ldebug_line0
 546 0025 02       		.uleb128 0x2
 547 0026 04       		.byte	0x4
 548 0027 05       		.byte	0x5
 549 0028 696E7400 		.ascii	"int\000"
 550 002c 03       		.uleb128 0x3
 551 002d 04       		.byte	0x4
 552 002e 07       		.byte	0x7
 553 002f A8050000 		.4byte	.LASF0
 554 0033 03       		.uleb128 0x3
 555 0034 01       		.byte	0x1
 556 0035 06       		.byte	0x6
 557 0036 F9000000 		.4byte	.LASF1
 558 003a 04       		.uleb128 0x4
 559 003b 39000000 		.4byte	.LASF5
 560 003f 02       		.byte	0x2
 561 0040 1D       		.byte	0x1d
 562 0041 45000000 		.4byte	0x45
 563 0045 03       		.uleb128 0x3
 564 0046 01       		.byte	0x1
 565 0047 08       		.byte	0x8
 566 0048 6C040000 		.4byte	.LASF2
 567 004c 03       		.uleb128 0x3
 568 004d 02       		.byte	0x2
 569 004e 05       		.byte	0x5
 570 004f 0C000000 		.4byte	.LASF3
 571 0053 03       		.uleb128 0x3
 572 0054 02       		.byte	0x2
 573 0055 07       		.byte	0x7
 574 0056 FD050000 		.4byte	.LASF4
 575 005a 04       		.uleb128 0x4
 576 005b C1050000 		.4byte	.LASF6
 577 005f 02       		.byte	0x2
 578 0060 3F       		.byte	0x3f
 579 0061 65000000 		.4byte	0x65
 580 0065 03       		.uleb128 0x3
 581 0066 04       		.byte	0x4
ARM GAS  /tmp/ccFplMB9.s 			page 22


 582 0067 05       		.byte	0x5
 583 0068 5D010000 		.4byte	.LASF7
 584 006c 04       		.uleb128 0x4
 585 006d DB010000 		.4byte	.LASF8
 586 0071 02       		.byte	0x2
 587 0072 41       		.byte	0x41
 588 0073 77000000 		.4byte	0x77
 589 0077 03       		.uleb128 0x3
 590 0078 04       		.byte	0x4
 591 0079 07       		.byte	0x7
 592 007a 51020000 		.4byte	.LASF9
 593 007e 03       		.uleb128 0x3
 594 007f 08       		.byte	0x8
 595 0080 05       		.byte	0x5
 596 0081 92010000 		.4byte	.LASF10
 597 0085 03       		.uleb128 0x3
 598 0086 08       		.byte	0x8
 599 0087 07       		.byte	0x7
 600 0088 0B010000 		.4byte	.LASF11
 601 008c 04       		.uleb128 0x4
 602 008d A6060000 		.4byte	.LASF12
 603 0091 03       		.byte	0x3
 604 0092 18       		.byte	0x18
 605 0093 3A000000 		.4byte	0x3a
 606 0097 04       		.uleb128 0x4
 607 0098 64040000 		.4byte	.LASF13
 608 009c 03       		.byte	0x3
 609 009d 2C       		.byte	0x2c
 610 009e 5A000000 		.4byte	0x5a
 611 00a2 05       		.uleb128 0x5
 612 00a3 97000000 		.4byte	0x97
 613 00a7 04       		.uleb128 0x4
 614 00a8 74060000 		.4byte	.LASF14
 615 00ac 03       		.byte	0x3
 616 00ad 30       		.byte	0x30
 617 00ae 6C000000 		.4byte	0x6c
 618 00b2 05       		.uleb128 0x5
 619 00b3 A7000000 		.4byte	0xa7
 620 00b7 06       		.uleb128 0x6
 621 00b8 04       		.byte	0x4
 622 00b9 03       		.uleb128 0x3
 623 00ba 04       		.byte	0x4
 624 00bb 07       		.byte	0x7
 625 00bc 01030000 		.4byte	.LASF15
 626 00c0 07       		.uleb128 0x7
 627 00c1 A2000000 		.4byte	.LASF16
 628 00c5 04       		.byte	0x4
 629 00c6 6508     		.2byte	0x865
 630 00c8 A2000000 		.4byte	0xa2
 631 00cc 08       		.uleb128 0x8
 632 00cd 31020000 		.4byte	.LASF17
 633 00d1 05       		.byte	0x5
 634 00d2 3A       		.byte	0x3a
 635 00d3 A7000000 		.4byte	0xa7
 636 00d7 04       		.uleb128 0x4
 637 00d8 1E040000 		.4byte	.LASF18
 638 00dc 06       		.byte	0x6
ARM GAS  /tmp/ccFplMB9.s 			page 23


 639 00dd 07       		.byte	0x7
 640 00de 25000000 		.4byte	0x25
 641 00e2 04       		.uleb128 0x4
 642 00e3 EB000000 		.4byte	.LASF19
 643 00e7 07       		.byte	0x7
 644 00e8 2C       		.byte	0x2c
 645 00e9 65000000 		.4byte	0x65
 646 00ed 04       		.uleb128 0x4
 647 00ee 16000000 		.4byte	.LASF20
 648 00f2 07       		.byte	0x7
 649 00f3 72       		.byte	0x72
 650 00f4 65000000 		.4byte	0x65
 651 00f8 09       		.uleb128 0x9
 652 00f9 FD030000 		.4byte	.LASF21
 653 00fd 08       		.byte	0x8
 654 00fe 6501     		.2byte	0x165
 655 0100 2C000000 		.4byte	0x2c
 656 0104 0A       		.uleb128 0xa
 657 0105 04       		.byte	0x4
 658 0106 07       		.byte	0x7
 659 0107 A6       		.byte	0xa6
 660 0108 23010000 		.4byte	0x123
 661 010c 0B       		.uleb128 0xb
 662 010d A7020000 		.4byte	.LASF22
 663 0111 07       		.byte	0x7
 664 0112 A8       		.byte	0xa8
 665 0113 F8000000 		.4byte	0xf8
 666 0117 0B       		.uleb128 0xb
 667 0118 2A020000 		.4byte	.LASF23
 668 011c 07       		.byte	0x7
 669 011d A9       		.byte	0xa9
 670 011e 23010000 		.4byte	0x123
 671 0122 00       		.byte	0
 672 0123 0C       		.uleb128 0xc
 673 0124 45000000 		.4byte	0x45
 674 0128 33010000 		.4byte	0x133
 675 012c 0D       		.uleb128 0xd
 676 012d B9000000 		.4byte	0xb9
 677 0131 03       		.byte	0x3
 678 0132 00       		.byte	0
 679 0133 0E       		.uleb128 0xe
 680 0134 08       		.byte	0x8
 681 0135 07       		.byte	0x7
 682 0136 A3       		.byte	0xa3
 683 0137 54010000 		.4byte	0x154
 684 013b 0F       		.uleb128 0xf
 685 013c 54050000 		.4byte	.LASF24
 686 0140 07       		.byte	0x7
 687 0141 A5       		.byte	0xa5
 688 0142 25000000 		.4byte	0x25
 689 0146 00       		.byte	0
 690 0147 0F       		.uleb128 0xf
 691 0148 5C050000 		.4byte	.LASF25
 692 014c 07       		.byte	0x7
 693 014d AA       		.byte	0xaa
 694 014e 04010000 		.4byte	0x104
 695 0152 04       		.byte	0x4
ARM GAS  /tmp/ccFplMB9.s 			page 24


 696 0153 00       		.byte	0
 697 0154 04       		.uleb128 0x4
 698 0155 D7040000 		.4byte	.LASF26
 699 0159 07       		.byte	0x7
 700 015a AB       		.byte	0xab
 701 015b 33010000 		.4byte	0x133
 702 015f 04       		.uleb128 0x4
 703 0160 97040000 		.4byte	.LASF27
 704 0164 07       		.byte	0x7
 705 0165 AF       		.byte	0xaf
 706 0166 D7000000 		.4byte	0xd7
 707 016a 04       		.uleb128 0x4
 708 016b F9020000 		.4byte	.LASF28
 709 016f 09       		.byte	0x9
 710 0170 16       		.byte	0x16
 711 0171 77000000 		.4byte	0x77
 712 0175 10       		.uleb128 0x10
 713 0176 0C020000 		.4byte	.LASF33
 714 017a 18       		.byte	0x18
 715 017b 09       		.byte	0x9
 716 017c 2D       		.byte	0x2d
 717 017d C8010000 		.4byte	0x1c8
 718 0181 0F       		.uleb128 0xf
 719 0182 D1050000 		.4byte	.LASF29
 720 0186 09       		.byte	0x9
 721 0187 2F       		.byte	0x2f
 722 0188 C8010000 		.4byte	0x1c8
 723 018c 00       		.byte	0
 724 018d 11       		.uleb128 0x11
 725 018e 5F6B00   		.ascii	"_k\000"
 726 0191 09       		.byte	0x9
 727 0192 30       		.byte	0x30
 728 0193 25000000 		.4byte	0x25
 729 0197 04       		.byte	0x4
 730 0198 0F       		.uleb128 0xf
 731 0199 3F050000 		.4byte	.LASF30
 732 019d 09       		.byte	0x9
 733 019e 30       		.byte	0x30
 734 019f 25000000 		.4byte	0x25
 735 01a3 08       		.byte	0x8
 736 01a4 0F       		.uleb128 0xf
 737 01a5 CB050000 		.4byte	.LASF31
 738 01a9 09       		.byte	0x9
 739 01aa 30       		.byte	0x30
 740 01ab 25000000 		.4byte	0x25
 741 01af 0C       		.byte	0xc
 742 01b0 0F       		.uleb128 0xf
 743 01b1 9B060000 		.4byte	.LASF32
 744 01b5 09       		.byte	0x9
 745 01b6 30       		.byte	0x30
 746 01b7 25000000 		.4byte	0x25
 747 01bb 10       		.byte	0x10
 748 01bc 11       		.uleb128 0x11
 749 01bd 5F7800   		.ascii	"_x\000"
 750 01c0 09       		.byte	0x9
 751 01c1 31       		.byte	0x31
 752 01c2 CE010000 		.4byte	0x1ce
ARM GAS  /tmp/ccFplMB9.s 			page 25


 753 01c6 14       		.byte	0x14
 754 01c7 00       		.byte	0
 755 01c8 12       		.uleb128 0x12
 756 01c9 04       		.byte	0x4
 757 01ca 75010000 		.4byte	0x175
 758 01ce 0C       		.uleb128 0xc
 759 01cf 6A010000 		.4byte	0x16a
 760 01d3 DE010000 		.4byte	0x1de
 761 01d7 0D       		.uleb128 0xd
 762 01d8 B9000000 		.4byte	0xb9
 763 01dc 00       		.byte	0
 764 01dd 00       		.byte	0
 765 01de 10       		.uleb128 0x10
 766 01df 25020000 		.4byte	.LASF34
 767 01e3 24       		.byte	0x24
 768 01e4 09       		.byte	0x9
 769 01e5 35       		.byte	0x35
 770 01e6 57020000 		.4byte	0x257
 771 01ea 0F       		.uleb128 0xf
 772 01eb E2000000 		.4byte	.LASF35
 773 01ef 09       		.byte	0x9
 774 01f0 37       		.byte	0x37
 775 01f1 25000000 		.4byte	0x25
 776 01f5 00       		.byte	0
 777 01f6 0F       		.uleb128 0xf
 778 01f7 52070000 		.4byte	.LASF36
 779 01fb 09       		.byte	0x9
 780 01fc 38       		.byte	0x38
 781 01fd 25000000 		.4byte	0x25
 782 0201 04       		.byte	0x4
 783 0202 0F       		.uleb128 0xf
 784 0203 22010000 		.4byte	.LASF37
 785 0207 09       		.byte	0x9
 786 0208 39       		.byte	0x39
 787 0209 25000000 		.4byte	0x25
 788 020d 08       		.byte	0x8
 789 020e 0F       		.uleb128 0xf
 790 020f 73070000 		.4byte	.LASF38
 791 0213 09       		.byte	0x9
 792 0214 3A       		.byte	0x3a
 793 0215 25000000 		.4byte	0x25
 794 0219 0C       		.byte	0xc
 795 021a 0F       		.uleb128 0xf
 796 021b C8030000 		.4byte	.LASF39
 797 021f 09       		.byte	0x9
 798 0220 3B       		.byte	0x3b
 799 0221 25000000 		.4byte	0x25
 800 0225 10       		.byte	0x10
 801 0226 0F       		.uleb128 0xf
 802 0227 E6020000 		.4byte	.LASF40
 803 022b 09       		.byte	0x9
 804 022c 3C       		.byte	0x3c
 805 022d 25000000 		.4byte	0x25
 806 0231 14       		.byte	0x14
 807 0232 0F       		.uleb128 0xf
 808 0233 6A050000 		.4byte	.LASF41
 809 0237 09       		.byte	0x9
ARM GAS  /tmp/ccFplMB9.s 			page 26


 810 0238 3D       		.byte	0x3d
 811 0239 25000000 		.4byte	0x25
 812 023d 18       		.byte	0x18
 813 023e 0F       		.uleb128 0xf
 814 023f A0040000 		.4byte	.LASF42
 815 0243 09       		.byte	0x9
 816 0244 3E       		.byte	0x3e
 817 0245 25000000 		.4byte	0x25
 818 0249 1C       		.byte	0x1c
 819 024a 0F       		.uleb128 0xf
 820 024b 38070000 		.4byte	.LASF43
 821 024f 09       		.byte	0x9
 822 0250 3F       		.byte	0x3f
 823 0251 25000000 		.4byte	0x25
 824 0255 20       		.byte	0x20
 825 0256 00       		.byte	0
 826 0257 13       		.uleb128 0x13
 827 0258 31010000 		.4byte	.LASF44
 828 025c 0801     		.2byte	0x108
 829 025e 09       		.byte	0x9
 830 025f 48       		.byte	0x48
 831 0260 97020000 		.4byte	0x297
 832 0264 0F       		.uleb128 0xf
 833 0265 1E000000 		.4byte	.LASF45
 834 0269 09       		.byte	0x9
 835 026a 49       		.byte	0x49
 836 026b 97020000 		.4byte	0x297
 837 026f 00       		.byte	0
 838 0270 0F       		.uleb128 0xf
 839 0271 00000000 		.4byte	.LASF46
 840 0275 09       		.byte	0x9
 841 0276 4A       		.byte	0x4a
 842 0277 97020000 		.4byte	0x297
 843 027b 80       		.byte	0x80
 844 027c 14       		.uleb128 0x14
 845 027d F4050000 		.4byte	.LASF47
 846 0281 09       		.byte	0x9
 847 0282 4C       		.byte	0x4c
 848 0283 6A010000 		.4byte	0x16a
 849 0287 0001     		.2byte	0x100
 850 0289 14       		.uleb128 0x14
 851 028a 79010000 		.4byte	.LASF48
 852 028e 09       		.byte	0x9
 853 028f 4F       		.byte	0x4f
 854 0290 6A010000 		.4byte	0x16a
 855 0294 0401     		.2byte	0x104
 856 0296 00       		.byte	0
 857 0297 0C       		.uleb128 0xc
 858 0298 B7000000 		.4byte	0xb7
 859 029c A7020000 		.4byte	0x2a7
 860 02a0 0D       		.uleb128 0xd
 861 02a1 B9000000 		.4byte	0xb9
 862 02a5 1F       		.byte	0x1f
 863 02a6 00       		.byte	0
 864 02a7 13       		.uleb128 0x13
 865 02a8 D1030000 		.4byte	.LASF49
 866 02ac 9001     		.2byte	0x190
ARM GAS  /tmp/ccFplMB9.s 			page 27


 867 02ae 09       		.byte	0x9
 868 02af 5B       		.byte	0x5b
 869 02b0 E5020000 		.4byte	0x2e5
 870 02b4 0F       		.uleb128 0xf
 871 02b5 D1050000 		.4byte	.LASF29
 872 02b9 09       		.byte	0x9
 873 02ba 5C       		.byte	0x5c
 874 02bb E5020000 		.4byte	0x2e5
 875 02bf 00       		.byte	0
 876 02c0 0F       		.uleb128 0xf
 877 02c1 0C050000 		.4byte	.LASF50
 878 02c5 09       		.byte	0x9
 879 02c6 5D       		.byte	0x5d
 880 02c7 25000000 		.4byte	0x25
 881 02cb 04       		.byte	0x4
 882 02cc 0F       		.uleb128 0xf
 883 02cd D6010000 		.4byte	.LASF51
 884 02d1 09       		.byte	0x9
 885 02d2 5F       		.byte	0x5f
 886 02d3 EB020000 		.4byte	0x2eb
 887 02d7 08       		.byte	0x8
 888 02d8 0F       		.uleb128 0xf
 889 02d9 31010000 		.4byte	.LASF44
 890 02dd 09       		.byte	0x9
 891 02de 60       		.byte	0x60
 892 02df 57020000 		.4byte	0x257
 893 02e3 88       		.byte	0x88
 894 02e4 00       		.byte	0
 895 02e5 12       		.uleb128 0x12
 896 02e6 04       		.byte	0x4
 897 02e7 A7020000 		.4byte	0x2a7
 898 02eb 0C       		.uleb128 0xc
 899 02ec FB020000 		.4byte	0x2fb
 900 02f0 FB020000 		.4byte	0x2fb
 901 02f4 0D       		.uleb128 0xd
 902 02f5 B9000000 		.4byte	0xb9
 903 02f9 1F       		.byte	0x1f
 904 02fa 00       		.byte	0
 905 02fb 12       		.uleb128 0x12
 906 02fc 04       		.byte	0x4
 907 02fd 01030000 		.4byte	0x301
 908 0301 15       		.uleb128 0x15
 909 0302 10       		.uleb128 0x10
 910 0303 B7040000 		.4byte	.LASF52
 911 0307 08       		.byte	0x8
 912 0308 09       		.byte	0x9
 913 0309 73       		.byte	0x73
 914 030a 27030000 		.4byte	0x327
 915 030e 0F       		.uleb128 0xf
 916 030f 58040000 		.4byte	.LASF53
 917 0313 09       		.byte	0x9
 918 0314 74       		.byte	0x74
 919 0315 27030000 		.4byte	0x327
 920 0319 00       		.byte	0
 921 031a 0F       		.uleb128 0xf
 922 031b A2050000 		.4byte	.LASF54
 923 031f 09       		.byte	0x9
ARM GAS  /tmp/ccFplMB9.s 			page 28


 924 0320 75       		.byte	0x75
 925 0321 25000000 		.4byte	0x25
 926 0325 04       		.byte	0x4
 927 0326 00       		.byte	0
 928 0327 12       		.uleb128 0x12
 929 0328 04       		.byte	0x4
 930 0329 45000000 		.4byte	0x45
 931 032d 10       		.uleb128 0x10
 932 032e E9040000 		.4byte	.LASF55
 933 0332 68       		.byte	0x68
 934 0333 09       		.byte	0x9
 935 0334 B3       		.byte	0xb3
 936 0335 57040000 		.4byte	0x457
 937 0339 11       		.uleb128 0x11
 938 033a 5F7000   		.ascii	"_p\000"
 939 033d 09       		.byte	0x9
 940 033e B4       		.byte	0xb4
 941 033f 27030000 		.4byte	0x327
 942 0343 00       		.byte	0
 943 0344 11       		.uleb128 0x11
 944 0345 5F7200   		.ascii	"_r\000"
 945 0348 09       		.byte	0x9
 946 0349 B5       		.byte	0xb5
 947 034a 25000000 		.4byte	0x25
 948 034e 04       		.byte	0x4
 949 034f 11       		.uleb128 0x11
 950 0350 5F7700   		.ascii	"_w\000"
 951 0353 09       		.byte	0x9
 952 0354 B6       		.byte	0xb6
 953 0355 25000000 		.4byte	0x25
 954 0359 08       		.byte	0x8
 955 035a 0F       		.uleb128 0xf
 956 035b 72010000 		.4byte	.LASF56
 957 035f 09       		.byte	0x9
 958 0360 B7       		.byte	0xb7
 959 0361 4C000000 		.4byte	0x4c
 960 0365 0C       		.byte	0xc
 961 0366 0F       		.uleb128 0xf
 962 0367 63020000 		.4byte	.LASF57
 963 036b 09       		.byte	0x9
 964 036c B8       		.byte	0xb8
 965 036d 4C000000 		.4byte	0x4c
 966 0371 0E       		.byte	0xe
 967 0372 11       		.uleb128 0x11
 968 0373 5F626600 		.ascii	"_bf\000"
 969 0377 09       		.byte	0x9
 970 0378 B9       		.byte	0xb9
 971 0379 02030000 		.4byte	0x302
 972 037d 10       		.byte	0x10
 973 037e 0F       		.uleb128 0xf
 974 037f 94000000 		.4byte	.LASF58
 975 0383 09       		.byte	0x9
 976 0384 BA       		.byte	0xba
 977 0385 25000000 		.4byte	0x25
 978 0389 18       		.byte	0x18
 979 038a 0F       		.uleb128 0xf
 980 038b 3F010000 		.4byte	.LASF59
ARM GAS  /tmp/ccFplMB9.s 			page 29


 981 038f 09       		.byte	0x9
 982 0390 C1       		.byte	0xc1
 983 0391 B7000000 		.4byte	0xb7
 984 0395 1C       		.byte	0x1c
 985 0396 0F       		.uleb128 0xf
 986 0397 1F020000 		.4byte	.LASF60
 987 039b 09       		.byte	0x9
 988 039c C3       		.byte	0xc3
 989 039d C4050000 		.4byte	0x5c4
 990 03a1 20       		.byte	0x20
 991 03a2 0F       		.uleb128 0xf
 992 03a3 DF020000 		.4byte	.LASF61
 993 03a7 09       		.byte	0x9
 994 03a8 C5       		.byte	0xc5
 995 03a9 EE050000 		.4byte	0x5ee
 996 03ad 24       		.byte	0x24
 997 03ae 0F       		.uleb128 0xf
 998 03af 64050000 		.4byte	.LASF62
 999 03b3 09       		.byte	0x9
 1000 03b4 C8       		.byte	0xc8
 1001 03b5 12060000 		.4byte	0x612
 1002 03b9 28       		.byte	0x28
 1003 03ba 0F       		.uleb128 0xf
 1004 03bb F2000000 		.4byte	.LASF63
 1005 03bf 09       		.byte	0x9
 1006 03c0 C9       		.byte	0xc9
 1007 03c1 2C060000 		.4byte	0x62c
 1008 03c5 2C       		.byte	0x2c
 1009 03c6 11       		.uleb128 0x11
 1010 03c7 5F756200 		.ascii	"_ub\000"
 1011 03cb 09       		.byte	0x9
 1012 03cc CC       		.byte	0xcc
 1013 03cd 02030000 		.4byte	0x302
 1014 03d1 30       		.byte	0x30
 1015 03d2 11       		.uleb128 0x11
 1016 03d3 5F757000 		.ascii	"_up\000"
 1017 03d7 09       		.byte	0x9
 1018 03d8 CD       		.byte	0xcd
 1019 03d9 27030000 		.4byte	0x327
 1020 03dd 38       		.byte	0x38
 1021 03de 11       		.uleb128 0x11
 1022 03df 5F757200 		.ascii	"_ur\000"
 1023 03e3 09       		.byte	0x9
 1024 03e4 CE       		.byte	0xce
 1025 03e5 25000000 		.4byte	0x25
 1026 03e9 3C       		.byte	0x3c
 1027 03ea 0F       		.uleb128 0xf
 1028 03eb 05010000 		.4byte	.LASF64
 1029 03ef 09       		.byte	0x9
 1030 03f0 D1       		.byte	0xd1
 1031 03f1 32060000 		.4byte	0x632
 1032 03f5 40       		.byte	0x40
 1033 03f6 0F       		.uleb128 0xf
 1034 03f7 F6060000 		.4byte	.LASF65
 1035 03fb 09       		.byte	0x9
 1036 03fc D2       		.byte	0xd2
 1037 03fd 42060000 		.4byte	0x642
ARM GAS  /tmp/ccFplMB9.s 			page 30


 1038 0401 43       		.byte	0x43
 1039 0402 11       		.uleb128 0x11
 1040 0403 5F6C6200 		.ascii	"_lb\000"
 1041 0407 09       		.byte	0x9
 1042 0408 D5       		.byte	0xd5
 1043 0409 02030000 		.4byte	0x302
 1044 040d 44       		.byte	0x44
 1045 040e 0F       		.uleb128 0xf
 1046 040f 99050000 		.4byte	.LASF66
 1047 0413 09       		.byte	0x9
 1048 0414 D8       		.byte	0xd8
 1049 0415 25000000 		.4byte	0x25
 1050 0419 4C       		.byte	0x4c
 1051 041a 0F       		.uleb128 0xf
 1052 041b AF010000 		.4byte	.LASF67
 1053 041f 09       		.byte	0x9
 1054 0420 D9       		.byte	0xd9
 1055 0421 E2000000 		.4byte	0xe2
 1056 0425 50       		.byte	0x50
 1057 0426 0F       		.uleb128 0xf
 1058 0427 6E020000 		.4byte	.LASF68
 1059 042b 09       		.byte	0x9
 1060 042c DC       		.byte	0xdc
 1061 042d 75040000 		.4byte	0x475
 1062 0431 54       		.byte	0x54
 1063 0432 0F       		.uleb128 0xf
 1064 0433 C9020000 		.4byte	.LASF69
 1065 0437 09       		.byte	0x9
 1066 0438 E0       		.byte	0xe0
 1067 0439 5F010000 		.4byte	0x15f
 1068 043d 58       		.byte	0x58
 1069 043e 0F       		.uleb128 0xf
 1070 043f F1040000 		.4byte	.LASF70
 1071 0443 09       		.byte	0x9
 1072 0444 E2       		.byte	0xe2
 1073 0445 54010000 		.4byte	0x154
 1074 0449 5C       		.byte	0x5c
 1075 044a 0F       		.uleb128 0xf
 1076 044b BE040000 		.4byte	.LASF71
 1077 044f 09       		.byte	0x9
 1078 0450 E3       		.byte	0xe3
 1079 0451 25000000 		.4byte	0x25
 1080 0455 64       		.byte	0x64
 1081 0456 00       		.byte	0
 1082 0457 16       		.uleb128 0x16
 1083 0458 25000000 		.4byte	0x25
 1084 045c 75040000 		.4byte	0x475
 1085 0460 17       		.uleb128 0x17
 1086 0461 75040000 		.4byte	0x475
 1087 0465 17       		.uleb128 0x17
 1088 0466 B7000000 		.4byte	0xb7
 1089 046a 17       		.uleb128 0x17
 1090 046b B2050000 		.4byte	0x5b2
 1091 046f 17       		.uleb128 0x17
 1092 0470 25000000 		.4byte	0x25
 1093 0474 00       		.byte	0
 1094 0475 12       		.uleb128 0x12
ARM GAS  /tmp/ccFplMB9.s 			page 31


 1095 0476 04       		.byte	0x4
 1096 0477 80040000 		.4byte	0x480
 1097 047b 18       		.uleb128 0x18
 1098 047c 75040000 		.4byte	0x475
 1099 0480 19       		.uleb128 0x19
 1100 0481 47050000 		.4byte	.LASF72
 1101 0485 2804     		.2byte	0x428
 1102 0487 09       		.byte	0x9
 1103 0488 3802     		.2byte	0x238
 1104 048a B2050000 		.4byte	0x5b2
 1105 048e 1A       		.uleb128 0x1a
 1106 048f 83050000 		.4byte	.LASF73
 1107 0493 09       		.byte	0x9
 1108 0494 3A02     		.2byte	0x23a
 1109 0496 25000000 		.4byte	0x25
 1110 049a 00       		.byte	0
 1111 049b 1A       		.uleb128 0x1a
 1112 049c 81010000 		.4byte	.LASF74
 1113 04a0 09       		.byte	0x9
 1114 04a1 3F02     		.2byte	0x23f
 1115 04a3 99060000 		.4byte	0x699
 1116 04a7 04       		.byte	0x4
 1117 04a8 1A       		.uleb128 0x1a
 1118 04a9 41020000 		.4byte	.LASF75
 1119 04ad 09       		.byte	0x9
 1120 04ae 3F02     		.2byte	0x23f
 1121 04b0 99060000 		.4byte	0x699
 1122 04b4 08       		.byte	0x8
 1123 04b5 1A       		.uleb128 0x1a
 1124 04b6 04020000 		.4byte	.LASF76
 1125 04ba 09       		.byte	0x9
 1126 04bb 3F02     		.2byte	0x23f
 1127 04bd 99060000 		.4byte	0x699
 1128 04c1 0C       		.byte	0xc
 1129 04c2 1A       		.uleb128 0x1a
 1130 04c3 07050000 		.4byte	.LASF77
 1131 04c7 09       		.byte	0x9
 1132 04c8 4102     		.2byte	0x241
 1133 04ca 25000000 		.4byte	0x25
 1134 04ce 10       		.byte	0x10
 1135 04cf 1A       		.uleb128 0x1a
 1136 04d0 2E000000 		.4byte	.LASF78
 1137 04d4 09       		.byte	0x9
 1138 04d5 4202     		.2byte	0x242
 1139 04d7 7B080000 		.4byte	0x87b
 1140 04db 14       		.byte	0x14
 1141 04dc 1A       		.uleb128 0x1a
 1142 04dd 62060000 		.4byte	.LASF79
 1143 04e1 09       		.byte	0x9
 1144 04e2 4402     		.2byte	0x244
 1145 04e4 25000000 		.4byte	0x25
 1146 04e8 30       		.byte	0x30
 1147 04e9 1A       		.uleb128 0x1a
 1148 04ea 11050000 		.4byte	.LASF80
 1149 04ee 09       		.byte	0x9
 1150 04ef 4502     		.2byte	0x245
 1151 04f1 E8050000 		.4byte	0x5e8
ARM GAS  /tmp/ccFplMB9.s 			page 32


 1152 04f5 34       		.byte	0x34
 1153 04f6 1A       		.uleb128 0x1a
 1154 04f7 E3030000 		.4byte	.LASF81
 1155 04fb 09       		.byte	0x9
 1156 04fc 4702     		.2byte	0x247
 1157 04fe 25000000 		.4byte	0x25
 1158 0502 38       		.byte	0x38
 1159 0503 1A       		.uleb128 0x1a
 1160 0504 35050000 		.4byte	.LASF82
 1161 0508 09       		.byte	0x9
 1162 0509 4902     		.2byte	0x249
 1163 050b 96080000 		.4byte	0x896
 1164 050f 3C       		.byte	0x3c
 1165 0510 1A       		.uleb128 0x1a
 1166 0511 9F020000 		.4byte	.LASF83
 1167 0515 09       		.byte	0x9
 1168 0516 4C02     		.2byte	0x24c
 1169 0518 C8010000 		.4byte	0x1c8
 1170 051c 40       		.byte	0x40
 1171 051d 1A       		.uleb128 0x1a
 1172 051e 88010000 		.4byte	.LASF84
 1173 0522 09       		.byte	0x9
 1174 0523 4D02     		.2byte	0x24d
 1175 0525 25000000 		.4byte	0x25
 1176 0529 44       		.byte	0x44
 1177 052a 1A       		.uleb128 0x1a
 1178 052b 6E070000 		.4byte	.LASF85
 1179 052f 09       		.byte	0x9
 1180 0530 4E02     		.2byte	0x24e
 1181 0532 C8010000 		.4byte	0x1c8
 1182 0536 48       		.byte	0x48
 1183 0537 1A       		.uleb128 0x1a
 1184 0538 C6040000 		.4byte	.LASF86
 1185 053c 09       		.byte	0x9
 1186 053d 4F02     		.2byte	0x24f
 1187 053f 9C080000 		.4byte	0x89c
 1188 0543 4C       		.byte	0x4c
 1189 0544 1A       		.uleb128 0x1a
 1190 0545 49020000 		.4byte	.LASF87
 1191 0549 09       		.byte	0x9
 1192 054a 5202     		.2byte	0x252
 1193 054c 25000000 		.4byte	0x25
 1194 0550 50       		.byte	0x50
 1195 0551 1A       		.uleb128 0x1a
 1196 0552 A7010000 		.4byte	.LASF88
 1197 0556 09       		.byte	0x9
 1198 0557 5302     		.2byte	0x253
 1199 0559 B2050000 		.4byte	0x5b2
 1200 055d 54       		.byte	0x54
 1201 055e 1A       		.uleb128 0x1a
 1202 055f B4020000 		.4byte	.LASF89
 1203 0563 09       		.byte	0x9
 1204 0564 7602     		.2byte	0x276
 1205 0566 59080000 		.4byte	0x859
 1206 056a 58       		.byte	0x58
 1207 056b 1B       		.uleb128 0x1b
 1208 056c D1030000 		.4byte	.LASF49
ARM GAS  /tmp/ccFplMB9.s 			page 33


 1209 0570 09       		.byte	0x9
 1210 0571 7A02     		.2byte	0x27a
 1211 0573 E5020000 		.4byte	0x2e5
 1212 0577 4801     		.2byte	0x148
 1213 0579 1B       		.uleb128 0x1b
 1214 057a 4E000000 		.4byte	.LASF90
 1215 057e 09       		.byte	0x9
 1216 057f 7B02     		.2byte	0x27b
 1217 0581 A7020000 		.4byte	0x2a7
 1218 0585 4C01     		.2byte	0x14c
 1219 0587 1B       		.uleb128 0x1b
 1220 0588 B8060000 		.4byte	.LASF91
 1221 058c 09       		.byte	0x9
 1222 058d 7F02     		.2byte	0x27f
 1223 058f AD080000 		.4byte	0x8ad
 1224 0593 DC02     		.2byte	0x2dc
 1225 0595 1B       		.uleb128 0x1b
 1226 0596 55010000 		.4byte	.LASF92
 1227 059a 09       		.byte	0x9
 1228 059b 8402     		.2byte	0x284
 1229 059d 5E060000 		.4byte	0x65e
 1230 05a1 E002     		.2byte	0x2e0
 1231 05a3 1B       		.uleb128 0x1b
 1232 05a4 2C010000 		.4byte	.LASF93
 1233 05a8 09       		.byte	0x9
 1234 05a9 8502     		.2byte	0x285
 1235 05ab B9080000 		.4byte	0x8b9
 1236 05af EC02     		.2byte	0x2ec
 1237 05b1 00       		.byte	0
 1238 05b2 12       		.uleb128 0x12
 1239 05b3 04       		.byte	0x4
 1240 05b4 B8050000 		.4byte	0x5b8
 1241 05b8 03       		.uleb128 0x3
 1242 05b9 01       		.byte	0x1
 1243 05ba 08       		.byte	0x8
 1244 05bb 7E050000 		.4byte	.LASF94
 1245 05bf 18       		.uleb128 0x18
 1246 05c0 B8050000 		.4byte	0x5b8
 1247 05c4 12       		.uleb128 0x12
 1248 05c5 04       		.byte	0x4
 1249 05c6 57040000 		.4byte	0x457
 1250 05ca 16       		.uleb128 0x16
 1251 05cb 25000000 		.4byte	0x25
 1252 05cf E8050000 		.4byte	0x5e8
 1253 05d3 17       		.uleb128 0x17
 1254 05d4 75040000 		.4byte	0x475
 1255 05d8 17       		.uleb128 0x17
 1256 05d9 B7000000 		.4byte	0xb7
 1257 05dd 17       		.uleb128 0x17
 1258 05de E8050000 		.4byte	0x5e8
 1259 05e2 17       		.uleb128 0x17
 1260 05e3 25000000 		.4byte	0x25
 1261 05e7 00       		.byte	0
 1262 05e8 12       		.uleb128 0x12
 1263 05e9 04       		.byte	0x4
 1264 05ea BF050000 		.4byte	0x5bf
 1265 05ee 12       		.uleb128 0x12
ARM GAS  /tmp/ccFplMB9.s 			page 34


 1266 05ef 04       		.byte	0x4
 1267 05f0 CA050000 		.4byte	0x5ca
 1268 05f4 16       		.uleb128 0x16
 1269 05f5 ED000000 		.4byte	0xed
 1270 05f9 12060000 		.4byte	0x612
 1271 05fd 17       		.uleb128 0x17
 1272 05fe 75040000 		.4byte	0x475
 1273 0602 17       		.uleb128 0x17
 1274 0603 B7000000 		.4byte	0xb7
 1275 0607 17       		.uleb128 0x17
 1276 0608 ED000000 		.4byte	0xed
 1277 060c 17       		.uleb128 0x17
 1278 060d 25000000 		.4byte	0x25
 1279 0611 00       		.byte	0
 1280 0612 12       		.uleb128 0x12
 1281 0613 04       		.byte	0x4
 1282 0614 F4050000 		.4byte	0x5f4
 1283 0618 16       		.uleb128 0x16
 1284 0619 25000000 		.4byte	0x25
 1285 061d 2C060000 		.4byte	0x62c
 1286 0621 17       		.uleb128 0x17
 1287 0622 75040000 		.4byte	0x475
 1288 0626 17       		.uleb128 0x17
 1289 0627 B7000000 		.4byte	0xb7
 1290 062b 00       		.byte	0
 1291 062c 12       		.uleb128 0x12
 1292 062d 04       		.byte	0x4
 1293 062e 18060000 		.4byte	0x618
 1294 0632 0C       		.uleb128 0xc
 1295 0633 45000000 		.4byte	0x45
 1296 0637 42060000 		.4byte	0x642
 1297 063b 0D       		.uleb128 0xd
 1298 063c B9000000 		.4byte	0xb9
 1299 0640 02       		.byte	0x2
 1300 0641 00       		.byte	0
 1301 0642 0C       		.uleb128 0xc
 1302 0643 45000000 		.4byte	0x45
 1303 0647 52060000 		.4byte	0x652
 1304 064b 0D       		.uleb128 0xd
 1305 064c B9000000 		.4byte	0xb9
 1306 0650 00       		.byte	0
 1307 0651 00       		.byte	0
 1308 0652 09       		.uleb128 0x9
 1309 0653 D0040000 		.4byte	.LASF95
 1310 0657 09       		.byte	0x9
 1311 0658 1D01     		.2byte	0x11d
 1312 065a 2D030000 		.4byte	0x32d
 1313 065e 1C       		.uleb128 0x1c
 1314 065f A0060000 		.4byte	.LASF96
 1315 0663 0C       		.byte	0xc
 1316 0664 09       		.byte	0x9
 1317 0665 2101     		.2byte	0x121
 1318 0667 93060000 		.4byte	0x693
 1319 066b 1A       		.uleb128 0x1a
 1320 066c D1050000 		.4byte	.LASF29
 1321 0670 09       		.byte	0x9
 1322 0671 2301     		.2byte	0x123
ARM GAS  /tmp/ccFplMB9.s 			page 35


 1323 0673 93060000 		.4byte	0x693
 1324 0677 00       		.byte	0
 1325 0678 1A       		.uleb128 0x1a
 1326 0679 74020000 		.4byte	.LASF97
 1327 067d 09       		.byte	0x9
 1328 067e 2401     		.2byte	0x124
 1329 0680 25000000 		.4byte	0x25
 1330 0684 04       		.byte	0x4
 1331 0685 1A       		.uleb128 0x1a
 1332 0686 7A040000 		.4byte	.LASF98
 1333 068a 09       		.byte	0x9
 1334 068b 2501     		.2byte	0x125
 1335 068d 99060000 		.4byte	0x699
 1336 0691 08       		.byte	0x8
 1337 0692 00       		.byte	0
 1338 0693 12       		.uleb128 0x12
 1339 0694 04       		.byte	0x4
 1340 0695 5E060000 		.4byte	0x65e
 1341 0699 12       		.uleb128 0x12
 1342 069a 04       		.byte	0x4
 1343 069b 52060000 		.4byte	0x652
 1344 069f 1C       		.uleb128 0x1c
 1345 06a0 26000000 		.4byte	.LASF99
 1346 06a4 0E       		.byte	0xe
 1347 06a5 09       		.byte	0x9
 1348 06a6 3D01     		.2byte	0x13d
 1349 06a8 D4060000 		.4byte	0x6d4
 1350 06ac 1A       		.uleb128 0x1a
 1351 06ad 4E050000 		.4byte	.LASF100
 1352 06b1 09       		.byte	0x9
 1353 06b2 3E01     		.2byte	0x13e
 1354 06b4 D4060000 		.4byte	0x6d4
 1355 06b8 00       		.byte	0
 1356 06b9 1A       		.uleb128 0x1a
 1357 06ba D9020000 		.4byte	.LASF101
 1358 06be 09       		.byte	0x9
 1359 06bf 3F01     		.2byte	0x13f
 1360 06c1 D4060000 		.4byte	0x6d4
 1361 06c5 06       		.byte	0x6
 1362 06c6 1A       		.uleb128 0x1a
 1363 06c7 10060000 		.4byte	.LASF102
 1364 06cb 09       		.byte	0x9
 1365 06cc 4001     		.2byte	0x140
 1366 06ce 53000000 		.4byte	0x53
 1367 06d2 0C       		.byte	0xc
 1368 06d3 00       		.byte	0
 1369 06d4 0C       		.uleb128 0xc
 1370 06d5 53000000 		.4byte	0x53
 1371 06d9 E4060000 		.4byte	0x6e4
 1372 06dd 0D       		.uleb128 0xd
 1373 06de B9000000 		.4byte	0xb9
 1374 06e2 02       		.byte	0x2
 1375 06e3 00       		.byte	0
 1376 06e4 1D       		.uleb128 0x1d
 1377 06e5 D0       		.byte	0xd0
 1378 06e6 09       		.byte	0x9
 1379 06e7 5702     		.2byte	0x257
ARM GAS  /tmp/ccFplMB9.s 			page 36


 1380 06e9 E5070000 		.4byte	0x7e5
 1381 06ed 1A       		.uleb128 0x1a
 1382 06ee 7D060000 		.4byte	.LASF103
 1383 06f2 09       		.byte	0x9
 1384 06f3 5902     		.2byte	0x259
 1385 06f5 2C000000 		.4byte	0x2c
 1386 06f9 00       		.byte	0
 1387 06fa 1A       		.uleb128 0x1a
 1388 06fb E7050000 		.4byte	.LASF104
 1389 06ff 09       		.byte	0x9
 1390 0700 5A02     		.2byte	0x25a
 1391 0702 B2050000 		.4byte	0x5b2
 1392 0706 04       		.byte	0x4
 1393 0707 1A       		.uleb128 0x1a
 1394 0708 92020000 		.4byte	.LASF105
 1395 070c 09       		.byte	0x9
 1396 070d 5B02     		.2byte	0x25b
 1397 070f E5070000 		.4byte	0x7e5
 1398 0713 08       		.byte	0x8
 1399 0714 1A       		.uleb128 0x1a
 1400 0715 43070000 		.4byte	.LASF106
 1401 0719 09       		.byte	0x9
 1402 071a 5C02     		.2byte	0x25c
 1403 071c DE010000 		.4byte	0x1de
 1404 0720 24       		.byte	0x24
 1405 0721 1A       		.uleb128 0x1a
 1406 0722 EE030000 		.4byte	.LASF107
 1407 0726 09       		.byte	0x9
 1408 0727 5D02     		.2byte	0x25d
 1409 0729 25000000 		.4byte	0x25
 1410 072d 48       		.byte	0x48
 1411 072e 1A       		.uleb128 0x1a
 1412 072f 7B020000 		.4byte	.LASF108
 1413 0733 09       		.byte	0x9
 1414 0734 5E02     		.2byte	0x25e
 1415 0736 85000000 		.4byte	0x85
 1416 073a 50       		.byte	0x50
 1417 073b 1A       		.uleb128 0x1a
 1418 073c 5B070000 		.4byte	.LASF109
 1419 0740 09       		.byte	0x9
 1420 0741 5F02     		.2byte	0x25f
 1421 0743 9F060000 		.4byte	0x69f
 1422 0747 58       		.byte	0x58
 1423 0748 1A       		.uleb128 0x1a
 1424 0749 FA040000 		.4byte	.LASF110
 1425 074d 09       		.byte	0x9
 1426 074e 6002     		.2byte	0x260
 1427 0750 54010000 		.4byte	0x154
 1428 0754 68       		.byte	0x68
 1429 0755 1A       		.uleb128 0x1a
 1430 0756 60070000 		.4byte	.LASF111
 1431 075a 09       		.byte	0x9
 1432 075b 6102     		.2byte	0x261
 1433 075d 54010000 		.4byte	0x154
 1434 0761 70       		.byte	0x70
 1435 0762 1A       		.uleb128 0x1a
 1436 0763 D4000000 		.4byte	.LASF112
ARM GAS  /tmp/ccFplMB9.s 			page 37


 1437 0767 09       		.byte	0x9
 1438 0768 6202     		.2byte	0x262
 1439 076a 54010000 		.4byte	0x154
 1440 076e 78       		.byte	0x78
 1441 076f 1A       		.uleb128 0x1a
 1442 0770 AE060000 		.4byte	.LASF113
 1443 0774 09       		.byte	0x9
 1444 0775 6302     		.2byte	0x263
 1445 0777 F5070000 		.4byte	0x7f5
 1446 077b 80       		.byte	0x80
 1447 077c 1A       		.uleb128 0x1a
 1448 077d 86020000 		.4byte	.LASF114
 1449 0781 09       		.byte	0x9
 1450 0782 6402     		.2byte	0x264
 1451 0784 05080000 		.4byte	0x805
 1452 0788 88       		.byte	0x88
 1453 0789 1A       		.uleb128 0x1a
 1454 078a 42060000 		.4byte	.LASF115
 1455 078e 09       		.byte	0x9
 1456 078f 6502     		.2byte	0x265
 1457 0791 25000000 		.4byte	0x25
 1458 0795 A0       		.byte	0xa0
 1459 0796 1A       		.uleb128 0x1a
 1460 0797 C8010000 		.4byte	.LASF116
 1461 079b 09       		.byte	0x9
 1462 079c 6602     		.2byte	0x266
 1463 079e 54010000 		.4byte	0x154
 1464 07a2 A4       		.byte	0xa4
 1465 07a3 1A       		.uleb128 0x1a
 1466 07a4 B8000000 		.4byte	.LASF117
 1467 07a8 09       		.byte	0x9
 1468 07a9 6702     		.2byte	0x267
 1469 07ab 54010000 		.4byte	0x154
 1470 07af AC       		.byte	0xac
 1471 07b0 1A       		.uleb128 0x1a
 1472 07b1 B7010000 		.4byte	.LASF118
 1473 07b5 09       		.byte	0x9
 1474 07b6 6802     		.2byte	0x268
 1475 07b8 54010000 		.4byte	0x154
 1476 07bc B4       		.byte	0xb4
 1477 07bd 1A       		.uleb128 0x1a
 1478 07be 57000000 		.4byte	.LASF119
 1479 07c2 09       		.byte	0x9
 1480 07c3 6902     		.2byte	0x269
 1481 07c5 54010000 		.4byte	0x154
 1482 07c9 BC       		.byte	0xbc
 1483 07ca 1A       		.uleb128 0x1a
 1484 07cb 66000000 		.4byte	.LASF120
 1485 07cf 09       		.byte	0x9
 1486 07d0 6A02     		.2byte	0x26a
 1487 07d2 54010000 		.4byte	0x154
 1488 07d6 C4       		.byte	0xc4
 1489 07d7 1A       		.uleb128 0x1a
 1490 07d8 8E040000 		.4byte	.LASF121
 1491 07dc 09       		.byte	0x9
 1492 07dd 6B02     		.2byte	0x26b
 1493 07df 25000000 		.4byte	0x25
ARM GAS  /tmp/ccFplMB9.s 			page 38


 1494 07e3 CC       		.byte	0xcc
 1495 07e4 00       		.byte	0
 1496 07e5 0C       		.uleb128 0xc
 1497 07e6 B8050000 		.4byte	0x5b8
 1498 07ea F5070000 		.4byte	0x7f5
 1499 07ee 0D       		.uleb128 0xd
 1500 07ef B9000000 		.4byte	0xb9
 1501 07f3 19       		.byte	0x19
 1502 07f4 00       		.byte	0
 1503 07f5 0C       		.uleb128 0xc
 1504 07f6 B8050000 		.4byte	0x5b8
 1505 07fa 05080000 		.4byte	0x805
 1506 07fe 0D       		.uleb128 0xd
 1507 07ff B9000000 		.4byte	0xb9
 1508 0803 07       		.byte	0x7
 1509 0804 00       		.byte	0
 1510 0805 0C       		.uleb128 0xc
 1511 0806 B8050000 		.4byte	0x5b8
 1512 080a 15080000 		.4byte	0x815
 1513 080e 0D       		.uleb128 0xd
 1514 080f B9000000 		.4byte	0xb9
 1515 0813 17       		.byte	0x17
 1516 0814 00       		.byte	0
 1517 0815 1D       		.uleb128 0x1d
 1518 0816 F0       		.byte	0xf0
 1519 0817 09       		.byte	0x9
 1520 0818 7002     		.2byte	0x270
 1521 081a 39080000 		.4byte	0x839
 1522 081e 1A       		.uleb128 0x1a
 1523 081f AD020000 		.4byte	.LASF122
 1524 0823 09       		.byte	0x9
 1525 0824 7302     		.2byte	0x273
 1526 0826 39080000 		.4byte	0x839
 1527 082a 00       		.byte	0
 1528 082b 1A       		.uleb128 0x1a
 1529 082c F0020000 		.4byte	.LASF123
 1530 0830 09       		.byte	0x9
 1531 0831 7402     		.2byte	0x274
 1532 0833 49080000 		.4byte	0x849
 1533 0837 78       		.byte	0x78
 1534 0838 00       		.byte	0
 1535 0839 0C       		.uleb128 0xc
 1536 083a 27030000 		.4byte	0x327
 1537 083e 49080000 		.4byte	0x849
 1538 0842 0D       		.uleb128 0xd
 1539 0843 B9000000 		.4byte	0xb9
 1540 0847 1D       		.byte	0x1d
 1541 0848 00       		.byte	0
 1542 0849 0C       		.uleb128 0xc
 1543 084a 2C000000 		.4byte	0x2c
 1544 084e 59080000 		.4byte	0x859
 1545 0852 0D       		.uleb128 0xd
 1546 0853 B9000000 		.4byte	0xb9
 1547 0857 1D       		.byte	0x1d
 1548 0858 00       		.byte	0
 1549 0859 1E       		.uleb128 0x1e
 1550 085a F0       		.byte	0xf0
ARM GAS  /tmp/ccFplMB9.s 			page 39


 1551 085b 09       		.byte	0x9
 1552 085c 5502     		.2byte	0x255
 1553 085e 7B080000 		.4byte	0x87b
 1554 0862 1F       		.uleb128 0x1f
 1555 0863 47050000 		.4byte	.LASF72
 1556 0867 09       		.byte	0x9
 1557 0868 6C02     		.2byte	0x26c
 1558 086a E4060000 		.4byte	0x6e4
 1559 086e 1F       		.uleb128 0x1f
 1560 086f FC060000 		.4byte	.LASF124
 1561 0873 09       		.byte	0x9
 1562 0874 7502     		.2byte	0x275
 1563 0876 15080000 		.4byte	0x815
 1564 087a 00       		.byte	0
 1565 087b 0C       		.uleb128 0xc
 1566 087c B8050000 		.4byte	0x5b8
 1567 0880 8B080000 		.4byte	0x88b
 1568 0884 0D       		.uleb128 0xd
 1569 0885 B9000000 		.4byte	0xb9
 1570 0889 18       		.byte	0x18
 1571 088a 00       		.byte	0
 1572 088b 20       		.uleb128 0x20
 1573 088c 96080000 		.4byte	0x896
 1574 0890 17       		.uleb128 0x17
 1575 0891 75040000 		.4byte	0x475
 1576 0895 00       		.byte	0
 1577 0896 12       		.uleb128 0x12
 1578 0897 04       		.byte	0x4
 1579 0898 8B080000 		.4byte	0x88b
 1580 089c 12       		.uleb128 0x12
 1581 089d 04       		.byte	0x4
 1582 089e C8010000 		.4byte	0x1c8
 1583 08a2 20       		.uleb128 0x20
 1584 08a3 AD080000 		.4byte	0x8ad
 1585 08a7 17       		.uleb128 0x17
 1586 08a8 25000000 		.4byte	0x25
 1587 08ac 00       		.byte	0
 1588 08ad 12       		.uleb128 0x12
 1589 08ae 04       		.byte	0x4
 1590 08af B3080000 		.4byte	0x8b3
 1591 08b3 12       		.uleb128 0x12
 1592 08b4 04       		.byte	0x4
 1593 08b5 A2080000 		.4byte	0x8a2
 1594 08b9 0C       		.uleb128 0xc
 1595 08ba 52060000 		.4byte	0x652
 1596 08be C9080000 		.4byte	0x8c9
 1597 08c2 0D       		.uleb128 0xd
 1598 08c3 B9000000 		.4byte	0xb9
 1599 08c7 02       		.byte	0x2
 1600 08c8 00       		.byte	0
 1601 08c9 07       		.uleb128 0x7
 1602 08ca F8010000 		.4byte	.LASF125
 1603 08ce 09       		.byte	0x9
 1604 08cf FD02     		.2byte	0x2fd
 1605 08d1 75040000 		.4byte	0x475
 1606 08d5 07       		.uleb128 0x7
 1607 08d6 4F060000 		.4byte	.LASF126
ARM GAS  /tmp/ccFplMB9.s 			page 40


 1608 08da 09       		.byte	0x9
 1609 08db FE02     		.2byte	0x2fe
 1610 08dd 7B040000 		.4byte	0x47b
 1611 08e1 12       		.uleb128 0x12
 1612 08e2 04       		.byte	0x4
 1613 08e3 E7080000 		.4byte	0x8e7
 1614 08e7 21       		.uleb128 0x21
 1615 08e8 08       		.uleb128 0x8
 1616 08e9 D9030000 		.4byte	.LASF127
 1617 08ed 0A       		.byte	0xa
 1618 08ee 5F       		.byte	0x5f
 1619 08ef B2050000 		.4byte	0x5b2
 1620 08f3 08       		.uleb128 0x8
 1621 08f4 0A040000 		.4byte	.LASF128
 1622 08f8 0B       		.byte	0xb
 1623 08f9 8F       		.byte	0x8f
 1624 08fa 05090000 		.4byte	0x905
 1625 08fe 03       		.uleb128 0x3
 1626 08ff 01       		.byte	0x1
 1627 0900 02       		.byte	0x2
 1628 0901 5E040000 		.4byte	.LASF129
 1629 0905 05       		.uleb128 0x5
 1630 0906 FE080000 		.4byte	0x8fe
 1631 090a 22       		.uleb128 0x22
 1632 090b D5060000 		.4byte	.LASF130
 1633 090f 0B       		.byte	0xb
 1634 0910 94       		.byte	0x94
 1635 0911 B2000000 		.4byte	0xb2
 1636 0915 05       		.uleb128 0x5
 1637 0916 03       		.byte	0x3
 1638 0917 00000000 		.4byte	cpu_irq_critical_section_counter
 1639 091b 22       		.uleb128 0x22
 1640 091c 77000000 		.4byte	.LASF131
 1641 0920 0B       		.byte	0xb
 1642 0921 95       		.byte	0x95
 1643 0922 05090000 		.4byte	0x905
 1644 0926 05       		.uleb128 0x5
 1645 0927 03       		.byte	0x3
 1646 0928 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1647 092c 23       		.uleb128 0x23
 1648 092d 553800   		.ascii	"U8\000"
 1649 0930 0C       		.byte	0xc
 1650 0931 0101     		.2byte	0x101
 1651 0933 8C000000 		.4byte	0x8c
 1652 0937 23       		.uleb128 0x23
 1653 0938 55333200 		.ascii	"U32\000"
 1654 093c 0C       		.byte	0xc
 1655 093d 0701     		.2byte	0x107
 1656 093f A7000000 		.4byte	0xa7
 1657 0943 03       		.uleb128 0x3
 1658 0944 04       		.byte	0x4
 1659 0945 04       		.byte	0x4
 1660 0946 04040000 		.4byte	.LASF132
 1661 094a 03       		.uleb128 0x3
 1662 094b 08       		.byte	0x8
 1663 094c 04       		.byte	0x4
 1664 094d A0010000 		.4byte	.LASF133
ARM GAS  /tmp/ccFplMB9.s 			page 41


 1665 0951 12       		.uleb128 0x12
 1666 0952 04       		.byte	0x4
 1667 0953 37090000 		.4byte	0x937
 1668 0957 24       		.uleb128 0x24
 1669 0958 01       		.byte	0x1
 1670 0959 45000000 		.4byte	0x45
 1671 095d 0D       		.byte	0xd
 1672 095e 55       		.byte	0x55
 1673 095f 7C090000 		.4byte	0x97c
 1674 0963 25       		.uleb128 0x25
 1675 0964 91060000 		.4byte	.LASF134
 1676 0968 00       		.byte	0
 1677 0969 25       		.uleb128 0x25
 1678 096a 74050000 		.4byte	.LASF135
 1679 096e 01       		.byte	0x1
 1680 096f 25       		.uleb128 0x25
 1681 0970 B9020000 		.4byte	.LASF136
 1682 0974 02       		.byte	0x2
 1683 0975 25       		.uleb128 0x25
 1684 0976 CB060000 		.4byte	.LASF137
 1685 097a 03       		.byte	0x3
 1686 097b 00       		.byte	0
 1687 097c 04       		.uleb128 0x4
 1688 097d B5050000 		.4byte	.LASF138
 1689 0981 0D       		.byte	0xd
 1690 0982 5A       		.byte	0x5a
 1691 0983 57090000 		.4byte	0x957
 1692 0987 0E       		.uleb128 0xe
 1693 0988 20       		.byte	0x20
 1694 0989 01       		.byte	0x1
 1695 098a AE       		.byte	0xae
 1696 098b F0090000 		.4byte	0x9f0
 1697 098f 0F       		.uleb128 0xf
 1698 0990 3C040000 		.4byte	.LASF139
 1699 0994 01       		.byte	0x1
 1700 0995 B0       		.byte	0xb0
 1701 0996 FA090000 		.4byte	0x9fa
 1702 099a 00       		.byte	0
 1703 099b 0F       		.uleb128 0xf
 1704 099c 80040000 		.4byte	.LASF140
 1705 09a0 01       		.byte	0x1
 1706 09a1 B1       		.byte	0xb1
 1707 09a2 0F0A0000 		.4byte	0xa0f
 1708 09a6 04       		.byte	0x4
 1709 09a7 0F       		.uleb128 0xf
 1710 09a8 E2040000 		.4byte	.LASF141
 1711 09ac 01       		.byte	0x1
 1712 09ad B2       		.byte	0xb2
 1713 09ae 240A0000 		.4byte	0xa24
 1714 09b2 08       		.byte	0x8
 1715 09b3 0F       		.uleb128 0xf
 1716 09b4 43000000 		.4byte	.LASF142
 1717 09b8 01       		.byte	0x1
 1718 09b9 B3       		.byte	0xb3
 1719 09ba 2F0A0000 		.4byte	0xa2f
 1720 09be 0C       		.byte	0xc
 1721 09bf 0F       		.uleb128 0xf
ARM GAS  /tmp/ccFplMB9.s 			page 42


 1722 09c0 1F030000 		.4byte	.LASF143
 1723 09c4 01       		.byte	0x1
 1724 09c5 B4       		.byte	0xb4
 1725 09c6 2F0A0000 		.4byte	0xa2f
 1726 09ca 10       		.byte	0x10
 1727 09cb 0F       		.uleb128 0xf
 1728 09cc CF020000 		.4byte	.LASF144
 1729 09d0 01       		.byte	0x1
 1730 09d1 BA       		.byte	0xba
 1731 09d2 4E0A0000 		.4byte	0xa4e
 1732 09d6 14       		.byte	0x14
 1733 09d7 0F       		.uleb128 0xf
 1734 09d8 15030000 		.4byte	.LASF145
 1735 09dc 01       		.byte	0x1
 1736 09dd BB       		.byte	0xbb
 1737 09de 6D0A0000 		.4byte	0xa6d
 1738 09e2 18       		.byte	0x18
 1739 09e3 0F       		.uleb128 0xf
 1740 09e4 69020000 		.4byte	.LASF146
 1741 09e8 01       		.byte	0x1
 1742 09e9 BD       		.byte	0xbd
 1743 09ea E8050000 		.4byte	0x5e8
 1744 09ee 1C       		.byte	0x1c
 1745 09ef 00       		.byte	0
 1746 09f0 18       		.uleb128 0x18
 1747 09f1 87090000 		.4byte	0x987
 1748 09f5 26       		.uleb128 0x26
 1749 09f6 7C090000 		.4byte	0x97c
 1750 09fa 12       		.uleb128 0x12
 1751 09fb 04       		.byte	0x4
 1752 09fc F5090000 		.4byte	0x9f5
 1753 0a00 16       		.uleb128 0x16
 1754 0a01 7C090000 		.4byte	0x97c
 1755 0a05 0F0A0000 		.4byte	0xa0f
 1756 0a09 17       		.uleb128 0x17
 1757 0a0a 51090000 		.4byte	0x951
 1758 0a0e 00       		.byte	0
 1759 0a0f 12       		.uleb128 0x12
 1760 0a10 04       		.byte	0x4
 1761 0a11 000A0000 		.4byte	0xa00
 1762 0a15 16       		.uleb128 0x16
 1763 0a16 FE080000 		.4byte	0x8fe
 1764 0a1a 240A0000 		.4byte	0xa24
 1765 0a1e 17       		.uleb128 0x17
 1766 0a1f FE080000 		.4byte	0x8fe
 1767 0a23 00       		.byte	0
 1768 0a24 12       		.uleb128 0x12
 1769 0a25 04       		.byte	0x4
 1770 0a26 150A0000 		.4byte	0xa15
 1771 0a2a 26       		.uleb128 0x26
 1772 0a2b FE080000 		.4byte	0x8fe
 1773 0a2f 12       		.uleb128 0x12
 1774 0a30 04       		.byte	0x4
 1775 0a31 2A0A0000 		.4byte	0xa2a
 1776 0a35 16       		.uleb128 0x16
 1777 0a36 7C090000 		.4byte	0x97c
 1778 0a3a 4E0A0000 		.4byte	0xa4e
ARM GAS  /tmp/ccFplMB9.s 			page 43


 1779 0a3e 17       		.uleb128 0x17
 1780 0a3f 37090000 		.4byte	0x937
 1781 0a43 17       		.uleb128 0x17
 1782 0a44 B7000000 		.4byte	0xb7
 1783 0a48 17       		.uleb128 0x17
 1784 0a49 37090000 		.4byte	0x937
 1785 0a4d 00       		.byte	0
 1786 0a4e 12       		.uleb128 0x12
 1787 0a4f 04       		.byte	0x4
 1788 0a50 350A0000 		.4byte	0xa35
 1789 0a54 16       		.uleb128 0x16
 1790 0a55 7C090000 		.4byte	0x97c
 1791 0a59 6D0A0000 		.4byte	0xa6d
 1792 0a5d 17       		.uleb128 0x17
 1793 0a5e 37090000 		.4byte	0x937
 1794 0a62 17       		.uleb128 0x17
 1795 0a63 E1080000 		.4byte	0x8e1
 1796 0a67 17       		.uleb128 0x17
 1797 0a68 37090000 		.4byte	0x937
 1798 0a6c 00       		.byte	0
 1799 0a6d 12       		.uleb128 0x12
 1800 0a6e 04       		.byte	0x4
 1801 0a6f 540A0000 		.4byte	0xa54
 1802 0a73 0C       		.uleb128 0xc
 1803 0a74 F0090000 		.4byte	0x9f0
 1804 0a78 830A0000 		.4byte	0xa83
 1805 0a7c 0D       		.uleb128 0xd
 1806 0a7d B9000000 		.4byte	0xb9
 1807 0a81 01       		.byte	0x1
 1808 0a82 00       		.byte	0
 1809 0a83 18       		.uleb128 0x18
 1810 0a84 730A0000 		.4byte	0xa73
 1811 0a88 22       		.uleb128 0x22
 1812 0a89 AF000000 		.4byte	.LASF147
 1813 0a8d 01       		.byte	0x1
 1814 0a8e BE       		.byte	0xbe
 1815 0a8f 830A0000 		.4byte	0xa83
 1816 0a93 05       		.uleb128 0x5
 1817 0a94 03       		.byte	0x3
 1818 0a95 00000000 		.4byte	lun_desc
 1819 0a99 27       		.uleb128 0x27
 1820 0a9a AA040000 		.4byte	.LASF151
 1821 0a9e 01       		.byte	0x1
 1822 0a9f 3702     		.2byte	0x237
 1823 0aa1 7C090000 		.4byte	0x97c
 1824 0aa5 00000000 		.4byte	.LFB152
 1825 0aa9 24000000 		.4byte	.LFE152-.LFB152
 1826 0aad 01       		.uleb128 0x1
 1827 0aae 9C       		.byte	0x9c
 1828 0aaf 1F0B0000 		.4byte	0xb1f
 1829 0ab3 28       		.uleb128 0x28
 1830 0ab4 6C756E00 		.ascii	"lun\000"
 1831 0ab8 01       		.byte	0x1
 1832 0ab9 3702     		.2byte	0x237
 1833 0abb 2C090000 		.4byte	0x92c
 1834 0abf 00000000 		.4byte	.LLST20
 1835 0ac3 29       		.uleb128 0x29
ARM GAS  /tmp/ccFplMB9.s 			page 44


 1836 0ac4 9D000000 		.4byte	.LASF148
 1837 0ac8 01       		.byte	0x1
 1838 0ac9 3702     		.2byte	0x237
 1839 0acb 37090000 		.4byte	0x937
 1840 0acf 3A000000 		.4byte	.LLST21
 1841 0ad3 28       		.uleb128 0x28
 1842 0ad4 72616D00 		.ascii	"ram\000"
 1843 0ad8 01       		.byte	0x1
 1844 0ad9 3702     		.2byte	0x237
 1845 0adb E1080000 		.4byte	0x8e1
 1846 0adf 66000000 		.4byte	.LLST22
 1847 0ae3 29       		.uleb128 0x29
 1848 0ae4 38060000 		.4byte	.LASF149
 1849 0ae8 01       		.byte	0x1
 1850 0ae9 3702     		.2byte	0x237
 1851 0aeb A7000000 		.4byte	0xa7
 1852 0aef 92000000 		.4byte	.LLST23
 1853 0af3 2A       		.uleb128 0x2a
 1854 0af4 8A060000 		.4byte	.LASF150
 1855 0af8 01       		.byte	0x1
 1856 0af9 3902     		.2byte	0x239
 1857 0afb 7C090000 		.4byte	0x97c
 1858 0aff BE000000 		.4byte	.LLST24
 1859 0b03 2B       		.uleb128 0x2b
 1860 0b04 20000000 		.4byte	.LVL52
 1861 0b08 2C       		.uleb128 0x2c
 1862 0b09 01       		.uleb128 0x1
 1863 0b0a 50       		.byte	0x50
 1864 0b0b 03       		.uleb128 0x3
 1865 0b0c F3       		.byte	0xf3
 1866 0b0d 01       		.uleb128 0x1
 1867 0b0e 51       		.byte	0x51
 1868 0b0f 2C       		.uleb128 0x2c
 1869 0b10 01       		.uleb128 0x1
 1870 0b11 51       		.byte	0x51
 1871 0b12 03       		.uleb128 0x3
 1872 0b13 F3       		.byte	0xf3
 1873 0b14 01       		.uleb128 0x1
 1874 0b15 52       		.byte	0x52
 1875 0b16 2C       		.uleb128 0x2c
 1876 0b17 01       		.uleb128 0x1
 1877 0b18 52       		.byte	0x52
 1878 0b19 03       		.uleb128 0x3
 1879 0b1a F3       		.byte	0xf3
 1880 0b1b 01       		.uleb128 0x1
 1881 0b1c 53       		.byte	0x53
 1882 0b1d 00       		.byte	0
 1883 0b1e 00       		.byte	0
 1884 0b1f 27       		.uleb128 0x27
 1885 0b20 C7000000 		.4byte	.LASF152
 1886 0b24 01       		.byte	0x1
 1887 0b25 1C02     		.2byte	0x21c
 1888 0b27 7C090000 		.4byte	0x97c
 1889 0b2b 00000000 		.4byte	.LFB151
 1890 0b2f 24000000 		.4byte	.LFE151-.LFB151
 1891 0b33 01       		.uleb128 0x1
 1892 0b34 9C       		.byte	0x9c
ARM GAS  /tmp/ccFplMB9.s 			page 45


 1893 0b35 A50B0000 		.4byte	0xba5
 1894 0b39 28       		.uleb128 0x28
 1895 0b3a 6C756E00 		.ascii	"lun\000"
 1896 0b3e 01       		.byte	0x1
 1897 0b3f 1C02     		.2byte	0x21c
 1898 0b41 2C090000 		.4byte	0x92c
 1899 0b45 D2000000 		.4byte	.LLST15
 1900 0b49 29       		.uleb128 0x29
 1901 0b4a 9D000000 		.4byte	.LASF148
 1902 0b4e 01       		.byte	0x1
 1903 0b4f 1C02     		.2byte	0x21c
 1904 0b51 37090000 		.4byte	0x937
 1905 0b55 0C010000 		.4byte	.LLST16
 1906 0b59 28       		.uleb128 0x28
 1907 0b5a 72616D00 		.ascii	"ram\000"
 1908 0b5e 01       		.byte	0x1
 1909 0b5f 1C02     		.2byte	0x21c
 1910 0b61 B7000000 		.4byte	0xb7
 1911 0b65 38010000 		.4byte	.LLST17
 1912 0b69 29       		.uleb128 0x29
 1913 0b6a 38060000 		.4byte	.LASF149
 1914 0b6e 01       		.byte	0x1
 1915 0b6f 1C02     		.2byte	0x21c
 1916 0b71 A7000000 		.4byte	0xa7
 1917 0b75 64010000 		.4byte	.LLST18
 1918 0b79 2A       		.uleb128 0x2a
 1919 0b7a 8A060000 		.4byte	.LASF150
 1920 0b7e 01       		.byte	0x1
 1921 0b7f 1E02     		.2byte	0x21e
 1922 0b81 7C090000 		.4byte	0x97c
 1923 0b85 90010000 		.4byte	.LLST19
 1924 0b89 2B       		.uleb128 0x2b
 1925 0b8a 20000000 		.4byte	.LVL43
 1926 0b8e 2C       		.uleb128 0x2c
 1927 0b8f 01       		.uleb128 0x1
 1928 0b90 50       		.byte	0x50
 1929 0b91 03       		.uleb128 0x3
 1930 0b92 F3       		.byte	0xf3
 1931 0b93 01       		.uleb128 0x1
 1932 0b94 51       		.byte	0x51
 1933 0b95 2C       		.uleb128 0x2c
 1934 0b96 01       		.uleb128 0x1
 1935 0b97 51       		.byte	0x51
 1936 0b98 03       		.uleb128 0x3
 1937 0b99 F3       		.byte	0xf3
 1938 0b9a 01       		.uleb128 0x1
 1939 0b9b 52       		.byte	0x52
 1940 0b9c 2C       		.uleb128 0x2c
 1941 0b9d 01       		.uleb128 0x1
 1942 0b9e 52       		.byte	0x52
 1943 0b9f 03       		.uleb128 0x3
 1944 0ba0 F3       		.byte	0xf3
 1945 0ba1 01       		.uleb128 0x1
 1946 0ba2 53       		.byte	0x53
 1947 0ba3 00       		.byte	0
 1948 0ba4 00       		.byte	0
 1949 0ba5 27       		.uleb128 0x27
ARM GAS  /tmp/ccFplMB9.s 			page 46


 1950 0ba6 7D070000 		.4byte	.LASF153
 1951 0baa 01       		.byte	0x1
 1952 0bab CD01     		.2byte	0x1cd
 1953 0bad E8050000 		.4byte	0x5e8
 1954 0bb1 00000000 		.4byte	.LFB150
 1955 0bb5 18000000 		.4byte	.LFE150-.LFB150
 1956 0bb9 01       		.uleb128 0x1
 1957 0bba 9C       		.byte	0x9c
 1958 0bbb D00B0000 		.4byte	0xbd0
 1959 0bbf 28       		.uleb128 0x28
 1960 0bc0 6C756E00 		.ascii	"lun\000"
 1961 0bc4 01       		.byte	0x1
 1962 0bc5 CD01     		.2byte	0x1cd
 1963 0bc7 2C090000 		.4byte	0x92c
 1964 0bcb A4010000 		.4byte	.LLST14
 1965 0bcf 00       		.byte	0
 1966 0bd0 2D       		.uleb128 0x2d
 1967 0bd1 4C040000 		.4byte	.LASF154
 1968 0bd5 01       		.byte	0x1
 1969 0bd6 B401     		.2byte	0x1b4
 1970 0bd8 FE080000 		.4byte	0x8fe
 1971 0bdc 00000000 		.4byte	.LFB149
 1972 0be0 18000000 		.4byte	.LFE149-.LFB149
 1973 0be4 01       		.uleb128 0x1
 1974 0be5 9C       		.byte	0x9c
 1975 0be6 0B0C0000 		.4byte	0xc0b
 1976 0bea 28       		.uleb128 0x28
 1977 0beb 6C756E00 		.ascii	"lun\000"
 1978 0bef 01       		.byte	0x1
 1979 0bf0 B401     		.2byte	0x1b4
 1980 0bf2 2C090000 		.4byte	0x92c
 1981 0bf6 DE010000 		.4byte	.LLST12
 1982 0bfa 2A       		.uleb128 0x2a
 1983 0bfb 1F030000 		.4byte	.LASF143
 1984 0bff 01       		.byte	0x1
 1985 0c00 B601     		.2byte	0x1b6
 1986 0c02 FE080000 		.4byte	0x8fe
 1987 0c06 18020000 		.4byte	.LLST13
 1988 0c0a 00       		.byte	0
 1989 0c0b 2D       		.uleb128 0x2d
 1990 0c0c 8A050000 		.4byte	.LASF155
 1991 0c10 01       		.byte	0x1
 1992 0c11 9E01     		.2byte	0x19e
 1993 0c13 FE080000 		.4byte	0x8fe
 1994 0c17 00000000 		.4byte	.LFB148
 1995 0c1b 18000000 		.4byte	.LFE148-.LFB148
 1996 0c1f 01       		.uleb128 0x1
 1997 0c20 9C       		.byte	0x9c
 1998 0c21 460C0000 		.4byte	0xc46
 1999 0c25 28       		.uleb128 0x28
 2000 0c26 6C756E00 		.ascii	"lun\000"
 2001 0c2a 01       		.byte	0x1
 2002 0c2b 9E01     		.2byte	0x19e
 2003 0c2d 2C090000 		.4byte	0x92c
 2004 0c31 2C020000 		.4byte	.LLST10
 2005 0c35 2A       		.uleb128 0x2a
 2006 0c36 43000000 		.4byte	.LASF142
ARM GAS  /tmp/ccFplMB9.s 			page 47


 2007 0c3a 01       		.byte	0x1
 2008 0c3b A001     		.2byte	0x1a0
 2009 0c3d FE080000 		.4byte	0x8fe
 2010 0c41 66020000 		.4byte	.LLST11
 2011 0c45 00       		.byte	0
 2012 0c46 2D       		.uleb128 0x2d
 2013 0c47 0A030000 		.4byte	.LASF156
 2014 0c4b 01       		.byte	0x1
 2015 0c4c 8001     		.2byte	0x180
 2016 0c4e FE080000 		.4byte	0x8fe
 2017 0c52 00000000 		.4byte	.LFB147
 2018 0c56 20000000 		.4byte	.LFE147-.LFB147
 2019 0c5a 01       		.uleb128 0x1
 2020 0c5b 9C       		.byte	0x9c
 2021 0c5c 910C0000 		.4byte	0xc91
 2022 0c60 28       		.uleb128 0x28
 2023 0c61 6C756E00 		.ascii	"lun\000"
 2024 0c65 01       		.byte	0x1
 2025 0c66 8001     		.2byte	0x180
 2026 0c68 2C090000 		.4byte	0x92c
 2027 0c6c 7A020000 		.4byte	.LLST7
 2028 0c70 29       		.uleb128 0x29
 2029 0c71 E2040000 		.4byte	.LASF141
 2030 0c75 01       		.byte	0x1
 2031 0c76 8001     		.2byte	0x180
 2032 0c78 FE080000 		.4byte	0x8fe
 2033 0c7c B4020000 		.4byte	.LLST8
 2034 0c80 2A       		.uleb128 0x2a
 2035 0c81 C2060000 		.4byte	.LASF157
 2036 0c85 01       		.byte	0x1
 2037 0c86 8201     		.2byte	0x182
 2038 0c88 FE080000 		.4byte	0x8fe
 2039 0c8c E0020000 		.4byte	.LLST9
 2040 0c90 00       		.byte	0
 2041 0c91 27       		.uleb128 0x27
 2042 0c92 D7050000 		.4byte	.LASF158
 2043 0c96 01       		.byte	0x1
 2044 0c97 6A01     		.2byte	0x16a
 2045 0c99 2C090000 		.4byte	0x92c
 2046 0c9d 00000000 		.4byte	.LFB146
 2047 0ca1 0A000000 		.4byte	.LFE146-.LFB146
 2048 0ca5 01       		.uleb128 0x1
 2049 0ca6 9C       		.byte	0x9c
 2050 0ca7 CC0C0000 		.4byte	0xccc
 2051 0cab 28       		.uleb128 0x28
 2052 0cac 6C756E00 		.ascii	"lun\000"
 2053 0cb0 01       		.byte	0x1
 2054 0cb1 6A01     		.2byte	0x16a
 2055 0cb3 2C090000 		.4byte	0x92c
 2056 0cb7 F3020000 		.4byte	.LLST5
 2057 0cbb 2A       		.uleb128 0x2a
 2058 0cbc 30040000 		.4byte	.LASF159
 2059 0cc0 01       		.byte	0x1
 2060 0cc1 6C01     		.2byte	0x16c
 2061 0cc3 2C090000 		.4byte	0x92c
 2062 0cc7 14030000 		.4byte	.LLST6
 2063 0ccb 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 48


 2064 0ccc 27       		.uleb128 0x27
 2065 0ccd E6010000 		.4byte	.LASF160
 2066 0cd1 01       		.byte	0x1
 2067 0cd2 5401     		.2byte	0x154
 2068 0cd4 7C090000 		.4byte	0x97c
 2069 0cd8 00000000 		.4byte	.LFB145
 2070 0cdc 1C000000 		.4byte	.LFE145-.LFB145
 2071 0ce0 01       		.uleb128 0x1
 2072 0ce1 9C       		.byte	0x9c
 2073 0ce2 240D0000 		.4byte	0xd24
 2074 0ce6 28       		.uleb128 0x28
 2075 0ce7 6C756E00 		.ascii	"lun\000"
 2076 0ceb 01       		.byte	0x1
 2077 0cec 5401     		.2byte	0x154
 2078 0cee 2C090000 		.4byte	0x92c
 2079 0cf2 41030000 		.4byte	.LLST2
 2080 0cf6 29       		.uleb128 0x29
 2081 0cf7 47010000 		.4byte	.LASF161
 2082 0cfb 01       		.byte	0x1
 2083 0cfc 5401     		.2byte	0x154
 2084 0cfe 51090000 		.4byte	0x951
 2085 0d02 7B030000 		.4byte	.LLST3
 2086 0d06 2A       		.uleb128 0x2a
 2087 0d07 8A060000 		.4byte	.LASF150
 2088 0d0b 01       		.byte	0x1
 2089 0d0c 5601     		.2byte	0x156
 2090 0d0e 7C090000 		.4byte	0x97c
 2091 0d12 9C030000 		.4byte	.LLST4
 2092 0d16 2B       		.uleb128 0x2b
 2093 0d17 16000000 		.4byte	.LVL11
 2094 0d1b 2C       		.uleb128 0x2c
 2095 0d1c 01       		.uleb128 0x1
 2096 0d1d 50       		.byte	0x50
 2097 0d1e 03       		.uleb128 0x3
 2098 0d1f F3       		.byte	0xf3
 2099 0d20 01       		.uleb128 0x1
 2100 0d21 51       		.byte	0x51
 2101 0d22 00       		.byte	0
 2102 0d23 00       		.byte	0
 2103 0d24 2D       		.uleb128 0x2d
 2104 0d25 21050000 		.4byte	.LASF162
 2105 0d29 01       		.byte	0x1
 2106 0d2a 3E01     		.2byte	0x13e
 2107 0d2c 7C090000 		.4byte	0x97c
 2108 0d30 00000000 		.4byte	.LFB144
 2109 0d34 14000000 		.4byte	.LFE144-.LFB144
 2110 0d38 01       		.uleb128 0x1
 2111 0d39 9C       		.byte	0x9c
 2112 0d3a 5F0D0000 		.4byte	0xd5f
 2113 0d3e 28       		.uleb128 0x28
 2114 0d3f 6C756E00 		.ascii	"lun\000"
 2115 0d43 01       		.byte	0x1
 2116 0d44 3E01     		.2byte	0x13e
 2117 0d46 2C090000 		.4byte	0x92c
 2118 0d4a B0030000 		.4byte	.LLST0
 2119 0d4e 2A       		.uleb128 0x2a
 2120 0d4f 8A060000 		.4byte	.LASF150
ARM GAS  /tmp/ccFplMB9.s 			page 49


 2121 0d53 01       		.byte	0x1
 2122 0d54 4001     		.2byte	0x140
 2123 0d56 7C090000 		.4byte	0x97c
 2124 0d5a EA030000 		.4byte	.LLST1
 2125 0d5e 00       		.byte	0
 2126 0d5f 2E       		.uleb128 0x2e
 2127 0d60 66010000 		.4byte	.LASF163
 2128 0d64 01       		.byte	0x1
 2129 0d65 3801     		.2byte	0x138
 2130 0d67 2C090000 		.4byte	0x92c
 2131 0d6b 00000000 		.4byte	.LFB143
 2132 0d6f 04000000 		.4byte	.LFE143-.LFB143
 2133 0d73 01       		.uleb128 0x1
 2134 0d74 9C       		.byte	0x9c
 2135 0d75 2E       		.uleb128 0x2e
 2136 0d76 14020000 		.4byte	.LASF164
 2137 0d7a 01       		.byte	0x1
 2138 0d7b 2301     		.2byte	0x123
 2139 0d7d 2C090000 		.4byte	0x92c
 2140 0d81 00000000 		.4byte	.LFB142
 2141 0d85 04000000 		.4byte	.LFE142-.LFB142
 2142 0d89 01       		.uleb128 0x1
 2143 0d8a 9C       		.byte	0x9c
 2144 0d8b 00       		.byte	0
 2145              		.section	.debug_abbrev,"",%progbits
 2146              	.Ldebug_abbrev0:
 2147 0000 01       		.uleb128 0x1
 2148 0001 11       		.uleb128 0x11
 2149 0002 01       		.byte	0x1
 2150 0003 25       		.uleb128 0x25
 2151 0004 0E       		.uleb128 0xe
 2152 0005 13       		.uleb128 0x13
 2153 0006 0B       		.uleb128 0xb
 2154 0007 03       		.uleb128 0x3
 2155 0008 0E       		.uleb128 0xe
 2156 0009 1B       		.uleb128 0x1b
 2157 000a 0E       		.uleb128 0xe
 2158 000b 55       		.uleb128 0x55
 2159 000c 17       		.uleb128 0x17
 2160 000d 11       		.uleb128 0x11
 2161 000e 01       		.uleb128 0x1
 2162 000f 10       		.uleb128 0x10
 2163 0010 17       		.uleb128 0x17
 2164 0011 00       		.byte	0
 2165 0012 00       		.byte	0
 2166 0013 02       		.uleb128 0x2
 2167 0014 24       		.uleb128 0x24
 2168 0015 00       		.byte	0
 2169 0016 0B       		.uleb128 0xb
 2170 0017 0B       		.uleb128 0xb
 2171 0018 3E       		.uleb128 0x3e
 2172 0019 0B       		.uleb128 0xb
 2173 001a 03       		.uleb128 0x3
 2174 001b 08       		.uleb128 0x8
 2175 001c 00       		.byte	0
 2176 001d 00       		.byte	0
 2177 001e 03       		.uleb128 0x3
ARM GAS  /tmp/ccFplMB9.s 			page 50


 2178 001f 24       		.uleb128 0x24
 2179 0020 00       		.byte	0
 2180 0021 0B       		.uleb128 0xb
 2181 0022 0B       		.uleb128 0xb
 2182 0023 3E       		.uleb128 0x3e
 2183 0024 0B       		.uleb128 0xb
 2184 0025 03       		.uleb128 0x3
 2185 0026 0E       		.uleb128 0xe
 2186 0027 00       		.byte	0
 2187 0028 00       		.byte	0
 2188 0029 04       		.uleb128 0x4
 2189 002a 16       		.uleb128 0x16
 2190 002b 00       		.byte	0
 2191 002c 03       		.uleb128 0x3
 2192 002d 0E       		.uleb128 0xe
 2193 002e 3A       		.uleb128 0x3a
 2194 002f 0B       		.uleb128 0xb
 2195 0030 3B       		.uleb128 0x3b
 2196 0031 0B       		.uleb128 0xb
 2197 0032 49       		.uleb128 0x49
 2198 0033 13       		.uleb128 0x13
 2199 0034 00       		.byte	0
 2200 0035 00       		.byte	0
 2201 0036 05       		.uleb128 0x5
 2202 0037 35       		.uleb128 0x35
 2203 0038 00       		.byte	0
 2204 0039 49       		.uleb128 0x49
 2205 003a 13       		.uleb128 0x13
 2206 003b 00       		.byte	0
 2207 003c 00       		.byte	0
 2208 003d 06       		.uleb128 0x6
 2209 003e 0F       		.uleb128 0xf
 2210 003f 00       		.byte	0
 2211 0040 0B       		.uleb128 0xb
 2212 0041 0B       		.uleb128 0xb
 2213 0042 00       		.byte	0
 2214 0043 00       		.byte	0
 2215 0044 07       		.uleb128 0x7
 2216 0045 34       		.uleb128 0x34
 2217 0046 00       		.byte	0
 2218 0047 03       		.uleb128 0x3
 2219 0048 0E       		.uleb128 0xe
 2220 0049 3A       		.uleb128 0x3a
 2221 004a 0B       		.uleb128 0xb
 2222 004b 3B       		.uleb128 0x3b
 2223 004c 05       		.uleb128 0x5
 2224 004d 49       		.uleb128 0x49
 2225 004e 13       		.uleb128 0x13
 2226 004f 3F       		.uleb128 0x3f
 2227 0050 19       		.uleb128 0x19
 2228 0051 3C       		.uleb128 0x3c
 2229 0052 19       		.uleb128 0x19
 2230 0053 00       		.byte	0
 2231 0054 00       		.byte	0
 2232 0055 08       		.uleb128 0x8
 2233 0056 34       		.uleb128 0x34
 2234 0057 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 51


 2235 0058 03       		.uleb128 0x3
 2236 0059 0E       		.uleb128 0xe
 2237 005a 3A       		.uleb128 0x3a
 2238 005b 0B       		.uleb128 0xb
 2239 005c 3B       		.uleb128 0x3b
 2240 005d 0B       		.uleb128 0xb
 2241 005e 49       		.uleb128 0x49
 2242 005f 13       		.uleb128 0x13
 2243 0060 3F       		.uleb128 0x3f
 2244 0061 19       		.uleb128 0x19
 2245 0062 3C       		.uleb128 0x3c
 2246 0063 19       		.uleb128 0x19
 2247 0064 00       		.byte	0
 2248 0065 00       		.byte	0
 2249 0066 09       		.uleb128 0x9
 2250 0067 16       		.uleb128 0x16
 2251 0068 00       		.byte	0
 2252 0069 03       		.uleb128 0x3
 2253 006a 0E       		.uleb128 0xe
 2254 006b 3A       		.uleb128 0x3a
 2255 006c 0B       		.uleb128 0xb
 2256 006d 3B       		.uleb128 0x3b
 2257 006e 05       		.uleb128 0x5
 2258 006f 49       		.uleb128 0x49
 2259 0070 13       		.uleb128 0x13
 2260 0071 00       		.byte	0
 2261 0072 00       		.byte	0
 2262 0073 0A       		.uleb128 0xa
 2263 0074 17       		.uleb128 0x17
 2264 0075 01       		.byte	0x1
 2265 0076 0B       		.uleb128 0xb
 2266 0077 0B       		.uleb128 0xb
 2267 0078 3A       		.uleb128 0x3a
 2268 0079 0B       		.uleb128 0xb
 2269 007a 3B       		.uleb128 0x3b
 2270 007b 0B       		.uleb128 0xb
 2271 007c 01       		.uleb128 0x1
 2272 007d 13       		.uleb128 0x13
 2273 007e 00       		.byte	0
 2274 007f 00       		.byte	0
 2275 0080 0B       		.uleb128 0xb
 2276 0081 0D       		.uleb128 0xd
 2277 0082 00       		.byte	0
 2278 0083 03       		.uleb128 0x3
 2279 0084 0E       		.uleb128 0xe
 2280 0085 3A       		.uleb128 0x3a
 2281 0086 0B       		.uleb128 0xb
 2282 0087 3B       		.uleb128 0x3b
 2283 0088 0B       		.uleb128 0xb
 2284 0089 49       		.uleb128 0x49
 2285 008a 13       		.uleb128 0x13
 2286 008b 00       		.byte	0
 2287 008c 00       		.byte	0
 2288 008d 0C       		.uleb128 0xc
 2289 008e 01       		.uleb128 0x1
 2290 008f 01       		.byte	0x1
 2291 0090 49       		.uleb128 0x49
ARM GAS  /tmp/ccFplMB9.s 			page 52


 2292 0091 13       		.uleb128 0x13
 2293 0092 01       		.uleb128 0x1
 2294 0093 13       		.uleb128 0x13
 2295 0094 00       		.byte	0
 2296 0095 00       		.byte	0
 2297 0096 0D       		.uleb128 0xd
 2298 0097 21       		.uleb128 0x21
 2299 0098 00       		.byte	0
 2300 0099 49       		.uleb128 0x49
 2301 009a 13       		.uleb128 0x13
 2302 009b 2F       		.uleb128 0x2f
 2303 009c 0B       		.uleb128 0xb
 2304 009d 00       		.byte	0
 2305 009e 00       		.byte	0
 2306 009f 0E       		.uleb128 0xe
 2307 00a0 13       		.uleb128 0x13
 2308 00a1 01       		.byte	0x1
 2309 00a2 0B       		.uleb128 0xb
 2310 00a3 0B       		.uleb128 0xb
 2311 00a4 3A       		.uleb128 0x3a
 2312 00a5 0B       		.uleb128 0xb
 2313 00a6 3B       		.uleb128 0x3b
 2314 00a7 0B       		.uleb128 0xb
 2315 00a8 01       		.uleb128 0x1
 2316 00a9 13       		.uleb128 0x13
 2317 00aa 00       		.byte	0
 2318 00ab 00       		.byte	0
 2319 00ac 0F       		.uleb128 0xf
 2320 00ad 0D       		.uleb128 0xd
 2321 00ae 00       		.byte	0
 2322 00af 03       		.uleb128 0x3
 2323 00b0 0E       		.uleb128 0xe
 2324 00b1 3A       		.uleb128 0x3a
 2325 00b2 0B       		.uleb128 0xb
 2326 00b3 3B       		.uleb128 0x3b
 2327 00b4 0B       		.uleb128 0xb
 2328 00b5 49       		.uleb128 0x49
 2329 00b6 13       		.uleb128 0x13
 2330 00b7 38       		.uleb128 0x38
 2331 00b8 0B       		.uleb128 0xb
 2332 00b9 00       		.byte	0
 2333 00ba 00       		.byte	0
 2334 00bb 10       		.uleb128 0x10
 2335 00bc 13       		.uleb128 0x13
 2336 00bd 01       		.byte	0x1
 2337 00be 03       		.uleb128 0x3
 2338 00bf 0E       		.uleb128 0xe
 2339 00c0 0B       		.uleb128 0xb
 2340 00c1 0B       		.uleb128 0xb
 2341 00c2 3A       		.uleb128 0x3a
 2342 00c3 0B       		.uleb128 0xb
 2343 00c4 3B       		.uleb128 0x3b
 2344 00c5 0B       		.uleb128 0xb
 2345 00c6 01       		.uleb128 0x1
 2346 00c7 13       		.uleb128 0x13
 2347 00c8 00       		.byte	0
 2348 00c9 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 53


 2349 00ca 11       		.uleb128 0x11
 2350 00cb 0D       		.uleb128 0xd
 2351 00cc 00       		.byte	0
 2352 00cd 03       		.uleb128 0x3
 2353 00ce 08       		.uleb128 0x8
 2354 00cf 3A       		.uleb128 0x3a
 2355 00d0 0B       		.uleb128 0xb
 2356 00d1 3B       		.uleb128 0x3b
 2357 00d2 0B       		.uleb128 0xb
 2358 00d3 49       		.uleb128 0x49
 2359 00d4 13       		.uleb128 0x13
 2360 00d5 38       		.uleb128 0x38
 2361 00d6 0B       		.uleb128 0xb
 2362 00d7 00       		.byte	0
 2363 00d8 00       		.byte	0
 2364 00d9 12       		.uleb128 0x12
 2365 00da 0F       		.uleb128 0xf
 2366 00db 00       		.byte	0
 2367 00dc 0B       		.uleb128 0xb
 2368 00dd 0B       		.uleb128 0xb
 2369 00de 49       		.uleb128 0x49
 2370 00df 13       		.uleb128 0x13
 2371 00e0 00       		.byte	0
 2372 00e1 00       		.byte	0
 2373 00e2 13       		.uleb128 0x13
 2374 00e3 13       		.uleb128 0x13
 2375 00e4 01       		.byte	0x1
 2376 00e5 03       		.uleb128 0x3
 2377 00e6 0E       		.uleb128 0xe
 2378 00e7 0B       		.uleb128 0xb
 2379 00e8 05       		.uleb128 0x5
 2380 00e9 3A       		.uleb128 0x3a
 2381 00ea 0B       		.uleb128 0xb
 2382 00eb 3B       		.uleb128 0x3b
 2383 00ec 0B       		.uleb128 0xb
 2384 00ed 01       		.uleb128 0x1
 2385 00ee 13       		.uleb128 0x13
 2386 00ef 00       		.byte	0
 2387 00f0 00       		.byte	0
 2388 00f1 14       		.uleb128 0x14
 2389 00f2 0D       		.uleb128 0xd
 2390 00f3 00       		.byte	0
 2391 00f4 03       		.uleb128 0x3
 2392 00f5 0E       		.uleb128 0xe
 2393 00f6 3A       		.uleb128 0x3a
 2394 00f7 0B       		.uleb128 0xb
 2395 00f8 3B       		.uleb128 0x3b
 2396 00f9 0B       		.uleb128 0xb
 2397 00fa 49       		.uleb128 0x49
 2398 00fb 13       		.uleb128 0x13
 2399 00fc 38       		.uleb128 0x38
 2400 00fd 05       		.uleb128 0x5
 2401 00fe 00       		.byte	0
 2402 00ff 00       		.byte	0
 2403 0100 15       		.uleb128 0x15
 2404 0101 15       		.uleb128 0x15
 2405 0102 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 54


 2406 0103 27       		.uleb128 0x27
 2407 0104 19       		.uleb128 0x19
 2408 0105 00       		.byte	0
 2409 0106 00       		.byte	0
 2410 0107 16       		.uleb128 0x16
 2411 0108 15       		.uleb128 0x15
 2412 0109 01       		.byte	0x1
 2413 010a 27       		.uleb128 0x27
 2414 010b 19       		.uleb128 0x19
 2415 010c 49       		.uleb128 0x49
 2416 010d 13       		.uleb128 0x13
 2417 010e 01       		.uleb128 0x1
 2418 010f 13       		.uleb128 0x13
 2419 0110 00       		.byte	0
 2420 0111 00       		.byte	0
 2421 0112 17       		.uleb128 0x17
 2422 0113 05       		.uleb128 0x5
 2423 0114 00       		.byte	0
 2424 0115 49       		.uleb128 0x49
 2425 0116 13       		.uleb128 0x13
 2426 0117 00       		.byte	0
 2427 0118 00       		.byte	0
 2428 0119 18       		.uleb128 0x18
 2429 011a 26       		.uleb128 0x26
 2430 011b 00       		.byte	0
 2431 011c 49       		.uleb128 0x49
 2432 011d 13       		.uleb128 0x13
 2433 011e 00       		.byte	0
 2434 011f 00       		.byte	0
 2435 0120 19       		.uleb128 0x19
 2436 0121 13       		.uleb128 0x13
 2437 0122 01       		.byte	0x1
 2438 0123 03       		.uleb128 0x3
 2439 0124 0E       		.uleb128 0xe
 2440 0125 0B       		.uleb128 0xb
 2441 0126 05       		.uleb128 0x5
 2442 0127 3A       		.uleb128 0x3a
 2443 0128 0B       		.uleb128 0xb
 2444 0129 3B       		.uleb128 0x3b
 2445 012a 05       		.uleb128 0x5
 2446 012b 01       		.uleb128 0x1
 2447 012c 13       		.uleb128 0x13
 2448 012d 00       		.byte	0
 2449 012e 00       		.byte	0
 2450 012f 1A       		.uleb128 0x1a
 2451 0130 0D       		.uleb128 0xd
 2452 0131 00       		.byte	0
 2453 0132 03       		.uleb128 0x3
 2454 0133 0E       		.uleb128 0xe
 2455 0134 3A       		.uleb128 0x3a
 2456 0135 0B       		.uleb128 0xb
 2457 0136 3B       		.uleb128 0x3b
 2458 0137 05       		.uleb128 0x5
 2459 0138 49       		.uleb128 0x49
 2460 0139 13       		.uleb128 0x13
 2461 013a 38       		.uleb128 0x38
 2462 013b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccFplMB9.s 			page 55


 2463 013c 00       		.byte	0
 2464 013d 00       		.byte	0
 2465 013e 1B       		.uleb128 0x1b
 2466 013f 0D       		.uleb128 0xd
 2467 0140 00       		.byte	0
 2468 0141 03       		.uleb128 0x3
 2469 0142 0E       		.uleb128 0xe
 2470 0143 3A       		.uleb128 0x3a
 2471 0144 0B       		.uleb128 0xb
 2472 0145 3B       		.uleb128 0x3b
 2473 0146 05       		.uleb128 0x5
 2474 0147 49       		.uleb128 0x49
 2475 0148 13       		.uleb128 0x13
 2476 0149 38       		.uleb128 0x38
 2477 014a 05       		.uleb128 0x5
 2478 014b 00       		.byte	0
 2479 014c 00       		.byte	0
 2480 014d 1C       		.uleb128 0x1c
 2481 014e 13       		.uleb128 0x13
 2482 014f 01       		.byte	0x1
 2483 0150 03       		.uleb128 0x3
 2484 0151 0E       		.uleb128 0xe
 2485 0152 0B       		.uleb128 0xb
 2486 0153 0B       		.uleb128 0xb
 2487 0154 3A       		.uleb128 0x3a
 2488 0155 0B       		.uleb128 0xb
 2489 0156 3B       		.uleb128 0x3b
 2490 0157 05       		.uleb128 0x5
 2491 0158 01       		.uleb128 0x1
 2492 0159 13       		.uleb128 0x13
 2493 015a 00       		.byte	0
 2494 015b 00       		.byte	0
 2495 015c 1D       		.uleb128 0x1d
 2496 015d 13       		.uleb128 0x13
 2497 015e 01       		.byte	0x1
 2498 015f 0B       		.uleb128 0xb
 2499 0160 0B       		.uleb128 0xb
 2500 0161 3A       		.uleb128 0x3a
 2501 0162 0B       		.uleb128 0xb
 2502 0163 3B       		.uleb128 0x3b
 2503 0164 05       		.uleb128 0x5
 2504 0165 01       		.uleb128 0x1
 2505 0166 13       		.uleb128 0x13
 2506 0167 00       		.byte	0
 2507 0168 00       		.byte	0
 2508 0169 1E       		.uleb128 0x1e
 2509 016a 17       		.uleb128 0x17
 2510 016b 01       		.byte	0x1
 2511 016c 0B       		.uleb128 0xb
 2512 016d 0B       		.uleb128 0xb
 2513 016e 3A       		.uleb128 0x3a
 2514 016f 0B       		.uleb128 0xb
 2515 0170 3B       		.uleb128 0x3b
 2516 0171 05       		.uleb128 0x5
 2517 0172 01       		.uleb128 0x1
 2518 0173 13       		.uleb128 0x13
 2519 0174 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 56


 2520 0175 00       		.byte	0
 2521 0176 1F       		.uleb128 0x1f
 2522 0177 0D       		.uleb128 0xd
 2523 0178 00       		.byte	0
 2524 0179 03       		.uleb128 0x3
 2525 017a 0E       		.uleb128 0xe
 2526 017b 3A       		.uleb128 0x3a
 2527 017c 0B       		.uleb128 0xb
 2528 017d 3B       		.uleb128 0x3b
 2529 017e 05       		.uleb128 0x5
 2530 017f 49       		.uleb128 0x49
 2531 0180 13       		.uleb128 0x13
 2532 0181 00       		.byte	0
 2533 0182 00       		.byte	0
 2534 0183 20       		.uleb128 0x20
 2535 0184 15       		.uleb128 0x15
 2536 0185 01       		.byte	0x1
 2537 0186 27       		.uleb128 0x27
 2538 0187 19       		.uleb128 0x19
 2539 0188 01       		.uleb128 0x1
 2540 0189 13       		.uleb128 0x13
 2541 018a 00       		.byte	0
 2542 018b 00       		.byte	0
 2543 018c 21       		.uleb128 0x21
 2544 018d 26       		.uleb128 0x26
 2545 018e 00       		.byte	0
 2546 018f 00       		.byte	0
 2547 0190 00       		.byte	0
 2548 0191 22       		.uleb128 0x22
 2549 0192 34       		.uleb128 0x34
 2550 0193 00       		.byte	0
 2551 0194 03       		.uleb128 0x3
 2552 0195 0E       		.uleb128 0xe
 2553 0196 3A       		.uleb128 0x3a
 2554 0197 0B       		.uleb128 0xb
 2555 0198 3B       		.uleb128 0x3b
 2556 0199 0B       		.uleb128 0xb
 2557 019a 49       		.uleb128 0x49
 2558 019b 13       		.uleb128 0x13
 2559 019c 02       		.uleb128 0x2
 2560 019d 18       		.uleb128 0x18
 2561 019e 00       		.byte	0
 2562 019f 00       		.byte	0
 2563 01a0 23       		.uleb128 0x23
 2564 01a1 16       		.uleb128 0x16
 2565 01a2 00       		.byte	0
 2566 01a3 03       		.uleb128 0x3
 2567 01a4 08       		.uleb128 0x8
 2568 01a5 3A       		.uleb128 0x3a
 2569 01a6 0B       		.uleb128 0xb
 2570 01a7 3B       		.uleb128 0x3b
 2571 01a8 05       		.uleb128 0x5
 2572 01a9 49       		.uleb128 0x49
 2573 01aa 13       		.uleb128 0x13
 2574 01ab 00       		.byte	0
 2575 01ac 00       		.byte	0
 2576 01ad 24       		.uleb128 0x24
ARM GAS  /tmp/ccFplMB9.s 			page 57


 2577 01ae 04       		.uleb128 0x4
 2578 01af 01       		.byte	0x1
 2579 01b0 0B       		.uleb128 0xb
 2580 01b1 0B       		.uleb128 0xb
 2581 01b2 49       		.uleb128 0x49
 2582 01b3 13       		.uleb128 0x13
 2583 01b4 3A       		.uleb128 0x3a
 2584 01b5 0B       		.uleb128 0xb
 2585 01b6 3B       		.uleb128 0x3b
 2586 01b7 0B       		.uleb128 0xb
 2587 01b8 01       		.uleb128 0x1
 2588 01b9 13       		.uleb128 0x13
 2589 01ba 00       		.byte	0
 2590 01bb 00       		.byte	0
 2591 01bc 25       		.uleb128 0x25
 2592 01bd 28       		.uleb128 0x28
 2593 01be 00       		.byte	0
 2594 01bf 03       		.uleb128 0x3
 2595 01c0 0E       		.uleb128 0xe
 2596 01c1 1C       		.uleb128 0x1c
 2597 01c2 0B       		.uleb128 0xb
 2598 01c3 00       		.byte	0
 2599 01c4 00       		.byte	0
 2600 01c5 26       		.uleb128 0x26
 2601 01c6 15       		.uleb128 0x15
 2602 01c7 00       		.byte	0
 2603 01c8 27       		.uleb128 0x27
 2604 01c9 19       		.uleb128 0x19
 2605 01ca 49       		.uleb128 0x49
 2606 01cb 13       		.uleb128 0x13
 2607 01cc 00       		.byte	0
 2608 01cd 00       		.byte	0
 2609 01ce 27       		.uleb128 0x27
 2610 01cf 2E       		.uleb128 0x2e
 2611 01d0 01       		.byte	0x1
 2612 01d1 3F       		.uleb128 0x3f
 2613 01d2 19       		.uleb128 0x19
 2614 01d3 03       		.uleb128 0x3
 2615 01d4 0E       		.uleb128 0xe
 2616 01d5 3A       		.uleb128 0x3a
 2617 01d6 0B       		.uleb128 0xb
 2618 01d7 3B       		.uleb128 0x3b
 2619 01d8 05       		.uleb128 0x5
 2620 01d9 27       		.uleb128 0x27
 2621 01da 19       		.uleb128 0x19
 2622 01db 49       		.uleb128 0x49
 2623 01dc 13       		.uleb128 0x13
 2624 01dd 11       		.uleb128 0x11
 2625 01de 01       		.uleb128 0x1
 2626 01df 12       		.uleb128 0x12
 2627 01e0 06       		.uleb128 0x6
 2628 01e1 40       		.uleb128 0x40
 2629 01e2 18       		.uleb128 0x18
 2630 01e3 9742     		.uleb128 0x2117
 2631 01e5 19       		.uleb128 0x19
 2632 01e6 01       		.uleb128 0x1
 2633 01e7 13       		.uleb128 0x13
ARM GAS  /tmp/ccFplMB9.s 			page 58


 2634 01e8 00       		.byte	0
 2635 01e9 00       		.byte	0
 2636 01ea 28       		.uleb128 0x28
 2637 01eb 05       		.uleb128 0x5
 2638 01ec 00       		.byte	0
 2639 01ed 03       		.uleb128 0x3
 2640 01ee 08       		.uleb128 0x8
 2641 01ef 3A       		.uleb128 0x3a
 2642 01f0 0B       		.uleb128 0xb
 2643 01f1 3B       		.uleb128 0x3b
 2644 01f2 05       		.uleb128 0x5
 2645 01f3 49       		.uleb128 0x49
 2646 01f4 13       		.uleb128 0x13
 2647 01f5 02       		.uleb128 0x2
 2648 01f6 17       		.uleb128 0x17
 2649 01f7 00       		.byte	0
 2650 01f8 00       		.byte	0
 2651 01f9 29       		.uleb128 0x29
 2652 01fa 05       		.uleb128 0x5
 2653 01fb 00       		.byte	0
 2654 01fc 03       		.uleb128 0x3
 2655 01fd 0E       		.uleb128 0xe
 2656 01fe 3A       		.uleb128 0x3a
 2657 01ff 0B       		.uleb128 0xb
 2658 0200 3B       		.uleb128 0x3b
 2659 0201 05       		.uleb128 0x5
 2660 0202 49       		.uleb128 0x49
 2661 0203 13       		.uleb128 0x13
 2662 0204 02       		.uleb128 0x2
 2663 0205 17       		.uleb128 0x17
 2664 0206 00       		.byte	0
 2665 0207 00       		.byte	0
 2666 0208 2A       		.uleb128 0x2a
 2667 0209 34       		.uleb128 0x34
 2668 020a 00       		.byte	0
 2669 020b 03       		.uleb128 0x3
 2670 020c 0E       		.uleb128 0xe
 2671 020d 3A       		.uleb128 0x3a
 2672 020e 0B       		.uleb128 0xb
 2673 020f 3B       		.uleb128 0x3b
 2674 0210 05       		.uleb128 0x5
 2675 0211 49       		.uleb128 0x49
 2676 0212 13       		.uleb128 0x13
 2677 0213 02       		.uleb128 0x2
 2678 0214 17       		.uleb128 0x17
 2679 0215 00       		.byte	0
 2680 0216 00       		.byte	0
 2681 0217 2B       		.uleb128 0x2b
 2682 0218 898201   		.uleb128 0x4109
 2683 021b 01       		.byte	0x1
 2684 021c 11       		.uleb128 0x11
 2685 021d 01       		.uleb128 0x1
 2686 021e 9542     		.uleb128 0x2115
 2687 0220 19       		.uleb128 0x19
 2688 0221 00       		.byte	0
 2689 0222 00       		.byte	0
 2690 0223 2C       		.uleb128 0x2c
ARM GAS  /tmp/ccFplMB9.s 			page 59


 2691 0224 8A8201   		.uleb128 0x410a
 2692 0227 00       		.byte	0
 2693 0228 02       		.uleb128 0x2
 2694 0229 18       		.uleb128 0x18
 2695 022a 9142     		.uleb128 0x2111
 2696 022c 18       		.uleb128 0x18
 2697 022d 00       		.byte	0
 2698 022e 00       		.byte	0
 2699 022f 2D       		.uleb128 0x2d
 2700 0230 2E       		.uleb128 0x2e
 2701 0231 01       		.byte	0x1
 2702 0232 3F       		.uleb128 0x3f
 2703 0233 19       		.uleb128 0x19
 2704 0234 03       		.uleb128 0x3
 2705 0235 0E       		.uleb128 0xe
 2706 0236 3A       		.uleb128 0x3a
 2707 0237 0B       		.uleb128 0xb
 2708 0238 3B       		.uleb128 0x3b
 2709 0239 05       		.uleb128 0x5
 2710 023a 27       		.uleb128 0x27
 2711 023b 19       		.uleb128 0x19
 2712 023c 49       		.uleb128 0x49
 2713 023d 13       		.uleb128 0x13
 2714 023e 11       		.uleb128 0x11
 2715 023f 01       		.uleb128 0x1
 2716 0240 12       		.uleb128 0x12
 2717 0241 06       		.uleb128 0x6
 2718 0242 40       		.uleb128 0x40
 2719 0243 18       		.uleb128 0x18
 2720 0244 01       		.uleb128 0x1
 2721 0245 13       		.uleb128 0x13
 2722 0246 00       		.byte	0
 2723 0247 00       		.byte	0
 2724 0248 2E       		.uleb128 0x2e
 2725 0249 2E       		.uleb128 0x2e
 2726 024a 00       		.byte	0
 2727 024b 3F       		.uleb128 0x3f
 2728 024c 19       		.uleb128 0x19
 2729 024d 03       		.uleb128 0x3
 2730 024e 0E       		.uleb128 0xe
 2731 024f 3A       		.uleb128 0x3a
 2732 0250 0B       		.uleb128 0xb
 2733 0251 3B       		.uleb128 0x3b
 2734 0252 05       		.uleb128 0x5
 2735 0253 27       		.uleb128 0x27
 2736 0254 19       		.uleb128 0x19
 2737 0255 49       		.uleb128 0x49
 2738 0256 13       		.uleb128 0x13
 2739 0257 11       		.uleb128 0x11
 2740 0258 01       		.uleb128 0x1
 2741 0259 12       		.uleb128 0x12
 2742 025a 06       		.uleb128 0x6
 2743 025b 40       		.uleb128 0x40
 2744 025c 18       		.uleb128 0x18
 2745 025d 9742     		.uleb128 0x2117
 2746 025f 19       		.uleb128 0x19
 2747 0260 00       		.byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 60


 2748 0261 00       		.byte	0
 2749 0262 00       		.byte	0
 2750              		.section	.debug_loc,"",%progbits
 2751              	.Ldebug_loc0:
 2752              	.LLST20:
 2753 0000 00000000 		.4byte	.LVL44
 2754 0004 0A000000 		.4byte	.LVL46
 2755 0008 0100     		.2byte	0x1
 2756 000a 50       		.byte	0x50
 2757 000b 0A000000 		.4byte	.LVL46
 2758 000f 0E000000 		.4byte	.LVL47
 2759 0013 0400     		.2byte	0x4
 2760 0015 F3       		.byte	0xf3
 2761 0016 01       		.uleb128 0x1
 2762 0017 50       		.byte	0x50
 2763 0018 9F       		.byte	0x9f
 2764 0019 0E000000 		.4byte	.LVL47
 2765 001d 12000000 		.4byte	.LVL48
 2766 0021 0100     		.2byte	0x1
 2767 0023 50       		.byte	0x50
 2768 0024 12000000 		.4byte	.LVL48
 2769 0028 24000000 		.4byte	.LFE152
 2770 002c 0400     		.2byte	0x4
 2771 002e F3       		.byte	0xf3
 2772 002f 01       		.uleb128 0x1
 2773 0030 50       		.byte	0x50
 2774 0031 9F       		.byte	0x9f
 2775 0032 00000000 		.4byte	0
 2776 0036 00000000 		.4byte	0
 2777              	.LLST21:
 2778 003a 00000000 		.4byte	.LVL44
 2779 003e 14000000 		.4byte	.LVL49
 2780 0042 0100     		.2byte	0x1
 2781 0044 51       		.byte	0x51
 2782 0045 14000000 		.4byte	.LVL49
 2783 0049 1F000000 		.4byte	.LVL52-1
 2784 004d 0100     		.2byte	0x1
 2785 004f 50       		.byte	0x50
 2786 0050 1F000000 		.4byte	.LVL52-1
 2787 0054 24000000 		.4byte	.LFE152
 2788 0058 0400     		.2byte	0x4
 2789 005a F3       		.byte	0xf3
 2790 005b 01       		.uleb128 0x1
 2791 005c 51       		.byte	0x51
 2792 005d 9F       		.byte	0x9f
 2793 005e 00000000 		.4byte	0
 2794 0062 00000000 		.4byte	0
 2795              	.LLST22:
 2796 0066 00000000 		.4byte	.LVL44
 2797 006a 16000000 		.4byte	.LVL50
 2798 006e 0100     		.2byte	0x1
 2799 0070 52       		.byte	0x52
 2800 0071 16000000 		.4byte	.LVL50
 2801 0075 1F000000 		.4byte	.LVL52-1
 2802 0079 0100     		.2byte	0x1
 2803 007b 51       		.byte	0x51
 2804 007c 1F000000 		.4byte	.LVL52-1
ARM GAS  /tmp/ccFplMB9.s 			page 61


 2805 0080 24000000 		.4byte	.LFE152
 2806 0084 0400     		.2byte	0x4
 2807 0086 F3       		.byte	0xf3
 2808 0087 01       		.uleb128 0x1
 2809 0088 52       		.byte	0x52
 2810 0089 9F       		.byte	0x9f
 2811 008a 00000000 		.4byte	0
 2812 008e 00000000 		.4byte	0
 2813              	.LLST23:
 2814 0092 00000000 		.4byte	.LVL44
 2815 0096 1C000000 		.4byte	.LVL51
 2816 009a 0100     		.2byte	0x1
 2817 009c 53       		.byte	0x53
 2818 009d 1C000000 		.4byte	.LVL51
 2819 00a1 1F000000 		.4byte	.LVL52-1
 2820 00a5 0100     		.2byte	0x1
 2821 00a7 52       		.byte	0x52
 2822 00a8 1F000000 		.4byte	.LVL52-1
 2823 00ac 24000000 		.4byte	.LFE152
 2824 00b0 0400     		.2byte	0x4
 2825 00b2 F3       		.byte	0xf3
 2826 00b3 01       		.uleb128 0x1
 2827 00b4 53       		.byte	0x53
 2828 00b5 9F       		.byte	0x9f
 2829 00b6 00000000 		.4byte	0
 2830 00ba 00000000 		.4byte	0
 2831              	.LLST24:
 2832 00be 08000000 		.4byte	.LVL45
 2833 00c2 0E000000 		.4byte	.LVL47
 2834 00c6 0200     		.2byte	0x2
 2835 00c8 31       		.byte	0x31
 2836 00c9 9F       		.byte	0x9f
 2837 00ca 00000000 		.4byte	0
 2838 00ce 00000000 		.4byte	0
 2839              	.LLST15:
 2840 00d2 00000000 		.4byte	.LVL35
 2841 00d6 0A000000 		.4byte	.LVL37
 2842 00da 0100     		.2byte	0x1
 2843 00dc 50       		.byte	0x50
 2844 00dd 0A000000 		.4byte	.LVL37
 2845 00e1 0E000000 		.4byte	.LVL38
 2846 00e5 0400     		.2byte	0x4
 2847 00e7 F3       		.byte	0xf3
 2848 00e8 01       		.uleb128 0x1
 2849 00e9 50       		.byte	0x50
 2850 00ea 9F       		.byte	0x9f
 2851 00eb 0E000000 		.4byte	.LVL38
 2852 00ef 12000000 		.4byte	.LVL39
 2853 00f3 0100     		.2byte	0x1
 2854 00f5 50       		.byte	0x50
 2855 00f6 12000000 		.4byte	.LVL39
 2856 00fa 24000000 		.4byte	.LFE151
 2857 00fe 0400     		.2byte	0x4
 2858 0100 F3       		.byte	0xf3
 2859 0101 01       		.uleb128 0x1
 2860 0102 50       		.byte	0x50
 2861 0103 9F       		.byte	0x9f
ARM GAS  /tmp/ccFplMB9.s 			page 62


 2862 0104 00000000 		.4byte	0
 2863 0108 00000000 		.4byte	0
 2864              	.LLST16:
 2865 010c 00000000 		.4byte	.LVL35
 2866 0110 14000000 		.4byte	.LVL40
 2867 0114 0100     		.2byte	0x1
 2868 0116 51       		.byte	0x51
 2869 0117 14000000 		.4byte	.LVL40
 2870 011b 1F000000 		.4byte	.LVL43-1
 2871 011f 0100     		.2byte	0x1
 2872 0121 50       		.byte	0x50
 2873 0122 1F000000 		.4byte	.LVL43-1
 2874 0126 24000000 		.4byte	.LFE151
 2875 012a 0400     		.2byte	0x4
 2876 012c F3       		.byte	0xf3
 2877 012d 01       		.uleb128 0x1
 2878 012e 51       		.byte	0x51
 2879 012f 9F       		.byte	0x9f
 2880 0130 00000000 		.4byte	0
 2881 0134 00000000 		.4byte	0
 2882              	.LLST17:
 2883 0138 00000000 		.4byte	.LVL35
 2884 013c 16000000 		.4byte	.LVL41
 2885 0140 0100     		.2byte	0x1
 2886 0142 52       		.byte	0x52
 2887 0143 16000000 		.4byte	.LVL41
 2888 0147 1F000000 		.4byte	.LVL43-1
 2889 014b 0100     		.2byte	0x1
 2890 014d 51       		.byte	0x51
 2891 014e 1F000000 		.4byte	.LVL43-1
 2892 0152 24000000 		.4byte	.LFE151
 2893 0156 0400     		.2byte	0x4
 2894 0158 F3       		.byte	0xf3
 2895 0159 01       		.uleb128 0x1
 2896 015a 52       		.byte	0x52
 2897 015b 9F       		.byte	0x9f
 2898 015c 00000000 		.4byte	0
 2899 0160 00000000 		.4byte	0
 2900              	.LLST18:
 2901 0164 00000000 		.4byte	.LVL35
 2902 0168 1C000000 		.4byte	.LVL42
 2903 016c 0100     		.2byte	0x1
 2904 016e 53       		.byte	0x53
 2905 016f 1C000000 		.4byte	.LVL42
 2906 0173 1F000000 		.4byte	.LVL43-1
 2907 0177 0100     		.2byte	0x1
 2908 0179 52       		.byte	0x52
 2909 017a 1F000000 		.4byte	.LVL43-1
 2910 017e 24000000 		.4byte	.LFE151
 2911 0182 0400     		.2byte	0x4
 2912 0184 F3       		.byte	0xf3
 2913 0185 01       		.uleb128 0x1
 2914 0186 53       		.byte	0x53
 2915 0187 9F       		.byte	0x9f
 2916 0188 00000000 		.4byte	0
 2917 018c 00000000 		.4byte	0
 2918              	.LLST19:
ARM GAS  /tmp/ccFplMB9.s 			page 63


 2919 0190 08000000 		.4byte	.LVL36
 2920 0194 0E000000 		.4byte	.LVL38
 2921 0198 0200     		.2byte	0x2
 2922 019a 31       		.byte	0x31
 2923 019b 9F       		.byte	0x9f
 2924 019c 00000000 		.4byte	0
 2925 01a0 00000000 		.4byte	0
 2926              	.LLST14:
 2927 01a4 00000000 		.4byte	.LVL31
 2928 01a8 0A000000 		.4byte	.LVL32
 2929 01ac 0100     		.2byte	0x1
 2930 01ae 50       		.byte	0x50
 2931 01af 0A000000 		.4byte	.LVL32
 2932 01b3 0E000000 		.4byte	.LVL33
 2933 01b7 0400     		.2byte	0x4
 2934 01b9 F3       		.byte	0xf3
 2935 01ba 01       		.uleb128 0x1
 2936 01bb 50       		.byte	0x50
 2937 01bc 9F       		.byte	0x9f
 2938 01bd 0E000000 		.4byte	.LVL33
 2939 01c1 10000000 		.4byte	.LVL34
 2940 01c5 0100     		.2byte	0x1
 2941 01c7 50       		.byte	0x50
 2942 01c8 10000000 		.4byte	.LVL34
 2943 01cc 18000000 		.4byte	.LFE150
 2944 01d0 0400     		.2byte	0x4
 2945 01d2 F3       		.byte	0xf3
 2946 01d3 01       		.uleb128 0x1
 2947 01d4 50       		.byte	0x50
 2948 01d5 9F       		.byte	0x9f
 2949 01d6 00000000 		.4byte	0
 2950 01da 00000000 		.4byte	0
 2951              	.LLST12:
 2952 01de 00000000 		.4byte	.LVL25
 2953 01e2 06000000 		.4byte	.LVL27
 2954 01e6 0100     		.2byte	0x1
 2955 01e8 50       		.byte	0x50
 2956 01e9 06000000 		.4byte	.LVL27
 2957 01ed 08000000 		.4byte	.LVL28
 2958 01f1 0400     		.2byte	0x4
 2959 01f3 F3       		.byte	0xf3
 2960 01f4 01       		.uleb128 0x1
 2961 01f5 50       		.byte	0x50
 2962 01f6 9F       		.byte	0x9f
 2963 01f7 08000000 		.4byte	.LVL28
 2964 01fb 0E000000 		.4byte	.LVL29
 2965 01ff 0100     		.2byte	0x1
 2966 0201 50       		.byte	0x50
 2967 0202 0E000000 		.4byte	.LVL29
 2968 0206 18000000 		.4byte	.LFE149
 2969 020a 0400     		.2byte	0x4
 2970 020c F3       		.byte	0xf3
 2971 020d 01       		.uleb128 0x1
 2972 020e 50       		.byte	0x50
 2973 020f 9F       		.byte	0x9f
 2974 0210 00000000 		.4byte	0
 2975 0214 00000000 		.4byte	0
ARM GAS  /tmp/ccFplMB9.s 			page 64


 2976              	.LLST13:
 2977 0218 04000000 		.4byte	.LVL26
 2978 021c 08000000 		.4byte	.LVL28
 2979 0220 0200     		.2byte	0x2
 2980 0222 31       		.byte	0x31
 2981 0223 9F       		.byte	0x9f
 2982 0224 00000000 		.4byte	0
 2983 0228 00000000 		.4byte	0
 2984              	.LLST10:
 2985 022c 00000000 		.4byte	.LVL19
 2986 0230 06000000 		.4byte	.LVL21
 2987 0234 0100     		.2byte	0x1
 2988 0236 50       		.byte	0x50
 2989 0237 06000000 		.4byte	.LVL21
 2990 023b 08000000 		.4byte	.LVL22
 2991 023f 0400     		.2byte	0x4
 2992 0241 F3       		.byte	0xf3
 2993 0242 01       		.uleb128 0x1
 2994 0243 50       		.byte	0x50
 2995 0244 9F       		.byte	0x9f
 2996 0245 08000000 		.4byte	.LVL22
 2997 0249 0E000000 		.4byte	.LVL23
 2998 024d 0100     		.2byte	0x1
 2999 024f 50       		.byte	0x50
 3000 0250 0E000000 		.4byte	.LVL23
 3001 0254 18000000 		.4byte	.LFE148
 3002 0258 0400     		.2byte	0x4
 3003 025a F3       		.byte	0xf3
 3004 025b 01       		.uleb128 0x1
 3005 025c 50       		.byte	0x50
 3006 025d 9F       		.byte	0x9f
 3007 025e 00000000 		.4byte	0
 3008 0262 00000000 		.4byte	0
 3009              	.LLST11:
 3010 0266 04000000 		.4byte	.LVL20
 3011 026a 08000000 		.4byte	.LVL22
 3012 026e 0200     		.2byte	0x2
 3013 0270 31       		.byte	0x31
 3014 0271 9F       		.byte	0x9f
 3015 0272 00000000 		.4byte	0
 3016 0276 00000000 		.4byte	0
 3017              	.LLST7:
 3018 027a 00000000 		.4byte	.LVL14
 3019 027e 06000000 		.4byte	.LVL15
 3020 0282 0100     		.2byte	0x1
 3021 0284 50       		.byte	0x50
 3022 0285 06000000 		.4byte	.LVL15
 3023 0289 08000000 		.4byte	.LVL16
 3024 028d 0400     		.2byte	0x4
 3025 028f F3       		.byte	0xf3
 3026 0290 01       		.uleb128 0x1
 3027 0291 50       		.byte	0x50
 3028 0292 9F       		.byte	0x9f
 3029 0293 08000000 		.4byte	.LVL16
 3030 0297 0E000000 		.4byte	.LVL17
 3031 029b 0100     		.2byte	0x1
 3032 029d 50       		.byte	0x50
ARM GAS  /tmp/ccFplMB9.s 			page 65


 3033 029e 0E000000 		.4byte	.LVL17
 3034 02a2 20000000 		.4byte	.LFE147
 3035 02a6 0400     		.2byte	0x4
 3036 02a8 F3       		.byte	0xf3
 3037 02a9 01       		.uleb128 0x1
 3038 02aa 50       		.byte	0x50
 3039 02ab 9F       		.byte	0x9f
 3040 02ac 00000000 		.4byte	0
 3041 02b0 00000000 		.4byte	0
 3042              	.LLST8:
 3043 02b4 00000000 		.4byte	.LVL14
 3044 02b8 15000000 		.4byte	.LVL18-1
 3045 02bc 0100     		.2byte	0x1
 3046 02be 51       		.byte	0x51
 3047 02bf 15000000 		.4byte	.LVL18-1
 3048 02c3 16000000 		.4byte	.LVL18
 3049 02c7 0400     		.2byte	0x4
 3050 02c9 F3       		.byte	0xf3
 3051 02ca 01       		.uleb128 0x1
 3052 02cb 51       		.byte	0x51
 3053 02cc 9F       		.byte	0x9f
 3054 02cd 16000000 		.4byte	.LVL18
 3055 02d1 20000000 		.4byte	.LFE147
 3056 02d5 0100     		.2byte	0x1
 3057 02d7 51       		.byte	0x51
 3058 02d8 00000000 		.4byte	0
 3059 02dc 00000000 		.4byte	0
 3060              	.LLST9:
 3061 02e0 06000000 		.4byte	.LVL15
 3062 02e4 08000000 		.4byte	.LVL16
 3063 02e8 0100     		.2byte	0x1
 3064 02ea 50       		.byte	0x50
 3065 02eb 00000000 		.4byte	0
 3066 02ef 00000000 		.4byte	0
 3067              	.LLST5:
 3068 02f3 00000000 		.4byte	.LVL12
 3069 02f7 06000000 		.4byte	.LVL13
 3070 02fb 0100     		.2byte	0x1
 3071 02fd 50       		.byte	0x50
 3072 02fe 06000000 		.4byte	.LVL13
 3073 0302 0A000000 		.4byte	.LFE146
 3074 0306 0400     		.2byte	0x4
 3075 0308 F3       		.byte	0xf3
 3076 0309 01       		.uleb128 0x1
 3077 030a 50       		.byte	0x50
 3078 030b 9F       		.byte	0x9f
 3079 030c 00000000 		.4byte	0
 3080 0310 00000000 		.4byte	0
 3081              	.LLST6:
 3082 0314 00000000 		.4byte	.LVL12
 3083 0318 06000000 		.4byte	.LVL13
 3084 031c 0800     		.2byte	0x8
 3085 031e 70       		.byte	0x70
 3086 031f 00       		.sleb128 0
 3087 0320 08       		.byte	0x8
 3088 0321 FF       		.byte	0xff
 3089 0322 1A       		.byte	0x1a
ARM GAS  /tmp/ccFplMB9.s 			page 66


 3090 0323 31       		.byte	0x31
 3091 0324 2C       		.byte	0x2c
 3092 0325 9F       		.byte	0x9f
 3093 0326 06000000 		.4byte	.LVL13
 3094 032a 0A000000 		.4byte	.LFE146
 3095 032e 0900     		.2byte	0x9
 3096 0330 F3       		.byte	0xf3
 3097 0331 01       		.uleb128 0x1
 3098 0332 50       		.byte	0x50
 3099 0333 08       		.byte	0x8
 3100 0334 FF       		.byte	0xff
 3101 0335 1A       		.byte	0x1a
 3102 0336 31       		.byte	0x31
 3103 0337 2C       		.byte	0x2c
 3104 0338 9F       		.byte	0x9f
 3105 0339 00000000 		.4byte	0
 3106 033d 00000000 		.4byte	0
 3107              	.LLST2:
 3108 0341 00000000 		.4byte	.LVL6
 3109 0345 08000000 		.4byte	.LVL8
 3110 0349 0100     		.2byte	0x1
 3111 034b 50       		.byte	0x50
 3112 034c 08000000 		.4byte	.LVL8
 3113 0350 0A000000 		.4byte	.LVL9
 3114 0354 0400     		.2byte	0x4
 3115 0356 F3       		.byte	0xf3
 3116 0357 01       		.uleb128 0x1
 3117 0358 50       		.byte	0x50
 3118 0359 9F       		.byte	0x9f
 3119 035a 0A000000 		.4byte	.LVL9
 3120 035e 0E000000 		.4byte	.LVL10
 3121 0362 0100     		.2byte	0x1
 3122 0364 50       		.byte	0x50
 3123 0365 0E000000 		.4byte	.LVL10
 3124 0369 1C000000 		.4byte	.LFE145
 3125 036d 0400     		.2byte	0x4
 3126 036f F3       		.byte	0xf3
 3127 0370 01       		.uleb128 0x1
 3128 0371 50       		.byte	0x50
 3129 0372 9F       		.byte	0x9f
 3130 0373 00000000 		.4byte	0
 3131 0377 00000000 		.4byte	0
 3132              	.LLST3:
 3133 037b 00000000 		.4byte	.LVL6
 3134 037f 15000000 		.4byte	.LVL11-1
 3135 0383 0100     		.2byte	0x1
 3136 0385 51       		.byte	0x51
 3137 0386 15000000 		.4byte	.LVL11-1
 3138 038a 1C000000 		.4byte	.LFE145
 3139 038e 0400     		.2byte	0x4
 3140 0390 F3       		.byte	0xf3
 3141 0391 01       		.uleb128 0x1
 3142 0392 51       		.byte	0x51
 3143 0393 9F       		.byte	0x9f
 3144 0394 00000000 		.4byte	0
 3145 0398 00000000 		.4byte	0
 3146              	.LLST4:
ARM GAS  /tmp/ccFplMB9.s 			page 67


 3147 039c 06000000 		.4byte	.LVL7
 3148 03a0 0A000000 		.4byte	.LVL9
 3149 03a4 0200     		.2byte	0x2
 3150 03a6 31       		.byte	0x31
 3151 03a7 9F       		.byte	0x9f
 3152 03a8 00000000 		.4byte	0
 3153 03ac 00000000 		.4byte	0
 3154              	.LLST0:
 3155 03b0 00000000 		.4byte	.LVL0
 3156 03b4 06000000 		.4byte	.LVL2
 3157 03b8 0100     		.2byte	0x1
 3158 03ba 50       		.byte	0x50
 3159 03bb 06000000 		.4byte	.LVL2
 3160 03bf 08000000 		.4byte	.LVL3
 3161 03c3 0400     		.2byte	0x4
 3162 03c5 F3       		.byte	0xf3
 3163 03c6 01       		.uleb128 0x1
 3164 03c7 50       		.byte	0x50
 3165 03c8 9F       		.byte	0x9f
 3166 03c9 08000000 		.4byte	.LVL3
 3167 03cd 0A000000 		.4byte	.LVL4
 3168 03d1 0100     		.2byte	0x1
 3169 03d3 50       		.byte	0x50
 3170 03d4 0A000000 		.4byte	.LVL4
 3171 03d8 14000000 		.4byte	.LFE144
 3172 03dc 0400     		.2byte	0x4
 3173 03de F3       		.byte	0xf3
 3174 03df 01       		.uleb128 0x1
 3175 03e0 50       		.byte	0x50
 3176 03e1 9F       		.byte	0x9f
 3177 03e2 00000000 		.4byte	0
 3178 03e6 00000000 		.4byte	0
 3179              	.LLST1:
 3180 03ea 04000000 		.4byte	.LVL1
 3181 03ee 08000000 		.4byte	.LVL3
 3182 03f2 0200     		.2byte	0x2
 3183 03f4 31       		.byte	0x31
 3184 03f5 9F       		.byte	0x9f
 3185 03f6 00000000 		.4byte	0
 3186 03fa 00000000 		.4byte	0
 3187              		.section	.debug_aranges,"",%progbits
 3188 0000 6C000000 		.4byte	0x6c
 3189 0004 0200     		.2byte	0x2
 3190 0006 00000000 		.4byte	.Ldebug_info0
 3191 000a 04       		.byte	0x4
 3192 000b 00       		.byte	0
 3193 000c 0000     		.2byte	0
 3194 000e 0000     		.2byte	0
 3195 0010 00000000 		.4byte	.LFB142
 3196 0014 04000000 		.4byte	.LFE142-.LFB142
 3197 0018 00000000 		.4byte	.LFB143
 3198 001c 04000000 		.4byte	.LFE143-.LFB143
 3199 0020 00000000 		.4byte	.LFB144
 3200 0024 14000000 		.4byte	.LFE144-.LFB144
 3201 0028 00000000 		.4byte	.LFB145
 3202 002c 1C000000 		.4byte	.LFE145-.LFB145
 3203 0030 00000000 		.4byte	.LFB146
ARM GAS  /tmp/ccFplMB9.s 			page 68


 3204 0034 0A000000 		.4byte	.LFE146-.LFB146
 3205 0038 00000000 		.4byte	.LFB147
 3206 003c 20000000 		.4byte	.LFE147-.LFB147
 3207 0040 00000000 		.4byte	.LFB148
 3208 0044 18000000 		.4byte	.LFE148-.LFB148
 3209 0048 00000000 		.4byte	.LFB149
 3210 004c 18000000 		.4byte	.LFE149-.LFB149
 3211 0050 00000000 		.4byte	.LFB150
 3212 0054 18000000 		.4byte	.LFE150-.LFB150
 3213 0058 00000000 		.4byte	.LFB151
 3214 005c 24000000 		.4byte	.LFE151-.LFB151
 3215 0060 00000000 		.4byte	.LFB152
 3216 0064 24000000 		.4byte	.LFE152-.LFB152
 3217 0068 00000000 		.4byte	0
 3218 006c 00000000 		.4byte	0
 3219              		.section	.debug_ranges,"",%progbits
 3220              	.Ldebug_ranges0:
 3221 0000 00000000 		.4byte	.LFB142
 3222 0004 04000000 		.4byte	.LFE142
 3223 0008 00000000 		.4byte	.LFB143
 3224 000c 04000000 		.4byte	.LFE143
 3225 0010 00000000 		.4byte	.LFB144
 3226 0014 14000000 		.4byte	.LFE144
 3227 0018 00000000 		.4byte	.LFB145
 3228 001c 1C000000 		.4byte	.LFE145
 3229 0020 00000000 		.4byte	.LFB146
 3230 0024 0A000000 		.4byte	.LFE146
 3231 0028 00000000 		.4byte	.LFB147
 3232 002c 20000000 		.4byte	.LFE147
 3233 0030 00000000 		.4byte	.LFB148
 3234 0034 18000000 		.4byte	.LFE148
 3235 0038 00000000 		.4byte	.LFB149
 3236 003c 18000000 		.4byte	.LFE149
 3237 0040 00000000 		.4byte	.LFB150
 3238 0044 18000000 		.4byte	.LFE150
 3239 0048 00000000 		.4byte	.LFB151
 3240 004c 24000000 		.4byte	.LFE151
 3241 0050 00000000 		.4byte	.LFB152
 3242 0054 24000000 		.4byte	.LFE152
 3243 0058 00000000 		.4byte	0
 3244 005c 00000000 		.4byte	0
 3245              		.section	.debug_line,"",%progbits
 3246              	.Ldebug_line0:
 3247 0000 AF030000 		.section	.debug_str,"MS",%progbits,1
 3247      02005202 
 3247      00000201 
 3247      FB0E0D00 
 3247      01010101 
 3248              	.LASF46:
 3249 0000 5F64736F 		.ascii	"_dso_handle\000"
 3249      5F68616E 
 3249      646C6500 
 3250              	.LASF3:
 3251 000c 73686F72 		.ascii	"short int\000"
 3251      7420696E 
 3251      7400
 3252              	.LASF20:
ARM GAS  /tmp/ccFplMB9.s 			page 69


 3253 0016 5F66706F 		.ascii	"_fpos_t\000"
 3253      735F7400 
 3254              	.LASF45:
 3255 001e 5F666E61 		.ascii	"_fnargs\000"
 3255      72677300 
 3256              	.LASF99:
 3257 0026 5F72616E 		.ascii	"_rand48\000"
 3257      64343800 
 3258              	.LASF78:
 3259 002e 5F656D65 		.ascii	"_emergency\000"
 3259      7267656E 
 3259      637900
 3260              	.LASF5:
 3261 0039 5F5F7569 		.ascii	"__uint8_t\000"
 3261      6E74385F 
 3261      7400
 3262              	.LASF142:
 3263 0043 77725F70 		.ascii	"wr_protect\000"
 3263      726F7465 
 3263      637400
 3264              	.LASF90:
 3265 004e 5F617465 		.ascii	"_atexit0\000"
 3265      78697430 
 3265      00
 3266              	.LASF119:
 3267 0057 5F776372 		.ascii	"_wcrtomb_state\000"
 3267      746F6D62 
 3267      5F737461 
 3267      746500
 3268              	.LASF120:
 3269 0066 5F776373 		.ascii	"_wcsrtombs_state\000"
 3269      72746F6D 
 3269      62735F73 
 3269      74617465 
 3269      00
 3270              	.LASF131:
 3271 0077 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3271      6972715F 
 3271      70726576 
 3271      5F696E74 
 3271      65727275 
 3272              	.LASF58:
 3273 0094 5F6C6266 		.ascii	"_lbfsize\000"
 3273      73697A65 
 3273      00
 3274              	.LASF148:
 3275 009d 61646472 		.ascii	"addr\000"
 3275      00
 3276              	.LASF16:
 3277 00a2 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3277      52784275 
 3277      66666572 
 3277      00
 3278              	.LASF147:
 3279 00af 6C756E5F 		.ascii	"lun_desc\000"
 3279      64657363 
 3279      00
ARM GAS  /tmp/ccFplMB9.s 			page 70


 3280              	.LASF117:
 3281 00b8 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3281      746F7763 
 3281      5F737461 
 3281      746500
 3282              	.LASF152:
 3283 00c7 6D656D6F 		.ascii	"memory_2_ram\000"
 3283      72795F32 
 3283      5F72616D 
 3283      00
 3284              	.LASF112:
 3285 00d4 5F776374 		.ascii	"_wctomb_state\000"
 3285      6F6D625F 
 3285      73746174 
 3285      6500
 3286              	.LASF35:
 3287 00e2 5F5F746D 		.ascii	"__tm_sec\000"
 3287      5F736563 
 3287      00
 3288              	.LASF19:
 3289 00eb 5F6F6666 		.ascii	"_off_t\000"
 3289      5F7400
 3290              	.LASF63:
 3291 00f2 5F636C6F 		.ascii	"_close\000"
 3291      736500
 3292              	.LASF1:
 3293 00f9 7369676E 		.ascii	"signed char\000"
 3293      65642063 
 3293      68617200 
 3294              	.LASF64:
 3295 0105 5F756275 		.ascii	"_ubuf\000"
 3295      6600
 3296              	.LASF11:
 3297 010b 6C6F6E67 		.ascii	"long long unsigned int\000"
 3297      206C6F6E 
 3297      6720756E 
 3297      7369676E 
 3297      65642069 
 3298              	.LASF37:
 3299 0122 5F5F746D 		.ascii	"__tm_hour\000"
 3299      5F686F75 
 3299      7200
 3300              	.LASF93:
 3301 012c 5F5F7366 		.ascii	"__sf\000"
 3301      00
 3302              	.LASF44:
 3303 0131 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3303      65786974 
 3303      5F617267 
 3303      7300
 3304              	.LASF59:
 3305 013f 5F636F6F 		.ascii	"_cookie\000"
 3305      6B696500 
 3306              	.LASF161:
 3307 0147 7533325F 		.ascii	"u32_nb_sector\000"
 3307      6E625F73 
 3307      6563746F 
ARM GAS  /tmp/ccFplMB9.s 			page 71


 3307      7200
 3308              	.LASF92:
 3309 0155 5F5F7367 		.ascii	"__sglue\000"
 3309      6C756500 
 3310              	.LASF7:
 3311 015d 6C6F6E67 		.ascii	"long int\000"
 3311      20696E74 
 3311      00
 3312              	.LASF163:
 3313 0166 6765745F 		.ascii	"get_cur_lun\000"
 3313      6375725F 
 3313      6C756E00 
 3314              	.LASF56:
 3315 0172 5F666C61 		.ascii	"_flags\000"
 3315      677300
 3316              	.LASF48:
 3317 0179 5F69735F 		.ascii	"_is_cxa\000"
 3317      63786100 
 3318              	.LASF74:
 3319 0181 5F737464 		.ascii	"_stdin\000"
 3319      696E00
 3320              	.LASF84:
 3321 0188 5F726573 		.ascii	"_result_k\000"
 3321      756C745F 
 3321      6B00
 3322              	.LASF10:
 3323 0192 6C6F6E67 		.ascii	"long long int\000"
 3323      206C6F6E 
 3323      6720696E 
 3323      7400
 3324              	.LASF133:
 3325 01a0 646F7562 		.ascii	"double\000"
 3325      6C6500
 3326              	.LASF88:
 3327 01a7 5F637674 		.ascii	"_cvtbuf\000"
 3327      62756600 
 3328              	.LASF67:
 3329 01af 5F6F6666 		.ascii	"_offset\000"
 3329      73657400 
 3330              	.LASF118:
 3331 01b7 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3331      72746F77 
 3331      63735F73 
 3331      74617465 
 3331      00
 3332              	.LASF116:
 3333 01c8 5F6D6272 		.ascii	"_mbrlen_state\000"
 3333      6C656E5F 
 3333      73746174 
 3333      6500
 3334              	.LASF51:
 3335 01d6 5F666E73 		.ascii	"_fns\000"
 3335      00
 3336              	.LASF8:
 3337 01db 5F5F7569 		.ascii	"__uint32_t\000"
 3337      6E743332 
 3337      5F7400
ARM GAS  /tmp/ccFplMB9.s 			page 72


 3338              	.LASF160:
 3339 01e6 6D656D5F 		.ascii	"mem_read_capacity\000"
 3339      72656164 
 3339      5F636170 
 3339      61636974 
 3339      7900
 3340              	.LASF125:
 3341 01f8 5F696D70 		.ascii	"_impure_ptr\000"
 3341      7572655F 
 3341      70747200 
 3342              	.LASF76:
 3343 0204 5F737464 		.ascii	"_stderr\000"
 3343      65727200 
 3344              	.LASF33:
 3345 020c 5F426967 		.ascii	"_Bigint\000"
 3345      696E7400 
 3346              	.LASF164:
 3347 0214 6765745F 		.ascii	"get_nb_lun\000"
 3347      6E625F6C 
 3347      756E00
 3348              	.LASF60:
 3349 021f 5F726561 		.ascii	"_read\000"
 3349      6400
 3350              	.LASF34:
 3351 0225 5F5F746D 		.ascii	"__tm\000"
 3351      00
 3352              	.LASF23:
 3353 022a 5F5F7763 		.ascii	"__wchb\000"
 3353      686200
 3354              	.LASF17:
 3355 0231 53797374 		.ascii	"SystemCoreClock\000"
 3355      656D436F 
 3355      7265436C 
 3355      6F636B00 
 3356              	.LASF75:
 3357 0241 5F737464 		.ascii	"_stdout\000"
 3357      6F757400 
 3358              	.LASF87:
 3359 0249 5F637674 		.ascii	"_cvtlen\000"
 3359      6C656E00 
 3360              	.LASF9:
 3361 0251 6C6F6E67 		.ascii	"long unsigned int\000"
 3361      20756E73 
 3361      69676E65 
 3361      6420696E 
 3361      7400
 3362              	.LASF57:
 3363 0263 5F66696C 		.ascii	"_file\000"
 3363      6500
 3364              	.LASF146:
 3365 0269 6E616D65 		.ascii	"name\000"
 3365      00
 3366              	.LASF68:
 3367 026e 5F646174 		.ascii	"_data\000"
 3367      6100
 3368              	.LASF97:
 3369 0274 5F6E696F 		.ascii	"_niobs\000"
ARM GAS  /tmp/ccFplMB9.s 			page 73


 3369      627300
 3370              	.LASF108:
 3371 027b 5F72616E 		.ascii	"_rand_next\000"
 3371      645F6E65 
 3371      787400
 3372              	.LASF114:
 3373 0286 5F736967 		.ascii	"_signal_buf\000"
 3373      6E616C5F 
 3373      62756600 
 3374              	.LASF105:
 3375 0292 5F617363 		.ascii	"_asctime_buf\000"
 3375      74696D65 
 3375      5F627566 
 3375      00
 3376              	.LASF83:
 3377 029f 5F726573 		.ascii	"_result\000"
 3377      756C7400 
 3378              	.LASF22:
 3379 02a7 5F5F7763 		.ascii	"__wch\000"
 3379      6800
 3380              	.LASF122:
 3381 02ad 5F6E6578 		.ascii	"_nextf\000"
 3381      746600
 3382              	.LASF89:
 3383 02b4 5F6E6577 		.ascii	"_new\000"
 3383      00
 3384              	.LASF136:
 3385 02b9 4354524C 		.ascii	"CTRL_NO_PRESENT\000"
 3385      5F4E4F5F 
 3385      50524553 
 3385      454E5400 
 3386              	.LASF69:
 3387 02c9 5F6C6F63 		.ascii	"_lock\000"
 3387      6B00
 3388              	.LASF144:
 3389 02cf 6D656D5F 		.ascii	"mem_2_ram\000"
 3389      325F7261 
 3389      6D00
 3390              	.LASF101:
 3391 02d9 5F6D756C 		.ascii	"_mult\000"
 3391      7400
 3392              	.LASF61:
 3393 02df 5F777269 		.ascii	"_write\000"
 3393      746500
 3394              	.LASF40:
 3395 02e6 5F5F746D 		.ascii	"__tm_year\000"
 3395      5F796561 
 3395      7200
 3396              	.LASF123:
 3397 02f0 5F6E6D61 		.ascii	"_nmalloc\000"
 3397      6C6C6F63 
 3397      00
 3398              	.LASF28:
 3399 02f9 5F5F554C 		.ascii	"__ULong\000"
 3399      6F6E6700 
 3400              	.LASF15:
 3401 0301 73697A65 		.ascii	"sizetype\000"
ARM GAS  /tmp/ccFplMB9.s 			page 74


 3401      74797065 
 3401      00
 3402              	.LASF156:
 3403 030a 6D656D5F 		.ascii	"mem_unload\000"
 3403      756E6C6F 
 3403      616400
 3404              	.LASF145:
 3405 0315 72616D5F 		.ascii	"ram_2_mem\000"
 3405      325F6D65 
 3405      6D00
 3406              	.LASF143:
 3407 031f 72656D6F 		.ascii	"removal\000"
 3407      76616C00 
 3408              	.LASF165:
 3409 0327 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3409      43393920 
 3409      362E332E 
 3409      31203230 
 3409      31373036 
 3410 035a 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3410      76352D64 
 3410      3136202D 
 3410      6D666C6F 
 3410      61742D61 
 3411 038d 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3411      6E2D7365 
 3411      6374696F 
 3411      6E73202D 
 3411      66646174 
 3412 03c0 6F6E7374 		.ascii	"onstant\000"
 3412      616E7400 
 3413              	.LASF39:
 3414 03c8 5F5F746D 		.ascii	"__tm_mon\000"
 3414      5F6D6F6E 
 3414      00
 3415              	.LASF49:
 3416 03d1 5F617465 		.ascii	"_atexit\000"
 3416      78697400 
 3417              	.LASF127:
 3418 03d9 7375626F 		.ascii	"suboptarg\000"
 3418      70746172 
 3418      6700
 3419              	.LASF81:
 3420 03e3 5F5F7364 		.ascii	"__sdidinit\000"
 3420      6964696E 
 3420      697400
 3421              	.LASF107:
 3422 03ee 5F67616D 		.ascii	"_gamma_signgam\000"
 3422      6D615F73 
 3422      69676E67 
 3422      616D00
 3423              	.LASF21:
 3424 03fd 77696E74 		.ascii	"wint_t\000"
 3424      5F7400
 3425              	.LASF132:
 3426 0404 666C6F61 		.ascii	"float\000"
 3426      7400
ARM GAS  /tmp/ccFplMB9.s 			page 75


 3427              	.LASF128:
 3428 040a 675F696E 		.ascii	"g_interrupt_enabled\000"
 3428      74657272 
 3428      7570745F 
 3428      656E6162 
 3428      6C656400 
 3429              	.LASF18:
 3430 041e 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3430      4B5F5245 
 3430      43555253 
 3430      4956455F 
 3430      5400
 3431              	.LASF159:
 3432 0430 73656374 		.ascii	"sector_size\000"
 3432      6F725F73 
 3432      697A6500 
 3433              	.LASF139:
 3434 043c 74657374 		.ascii	"test_unit_ready\000"
 3434      5F756E69 
 3434      745F7265 
 3434      61647900 
 3435              	.LASF154:
 3436 044c 6D656D5F 		.ascii	"mem_removal\000"
 3436      72656D6F 
 3436      76616C00 
 3437              	.LASF53:
 3438 0458 5F626173 		.ascii	"_base\000"
 3438      6500
 3439              	.LASF129:
 3440 045e 5F426F6F 		.ascii	"_Bool\000"
 3440      6C00
 3441              	.LASF13:
 3442 0464 696E7433 		.ascii	"int32_t\000"
 3442      325F7400 
 3443              	.LASF2:
 3444 046c 756E7369 		.ascii	"unsigned char\000"
 3444      676E6564 
 3444      20636861 
 3444      7200
 3445              	.LASF98:
 3446 047a 5F696F62 		.ascii	"_iobs\000"
 3446      7300
 3447              	.LASF140:
 3448 0480 72656164 		.ascii	"read_capacity\000"
 3448      5F636170 
 3448      61636974 
 3448      7900
 3449              	.LASF121:
 3450 048e 5F685F65 		.ascii	"_h_errno\000"
 3450      72726E6F 
 3450      00
 3451              	.LASF27:
 3452 0497 5F666C6F 		.ascii	"_flock_t\000"
 3452      636B5F74 
 3452      00
 3453              	.LASF42:
 3454 04a0 5F5F746D 		.ascii	"__tm_yday\000"
ARM GAS  /tmp/ccFplMB9.s 			page 76


 3454      5F796461 
 3454      7900
 3455              	.LASF151:
 3456 04aa 72616D5F 		.ascii	"ram_2_memory\000"
 3456      325F6D65 
 3456      6D6F7279 
 3456      00
 3457              	.LASF52:
 3458 04b7 5F5F7362 		.ascii	"__sbuf\000"
 3458      756600
 3459              	.LASF71:
 3460 04be 5F666C61 		.ascii	"_flags2\000"
 3460      67733200 
 3461              	.LASF86:
 3462 04c6 5F667265 		.ascii	"_freelist\000"
 3462      656C6973 
 3462      7400
 3463              	.LASF95:
 3464 04d0 5F5F4649 		.ascii	"__FILE\000"
 3464      4C4500
 3465              	.LASF26:
 3466 04d7 5F6D6273 		.ascii	"_mbstate_t\000"
 3466      74617465 
 3466      5F7400
 3467              	.LASF141:
 3468 04e2 756E6C6F 		.ascii	"unload\000"
 3468      616400
 3469              	.LASF55:
 3470 04e9 5F5F7346 		.ascii	"__sFILE\000"
 3470      494C4500 
 3471              	.LASF70:
 3472 04f1 5F6D6273 		.ascii	"_mbstate\000"
 3472      74617465 
 3472      00
 3473              	.LASF110:
 3474 04fa 5F6D626C 		.ascii	"_mblen_state\000"
 3474      656E5F73 
 3474      74617465 
 3474      00
 3475              	.LASF77:
 3476 0507 5F696E63 		.ascii	"_inc\000"
 3476      00
 3477              	.LASF50:
 3478 050c 5F696E64 		.ascii	"_ind\000"
 3478      00
 3479              	.LASF80:
 3480 0511 5F637572 		.ascii	"_current_locale\000"
 3480      72656E74 
 3480      5F6C6F63 
 3480      616C6500 
 3481              	.LASF162:
 3482 0521 6D656D5F 		.ascii	"mem_test_unit_ready\000"
 3482      74657374 
 3482      5F756E69 
 3482      745F7265 
 3482      61647900 
 3483              	.LASF82:
ARM GAS  /tmp/ccFplMB9.s 			page 77


 3484 0535 5F5F636C 		.ascii	"__cleanup\000"
 3484      65616E75 
 3484      7000
 3485              	.LASF30:
 3486 053f 5F6D6178 		.ascii	"_maxwds\000"
 3486      77647300 
 3487              	.LASF72:
 3488 0547 5F726565 		.ascii	"_reent\000"
 3488      6E7400
 3489              	.LASF100:
 3490 054e 5F736565 		.ascii	"_seed\000"
 3490      6400
 3491              	.LASF24:
 3492 0554 5F5F636F 		.ascii	"__count\000"
 3492      756E7400 
 3493              	.LASF25:
 3494 055c 5F5F7661 		.ascii	"__value\000"
 3494      6C756500 
 3495              	.LASF62:
 3496 0564 5F736565 		.ascii	"_seek\000"
 3496      6B00
 3497              	.LASF41:
 3498 056a 5F5F746D 		.ascii	"__tm_wday\000"
 3498      5F776461 
 3498      7900
 3499              	.LASF135:
 3500 0574 4354524C 		.ascii	"CTRL_FAIL\000"
 3500      5F464149 
 3500      4C00
 3501              	.LASF94:
 3502 057e 63686172 		.ascii	"char\000"
 3502      00
 3503              	.LASF73:
 3504 0583 5F657272 		.ascii	"_errno\000"
 3504      6E6F00
 3505              	.LASF155:
 3506 058a 6D656D5F 		.ascii	"mem_wr_protect\000"
 3506      77725F70 
 3506      726F7465 
 3506      637400
 3507              	.LASF66:
 3508 0599 5F626C6B 		.ascii	"_blksize\000"
 3508      73697A65 
 3508      00
 3509              	.LASF54:
 3510 05a2 5F73697A 		.ascii	"_size\000"
 3510      6500
 3511              	.LASF0:
 3512 05a8 756E7369 		.ascii	"unsigned int\000"
 3512      676E6564 
 3512      20696E74 
 3512      00
 3513              	.LASF138:
 3514 05b5 4374726C 		.ascii	"Ctrl_status\000"
 3514      5F737461 
 3514      74757300 
 3515              	.LASF6:
ARM GAS  /tmp/ccFplMB9.s 			page 78


 3516 05c1 5F5F696E 		.ascii	"__int32_t\000"
 3516      7433325F 
 3516      7400
 3517              	.LASF31:
 3518 05cb 5F736967 		.ascii	"_sign\000"
 3518      6E00
 3519              	.LASF29:
 3520 05d1 5F6E6578 		.ascii	"_next\000"
 3520      7400
 3521              	.LASF158:
 3522 05d7 6D656D5F 		.ascii	"mem_sector_size\000"
 3522      73656374 
 3522      6F725F73 
 3522      697A6500 
 3523              	.LASF104:
 3524 05e7 5F737472 		.ascii	"_strtok_last\000"
 3524      746F6B5F 
 3524      6C617374 
 3524      00
 3525              	.LASF47:
 3526 05f4 5F666E74 		.ascii	"_fntypes\000"
 3526      79706573 
 3526      00
 3527              	.LASF4:
 3528 05fd 73686F72 		.ascii	"short unsigned int\000"
 3528      7420756E 
 3528      7369676E 
 3528      65642069 
 3528      6E7400
 3529              	.LASF102:
 3530 0610 5F616464 		.ascii	"_add\000"
 3530      00
 3531              	.LASF166:
 3532 0615 2E2E2F6C 		.ascii	"../libraries/Storage/ctrl_access.c\000"
 3532      69627261 
 3532      72696573 
 3532      2F53746F 
 3532      72616765 
 3533              	.LASF149:
 3534 0638 6E756D42 		.ascii	"numBlocks\000"
 3534      6C6F636B 
 3534      7300
 3535              	.LASF115:
 3536 0642 5F676574 		.ascii	"_getdate_err\000"
 3536      64617465 
 3536      5F657272 
 3536      00
 3537              	.LASF126:
 3538 064f 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3538      62616C5F 
 3538      696D7075 
 3538      72655F70 
 3538      747200
 3539              	.LASF79:
 3540 0662 5F637572 		.ascii	"_current_category\000"
 3540      72656E74 
 3540      5F636174 
ARM GAS  /tmp/ccFplMB9.s 			page 79


 3540      65676F72 
 3540      7900
 3541              	.LASF14:
 3542 0674 75696E74 		.ascii	"uint32_t\000"
 3542      33325F74 
 3542      00
 3543              	.LASF103:
 3544 067d 5F756E75 		.ascii	"_unused_rand\000"
 3544      7365645F 
 3544      72616E64 
 3544      00
 3545              	.LASF150:
 3546 068a 73746174 		.ascii	"status\000"
 3546      757300
 3547              	.LASF134:
 3548 0691 4354524C 		.ascii	"CTRL_GOOD\000"
 3548      5F474F4F 
 3548      4400
 3549              	.LASF32:
 3550 069b 5F776473 		.ascii	"_wds\000"
 3550      00
 3551              	.LASF96:
 3552 06a0 5F676C75 		.ascii	"_glue\000"
 3552      6500
 3553              	.LASF12:
 3554 06a6 75696E74 		.ascii	"uint8_t\000"
 3554      385F7400 
 3555              	.LASF113:
 3556 06ae 5F6C3634 		.ascii	"_l64a_buf\000"
 3556      615F6275 
 3556      6600
 3557              	.LASF91:
 3558 06b8 5F736967 		.ascii	"_sig_func\000"
 3558      5F66756E 
 3558      6300
 3559              	.LASF157:
 3560 06c2 756E6C6F 		.ascii	"unloaded\000"
 3560      61646564 
 3560      00
 3561              	.LASF137:
 3562 06cb 4354524C 		.ascii	"CTRL_BUSY\000"
 3562      5F425553 
 3562      5900
 3563              	.LASF130:
 3564 06d5 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3564      6972715F 
 3564      63726974 
 3564      6963616C 
 3564      5F736563 
 3565              	.LASF65:
 3566 06f6 5F6E6275 		.ascii	"_nbuf\000"
 3566      6600
 3567              	.LASF124:
 3568 06fc 5F756E75 		.ascii	"_unused\000"
 3568      73656400 
 3569              	.LASF167:
 3570 0704 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
ARM GAS  /tmp/ccFplMB9.s 			page 80


 3570      652F746F 
 3570      72626A6F 
 3570      726E2F65 
 3570      636C6970 
 3571 0737 00       		.ascii	"\000"
 3572              	.LASF43:
 3573 0738 5F5F746D 		.ascii	"__tm_isdst\000"
 3573      5F697364 
 3573      737400
 3574              	.LASF106:
 3575 0743 5F6C6F63 		.ascii	"_localtime_buf\000"
 3575      616C7469 
 3575      6D655F62 
 3575      756600
 3576              	.LASF36:
 3577 0752 5F5F746D 		.ascii	"__tm_min\000"
 3577      5F6D696E 
 3577      00
 3578              	.LASF109:
 3579 075b 5F723438 		.ascii	"_r48\000"
 3579      00
 3580              	.LASF111:
 3581 0760 5F6D6274 		.ascii	"_mbtowc_state\000"
 3581      6F77635F 
 3581      73746174 
 3581      6500
 3582              	.LASF85:
 3583 076e 5F703573 		.ascii	"_p5s\000"
 3583      00
 3584              	.LASF38:
 3585 0773 5F5F746D 		.ascii	"__tm_mday\000"
 3585      5F6D6461 
 3585      7900
 3586              	.LASF153:
 3587 077d 6D656D5F 		.ascii	"mem_name\000"
 3587      6E616D65 
 3587      00
 3588              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
