ARM GAS  /tmp/ccOyha2A.s 			page 1


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
  12              		.file	"itoa.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.ltoa,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	ltoa
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	ltoa, %function
  25              	ltoa:
  26              	.LFB1:
  27              		.file 1 "../cores/arduino/itoa.c"
   1:../cores/arduino/itoa.c **** /*
   2:../cores/arduino/itoa.c ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/itoa.c **** 
   4:../cores/arduino/itoa.c ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/itoa.c ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/itoa.c ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/itoa.c ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/itoa.c **** 
   9:../cores/arduino/itoa.c ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/itoa.c ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/itoa.c ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/itoa.c ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/itoa.c **** 
  14:../cores/arduino/itoa.c ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/itoa.c ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/itoa.c ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/itoa.c **** */
  18:../cores/arduino/itoa.c **** 
  19:../cores/arduino/itoa.c **** #include "itoa.h"
  20:../cores/arduino/itoa.c **** #include <string.h>
  21:../cores/arduino/itoa.c **** 
  22:../cores/arduino/itoa.c **** #ifdef __cplusplus
  23:../cores/arduino/itoa.c **** extern "C"{
  24:../cores/arduino/itoa.c **** #endif // __cplusplus
  25:../cores/arduino/itoa.c **** 
  26:../cores/arduino/itoa.c **** #if 0
  27:../cores/arduino/itoa.c **** /* reverse:  reverse string s in place */
  28:../cores/arduino/itoa.c **** static void reverse( char s[] )
  29:../cores/arduino/itoa.c **** {
  30:../cores/arduino/itoa.c ****   int i, j ;
ARM GAS  /tmp/ccOyha2A.s 			page 2


  31:../cores/arduino/itoa.c ****   char c ;
  32:../cores/arduino/itoa.c **** 
  33:../cores/arduino/itoa.c ****   for ( i = 0, j = strlen(s)-1 ; i < j ; i++, j-- )
  34:../cores/arduino/itoa.c ****   {
  35:../cores/arduino/itoa.c ****     c = s[i] ;
  36:../cores/arduino/itoa.c ****     s[i] = s[j] ;
  37:../cores/arduino/itoa.c ****     s[j] = c ;
  38:../cores/arduino/itoa.c ****   }
  39:../cores/arduino/itoa.c **** }
  40:../cores/arduino/itoa.c **** 
  41:../cores/arduino/itoa.c **** /* itoa:  convert n to characters in s */
  42:../cores/arduino/itoa.c **** extern void itoa( int n, char s[] )
  43:../cores/arduino/itoa.c **** {
  44:../cores/arduino/itoa.c ****   int i, sign ;
  45:../cores/arduino/itoa.c **** 
  46:../cores/arduino/itoa.c ****   if ( (sign = n) < 0 )  /* record sign */
  47:../cores/arduino/itoa.c ****   {
  48:../cores/arduino/itoa.c ****     n = -n;          /* make n positive */
  49:../cores/arduino/itoa.c ****   }
  50:../cores/arduino/itoa.c **** 
  51:../cores/arduino/itoa.c ****   i = 0;
  52:../cores/arduino/itoa.c ****   do
  53:../cores/arduino/itoa.c ****   {       /* generate digits in reverse order */
  54:../cores/arduino/itoa.c ****     s[i++] = n % 10 + '0';   /* get next digit */
  55:../cores/arduino/itoa.c ****   } while ((n /= 10) > 0) ;     /* delete it */
  56:../cores/arduino/itoa.c **** 
  57:../cores/arduino/itoa.c ****   if (sign < 0 )
  58:../cores/arduino/itoa.c ****   {
  59:../cores/arduino/itoa.c ****     s[i++] = '-';
  60:../cores/arduino/itoa.c ****   }
  61:../cores/arduino/itoa.c **** 
  62:../cores/arduino/itoa.c ****   s[i] = '\0';
  63:../cores/arduino/itoa.c **** 
  64:../cores/arduino/itoa.c ****   reverse( s ) ;
  65:../cores/arduino/itoa.c **** }
  66:../cores/arduino/itoa.c **** 
  67:../cores/arduino/itoa.c **** #else
  68:../cores/arduino/itoa.c **** 
  69:../cores/arduino/itoa.c **** extern char* itoa( int value, char *string, int radix )
  70:../cores/arduino/itoa.c **** {
  71:../cores/arduino/itoa.c ****   return ltoa( value, string, radix ) ;
  72:../cores/arduino/itoa.c **** }
  73:../cores/arduino/itoa.c **** 
  74:../cores/arduino/itoa.c **** extern char* ltoa( long value, char *string, int radix )
  75:../cores/arduino/itoa.c **** {
  28              		.loc 1 75 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 40
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  76:../cores/arduino/itoa.c ****   char tmp[33];
  77:../cores/arduino/itoa.c ****   char *tp = tmp;
  78:../cores/arduino/itoa.c ****   long i;
  79:../cores/arduino/itoa.c ****   unsigned long v;
  80:../cores/arduino/itoa.c ****   int sign;
  81:../cores/arduino/itoa.c ****   char *sp;
  82:../cores/arduino/itoa.c **** 
ARM GAS  /tmp/ccOyha2A.s 			page 3


  83:../cores/arduino/itoa.c ****   if ( string == NULL )
  33              		.loc 1 83 0
  34 0000 0029     		cmp	r1, #0
  35 0002 46D0     		beq	.L12
  84:../cores/arduino/itoa.c ****   {
  85:../cores/arduino/itoa.c ****     return 0 ;
  86:../cores/arduino/itoa.c ****   }
  87:../cores/arduino/itoa.c **** 
  88:../cores/arduino/itoa.c ****   if (radix > 36 || radix <= 1)
  36              		.loc 1 88 0
  37 0004 931E     		subs	r3, r2, #2
  38 0006 222B     		cmp	r3, #34
  39 0008 43D8     		bhi	.L12
  75:../cores/arduino/itoa.c ****   char tmp[33];
  40              		.loc 1 75 0
  41 000a 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  42              		.cfi_def_cfa_offset 24
  43              		.cfi_offset 4, -24
  44              		.cfi_offset 5, -20
  45              		.cfi_offset 6, -16
  46              		.cfi_offset 7, -12
  47              		.cfi_offset 8, -8
  48              		.cfi_offset 14, -4
  89:../cores/arduino/itoa.c ****   {
  90:../cores/arduino/itoa.c ****     return 0 ;
  91:../cores/arduino/itoa.c ****   }
  92:../cores/arduino/itoa.c **** 
  93:../cores/arduino/itoa.c ****   sign = (radix == 10 && value < 0);
  49              		.loc 1 93 0
  50 000e 4FEAD078 		lsr	r8, r0, #31
  75:../cores/arduino/itoa.c ****   char tmp[33];
  51              		.loc 1 75 0
  52 0012 8AB0     		sub	sp, sp, #40
  53              		.cfi_def_cfa_offset 64
  54              		.loc 1 93 0
  55 0014 0A2A     		cmp	r2, #10
  56 0016 14BF     		ite	ne
  57 0018 4FF00008 		movne	r8, #0
  58 001c 08F00108 		andeq	r8, r8, #1
  59              	.LVL1:
  94:../cores/arduino/itoa.c ****   if (sign)
  60              		.loc 1 94 0
  61 0020 B8F1000F 		cmp	r8, #0
  62 0024 31D1     		bne	.L21
  95:../cores/arduino/itoa.c ****   {
  96:../cores/arduino/itoa.c ****     v = -value;
  97:../cores/arduino/itoa.c ****   }
  98:../cores/arduino/itoa.c ****   else
  99:../cores/arduino/itoa.c ****   {
 100:../cores/arduino/itoa.c ****     v = (unsigned long)value;
  63              		.loc 1 100 0
  64 0026 0646     		mov	r6, r0
  65              	.LVL2:
  66              	.L5:
  67 0028 0DF10504 		add	r4, sp, #5
  68 002c 0DF1040E 		add	lr, sp, #4
  69              	.LVL3:
ARM GAS  /tmp/ccOyha2A.s 			page 4


  70              	.L15:
 101:../cores/arduino/itoa.c ****   }
 102:../cores/arduino/itoa.c **** 
 103:../cores/arduino/itoa.c ****   while (v || tp == tmp)
 104:../cores/arduino/itoa.c ****   {
 105:../cores/arduino/itoa.c ****     i = v % radix;
 106:../cores/arduino/itoa.c ****     v = v / radix;
 107:../cores/arduino/itoa.c ****     if (i < 10)
 108:../cores/arduino/itoa.c ****       *tp++ = i+'0';
 109:../cores/arduino/itoa.c ****     else
 110:../cores/arduino/itoa.c ****       *tp++ = i + 'a' - 10;
  71              		.loc 1 110 0
  72 0030 2746     		mov	r7, r4
  73 0032 0134     		adds	r4, r4, #1
  74              	.LVL4:
 105:../cores/arduino/itoa.c ****     v = v / radix;
  75              		.loc 1 105 0
  76 0034 B6FBF2F5 		udiv	r5, r6, r2
  77 0038 02FB1563 		mls	r3, r2, r5, r6
  78              	.LVL5:
 106:../cores/arduino/itoa.c ****     if (i < 10)
  79              		.loc 1 106 0
  80 003c 2E46     		mov	r6, r5
  81              	.LVL6:
 107:../cores/arduino/itoa.c ****       *tp++ = i+'0';
  82              		.loc 1 107 0
  83 003e 092B     		cmp	r3, #9
 108:../cores/arduino/itoa.c ****     else
  84              		.loc 1 108 0
  85 0040 03F1300C 		add	ip, r3, #48
  86              		.loc 1 110 0
  87 0044 03F15703 		add	r3, r3, #87
  88              	.LVL7:
 108:../cores/arduino/itoa.c ****     else
  89              		.loc 1 108 0
  90 0048 94BF     		ite	ls
  91 004a 04F802CC 		strbls	ip, [r4, #-2]
  92              		.loc 1 110 0
  93 004e 04F8023C 		strbhi	r3, [r4, #-2]
 103:../cores/arduino/itoa.c ****   {
  94              		.loc 1 103 0
  95 0052 7745     		cmp	r7, lr
  96 0054 ECD0     		beq	.L15
  97 0056 002D     		cmp	r5, #0
  98 0058 EAD1     		bne	.L15
  99              	.LVL8:
 111:../cores/arduino/itoa.c ****   }
 112:../cores/arduino/itoa.c **** 
 113:../cores/arduino/itoa.c ****   sp = string;
 114:../cores/arduino/itoa.c **** 
 115:../cores/arduino/itoa.c ****   if (sign)
 100              		.loc 1 115 0
 101 005a B8F1000F 		cmp	r8, #0
 102 005e 16D0     		beq	.L13
 116:../cores/arduino/itoa.c ****     *sp++ = '-';
 103              		.loc 1 116 0
 104 0060 2D23     		movs	r3, #45
ARM GAS  /tmp/ccOyha2A.s 			page 5


 105              	.LVL9:
 106 0062 4C1C     		adds	r4, r1, #1
 107              	.LVL10:
 108 0064 0B70     		strb	r3, [r1]
 109              	.L8:
 110              	.LVL11:
 117:../cores/arduino/itoa.c ****   while (tp > tmp)
 111              		.loc 1 117 0
 112 0066 7745     		cmp	r7, lr
 113 0068 09D9     		bls	.L9
 114 006a 621E     		subs	r2, r4, #1
 115              	.LVL12:
 116 006c 3B46     		mov	r3, r7
 117              	.LVL13:
 118              	.L10:
 118:../cores/arduino/itoa.c ****     *sp++ = *--tp;
 119              		.loc 1 118 0
 120 006e 13F8010D 		ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
 121              	.LVL14:
 117:../cores/arduino/itoa.c ****   while (tp > tmp)
 122              		.loc 1 117 0
 123 0072 7345     		cmp	r3, lr
 124              		.loc 1 118 0
 125 0074 02F8010F 		strb	r0, [r2, #1]!
 126              	.LVL15:
 117:../cores/arduino/itoa.c ****   while (tp > tmp)
 127              		.loc 1 117 0
 128 0078 F9D1     		bne	.L10
 129 007a FF1A     		subs	r7, r7, r3
 130 007c 3C44     		add	r4, r4, r7
 131              	.LVL16:
 132              	.L9:
 119:../cores/arduino/itoa.c ****   *sp = 0;
 133              		.loc 1 119 0
 134 007e 0023     		movs	r3, #0
 120:../cores/arduino/itoa.c **** 
 121:../cores/arduino/itoa.c ****   return string;
 135              		.loc 1 121 0
 136 0080 0846     		mov	r0, r1
 119:../cores/arduino/itoa.c ****   *sp = 0;
 137              		.loc 1 119 0
 138 0082 2370     		strb	r3, [r4]
 122:../cores/arduino/itoa.c **** }
 139              		.loc 1 122 0
 140 0084 0AB0     		add	sp, sp, #40
 141              		.cfi_remember_state
 142              		.cfi_def_cfa_offset 24
 143              		@ sp needed
 144 0086 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 145              	.LVL17:
 146              	.L21:
 147              		.cfi_restore_state
  96:../cores/arduino/itoa.c ****   }
 148              		.loc 1 96 0
 149 008a 4642     		negs	r6, r0
 150              	.LVL18:
 151 008c CCE7     		b	.L5
ARM GAS  /tmp/ccOyha2A.s 			page 6


 152              	.LVL19:
 153              	.L13:
 154 008e 0C46     		mov	r4, r1
 155 0090 E9E7     		b	.L8
 156              	.LVL20:
 157              	.L12:
 158              		.cfi_def_cfa_offset 0
 159              		.cfi_restore 4
 160              		.cfi_restore 5
 161              		.cfi_restore 6
 162              		.cfi_restore 7
 163              		.cfi_restore 8
 164              		.cfi_restore 14
  85:../cores/arduino/itoa.c ****   }
 165              		.loc 1 85 0
 166 0092 0020     		movs	r0, #0
 167              	.LVL21:
 168 0094 7047     		bx	lr
 169              		.cfi_endproc
 170              	.LFE1:
 171              		.size	ltoa, .-ltoa
 172 0096 00BF     		.section	.text.itoa,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	itoa
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv5-d16
 180              		.type	itoa, %function
 181              	itoa:
 182              	.LFB0:
  70:../cores/arduino/itoa.c ****   return ltoa( value, string, radix ) ;
 183              		.loc 1 70 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188              	.LVL22:
  71:../cores/arduino/itoa.c **** }
 189              		.loc 1 71 0
 190 0000 FFF7FEBF 		b	ltoa
 191              	.LVL23:
 192              		.cfi_endproc
 193              	.LFE0:
 194              		.size	itoa, .-itoa
 195              		.section	.text.ultoa,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	ultoa
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv5-d16
 203              		.type	ultoa, %function
 204              	ultoa:
 205              	.LFB3:
ARM GAS  /tmp/ccOyha2A.s 			page 7


 123:../cores/arduino/itoa.c **** 
 124:../cores/arduino/itoa.c **** extern char* utoa( unsigned int value, char *string, int radix )
 125:../cores/arduino/itoa.c **** {
 126:../cores/arduino/itoa.c ****   return ultoa( (unsigned long)value, string, radix ) ;
 127:../cores/arduino/itoa.c **** }
 128:../cores/arduino/itoa.c **** 
 129:../cores/arduino/itoa.c **** extern char* ultoa( unsigned long value, char *string, int radix )
 130:../cores/arduino/itoa.c **** {
 206              		.loc 1 130 0
 207              		.cfi_startproc
 208              		@ args = 0, pretend = 0, frame = 40
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              	.LVL24:
 131:../cores/arduino/itoa.c ****   char tmp[33];
 132:../cores/arduino/itoa.c ****   char *tp = tmp;
 133:../cores/arduino/itoa.c ****   long i;
 134:../cores/arduino/itoa.c ****   unsigned long v = value;
 135:../cores/arduino/itoa.c ****   char *sp;
 136:../cores/arduino/itoa.c **** 
 137:../cores/arduino/itoa.c ****   if ( string == NULL )
 211              		.loc 1 137 0
 212 0000 99B3     		cbz	r1, .L31
 138:../cores/arduino/itoa.c ****   {
 139:../cores/arduino/itoa.c ****     return 0;
 140:../cores/arduino/itoa.c ****   }
 141:../cores/arduino/itoa.c **** 
 142:../cores/arduino/itoa.c ****   if (radix > 36 || radix <= 1)
 213              		.loc 1 142 0
 214 0002 931E     		subs	r3, r2, #2
 215 0004 222B     		cmp	r3, #34
 216 0006 30D8     		bhi	.L31
 130:../cores/arduino/itoa.c ****   char tmp[33];
 217              		.loc 1 130 0
 218 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 219              		.cfi_def_cfa_offset 20
 220              		.cfi_offset 4, -20
 221              		.cfi_offset 5, -16
 222              		.cfi_offset 6, -12
 223              		.cfi_offset 7, -8
 224              		.cfi_offset 14, -4
 225 000a 8BB0     		sub	sp, sp, #44
 226              		.cfi_def_cfa_offset 64
 227 000c 0DF10504 		add	r4, sp, #5
 228 0010 0DF1040E 		add	lr, sp, #4
 229              	.LVL25:
 230              	.L34:
 143:../cores/arduino/itoa.c ****   {
 144:../cores/arduino/itoa.c ****     return 0;
 145:../cores/arduino/itoa.c ****   }
 146:../cores/arduino/itoa.c ****  
 147:../cores/arduino/itoa.c ****   while (v || tp == tmp)
 148:../cores/arduino/itoa.c ****   {
 149:../cores/arduino/itoa.c ****     i = v % radix;
 150:../cores/arduino/itoa.c ****     v = v / radix;
 151:../cores/arduino/itoa.c ****     if (i < 10)
 152:../cores/arduino/itoa.c ****       *tp++ = i+'0';
 153:../cores/arduino/itoa.c ****     else
ARM GAS  /tmp/ccOyha2A.s 			page 8


 154:../cores/arduino/itoa.c ****       *tp++ = i + 'a' - 10;
 231              		.loc 1 154 0
 232 0014 2646     		mov	r6, r4
 233 0016 0134     		adds	r4, r4, #1
 234              	.LVL26:
 149:../cores/arduino/itoa.c ****     v = v / radix;
 235              		.loc 1 149 0
 236 0018 B0FBF2F5 		udiv	r5, r0, r2
 237 001c 02FB1503 		mls	r3, r2, r5, r0
 238              	.LVL27:
 150:../cores/arduino/itoa.c ****     if (i < 10)
 239              		.loc 1 150 0
 240 0020 2846     		mov	r0, r5
 241              	.LVL28:
 151:../cores/arduino/itoa.c ****       *tp++ = i+'0';
 242              		.loc 1 151 0
 243 0022 092B     		cmp	r3, #9
 152:../cores/arduino/itoa.c ****     else
 244              		.loc 1 152 0
 245 0024 03F13007 		add	r7, r3, #48
 246              		.loc 1 154 0
 247 0028 03F15703 		add	r3, r3, #87
 248              	.LVL29:
 152:../cores/arduino/itoa.c ****     else
 249              		.loc 1 152 0
 250 002c 94BF     		ite	ls
 251 002e 04F8027C 		strbls	r7, [r4, #-2]
 252              		.loc 1 154 0
 253 0032 04F8023C 		strbhi	r3, [r4, #-2]
 147:../cores/arduino/itoa.c ****   {
 254              		.loc 1 147 0
 255 0036 002D     		cmp	r5, #0
 256 0038 ECD1     		bne	.L34
 257 003a 7645     		cmp	r6, lr
 258 003c EAD0     		beq	.L34
 259              	.LVL30:
 155:../cores/arduino/itoa.c ****   }
 156:../cores/arduino/itoa.c **** 
 157:../cores/arduino/itoa.c ****   sp = string;
 158:../cores/arduino/itoa.c **** 
 159:../cores/arduino/itoa.c ****  
 160:../cores/arduino/itoa.c ****   while (tp > tmp)
 260              		.loc 1 160 0
 261 003e 0ED9     		bls	.L32
 262 0040 4A1E     		subs	r2, r1, #1
 263              	.LVL31:
 264 0042 3346     		mov	r3, r6
 265              	.LVL32:
 266              	.L29:
 161:../cores/arduino/itoa.c ****     *sp++ = *--tp;
 267              		.loc 1 161 0
 268 0044 13F8010D 		ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
 269              	.LVL33:
 160:../cores/arduino/itoa.c ****     *sp++ = *--tp;
 270              		.loc 1 160 0
 271 0048 7345     		cmp	r3, lr
 272              		.loc 1 161 0
ARM GAS  /tmp/ccOyha2A.s 			page 9


 273 004a 02F8010F 		strb	r0, [r2, #1]!
 274              	.LVL34:
 160:../cores/arduino/itoa.c ****     *sp++ = *--tp;
 275              		.loc 1 160 0
 276 004e F9D1     		bne	.L29
 277 0050 F61A     		subs	r6, r6, r3
 162:../cores/arduino/itoa.c ****   *sp = 0;
 163:../cores/arduino/itoa.c **** 
 164:../cores/arduino/itoa.c ****   return string;
 278              		.loc 1 164 0
 279 0052 0846     		mov	r0, r1
 162:../cores/arduino/itoa.c ****   *sp = 0;
 280              		.loc 1 162 0
 281 0054 0023     		movs	r3, #0
 282              	.LVL35:
 283 0056 0E44     		add	r6, r6, r1
 284 0058 3370     		strb	r3, [r6]
 165:../cores/arduino/itoa.c **** }
 285              		.loc 1 165 0
 286 005a 0BB0     		add	sp, sp, #44
 287              		.cfi_remember_state
 288              		.cfi_def_cfa_offset 20
 289              		@ sp needed
 290 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 291              	.LVL36:
 292              	.L32:
 293              		.cfi_restore_state
 160:../cores/arduino/itoa.c ****     *sp++ = *--tp;
 294              		.loc 1 160 0
 295 005e 0E46     		mov	r6, r1
 296              	.LVL37:
 162:../cores/arduino/itoa.c ****   *sp = 0;
 297              		.loc 1 162 0
 298 0060 0023     		movs	r3, #0
 299              	.LVL38:
 164:../cores/arduino/itoa.c **** }
 300              		.loc 1 164 0
 301 0062 0846     		mov	r0, r1
 302              	.LVL39:
 162:../cores/arduino/itoa.c ****   *sp = 0;
 303              		.loc 1 162 0
 304 0064 3370     		strb	r3, [r6]
 305              		.loc 1 165 0
 306 0066 0BB0     		add	sp, sp, #44
 307              		.cfi_def_cfa_offset 20
 308              		@ sp needed
 309 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 310              	.LVL40:
 311              	.L31:
 312              		.cfi_def_cfa_offset 0
 313              		.cfi_restore 4
 314              		.cfi_restore 5
 315              		.cfi_restore 6
 316              		.cfi_restore 7
 317              		.cfi_restore 14
 139:../cores/arduino/itoa.c ****   }
 318              		.loc 1 139 0
ARM GAS  /tmp/ccOyha2A.s 			page 10


 319 006a 0020     		movs	r0, #0
 320              	.LVL41:
 321 006c 7047     		bx	lr
 322              		.cfi_endproc
 323              	.LFE3:
 324              		.size	ultoa, .-ultoa
 325 006e 00BF     		.section	.text.utoa,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	utoa
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv5-d16
 333              		.type	utoa, %function
 334              	utoa:
 335              	.LFB2:
 125:../cores/arduino/itoa.c ****   return ultoa( (unsigned long)value, string, radix ) ;
 336              		.loc 1 125 0
 337              		.cfi_startproc
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341              	.LVL42:
 126:../cores/arduino/itoa.c **** }
 342              		.loc 1 126 0
 343 0000 FFF7FEBF 		b	ultoa
 344              	.LVL43:
 345              		.cfi_endproc
 346              	.LFE2:
 347              		.size	utoa, .-utoa
 348              		.text
 349              	.Letext0:
 350              		.file 2 "/usr/include/newlib/sys/lock.h"
 351              		.file 3 "/usr/include/newlib/sys/_types.h"
 352              		.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 353              		.file 5 "/usr/include/newlib/sys/reent.h"
 354              		.section	.debug_info,"",%progbits
 355              	.Ldebug_info0:
 356 0000 6E0A0000 		.4byte	0xa6e
 357 0004 0400     		.2byte	0x4
 358 0006 00000000 		.4byte	.Ldebug_abbrev0
 359 000a 04       		.byte	0x4
 360 000b 01       		.uleb128 0x1
 361 000c 84020000 		.4byte	.LASF126
 362 0010 0C       		.byte	0xc
 363 0011 96010000 		.4byte	.LASF127
 364 0015 86040000 		.4byte	.LASF128
 365 0019 00000000 		.4byte	.Ldebug_ranges0+0
 366 001d 00000000 		.4byte	0
 367 0021 00000000 		.4byte	.Ldebug_line0
 368 0025 02       		.uleb128 0x2
 369 0026 04       		.byte	0x4
 370 0027 05       		.byte	0x5
 371 0028 696E7400 		.ascii	"int\000"
 372 002c 03       		.uleb128 0x3
 373 002d 04       		.byte	0x4
ARM GAS  /tmp/ccOyha2A.s 			page 11


 374 002e 07       		.byte	0x7
 375 002f C3010000 		.4byte	.LASF0
 376 0033 03       		.uleb128 0x3
 377 0034 01       		.byte	0x1
 378 0035 06       		.byte	0x6
 379 0036 B9000000 		.4byte	.LASF1
 380 003a 03       		.uleb128 0x3
 381 003b 01       		.byte	0x1
 382 003c 08       		.byte	0x8
 383 003d 64030000 		.4byte	.LASF2
 384 0041 03       		.uleb128 0x3
 385 0042 02       		.byte	0x2
 386 0043 05       		.byte	0x5
 387 0044 80030000 		.4byte	.LASF3
 388 0048 03       		.uleb128 0x3
 389 0049 02       		.byte	0x2
 390 004a 07       		.byte	0x7
 391 004b 06020000 		.4byte	.LASF4
 392 004f 03       		.uleb128 0x3
 393 0050 04       		.byte	0x4
 394 0051 05       		.byte	0x5
 395 0052 FE000000 		.4byte	.LASF5
 396 0056 03       		.uleb128 0x3
 397 0057 04       		.byte	0x4
 398 0058 07       		.byte	0x7
 399 0059 E7010000 		.4byte	.LASF6
 400 005d 03       		.uleb128 0x3
 401 005e 08       		.byte	0x8
 402 005f 05       		.byte	0x5
 403 0060 AB000000 		.4byte	.LASF7
 404 0064 03       		.uleb128 0x3
 405 0065 08       		.byte	0x8
 406 0066 07       		.byte	0x7
 407 0067 65000000 		.4byte	.LASF8
 408 006b 04       		.uleb128 0x4
 409 006c 52030000 		.4byte	.LASF9
 410 0070 02       		.byte	0x2
 411 0071 07       		.byte	0x7
 412 0072 25000000 		.4byte	0x25
 413 0076 04       		.uleb128 0x4
 414 0077 41030000 		.4byte	.LASF10
 415 007b 03       		.byte	0x3
 416 007c 2C       		.byte	0x2c
 417 007d 4F000000 		.4byte	0x4f
 418 0081 04       		.uleb128 0x4
 419 0082 41040000 		.4byte	.LASF11
 420 0086 03       		.byte	0x3
 421 0087 72       		.byte	0x72
 422 0088 4F000000 		.4byte	0x4f
 423 008c 05       		.uleb128 0x5
 424 008d 55020000 		.4byte	.LASF12
 425 0091 04       		.byte	0x4
 426 0092 6501     		.2byte	0x165
 427 0094 2C000000 		.4byte	0x2c
 428 0098 06       		.uleb128 0x6
 429 0099 04       		.byte	0x4
 430 009a 03       		.byte	0x3
ARM GAS  /tmp/ccOyha2A.s 			page 12


 431 009b A6       		.byte	0xa6
 432 009c B7000000 		.4byte	0xb7
 433 00a0 07       		.uleb128 0x7
 434 00a1 48020000 		.4byte	.LASF13
 435 00a5 03       		.byte	0x3
 436 00a6 A8       		.byte	0xa8
 437 00a7 8C000000 		.4byte	0x8c
 438 00ab 07       		.uleb128 0x7
 439 00ac D0010000 		.4byte	.LASF14
 440 00b0 03       		.byte	0x3
 441 00b1 A9       		.byte	0xa9
 442 00b2 B7000000 		.4byte	0xb7
 443 00b6 00       		.byte	0
 444 00b7 08       		.uleb128 0x8
 445 00b8 3A000000 		.4byte	0x3a
 446 00bc C7000000 		.4byte	0xc7
 447 00c0 09       		.uleb128 0x9
 448 00c1 C7000000 		.4byte	0xc7
 449 00c5 03       		.byte	0x3
 450 00c6 00       		.byte	0
 451 00c7 03       		.uleb128 0x3
 452 00c8 04       		.byte	0x4
 453 00c9 07       		.byte	0x7
 454 00ca 7B020000 		.4byte	.LASF15
 455 00ce 0A       		.uleb128 0xa
 456 00cf 08       		.byte	0x8
 457 00d0 03       		.byte	0x3
 458 00d1 A3       		.byte	0xa3
 459 00d2 EF000000 		.4byte	0xef
 460 00d6 0B       		.uleb128 0xb
 461 00d7 1A040000 		.4byte	.LASF16
 462 00db 03       		.byte	0x3
 463 00dc A5       		.byte	0xa5
 464 00dd 25000000 		.4byte	0x25
 465 00e1 00       		.byte	0
 466 00e2 0B       		.uleb128 0xb
 467 00e3 22040000 		.4byte	.LASF17
 468 00e7 03       		.byte	0x3
 469 00e8 AA       		.byte	0xaa
 470 00e9 98000000 		.4byte	0x98
 471 00ed 04       		.byte	0x4
 472 00ee 00       		.byte	0
 473 00ef 04       		.uleb128 0x4
 474 00f0 A8030000 		.4byte	.LASF18
 475 00f4 03       		.byte	0x3
 476 00f5 AB       		.byte	0xab
 477 00f6 CE000000 		.4byte	0xce
 478 00fa 04       		.uleb128 0x4
 479 00fb 6E010000 		.4byte	.LASF19
 480 00ff 03       		.byte	0x3
 481 0100 AF       		.byte	0xaf
 482 0101 6B000000 		.4byte	0x6b
 483 0105 0C       		.uleb128 0xc
 484 0106 04       		.byte	0x4
 485 0107 0D       		.uleb128 0xd
 486 0108 04       		.byte	0x4
 487 0109 0D010000 		.4byte	0x10d
ARM GAS  /tmp/ccOyha2A.s 			page 13


 488 010d 03       		.uleb128 0x3
 489 010e 01       		.byte	0x1
 490 010f 08       		.byte	0x8
 491 0110 50040000 		.4byte	.LASF20
 492 0114 0E       		.uleb128 0xe
 493 0115 0D010000 		.4byte	0x10d
 494 0119 04       		.uleb128 0x4
 495 011a B5040000 		.4byte	.LASF21
 496 011e 05       		.byte	0x5
 497 011f 16       		.byte	0x16
 498 0120 56000000 		.4byte	0x56
 499 0124 0F       		.uleb128 0xf
 500 0125 7F010000 		.4byte	.LASF26
 501 0129 18       		.byte	0x18
 502 012a 05       		.byte	0x5
 503 012b 2D       		.byte	0x2d
 504 012c 77010000 		.4byte	0x177
 505 0130 0B       		.uleb128 0xb
 506 0131 64040000 		.4byte	.LASF22
 507 0135 05       		.byte	0x5
 508 0136 2F       		.byte	0x2f
 509 0137 77010000 		.4byte	0x177
 510 013b 00       		.byte	0
 511 013c 10       		.uleb128 0x10
 512 013d 5F6B00   		.ascii	"_k\000"
 513 0140 05       		.byte	0x5
 514 0141 30       		.byte	0x30
 515 0142 25000000 		.4byte	0x25
 516 0146 04       		.byte	0x4
 517 0147 0B       		.uleb128 0xb
 518 0148 00040000 		.4byte	.LASF23
 519 014c 05       		.byte	0x5
 520 014d 30       		.byte	0x30
 521 014e 25000000 		.4byte	0x25
 522 0152 08       		.byte	0x8
 523 0153 0B       		.uleb128 0xb
 524 0154 68010000 		.4byte	.LASF24
 525 0158 05       		.byte	0x5
 526 0159 30       		.byte	0x30
 527 015a 25000000 		.4byte	0x25
 528 015e 0C       		.byte	0xc
 529 015f 0B       		.uleb128 0xb
 530 0160 F4040000 		.4byte	.LASF25
 531 0164 05       		.byte	0x5
 532 0165 30       		.byte	0x30
 533 0166 25000000 		.4byte	0x25
 534 016a 10       		.byte	0x10
 535 016b 10       		.uleb128 0x10
 536 016c 5F7800   		.ascii	"_x\000"
 537 016f 05       		.byte	0x5
 538 0170 31       		.byte	0x31
 539 0171 7D010000 		.4byte	0x17d
 540 0175 14       		.byte	0x14
 541 0176 00       		.byte	0
 542 0177 0D       		.uleb128 0xd
 543 0178 04       		.byte	0x4
 544 0179 24010000 		.4byte	0x124
ARM GAS  /tmp/ccOyha2A.s 			page 14


 545 017d 08       		.uleb128 0x8
 546 017e 19010000 		.4byte	0x119
 547 0182 8D010000 		.4byte	0x18d
 548 0186 09       		.uleb128 0x9
 549 0187 C7000000 		.4byte	0xc7
 550 018b 00       		.byte	0
 551 018c 00       		.byte	0
 552 018d 0F       		.uleb128 0xf
 553 018e BE010000 		.4byte	.LASF27
 554 0192 24       		.byte	0x24
 555 0193 05       		.byte	0x5
 556 0194 35       		.byte	0x35
 557 0195 06020000 		.4byte	0x206
 558 0199 0B       		.uleb128 0xb
 559 019a A2000000 		.4byte	.LASF28
 560 019e 05       		.byte	0x5
 561 019f 37       		.byte	0x37
 562 01a0 25000000 		.4byte	0x25
 563 01a4 00       		.byte	0
 564 01a5 0B       		.uleb128 0xb
 565 01a6 55040000 		.4byte	.LASF29
 566 01aa 05       		.byte	0x5
 567 01ab 38       		.byte	0x38
 568 01ac 25000000 		.4byte	0x25
 569 01b0 04       		.byte	0x4
 570 01b1 0B       		.uleb128 0xb
 571 01b2 D1000000 		.4byte	.LASF30
 572 01b6 05       		.byte	0x5
 573 01b7 39       		.byte	0x39
 574 01b8 25000000 		.4byte	0x25
 575 01bc 08       		.byte	0x8
 576 01bd 0B       		.uleb128 0xb
 577 01be 72050000 		.4byte	.LASF31
 578 01c2 05       		.byte	0x5
 579 01c3 3A       		.byte	0x3a
 580 01c4 25000000 		.4byte	0x25
 581 01c8 0C       		.byte	0xc
 582 01c9 0B       		.uleb128 0xb
 583 01ca 25030000 		.4byte	.LASF32
 584 01ce 05       		.byte	0x5
 585 01cf 3B       		.byte	0x3b
 586 01d0 25000000 		.4byte	0x25
 587 01d4 10       		.byte	0x10
 588 01d5 0B       		.uleb128 0xb
 589 01d6 71020000 		.4byte	.LASF33
 590 01da 05       		.byte	0x5
 591 01db 3C       		.byte	0x3c
 592 01dc 25000000 		.4byte	0x25
 593 01e0 14       		.byte	0x14
 594 01e1 0B       		.uleb128 0xb
 595 01e2 F9040000 		.4byte	.LASF34
 596 01e6 05       		.byte	0x5
 597 01e7 3D       		.byte	0x3d
 598 01e8 25000000 		.4byte	0x25
 599 01ec 18       		.byte	0x18
 600 01ed 0B       		.uleb128 0xb
 601 01ee 8A030000 		.4byte	.LASF35
ARM GAS  /tmp/ccOyha2A.s 			page 15


 602 01f2 05       		.byte	0x5
 603 01f3 3E       		.byte	0x3e
 604 01f4 25000000 		.4byte	0x25
 605 01f8 1C       		.byte	0x1c
 606 01f9 0B       		.uleb128 0xb
 607 01fa 39050000 		.4byte	.LASF36
 608 01fe 05       		.byte	0x5
 609 01ff 3F       		.byte	0x3f
 610 0200 25000000 		.4byte	0x25
 611 0204 20       		.byte	0x20
 612 0205 00       		.byte	0
 613 0206 11       		.uleb128 0x11
 614 0207 E0000000 		.4byte	.LASF37
 615 020b 0801     		.2byte	0x108
 616 020d 05       		.byte	0x5
 617 020e 48       		.byte	0x48
 618 020f 46020000 		.4byte	0x246
 619 0213 0B       		.uleb128 0xb
 620 0214 5B010000 		.4byte	.LASF38
 621 0218 05       		.byte	0x5
 622 0219 49       		.byte	0x49
 623 021a 46020000 		.4byte	0x246
 624 021e 00       		.byte	0
 625 021f 0B       		.uleb128 0xb
 626 0220 00000000 		.4byte	.LASF39
 627 0224 05       		.byte	0x5
 628 0225 4A       		.byte	0x4a
 629 0226 46020000 		.4byte	0x246
 630 022a 80       		.byte	0x80
 631 022b 12       		.uleb128 0x12
 632 022c 77040000 		.4byte	.LASF40
 633 0230 05       		.byte	0x5
 634 0231 4C       		.byte	0x4c
 635 0232 19010000 		.4byte	0x119
 636 0236 0001     		.2byte	0x100
 637 0238 12       		.uleb128 0x12
 638 0239 0E010000 		.4byte	.LASF41
 639 023d 05       		.byte	0x5
 640 023e 4F       		.byte	0x4f
 641 023f 19010000 		.4byte	0x119
 642 0243 0401     		.2byte	0x104
 643 0245 00       		.byte	0
 644 0246 08       		.uleb128 0x8
 645 0247 05010000 		.4byte	0x105
 646 024b 56020000 		.4byte	0x256
 647 024f 09       		.uleb128 0x9
 648 0250 C7000000 		.4byte	0xc7
 649 0254 1F       		.byte	0x1f
 650 0255 00       		.byte	0
 651 0256 11       		.uleb128 0x11
 652 0257 2E030000 		.4byte	.LASF42
 653 025b 9001     		.2byte	0x190
 654 025d 05       		.byte	0x5
 655 025e 5B       		.byte	0x5b
 656 025f 94020000 		.4byte	0x294
 657 0263 0B       		.uleb128 0xb
 658 0264 64040000 		.4byte	.LASF22
ARM GAS  /tmp/ccOyha2A.s 			page 16


 659 0268 05       		.byte	0x5
 660 0269 5C       		.byte	0x5c
 661 026a 94020000 		.4byte	0x294
 662 026e 00       		.byte	0
 663 026f 0B       		.uleb128 0xb
 664 0270 E1030000 		.4byte	.LASF43
 665 0274 05       		.byte	0x5
 666 0275 5D       		.byte	0x5d
 667 0276 25000000 		.4byte	0x25
 668 027a 04       		.byte	0x4
 669 027b 0B       		.uleb128 0xb
 670 027c 63010000 		.4byte	.LASF44
 671 0280 05       		.byte	0x5
 672 0281 5F       		.byte	0x5f
 673 0282 9A020000 		.4byte	0x29a
 674 0286 08       		.byte	0x8
 675 0287 0B       		.uleb128 0xb
 676 0288 E0000000 		.4byte	.LASF37
 677 028c 05       		.byte	0x5
 678 028d 60       		.byte	0x60
 679 028e 06020000 		.4byte	0x206
 680 0292 88       		.byte	0x88
 681 0293 00       		.byte	0
 682 0294 0D       		.uleb128 0xd
 683 0295 04       		.byte	0x4
 684 0296 56020000 		.4byte	0x256
 685 029a 08       		.uleb128 0x8
 686 029b AA020000 		.4byte	0x2aa
 687 029f AA020000 		.4byte	0x2aa
 688 02a3 09       		.uleb128 0x9
 689 02a4 C7000000 		.4byte	0xc7
 690 02a8 1F       		.byte	0x1f
 691 02a9 00       		.byte	0
 692 02aa 0D       		.uleb128 0xd
 693 02ab 04       		.byte	0x4
 694 02ac B0020000 		.4byte	0x2b0
 695 02b0 13       		.uleb128 0x13
 696 02b1 0F       		.uleb128 0xf
 697 02b2 94030000 		.4byte	.LASF45
 698 02b6 08       		.byte	0x8
 699 02b7 05       		.byte	0x5
 700 02b8 73       		.byte	0x73
 701 02b9 D6020000 		.4byte	0x2d6
 702 02bd 0B       		.uleb128 0xb
 703 02be CB000000 		.4byte	.LASF46
 704 02c2 05       		.byte	0x5
 705 02c3 74       		.byte	0x74
 706 02c4 D6020000 		.4byte	0x2d6
 707 02c8 00       		.byte	0
 708 02c9 0B       		.uleb128 0xb
 709 02ca 12000000 		.4byte	.LASF47
 710 02ce 05       		.byte	0x5
 711 02cf 75       		.byte	0x75
 712 02d0 25000000 		.4byte	0x25
 713 02d4 04       		.byte	0x4
 714 02d5 00       		.byte	0
 715 02d6 0D       		.uleb128 0xd
ARM GAS  /tmp/ccOyha2A.s 			page 17


 716 02d7 04       		.byte	0x4
 717 02d8 3A000000 		.4byte	0x3a
 718 02dc 0F       		.uleb128 0xf
 719 02dd B3030000 		.4byte	.LASF48
 720 02e1 68       		.byte	0x68
 721 02e2 05       		.byte	0x5
 722 02e3 B3       		.byte	0xb3
 723 02e4 06040000 		.4byte	0x406
 724 02e8 10       		.uleb128 0x10
 725 02e9 5F7000   		.ascii	"_p\000"
 726 02ec 05       		.byte	0x5
 727 02ed B4       		.byte	0xb4
 728 02ee D6020000 		.4byte	0x2d6
 729 02f2 00       		.byte	0
 730 02f3 10       		.uleb128 0x10
 731 02f4 5F7200   		.ascii	"_r\000"
 732 02f7 05       		.byte	0x5
 733 02f8 B5       		.byte	0xb5
 734 02f9 25000000 		.4byte	0x25
 735 02fd 04       		.byte	0x4
 736 02fe 10       		.uleb128 0x10
 737 02ff 5F7700   		.ascii	"_w\000"
 738 0302 05       		.byte	0x5
 739 0303 B6       		.byte	0xb6
 740 0304 25000000 		.4byte	0x25
 741 0308 08       		.byte	0x8
 742 0309 0B       		.uleb128 0xb
 743 030a 07010000 		.4byte	.LASF49
 744 030e 05       		.byte	0x5
 745 030f B7       		.byte	0xb7
 746 0310 41000000 		.4byte	0x41
 747 0314 0C       		.byte	0xc
 748 0315 0B       		.uleb128 0xb
 749 0316 F9010000 		.4byte	.LASF50
 750 031a 05       		.byte	0x5
 751 031b B8       		.byte	0xb8
 752 031c 41000000 		.4byte	0x41
 753 0320 0E       		.byte	0xe
 754 0321 10       		.uleb128 0x10
 755 0322 5F626600 		.ascii	"_bf\000"
 756 0326 05       		.byte	0x5
 757 0327 B9       		.byte	0xb9
 758 0328 B1020000 		.4byte	0x2b1
 759 032c 10       		.byte	0x10
 760 032d 0B       		.uleb128 0xb
 761 032e 7C000000 		.4byte	.LASF51
 762 0332 05       		.byte	0x5
 763 0333 BA       		.byte	0xba
 764 0334 25000000 		.4byte	0x25
 765 0338 18       		.byte	0x18
 766 0339 0B       		.uleb128 0xb
 767 033a EE000000 		.4byte	.LASF52
 768 033e 05       		.byte	0x5
 769 033f C1       		.byte	0xc1
 770 0340 05010000 		.4byte	0x105
 771 0344 1C       		.byte	0x1c
 772 0345 0B       		.uleb128 0xb
ARM GAS  /tmp/ccOyha2A.s 			page 18


 773 0346 AE010000 		.4byte	.LASF53
 774 034a 05       		.byte	0x5
 775 034b C3       		.byte	0xc3
 776 034c 61050000 		.4byte	0x561
 777 0350 20       		.byte	0x20
 778 0351 0B       		.uleb128 0xb
 779 0352 6A020000 		.4byte	.LASF54
 780 0356 05       		.byte	0x5
 781 0357 C5       		.byte	0xc5
 782 0358 8B050000 		.4byte	0x58b
 783 035c 24       		.byte	0x24
 784 035d 0B       		.uleb128 0xb
 785 035e 2A040000 		.4byte	.LASF55
 786 0362 05       		.byte	0x5
 787 0363 C8       		.byte	0xc8
 788 0364 AF050000 		.4byte	0x5af
 789 0368 28       		.byte	0x28
 790 0369 0B       		.uleb128 0xb
 791 036a 53050000 		.4byte	.LASF56
 792 036e 05       		.byte	0x5
 793 036f C9       		.byte	0xc9
 794 0370 C9050000 		.4byte	0x5c9
 795 0374 2C       		.byte	0x2c
 796 0375 10       		.uleb128 0x10
 797 0376 5F756200 		.ascii	"_ub\000"
 798 037a 05       		.byte	0x5
 799 037b CC       		.byte	0xcc
 800 037c B1020000 		.4byte	0x2b1
 801 0380 30       		.byte	0x30
 802 0381 10       		.uleb128 0x10
 803 0382 5F757000 		.ascii	"_up\000"
 804 0386 05       		.byte	0x5
 805 0387 CD       		.byte	0xcd
 806 0388 D6020000 		.4byte	0x2d6
 807 038c 38       		.byte	0x38
 808 038d 10       		.uleb128 0x10
 809 038e 5F757200 		.ascii	"_ur\000"
 810 0392 05       		.byte	0x5
 811 0393 CE       		.byte	0xce
 812 0394 25000000 		.4byte	0x25
 813 0398 3C       		.byte	0x3c
 814 0399 0B       		.uleb128 0xb
 815 039a C5000000 		.4byte	.LASF57
 816 039e 05       		.byte	0x5
 817 039f D1       		.byte	0xd1
 818 03a0 CF050000 		.4byte	0x5cf
 819 03a4 40       		.byte	0x40
 820 03a5 0B       		.uleb128 0xb
 821 03a6 2B050000 		.4byte	.LASF58
 822 03aa 05       		.byte	0x5
 823 03ab D2       		.byte	0xd2
 824 03ac DF050000 		.4byte	0x5df
 825 03b0 43       		.byte	0x43
 826 03b1 10       		.uleb128 0x10
 827 03b2 5F6C6200 		.ascii	"_lb\000"
 828 03b6 05       		.byte	0x5
 829 03b7 D5       		.byte	0xd5
ARM GAS  /tmp/ccOyha2A.s 			page 19


 830 03b8 B1020000 		.4byte	0x2b1
 831 03bc 44       		.byte	0x44
 832 03bd 0B       		.uleb128 0xb
 833 03be 1D010000 		.4byte	.LASF59
 834 03c2 05       		.byte	0x5
 835 03c3 D8       		.byte	0xd8
 836 03c4 25000000 		.4byte	0x25
 837 03c8 4C       		.byte	0x4c
 838 03c9 0B       		.uleb128 0xb
 839 03ca 34010000 		.4byte	.LASF60
 840 03ce 05       		.byte	0x5
 841 03cf D9       		.byte	0xd9
 842 03d0 76000000 		.4byte	0x76
 843 03d4 50       		.byte	0x50
 844 03d5 0B       		.uleb128 0xb
 845 03d6 3F000000 		.4byte	.LASF61
 846 03da 05       		.byte	0x5
 847 03db DC       		.byte	0xdc
 848 03dc 24040000 		.4byte	0x424
 849 03e0 54       		.byte	0x54
 850 03e1 0B       		.uleb128 0xb
 851 03e2 5C020000 		.4byte	.LASF62
 852 03e6 05       		.byte	0x5
 853 03e7 E0       		.byte	0xe0
 854 03e8 FA000000 		.4byte	0xfa
 855 03ec 58       		.byte	0x58
 856 03ed 0B       		.uleb128 0xb
 857 03ee BB030000 		.4byte	.LASF63
 858 03f2 05       		.byte	0x5
 859 03f3 E2       		.byte	0xe2
 860 03f4 EF000000 		.4byte	0xef
 861 03f8 5C       		.byte	0x5c
 862 03f9 0B       		.uleb128 0xb
 863 03fa 62020000 		.4byte	.LASF64
 864 03fe 05       		.byte	0x5
 865 03ff E3       		.byte	0xe3
 866 0400 25000000 		.4byte	0x25
 867 0404 64       		.byte	0x64
 868 0405 00       		.byte	0
 869 0406 14       		.uleb128 0x14
 870 0407 25000000 		.4byte	0x25
 871 040b 24040000 		.4byte	0x424
 872 040f 15       		.uleb128 0x15
 873 0410 24040000 		.4byte	0x424
 874 0414 15       		.uleb128 0x15
 875 0415 05010000 		.4byte	0x105
 876 0419 15       		.uleb128 0x15
 877 041a 07010000 		.4byte	0x107
 878 041e 15       		.uleb128 0x15
 879 041f 25000000 		.4byte	0x25
 880 0423 00       		.byte	0
 881 0424 0D       		.uleb128 0xd
 882 0425 04       		.byte	0x4
 883 0426 2F040000 		.4byte	0x42f
 884 042a 0E       		.uleb128 0xe
 885 042b 24040000 		.4byte	0x424
 886 042f 16       		.uleb128 0x16
ARM GAS  /tmp/ccOyha2A.s 			page 20


 887 0430 08040000 		.4byte	.LASF65
 888 0434 2804     		.2byte	0x428
 889 0436 05       		.byte	0x5
 890 0437 3802     		.2byte	0x238
 891 0439 61050000 		.4byte	0x561
 892 043d 17       		.uleb128 0x17
 893 043e 49040000 		.4byte	.LASF66
 894 0442 05       		.byte	0x5
 895 0443 3A02     		.2byte	0x23a
 896 0445 25000000 		.4byte	0x25
 897 0449 00       		.byte	0
 898 044a 17       		.uleb128 0x17
 899 044b 16010000 		.4byte	.LASF67
 900 044f 05       		.byte	0x5
 901 0450 3F02     		.2byte	0x23f
 902 0452 36060000 		.4byte	0x636
 903 0456 04       		.byte	0x4
 904 0457 17       		.uleb128 0x17
 905 0458 D7010000 		.4byte	.LASF68
 906 045c 05       		.byte	0x5
 907 045d 3F02     		.2byte	0x23f
 908 045f 36060000 		.4byte	0x636
 909 0463 08       		.byte	0x8
 910 0464 17       		.uleb128 0x17
 911 0465 77010000 		.4byte	.LASF69
 912 0469 05       		.byte	0x5
 913 046a 3F02     		.2byte	0x23f
 914 046c 36060000 		.4byte	0x636
 915 0470 0C       		.byte	0xc
 916 0471 17       		.uleb128 0x17
 917 0472 DC030000 		.4byte	.LASF70
 918 0476 05       		.byte	0x5
 919 0477 4102     		.2byte	0x241
 920 0479 25000000 		.4byte	0x25
 921 047d 10       		.byte	0x10
 922 047e 17       		.uleb128 0x17
 923 047f 20000000 		.4byte	.LASF71
 924 0483 05       		.byte	0x5
 925 0484 4202     		.2byte	0x242
 926 0486 18080000 		.4byte	0x818
 927 048a 14       		.byte	0x14
 928 048b 17       		.uleb128 0x17
 929 048c D5040000 		.4byte	.LASF72
 930 0490 05       		.byte	0x5
 931 0491 4402     		.2byte	0x244
 932 0493 25000000 		.4byte	0x25
 933 0497 30       		.byte	0x30
 934 0498 17       		.uleb128 0x17
 935 0499 E6030000 		.4byte	.LASF73
 936 049d 05       		.byte	0x5
 937 049e 4502     		.2byte	0x245
 938 04a0 85050000 		.4byte	0x585
 939 04a4 34       		.byte	0x34
 940 04a5 17       		.uleb128 0x17
 941 04a6 36030000 		.4byte	.LASF74
 942 04aa 05       		.byte	0x5
 943 04ab 4702     		.2byte	0x247
ARM GAS  /tmp/ccOyha2A.s 			page 21


 944 04ad 25000000 		.4byte	0x25
 945 04b1 38       		.byte	0x38
 946 04b2 17       		.uleb128 0x17
 947 04b3 F6030000 		.4byte	.LASF75
 948 04b7 05       		.byte	0x5
 949 04b8 4902     		.2byte	0x249
 950 04ba 33080000 		.4byte	0x833
 951 04be 3C       		.byte	0x3c
 952 04bf 17       		.uleb128 0x17
 953 04c0 40020000 		.4byte	.LASF76
 954 04c4 05       		.byte	0x5
 955 04c5 4C02     		.2byte	0x24c
 956 04c7 77010000 		.4byte	0x177
 957 04cb 40       		.byte	0x40
 958 04cc 17       		.uleb128 0x17
 959 04cd B4010000 		.4byte	.LASF77
 960 04d1 05       		.byte	0x5
 961 04d2 4D02     		.2byte	0x24d
 962 04d4 25000000 		.4byte	0x25
 963 04d8 44       		.byte	0x44
 964 04d9 17       		.uleb128 0x17
 965 04da 6D050000 		.4byte	.LASF78
 966 04de 05       		.byte	0x5
 967 04df 4E02     		.2byte	0x24e
 968 04e1 77010000 		.4byte	0x177
 969 04e5 48       		.byte	0x48
 970 04e6 17       		.uleb128 0x17
 971 04e7 48030000 		.4byte	.LASF79
 972 04eb 05       		.byte	0x5
 973 04ec 4F02     		.2byte	0x24f
 974 04ee 39080000 		.4byte	0x839
 975 04f2 4C       		.byte	0x4c
 976 04f3 17       		.uleb128 0x17
 977 04f4 DF010000 		.4byte	.LASF80
 978 04f8 05       		.byte	0x5
 979 04f9 5202     		.2byte	0x252
 980 04fb 25000000 		.4byte	0x25
 981 04ff 50       		.byte	0x50
 982 0500 17       		.uleb128 0x17
 983 0501 2C010000 		.4byte	.LASF81
 984 0505 05       		.byte	0x5
 985 0506 5302     		.2byte	0x253
 986 0508 07010000 		.4byte	0x107
 987 050c 54       		.byte	0x54
 988 050d 17       		.uleb128 0x17
 989 050e 72030000 		.4byte	.LASF82
 990 0512 05       		.byte	0x5
 991 0513 7602     		.2byte	0x276
 992 0515 F6070000 		.4byte	0x7f6
 993 0519 58       		.byte	0x58
 994 051a 18       		.uleb128 0x18
 995 051b 2E030000 		.4byte	.LASF42
 996 051f 05       		.byte	0x5
 997 0520 7A02     		.2byte	0x27a
 998 0522 94020000 		.4byte	0x294
 999 0526 4801     		.2byte	0x148
 1000 0528 18       		.uleb128 0x18
ARM GAS  /tmp/ccOyha2A.s 			page 22


 1001 0529 19020000 		.4byte	.LASF83
 1002 052d 05       		.byte	0x5
 1003 052e 7B02     		.2byte	0x27b
 1004 0530 56020000 		.4byte	0x256
 1005 0534 4C01     		.2byte	0x14c
 1006 0536 18       		.uleb128 0x18
 1007 0537 21050000 		.4byte	.LASF84
 1008 053b 05       		.byte	0x5
 1009 053c 7F02     		.2byte	0x27f
 1010 053e 4A080000 		.4byte	0x84a
 1011 0542 DC02     		.2byte	0x2dc
 1012 0544 18       		.uleb128 0x18
 1013 0545 F6000000 		.4byte	.LASF85
 1014 0549 05       		.byte	0x5
 1015 054a 8402     		.2byte	0x284
 1016 054c FB050000 		.4byte	0x5fb
 1017 0550 E002     		.2byte	0x2e0
 1018 0552 18       		.uleb128 0x18
 1019 0553 DB000000 		.4byte	.LASF86
 1020 0557 05       		.byte	0x5
 1021 0558 8502     		.2byte	0x285
 1022 055a 56080000 		.4byte	0x856
 1023 055e EC02     		.2byte	0x2ec
 1024 0560 00       		.byte	0
 1025 0561 0D       		.uleb128 0xd
 1026 0562 04       		.byte	0x4
 1027 0563 06040000 		.4byte	0x406
 1028 0567 14       		.uleb128 0x14
 1029 0568 25000000 		.4byte	0x25
 1030 056c 85050000 		.4byte	0x585
 1031 0570 15       		.uleb128 0x15
 1032 0571 24040000 		.4byte	0x424
 1033 0575 15       		.uleb128 0x15
 1034 0576 05010000 		.4byte	0x105
 1035 057a 15       		.uleb128 0x15
 1036 057b 85050000 		.4byte	0x585
 1037 057f 15       		.uleb128 0x15
 1038 0580 25000000 		.4byte	0x25
 1039 0584 00       		.byte	0
 1040 0585 0D       		.uleb128 0xd
 1041 0586 04       		.byte	0x4
 1042 0587 14010000 		.4byte	0x114
 1043 058b 0D       		.uleb128 0xd
 1044 058c 04       		.byte	0x4
 1045 058d 67050000 		.4byte	0x567
 1046 0591 14       		.uleb128 0x14
 1047 0592 81000000 		.4byte	0x81
 1048 0596 AF050000 		.4byte	0x5af
 1049 059a 15       		.uleb128 0x15
 1050 059b 24040000 		.4byte	0x424
 1051 059f 15       		.uleb128 0x15
 1052 05a0 05010000 		.4byte	0x105
 1053 05a4 15       		.uleb128 0x15
 1054 05a5 81000000 		.4byte	0x81
 1055 05a9 15       		.uleb128 0x15
 1056 05aa 25000000 		.4byte	0x25
 1057 05ae 00       		.byte	0
ARM GAS  /tmp/ccOyha2A.s 			page 23


 1058 05af 0D       		.uleb128 0xd
 1059 05b0 04       		.byte	0x4
 1060 05b1 91050000 		.4byte	0x591
 1061 05b5 14       		.uleb128 0x14
 1062 05b6 25000000 		.4byte	0x25
 1063 05ba C9050000 		.4byte	0x5c9
 1064 05be 15       		.uleb128 0x15
 1065 05bf 24040000 		.4byte	0x424
 1066 05c3 15       		.uleb128 0x15
 1067 05c4 05010000 		.4byte	0x105
 1068 05c8 00       		.byte	0
 1069 05c9 0D       		.uleb128 0xd
 1070 05ca 04       		.byte	0x4
 1071 05cb B5050000 		.4byte	0x5b5
 1072 05cf 08       		.uleb128 0x8
 1073 05d0 3A000000 		.4byte	0x3a
 1074 05d4 DF050000 		.4byte	0x5df
 1075 05d8 09       		.uleb128 0x9
 1076 05d9 C7000000 		.4byte	0xc7
 1077 05dd 02       		.byte	0x2
 1078 05de 00       		.byte	0
 1079 05df 08       		.uleb128 0x8
 1080 05e0 3A000000 		.4byte	0x3a
 1081 05e4 EF050000 		.4byte	0x5ef
 1082 05e8 09       		.uleb128 0x9
 1083 05e9 C7000000 		.4byte	0xc7
 1084 05ed 00       		.byte	0
 1085 05ee 00       		.byte	0
 1086 05ef 05       		.uleb128 0x5
 1087 05f0 A1030000 		.4byte	.LASF87
 1088 05f4 05       		.byte	0x5
 1089 05f5 1D01     		.2byte	0x11d
 1090 05f7 DC020000 		.4byte	0x2dc
 1091 05fb 19       		.uleb128 0x19
 1092 05fc 03050000 		.4byte	.LASF88
 1093 0600 0C       		.byte	0xc
 1094 0601 05       		.byte	0x5
 1095 0602 2101     		.2byte	0x121
 1096 0604 30060000 		.4byte	0x630
 1097 0608 17       		.uleb128 0x17
 1098 0609 64040000 		.4byte	.LASF22
 1099 060d 05       		.byte	0x5
 1100 060e 2301     		.2byte	0x123
 1101 0610 30060000 		.4byte	0x630
 1102 0614 00       		.byte	0
 1103 0615 17       		.uleb128 0x17
 1104 0616 FF010000 		.4byte	.LASF89
 1105 061a 05       		.byte	0x5
 1106 061b 2401     		.2byte	0x124
 1107 061d 25000000 		.4byte	0x25
 1108 0621 04       		.byte	0x4
 1109 0622 17       		.uleb128 0x17
 1110 0623 9B030000 		.4byte	.LASF90
 1111 0627 05       		.byte	0x5
 1112 0628 2501     		.2byte	0x125
 1113 062a 36060000 		.4byte	0x636
 1114 062e 08       		.byte	0x8
ARM GAS  /tmp/ccOyha2A.s 			page 24


 1115 062f 00       		.byte	0
 1116 0630 0D       		.uleb128 0xd
 1117 0631 04       		.byte	0x4
 1118 0632 FB050000 		.4byte	0x5fb
 1119 0636 0D       		.uleb128 0xd
 1120 0637 04       		.byte	0x4
 1121 0638 EF050000 		.4byte	0x5ef
 1122 063c 19       		.uleb128 0x19
 1123 063d 18000000 		.4byte	.LASF91
 1124 0641 0E       		.byte	0xe
 1125 0642 05       		.byte	0x5
 1126 0643 3D01     		.2byte	0x13d
 1127 0645 71060000 		.4byte	0x671
 1128 0649 17       		.uleb128 0x17
 1129 064a 14040000 		.4byte	.LASF92
 1130 064e 05       		.byte	0x5
 1131 064f 3E01     		.2byte	0x13e
 1132 0651 71060000 		.4byte	0x671
 1133 0655 00       		.byte	0
 1134 0656 17       		.uleb128 0x17
 1135 0657 5E040000 		.4byte	.LASF93
 1136 065b 05       		.byte	0x5
 1137 065c 3F01     		.2byte	0x13f
 1138 065e 71060000 		.4byte	0x671
 1139 0662 06       		.byte	0x6
 1140 0663 17       		.uleb128 0x17
 1141 0664 BD040000 		.4byte	.LASF94
 1142 0668 05       		.byte	0x5
 1143 0669 4001     		.2byte	0x140
 1144 066b 48000000 		.4byte	0x48
 1145 066f 0C       		.byte	0xc
 1146 0670 00       		.byte	0
 1147 0671 08       		.uleb128 0x8
 1148 0672 48000000 		.4byte	0x48
 1149 0676 81060000 		.4byte	0x681
 1150 067a 09       		.uleb128 0x9
 1151 067b C7000000 		.4byte	0xc7
 1152 067f 02       		.byte	0x2
 1153 0680 00       		.byte	0
 1154 0681 1A       		.uleb128 0x1a
 1155 0682 D0       		.byte	0xd0
 1156 0683 05       		.byte	0x5
 1157 0684 5702     		.2byte	0x257
 1158 0686 82070000 		.4byte	0x782
 1159 068a 17       		.uleb128 0x17
 1160 068b E7040000 		.4byte	.LASF95
 1161 068f 05       		.byte	0x5
 1162 0690 5902     		.2byte	0x259
 1163 0692 2C000000 		.4byte	0x2c
 1164 0696 00       		.byte	0
 1165 0697 17       		.uleb128 0x17
 1166 0698 6A040000 		.4byte	.LASF96
 1167 069c 05       		.byte	0x5
 1168 069d 5A02     		.2byte	0x25a
 1169 069f 07010000 		.4byte	0x107
 1170 06a3 04       		.byte	0x4
 1171 06a4 17       		.uleb128 0x17
ARM GAS  /tmp/ccOyha2A.s 			page 25


 1172 06a5 2E020000 		.4byte	.LASF97
 1173 06a9 05       		.byte	0x5
 1174 06aa 5B02     		.2byte	0x25b
 1175 06ac 82070000 		.4byte	0x782
 1176 06b0 08       		.byte	0x8
 1177 06b1 17       		.uleb128 0x17
 1178 06b2 44050000 		.4byte	.LASF98
 1179 06b6 05       		.byte	0x5
 1180 06b7 5C02     		.2byte	0x25c
 1181 06b9 8D010000 		.4byte	0x18d
 1182 06bd 24       		.byte	0x24
 1183 06be 17       		.uleb128 0x17
 1184 06bf 87010000 		.4byte	.LASF99
 1185 06c3 05       		.byte	0x5
 1186 06c4 5D02     		.2byte	0x25d
 1187 06c6 25000000 		.4byte	0x25
 1188 06ca 48       		.byte	0x48
 1189 06cb 17       		.uleb128 0x17
 1190 06cc C4030000 		.4byte	.LASF100
 1191 06d0 05       		.byte	0x5
 1192 06d1 5E02     		.2byte	0x25e
 1193 06d3 64000000 		.4byte	0x64
 1194 06d7 50       		.byte	0x50
 1195 06d8 17       		.uleb128 0x17
 1196 06d9 5A050000 		.4byte	.LASF101
 1197 06dd 05       		.byte	0x5
 1198 06de 5F02     		.2byte	0x25f
 1199 06e0 3C060000 		.4byte	0x63c
 1200 06e4 58       		.byte	0x58
 1201 06e5 17       		.uleb128 0x17
 1202 06e6 CF030000 		.4byte	.LASF102
 1203 06ea 05       		.byte	0x5
 1204 06eb 6002     		.2byte	0x260
 1205 06ed EF000000 		.4byte	0xef
 1206 06f1 68       		.byte	0x68
 1207 06f2 17       		.uleb128 0x17
 1208 06f3 5F050000 		.4byte	.LASF103
 1209 06f7 05       		.byte	0x5
 1210 06f8 6102     		.2byte	0x261
 1211 06fa EF000000 		.4byte	0xef
 1212 06fe 70       		.byte	0x70
 1213 06ff 17       		.uleb128 0x17
 1214 0700 94000000 		.4byte	.LASF104
 1215 0704 05       		.byte	0x5
 1216 0705 6202     		.2byte	0x262
 1217 0707 EF000000 		.4byte	0xef
 1218 070b 78       		.byte	0x78
 1219 070c 17       		.uleb128 0x17
 1220 070d 12050000 		.4byte	.LASF105
 1221 0711 05       		.byte	0x5
 1222 0712 6302     		.2byte	0x263
 1223 0714 92070000 		.4byte	0x792
 1224 0718 80       		.byte	0x80
 1225 0719 17       		.uleb128 0x17
 1226 071a 22020000 		.4byte	.LASF106
 1227 071e 05       		.byte	0x5
 1228 071f 6402     		.2byte	0x264
ARM GAS  /tmp/ccOyha2A.s 			page 26


 1229 0721 A2070000 		.4byte	0x7a2
 1230 0725 88       		.byte	0x88
 1231 0726 17       		.uleb128 0x17
 1232 0727 32000000 		.4byte	.LASF107
 1233 072b 05       		.byte	0x5
 1234 072c 6502     		.2byte	0x265
 1235 072e 25000000 		.4byte	0x25
 1236 0732 A0       		.byte	0xa0
 1237 0733 17       		.uleb128 0x17
 1238 0734 4D010000 		.4byte	.LASF108
 1239 0738 05       		.byte	0x5
 1240 0739 6602     		.2byte	0x266
 1241 073b EF000000 		.4byte	0xef
 1242 073f A4       		.byte	0xa4
 1243 0740 17       		.uleb128 0x17
 1244 0741 85000000 		.4byte	.LASF109
 1245 0745 05       		.byte	0x5
 1246 0746 6702     		.2byte	0x267
 1247 0748 EF000000 		.4byte	0xef
 1248 074c AC       		.byte	0xac
 1249 074d 17       		.uleb128 0x17
 1250 074e 3C010000 		.4byte	.LASF110
 1251 0752 05       		.byte	0x5
 1252 0753 6802     		.2byte	0x268
 1253 0755 EF000000 		.4byte	0xef
 1254 0759 B4       		.byte	0xb4
 1255 075a 17       		.uleb128 0x17
 1256 075b 45000000 		.4byte	.LASF111
 1257 075f 05       		.byte	0x5
 1258 0760 6902     		.2byte	0x269
 1259 0762 EF000000 		.4byte	0xef
 1260 0766 BC       		.byte	0xbc
 1261 0767 17       		.uleb128 0x17
 1262 0768 54000000 		.4byte	.LASF112
 1263 076c 05       		.byte	0x5
 1264 076d 6A02     		.2byte	0x26a
 1265 076f EF000000 		.4byte	0xef
 1266 0773 C4       		.byte	0xc4
 1267 0774 17       		.uleb128 0x17
 1268 0775 77030000 		.4byte	.LASF113
 1269 0779 05       		.byte	0x5
 1270 077a 6B02     		.2byte	0x26b
 1271 077c 25000000 		.4byte	0x25
 1272 0780 CC       		.byte	0xcc
 1273 0781 00       		.byte	0
 1274 0782 08       		.uleb128 0x8
 1275 0783 0D010000 		.4byte	0x10d
 1276 0787 92070000 		.4byte	0x792
 1277 078b 09       		.uleb128 0x9
 1278 078c C7000000 		.4byte	0xc7
 1279 0790 19       		.byte	0x19
 1280 0791 00       		.byte	0
 1281 0792 08       		.uleb128 0x8
 1282 0793 0D010000 		.4byte	0x10d
 1283 0797 A2070000 		.4byte	0x7a2
 1284 079b 09       		.uleb128 0x9
 1285 079c C7000000 		.4byte	0xc7
ARM GAS  /tmp/ccOyha2A.s 			page 27


 1286 07a0 07       		.byte	0x7
 1287 07a1 00       		.byte	0
 1288 07a2 08       		.uleb128 0x8
 1289 07a3 0D010000 		.4byte	0x10d
 1290 07a7 B2070000 		.4byte	0x7b2
 1291 07ab 09       		.uleb128 0x9
 1292 07ac C7000000 		.4byte	0xc7
 1293 07b0 17       		.byte	0x17
 1294 07b1 00       		.byte	0
 1295 07b2 1A       		.uleb128 0x1a
 1296 07b3 F0       		.byte	0xf0
 1297 07b4 05       		.byte	0x5
 1298 07b5 7002     		.2byte	0x270
 1299 07b7 D6070000 		.4byte	0x7d6
 1300 07bb 17       		.uleb128 0x17
 1301 07bc 4E020000 		.4byte	.LASF114
 1302 07c0 05       		.byte	0x5
 1303 07c1 7302     		.2byte	0x273
 1304 07c3 D6070000 		.4byte	0x7d6
 1305 07c7 00       		.byte	0
 1306 07c8 17       		.uleb128 0x17
 1307 07c9 09050000 		.4byte	.LASF115
 1308 07cd 05       		.byte	0x5
 1309 07ce 7402     		.2byte	0x274
 1310 07d0 E6070000 		.4byte	0x7e6
 1311 07d4 78       		.byte	0x78
 1312 07d5 00       		.byte	0
 1313 07d6 08       		.uleb128 0x8
 1314 07d7 D6020000 		.4byte	0x2d6
 1315 07db E6070000 		.4byte	0x7e6
 1316 07df 09       		.uleb128 0x9
 1317 07e0 C7000000 		.4byte	0xc7
 1318 07e4 1D       		.byte	0x1d
 1319 07e5 00       		.byte	0
 1320 07e6 08       		.uleb128 0x8
 1321 07e7 2C000000 		.4byte	0x2c
 1322 07eb F6070000 		.4byte	0x7f6
 1323 07ef 09       		.uleb128 0x9
 1324 07f0 C7000000 		.4byte	0xc7
 1325 07f4 1D       		.byte	0x1d
 1326 07f5 00       		.byte	0
 1327 07f6 1B       		.uleb128 0x1b
 1328 07f7 F0       		.byte	0xf0
 1329 07f8 05       		.byte	0x5
 1330 07f9 5502     		.2byte	0x255
 1331 07fb 18080000 		.4byte	0x818
 1332 07ff 1C       		.uleb128 0x1c
 1333 0800 08040000 		.4byte	.LASF65
 1334 0804 05       		.byte	0x5
 1335 0805 6C02     		.2byte	0x26c
 1336 0807 81060000 		.4byte	0x681
 1337 080b 1C       		.uleb128 0x1c
 1338 080c 31050000 		.4byte	.LASF116
 1339 0810 05       		.byte	0x5
 1340 0811 7502     		.2byte	0x275
 1341 0813 B2070000 		.4byte	0x7b2
 1342 0817 00       		.byte	0
ARM GAS  /tmp/ccOyha2A.s 			page 28


 1343 0818 08       		.uleb128 0x8
 1344 0819 0D010000 		.4byte	0x10d
 1345 081d 28080000 		.4byte	0x828
 1346 0821 09       		.uleb128 0x9
 1347 0822 C7000000 		.4byte	0xc7
 1348 0826 18       		.byte	0x18
 1349 0827 00       		.byte	0
 1350 0828 1D       		.uleb128 0x1d
 1351 0829 33080000 		.4byte	0x833
 1352 082d 15       		.uleb128 0x15
 1353 082e 24040000 		.4byte	0x424
 1354 0832 00       		.byte	0
 1355 0833 0D       		.uleb128 0xd
 1356 0834 04       		.byte	0x4
 1357 0835 28080000 		.4byte	0x828
 1358 0839 0D       		.uleb128 0xd
 1359 083a 04       		.byte	0x4
 1360 083b 77010000 		.4byte	0x177
 1361 083f 1D       		.uleb128 0x1d
 1362 0840 4A080000 		.4byte	0x84a
 1363 0844 15       		.uleb128 0x15
 1364 0845 25000000 		.4byte	0x25
 1365 0849 00       		.byte	0
 1366 084a 0D       		.uleb128 0xd
 1367 084b 04       		.byte	0x4
 1368 084c 50080000 		.4byte	0x850
 1369 0850 0D       		.uleb128 0xd
 1370 0851 04       		.byte	0x4
 1371 0852 3F080000 		.4byte	0x83f
 1372 0856 08       		.uleb128 0x8
 1373 0857 EF050000 		.4byte	0x5ef
 1374 085b 66080000 		.4byte	0x866
 1375 085f 09       		.uleb128 0x9
 1376 0860 C7000000 		.4byte	0xc7
 1377 0864 02       		.byte	0x2
 1378 0865 00       		.byte	0
 1379 0866 1E       		.uleb128 0x1e
 1380 0867 35040000 		.4byte	.LASF117
 1381 086b 05       		.byte	0x5
 1382 086c FD02     		.2byte	0x2fd
 1383 086e 24040000 		.4byte	0x424
 1384 0872 1E       		.uleb128 0x1e
 1385 0873 C2040000 		.4byte	.LASF118
 1386 0877 05       		.byte	0x5
 1387 0878 FE02     		.2byte	0x2fe
 1388 087a 2A040000 		.4byte	0x42a
 1389 087e 1F       		.uleb128 0x1f
 1390 087f 26010000 		.4byte	.LASF122
 1391 0883 01       		.byte	0x1
 1392 0884 81       		.byte	0x81
 1393 0885 07010000 		.4byte	0x107
 1394 0889 00000000 		.4byte	.LFB3
 1395 088d 6E000000 		.4byte	.LFE3-.LFB3
 1396 0891 01       		.uleb128 0x1
 1397 0892 9C       		.byte	0x9c
 1398 0893 07090000 		.4byte	0x907
 1399 0897 20       		.uleb128 0x20
ARM GAS  /tmp/ccOyha2A.s 			page 29


 1400 0898 0C000000 		.4byte	.LASF119
 1401 089c 01       		.byte	0x1
 1402 089d 81       		.byte	0x81
 1403 089e 56000000 		.4byte	0x56
 1404 08a2 00000000 		.4byte	.LLST9
 1405 08a6 21       		.uleb128 0x21
 1406 08a7 2B000000 		.4byte	.LASF120
 1407 08ab 01       		.byte	0x1
 1408 08ac 81       		.byte	0x81
 1409 08ad 07010000 		.4byte	0x107
 1410 08b1 01       		.uleb128 0x1
 1411 08b2 51       		.byte	0x51
 1412 08b3 20       		.uleb128 0x20
 1413 08b4 80040000 		.4byte	.LASF121
 1414 08b8 01       		.byte	0x1
 1415 08b9 81       		.byte	0x81
 1416 08ba 25000000 		.4byte	0x25
 1417 08be 3A000000 		.4byte	.LLST10
 1418 08c2 22       		.uleb128 0x22
 1419 08c3 746D7000 		.ascii	"tmp\000"
 1420 08c7 01       		.byte	0x1
 1421 08c8 83       		.byte	0x83
 1422 08c9 07090000 		.4byte	0x907
 1423 08cd 02       		.uleb128 0x2
 1424 08ce 91       		.byte	0x91
 1425 08cf 44       		.sleb128 -60
 1426 08d0 23       		.uleb128 0x23
 1427 08d1 747000   		.ascii	"tp\000"
 1428 08d4 01       		.byte	0x1
 1429 08d5 84       		.byte	0x84
 1430 08d6 07010000 		.4byte	0x107
 1431 08da 66000000 		.4byte	.LLST11
 1432 08de 23       		.uleb128 0x23
 1433 08df 6900     		.ascii	"i\000"
 1434 08e1 01       		.byte	0x1
 1435 08e2 85       		.byte	0x85
 1436 08e3 4F000000 		.4byte	0x4f
 1437 08e7 E8000000 		.4byte	.LLST12
 1438 08eb 23       		.uleb128 0x23
 1439 08ec 7600     		.ascii	"v\000"
 1440 08ee 01       		.byte	0x1
 1441 08ef 86       		.byte	0x86
 1442 08f0 56000000 		.4byte	0x56
 1443 08f4 31010000 		.4byte	.LLST13
 1444 08f8 23       		.uleb128 0x23
 1445 08f9 737000   		.ascii	"sp\000"
 1446 08fc 01       		.byte	0x1
 1447 08fd 87       		.byte	0x87
 1448 08fe 07010000 		.4byte	0x107
 1449 0902 7E010000 		.4byte	.LLST14
 1450 0906 00       		.byte	0
 1451 0907 08       		.uleb128 0x8
 1452 0908 0D010000 		.4byte	0x10d
 1453 090c 17090000 		.4byte	0x917
 1454 0910 09       		.uleb128 0x9
 1455 0911 C7000000 		.4byte	0xc7
 1456 0915 20       		.byte	0x20
ARM GAS  /tmp/ccOyha2A.s 			page 30


 1457 0916 00       		.byte	0
 1458 0917 1F       		.uleb128 0x1f
 1459 0918 0F040000 		.4byte	.LASF123
 1460 091c 01       		.byte	0x1
 1461 091d 7C       		.byte	0x7c
 1462 091e 07010000 		.4byte	0x107
 1463 0922 00000000 		.4byte	.LFB2
 1464 0926 04000000 		.4byte	.LFE2-.LFB2
 1465 092a 01       		.uleb128 0x1
 1466 092b 9C       		.byte	0x9c
 1467 092c 7A090000 		.4byte	0x97a
 1468 0930 20       		.uleb128 0x20
 1469 0931 0C000000 		.4byte	.LASF119
 1470 0935 01       		.byte	0x1
 1471 0936 7C       		.byte	0x7c
 1472 0937 2C000000 		.4byte	0x2c
 1473 093b B6010000 		.4byte	.LLST15
 1474 093f 21       		.uleb128 0x21
 1475 0940 2B000000 		.4byte	.LASF120
 1476 0944 01       		.byte	0x1
 1477 0945 7C       		.byte	0x7c
 1478 0946 07010000 		.4byte	0x107
 1479 094a 01       		.uleb128 0x1
 1480 094b 51       		.byte	0x51
 1481 094c 20       		.uleb128 0x20
 1482 094d 80040000 		.4byte	.LASF121
 1483 0951 01       		.byte	0x1
 1484 0952 7C       		.byte	0x7c
 1485 0953 25000000 		.4byte	0x25
 1486 0957 D7010000 		.4byte	.LLST16
 1487 095b 24       		.uleb128 0x24
 1488 095c 04000000 		.4byte	.LVL43
 1489 0960 7E080000 		.4byte	0x87e
 1490 0964 25       		.uleb128 0x25
 1491 0965 01       		.uleb128 0x1
 1492 0966 50       		.byte	0x50
 1493 0967 03       		.uleb128 0x3
 1494 0968 F3       		.byte	0xf3
 1495 0969 01       		.uleb128 0x1
 1496 096a 50       		.byte	0x50
 1497 096b 25       		.uleb128 0x25
 1498 096c 01       		.uleb128 0x1
 1499 096d 51       		.byte	0x51
 1500 096e 02       		.uleb128 0x2
 1501 096f 71       		.byte	0x71
 1502 0970 00       		.sleb128 0
 1503 0971 25       		.uleb128 0x25
 1504 0972 01       		.uleb128 0x1
 1505 0973 52       		.byte	0x52
 1506 0974 03       		.uleb128 0x3
 1507 0975 F3       		.byte	0xf3
 1508 0976 01       		.uleb128 0x1
 1509 0977 52       		.byte	0x52
 1510 0978 00       		.byte	0
 1511 0979 00       		.byte	0
 1512 097a 1F       		.uleb128 0x1f
 1513 097b 3B020000 		.4byte	.LASF124
ARM GAS  /tmp/ccOyha2A.s 			page 31


 1514 097f 01       		.byte	0x1
 1515 0980 4A       		.byte	0x4a
 1516 0981 07010000 		.4byte	0x107
 1517 0985 00000000 		.4byte	.LFB1
 1518 0989 96000000 		.4byte	.LFE1-.LFB1
 1519 098d 01       		.uleb128 0x1
 1520 098e 9C       		.byte	0x9c
 1521 098f 120A0000 		.4byte	0xa12
 1522 0993 20       		.uleb128 0x20
 1523 0994 0C000000 		.4byte	.LASF119
 1524 0998 01       		.byte	0x1
 1525 0999 4A       		.byte	0x4a
 1526 099a 4F000000 		.4byte	0x4f
 1527 099e F8010000 		.4byte	.LLST0
 1528 09a2 21       		.uleb128 0x21
 1529 09a3 2B000000 		.4byte	.LASF120
 1530 09a7 01       		.byte	0x1
 1531 09a8 4A       		.byte	0x4a
 1532 09a9 07010000 		.4byte	0x107
 1533 09ad 01       		.uleb128 0x1
 1534 09ae 51       		.byte	0x51
 1535 09af 20       		.uleb128 0x20
 1536 09b0 80040000 		.4byte	.LASF121
 1537 09b4 01       		.byte	0x1
 1538 09b5 4A       		.byte	0x4a
 1539 09b6 25000000 		.4byte	0x25
 1540 09ba 32020000 		.4byte	.LLST1
 1541 09be 22       		.uleb128 0x22
 1542 09bf 746D7000 		.ascii	"tmp\000"
 1543 09c3 01       		.byte	0x1
 1544 09c4 4C       		.byte	0x4c
 1545 09c5 07090000 		.4byte	0x907
 1546 09c9 02       		.uleb128 0x2
 1547 09ca 91       		.byte	0x91
 1548 09cb 44       		.sleb128 -60
 1549 09cc 23       		.uleb128 0x23
 1550 09cd 747000   		.ascii	"tp\000"
 1551 09d0 01       		.byte	0x1
 1552 09d1 4D       		.byte	0x4d
 1553 09d2 07010000 		.4byte	0x107
 1554 09d6 5E020000 		.4byte	.LLST2
 1555 09da 23       		.uleb128 0x23
 1556 09db 6900     		.ascii	"i\000"
 1557 09dd 01       		.byte	0x1
 1558 09de 4E       		.byte	0x4e
 1559 09df 4F000000 		.4byte	0x4f
 1560 09e3 E2020000 		.4byte	.LLST3
 1561 09e7 23       		.uleb128 0x23
 1562 09e8 7600     		.ascii	"v\000"
 1563 09ea 01       		.byte	0x1
 1564 09eb 4F       		.byte	0x4f
 1565 09ec 56000000 		.4byte	0x56
 1566 09f0 1E030000 		.4byte	.LLST4
 1567 09f4 26       		.uleb128 0x26
 1568 09f5 1C050000 		.4byte	.LASF125
 1569 09f9 01       		.byte	0x1
 1570 09fa 50       		.byte	0x50
ARM GAS  /tmp/ccOyha2A.s 			page 32


 1571 09fb 25000000 		.4byte	0x25
 1572 09ff 52030000 		.4byte	.LLST5
 1573 0a03 23       		.uleb128 0x23
 1574 0a04 737000   		.ascii	"sp\000"
 1575 0a07 01       		.byte	0x1
 1576 0a08 51       		.byte	0x51
 1577 0a09 07010000 		.4byte	0x107
 1578 0a0d 6A030000 		.4byte	.LLST6
 1579 0a11 00       		.byte	0
 1580 0a12 27       		.uleb128 0x27
 1581 0a13 30040000 		.4byte	.LASF129
 1582 0a17 01       		.byte	0x1
 1583 0a18 45       		.byte	0x45
 1584 0a19 07010000 		.4byte	0x107
 1585 0a1d 00000000 		.4byte	.LFB0
 1586 0a21 04000000 		.4byte	.LFE0-.LFB0
 1587 0a25 01       		.uleb128 0x1
 1588 0a26 9C       		.byte	0x9c
 1589 0a27 20       		.uleb128 0x20
 1590 0a28 0C000000 		.4byte	.LASF119
 1591 0a2c 01       		.byte	0x1
 1592 0a2d 45       		.byte	0x45
 1593 0a2e 25000000 		.4byte	0x25
 1594 0a32 AD030000 		.4byte	.LLST7
 1595 0a36 21       		.uleb128 0x21
 1596 0a37 2B000000 		.4byte	.LASF120
 1597 0a3b 01       		.byte	0x1
 1598 0a3c 45       		.byte	0x45
 1599 0a3d 07010000 		.4byte	0x107
 1600 0a41 01       		.uleb128 0x1
 1601 0a42 51       		.byte	0x51
 1602 0a43 20       		.uleb128 0x20
 1603 0a44 80040000 		.4byte	.LASF121
 1604 0a48 01       		.byte	0x1
 1605 0a49 45       		.byte	0x45
 1606 0a4a 25000000 		.4byte	0x25
 1607 0a4e CE030000 		.4byte	.LLST8
 1608 0a52 24       		.uleb128 0x24
 1609 0a53 04000000 		.4byte	.LVL23
 1610 0a57 7A090000 		.4byte	0x97a
 1611 0a5b 25       		.uleb128 0x25
 1612 0a5c 01       		.uleb128 0x1
 1613 0a5d 50       		.byte	0x50
 1614 0a5e 03       		.uleb128 0x3
 1615 0a5f F3       		.byte	0xf3
 1616 0a60 01       		.uleb128 0x1
 1617 0a61 50       		.byte	0x50
 1618 0a62 25       		.uleb128 0x25
 1619 0a63 01       		.uleb128 0x1
 1620 0a64 51       		.byte	0x51
 1621 0a65 02       		.uleb128 0x2
 1622 0a66 71       		.byte	0x71
 1623 0a67 00       		.sleb128 0
 1624 0a68 25       		.uleb128 0x25
 1625 0a69 01       		.uleb128 0x1
 1626 0a6a 52       		.byte	0x52
 1627 0a6b 03       		.uleb128 0x3
ARM GAS  /tmp/ccOyha2A.s 			page 33


 1628 0a6c F3       		.byte	0xf3
 1629 0a6d 01       		.uleb128 0x1
 1630 0a6e 52       		.byte	0x52
 1631 0a6f 00       		.byte	0
 1632 0a70 00       		.byte	0
 1633 0a71 00       		.byte	0
 1634              		.section	.debug_abbrev,"",%progbits
 1635              	.Ldebug_abbrev0:
 1636 0000 01       		.uleb128 0x1
 1637 0001 11       		.uleb128 0x11
 1638 0002 01       		.byte	0x1
 1639 0003 25       		.uleb128 0x25
 1640 0004 0E       		.uleb128 0xe
 1641 0005 13       		.uleb128 0x13
 1642 0006 0B       		.uleb128 0xb
 1643 0007 03       		.uleb128 0x3
 1644 0008 0E       		.uleb128 0xe
 1645 0009 1B       		.uleb128 0x1b
 1646 000a 0E       		.uleb128 0xe
 1647 000b 55       		.uleb128 0x55
 1648 000c 17       		.uleb128 0x17
 1649 000d 11       		.uleb128 0x11
 1650 000e 01       		.uleb128 0x1
 1651 000f 10       		.uleb128 0x10
 1652 0010 17       		.uleb128 0x17
 1653 0011 00       		.byte	0
 1654 0012 00       		.byte	0
 1655 0013 02       		.uleb128 0x2
 1656 0014 24       		.uleb128 0x24
 1657 0015 00       		.byte	0
 1658 0016 0B       		.uleb128 0xb
 1659 0017 0B       		.uleb128 0xb
 1660 0018 3E       		.uleb128 0x3e
 1661 0019 0B       		.uleb128 0xb
 1662 001a 03       		.uleb128 0x3
 1663 001b 08       		.uleb128 0x8
 1664 001c 00       		.byte	0
 1665 001d 00       		.byte	0
 1666 001e 03       		.uleb128 0x3
 1667 001f 24       		.uleb128 0x24
 1668 0020 00       		.byte	0
 1669 0021 0B       		.uleb128 0xb
 1670 0022 0B       		.uleb128 0xb
 1671 0023 3E       		.uleb128 0x3e
 1672 0024 0B       		.uleb128 0xb
 1673 0025 03       		.uleb128 0x3
 1674 0026 0E       		.uleb128 0xe
 1675 0027 00       		.byte	0
 1676 0028 00       		.byte	0
 1677 0029 04       		.uleb128 0x4
 1678 002a 16       		.uleb128 0x16
 1679 002b 00       		.byte	0
 1680 002c 03       		.uleb128 0x3
 1681 002d 0E       		.uleb128 0xe
 1682 002e 3A       		.uleb128 0x3a
 1683 002f 0B       		.uleb128 0xb
 1684 0030 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccOyha2A.s 			page 34


 1685 0031 0B       		.uleb128 0xb
 1686 0032 49       		.uleb128 0x49
 1687 0033 13       		.uleb128 0x13
 1688 0034 00       		.byte	0
 1689 0035 00       		.byte	0
 1690 0036 05       		.uleb128 0x5
 1691 0037 16       		.uleb128 0x16
 1692 0038 00       		.byte	0
 1693 0039 03       		.uleb128 0x3
 1694 003a 0E       		.uleb128 0xe
 1695 003b 3A       		.uleb128 0x3a
 1696 003c 0B       		.uleb128 0xb
 1697 003d 3B       		.uleb128 0x3b
 1698 003e 05       		.uleb128 0x5
 1699 003f 49       		.uleb128 0x49
 1700 0040 13       		.uleb128 0x13
 1701 0041 00       		.byte	0
 1702 0042 00       		.byte	0
 1703 0043 06       		.uleb128 0x6
 1704 0044 17       		.uleb128 0x17
 1705 0045 01       		.byte	0x1
 1706 0046 0B       		.uleb128 0xb
 1707 0047 0B       		.uleb128 0xb
 1708 0048 3A       		.uleb128 0x3a
 1709 0049 0B       		.uleb128 0xb
 1710 004a 3B       		.uleb128 0x3b
 1711 004b 0B       		.uleb128 0xb
 1712 004c 01       		.uleb128 0x1
 1713 004d 13       		.uleb128 0x13
 1714 004e 00       		.byte	0
 1715 004f 00       		.byte	0
 1716 0050 07       		.uleb128 0x7
 1717 0051 0D       		.uleb128 0xd
 1718 0052 00       		.byte	0
 1719 0053 03       		.uleb128 0x3
 1720 0054 0E       		.uleb128 0xe
 1721 0055 3A       		.uleb128 0x3a
 1722 0056 0B       		.uleb128 0xb
 1723 0057 3B       		.uleb128 0x3b
 1724 0058 0B       		.uleb128 0xb
 1725 0059 49       		.uleb128 0x49
 1726 005a 13       		.uleb128 0x13
 1727 005b 00       		.byte	0
 1728 005c 00       		.byte	0
 1729 005d 08       		.uleb128 0x8
 1730 005e 01       		.uleb128 0x1
 1731 005f 01       		.byte	0x1
 1732 0060 49       		.uleb128 0x49
 1733 0061 13       		.uleb128 0x13
 1734 0062 01       		.uleb128 0x1
 1735 0063 13       		.uleb128 0x13
 1736 0064 00       		.byte	0
 1737 0065 00       		.byte	0
 1738 0066 09       		.uleb128 0x9
 1739 0067 21       		.uleb128 0x21
 1740 0068 00       		.byte	0
 1741 0069 49       		.uleb128 0x49
ARM GAS  /tmp/ccOyha2A.s 			page 35


 1742 006a 13       		.uleb128 0x13
 1743 006b 2F       		.uleb128 0x2f
 1744 006c 0B       		.uleb128 0xb
 1745 006d 00       		.byte	0
 1746 006e 00       		.byte	0
 1747 006f 0A       		.uleb128 0xa
 1748 0070 13       		.uleb128 0x13
 1749 0071 01       		.byte	0x1
 1750 0072 0B       		.uleb128 0xb
 1751 0073 0B       		.uleb128 0xb
 1752 0074 3A       		.uleb128 0x3a
 1753 0075 0B       		.uleb128 0xb
 1754 0076 3B       		.uleb128 0x3b
 1755 0077 0B       		.uleb128 0xb
 1756 0078 01       		.uleb128 0x1
 1757 0079 13       		.uleb128 0x13
 1758 007a 00       		.byte	0
 1759 007b 00       		.byte	0
 1760 007c 0B       		.uleb128 0xb
 1761 007d 0D       		.uleb128 0xd
 1762 007e 00       		.byte	0
 1763 007f 03       		.uleb128 0x3
 1764 0080 0E       		.uleb128 0xe
 1765 0081 3A       		.uleb128 0x3a
 1766 0082 0B       		.uleb128 0xb
 1767 0083 3B       		.uleb128 0x3b
 1768 0084 0B       		.uleb128 0xb
 1769 0085 49       		.uleb128 0x49
 1770 0086 13       		.uleb128 0x13
 1771 0087 38       		.uleb128 0x38
 1772 0088 0B       		.uleb128 0xb
 1773 0089 00       		.byte	0
 1774 008a 00       		.byte	0
 1775 008b 0C       		.uleb128 0xc
 1776 008c 0F       		.uleb128 0xf
 1777 008d 00       		.byte	0
 1778 008e 0B       		.uleb128 0xb
 1779 008f 0B       		.uleb128 0xb
 1780 0090 00       		.byte	0
 1781 0091 00       		.byte	0
 1782 0092 0D       		.uleb128 0xd
 1783 0093 0F       		.uleb128 0xf
 1784 0094 00       		.byte	0
 1785 0095 0B       		.uleb128 0xb
 1786 0096 0B       		.uleb128 0xb
 1787 0097 49       		.uleb128 0x49
 1788 0098 13       		.uleb128 0x13
 1789 0099 00       		.byte	0
 1790 009a 00       		.byte	0
 1791 009b 0E       		.uleb128 0xe
 1792 009c 26       		.uleb128 0x26
 1793 009d 00       		.byte	0
 1794 009e 49       		.uleb128 0x49
 1795 009f 13       		.uleb128 0x13
 1796 00a0 00       		.byte	0
 1797 00a1 00       		.byte	0
 1798 00a2 0F       		.uleb128 0xf
ARM GAS  /tmp/ccOyha2A.s 			page 36


 1799 00a3 13       		.uleb128 0x13
 1800 00a4 01       		.byte	0x1
 1801 00a5 03       		.uleb128 0x3
 1802 00a6 0E       		.uleb128 0xe
 1803 00a7 0B       		.uleb128 0xb
 1804 00a8 0B       		.uleb128 0xb
 1805 00a9 3A       		.uleb128 0x3a
 1806 00aa 0B       		.uleb128 0xb
 1807 00ab 3B       		.uleb128 0x3b
 1808 00ac 0B       		.uleb128 0xb
 1809 00ad 01       		.uleb128 0x1
 1810 00ae 13       		.uleb128 0x13
 1811 00af 00       		.byte	0
 1812 00b0 00       		.byte	0
 1813 00b1 10       		.uleb128 0x10
 1814 00b2 0D       		.uleb128 0xd
 1815 00b3 00       		.byte	0
 1816 00b4 03       		.uleb128 0x3
 1817 00b5 08       		.uleb128 0x8
 1818 00b6 3A       		.uleb128 0x3a
 1819 00b7 0B       		.uleb128 0xb
 1820 00b8 3B       		.uleb128 0x3b
 1821 00b9 0B       		.uleb128 0xb
 1822 00ba 49       		.uleb128 0x49
 1823 00bb 13       		.uleb128 0x13
 1824 00bc 38       		.uleb128 0x38
 1825 00bd 0B       		.uleb128 0xb
 1826 00be 00       		.byte	0
 1827 00bf 00       		.byte	0
 1828 00c0 11       		.uleb128 0x11
 1829 00c1 13       		.uleb128 0x13
 1830 00c2 01       		.byte	0x1
 1831 00c3 03       		.uleb128 0x3
 1832 00c4 0E       		.uleb128 0xe
 1833 00c5 0B       		.uleb128 0xb
 1834 00c6 05       		.uleb128 0x5
 1835 00c7 3A       		.uleb128 0x3a
 1836 00c8 0B       		.uleb128 0xb
 1837 00c9 3B       		.uleb128 0x3b
 1838 00ca 0B       		.uleb128 0xb
 1839 00cb 01       		.uleb128 0x1
 1840 00cc 13       		.uleb128 0x13
 1841 00cd 00       		.byte	0
 1842 00ce 00       		.byte	0
 1843 00cf 12       		.uleb128 0x12
 1844 00d0 0D       		.uleb128 0xd
 1845 00d1 00       		.byte	0
 1846 00d2 03       		.uleb128 0x3
 1847 00d3 0E       		.uleb128 0xe
 1848 00d4 3A       		.uleb128 0x3a
 1849 00d5 0B       		.uleb128 0xb
 1850 00d6 3B       		.uleb128 0x3b
 1851 00d7 0B       		.uleb128 0xb
 1852 00d8 49       		.uleb128 0x49
 1853 00d9 13       		.uleb128 0x13
 1854 00da 38       		.uleb128 0x38
 1855 00db 05       		.uleb128 0x5
ARM GAS  /tmp/ccOyha2A.s 			page 37


 1856 00dc 00       		.byte	0
 1857 00dd 00       		.byte	0
 1858 00de 13       		.uleb128 0x13
 1859 00df 15       		.uleb128 0x15
 1860 00e0 00       		.byte	0
 1861 00e1 27       		.uleb128 0x27
 1862 00e2 19       		.uleb128 0x19
 1863 00e3 00       		.byte	0
 1864 00e4 00       		.byte	0
 1865 00e5 14       		.uleb128 0x14
 1866 00e6 15       		.uleb128 0x15
 1867 00e7 01       		.byte	0x1
 1868 00e8 27       		.uleb128 0x27
 1869 00e9 19       		.uleb128 0x19
 1870 00ea 49       		.uleb128 0x49
 1871 00eb 13       		.uleb128 0x13
 1872 00ec 01       		.uleb128 0x1
 1873 00ed 13       		.uleb128 0x13
 1874 00ee 00       		.byte	0
 1875 00ef 00       		.byte	0
 1876 00f0 15       		.uleb128 0x15
 1877 00f1 05       		.uleb128 0x5
 1878 00f2 00       		.byte	0
 1879 00f3 49       		.uleb128 0x49
 1880 00f4 13       		.uleb128 0x13
 1881 00f5 00       		.byte	0
 1882 00f6 00       		.byte	0
 1883 00f7 16       		.uleb128 0x16
 1884 00f8 13       		.uleb128 0x13
 1885 00f9 01       		.byte	0x1
 1886 00fa 03       		.uleb128 0x3
 1887 00fb 0E       		.uleb128 0xe
 1888 00fc 0B       		.uleb128 0xb
 1889 00fd 05       		.uleb128 0x5
 1890 00fe 3A       		.uleb128 0x3a
 1891 00ff 0B       		.uleb128 0xb
 1892 0100 3B       		.uleb128 0x3b
 1893 0101 05       		.uleb128 0x5
 1894 0102 01       		.uleb128 0x1
 1895 0103 13       		.uleb128 0x13
 1896 0104 00       		.byte	0
 1897 0105 00       		.byte	0
 1898 0106 17       		.uleb128 0x17
 1899 0107 0D       		.uleb128 0xd
 1900 0108 00       		.byte	0
 1901 0109 03       		.uleb128 0x3
 1902 010a 0E       		.uleb128 0xe
 1903 010b 3A       		.uleb128 0x3a
 1904 010c 0B       		.uleb128 0xb
 1905 010d 3B       		.uleb128 0x3b
 1906 010e 05       		.uleb128 0x5
 1907 010f 49       		.uleb128 0x49
 1908 0110 13       		.uleb128 0x13
 1909 0111 38       		.uleb128 0x38
 1910 0112 0B       		.uleb128 0xb
 1911 0113 00       		.byte	0
 1912 0114 00       		.byte	0
ARM GAS  /tmp/ccOyha2A.s 			page 38


 1913 0115 18       		.uleb128 0x18
 1914 0116 0D       		.uleb128 0xd
 1915 0117 00       		.byte	0
 1916 0118 03       		.uleb128 0x3
 1917 0119 0E       		.uleb128 0xe
 1918 011a 3A       		.uleb128 0x3a
 1919 011b 0B       		.uleb128 0xb
 1920 011c 3B       		.uleb128 0x3b
 1921 011d 05       		.uleb128 0x5
 1922 011e 49       		.uleb128 0x49
 1923 011f 13       		.uleb128 0x13
 1924 0120 38       		.uleb128 0x38
 1925 0121 05       		.uleb128 0x5
 1926 0122 00       		.byte	0
 1927 0123 00       		.byte	0
 1928 0124 19       		.uleb128 0x19
 1929 0125 13       		.uleb128 0x13
 1930 0126 01       		.byte	0x1
 1931 0127 03       		.uleb128 0x3
 1932 0128 0E       		.uleb128 0xe
 1933 0129 0B       		.uleb128 0xb
 1934 012a 0B       		.uleb128 0xb
 1935 012b 3A       		.uleb128 0x3a
 1936 012c 0B       		.uleb128 0xb
 1937 012d 3B       		.uleb128 0x3b
 1938 012e 05       		.uleb128 0x5
 1939 012f 01       		.uleb128 0x1
 1940 0130 13       		.uleb128 0x13
 1941 0131 00       		.byte	0
 1942 0132 00       		.byte	0
 1943 0133 1A       		.uleb128 0x1a
 1944 0134 13       		.uleb128 0x13
 1945 0135 01       		.byte	0x1
 1946 0136 0B       		.uleb128 0xb
 1947 0137 0B       		.uleb128 0xb
 1948 0138 3A       		.uleb128 0x3a
 1949 0139 0B       		.uleb128 0xb
 1950 013a 3B       		.uleb128 0x3b
 1951 013b 05       		.uleb128 0x5
 1952 013c 01       		.uleb128 0x1
 1953 013d 13       		.uleb128 0x13
 1954 013e 00       		.byte	0
 1955 013f 00       		.byte	0
 1956 0140 1B       		.uleb128 0x1b
 1957 0141 17       		.uleb128 0x17
 1958 0142 01       		.byte	0x1
 1959 0143 0B       		.uleb128 0xb
 1960 0144 0B       		.uleb128 0xb
 1961 0145 3A       		.uleb128 0x3a
 1962 0146 0B       		.uleb128 0xb
 1963 0147 3B       		.uleb128 0x3b
 1964 0148 05       		.uleb128 0x5
 1965 0149 01       		.uleb128 0x1
 1966 014a 13       		.uleb128 0x13
 1967 014b 00       		.byte	0
 1968 014c 00       		.byte	0
 1969 014d 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccOyha2A.s 			page 39


 1970 014e 0D       		.uleb128 0xd
 1971 014f 00       		.byte	0
 1972 0150 03       		.uleb128 0x3
 1973 0151 0E       		.uleb128 0xe
 1974 0152 3A       		.uleb128 0x3a
 1975 0153 0B       		.uleb128 0xb
 1976 0154 3B       		.uleb128 0x3b
 1977 0155 05       		.uleb128 0x5
 1978 0156 49       		.uleb128 0x49
 1979 0157 13       		.uleb128 0x13
 1980 0158 00       		.byte	0
 1981 0159 00       		.byte	0
 1982 015a 1D       		.uleb128 0x1d
 1983 015b 15       		.uleb128 0x15
 1984 015c 01       		.byte	0x1
 1985 015d 27       		.uleb128 0x27
 1986 015e 19       		.uleb128 0x19
 1987 015f 01       		.uleb128 0x1
 1988 0160 13       		.uleb128 0x13
 1989 0161 00       		.byte	0
 1990 0162 00       		.byte	0
 1991 0163 1E       		.uleb128 0x1e
 1992 0164 34       		.uleb128 0x34
 1993 0165 00       		.byte	0
 1994 0166 03       		.uleb128 0x3
 1995 0167 0E       		.uleb128 0xe
 1996 0168 3A       		.uleb128 0x3a
 1997 0169 0B       		.uleb128 0xb
 1998 016a 3B       		.uleb128 0x3b
 1999 016b 05       		.uleb128 0x5
 2000 016c 49       		.uleb128 0x49
 2001 016d 13       		.uleb128 0x13
 2002 016e 3F       		.uleb128 0x3f
 2003 016f 19       		.uleb128 0x19
 2004 0170 3C       		.uleb128 0x3c
 2005 0171 19       		.uleb128 0x19
 2006 0172 00       		.byte	0
 2007 0173 00       		.byte	0
 2008 0174 1F       		.uleb128 0x1f
 2009 0175 2E       		.uleb128 0x2e
 2010 0176 01       		.byte	0x1
 2011 0177 3F       		.uleb128 0x3f
 2012 0178 19       		.uleb128 0x19
 2013 0179 03       		.uleb128 0x3
 2014 017a 0E       		.uleb128 0xe
 2015 017b 3A       		.uleb128 0x3a
 2016 017c 0B       		.uleb128 0xb
 2017 017d 3B       		.uleb128 0x3b
 2018 017e 0B       		.uleb128 0xb
 2019 017f 27       		.uleb128 0x27
 2020 0180 19       		.uleb128 0x19
 2021 0181 49       		.uleb128 0x49
 2022 0182 13       		.uleb128 0x13
 2023 0183 11       		.uleb128 0x11
 2024 0184 01       		.uleb128 0x1
 2025 0185 12       		.uleb128 0x12
 2026 0186 06       		.uleb128 0x6
ARM GAS  /tmp/ccOyha2A.s 			page 40


 2027 0187 40       		.uleb128 0x40
 2028 0188 18       		.uleb128 0x18
 2029 0189 9742     		.uleb128 0x2117
 2030 018b 19       		.uleb128 0x19
 2031 018c 01       		.uleb128 0x1
 2032 018d 13       		.uleb128 0x13
 2033 018e 00       		.byte	0
 2034 018f 00       		.byte	0
 2035 0190 20       		.uleb128 0x20
 2036 0191 05       		.uleb128 0x5
 2037 0192 00       		.byte	0
 2038 0193 03       		.uleb128 0x3
 2039 0194 0E       		.uleb128 0xe
 2040 0195 3A       		.uleb128 0x3a
 2041 0196 0B       		.uleb128 0xb
 2042 0197 3B       		.uleb128 0x3b
 2043 0198 0B       		.uleb128 0xb
 2044 0199 49       		.uleb128 0x49
 2045 019a 13       		.uleb128 0x13
 2046 019b 02       		.uleb128 0x2
 2047 019c 17       		.uleb128 0x17
 2048 019d 00       		.byte	0
 2049 019e 00       		.byte	0
 2050 019f 21       		.uleb128 0x21
 2051 01a0 05       		.uleb128 0x5
 2052 01a1 00       		.byte	0
 2053 01a2 03       		.uleb128 0x3
 2054 01a3 0E       		.uleb128 0xe
 2055 01a4 3A       		.uleb128 0x3a
 2056 01a5 0B       		.uleb128 0xb
 2057 01a6 3B       		.uleb128 0x3b
 2058 01a7 0B       		.uleb128 0xb
 2059 01a8 49       		.uleb128 0x49
 2060 01a9 13       		.uleb128 0x13
 2061 01aa 02       		.uleb128 0x2
 2062 01ab 18       		.uleb128 0x18
 2063 01ac 00       		.byte	0
 2064 01ad 00       		.byte	0
 2065 01ae 22       		.uleb128 0x22
 2066 01af 34       		.uleb128 0x34
 2067 01b0 00       		.byte	0
 2068 01b1 03       		.uleb128 0x3
 2069 01b2 08       		.uleb128 0x8
 2070 01b3 3A       		.uleb128 0x3a
 2071 01b4 0B       		.uleb128 0xb
 2072 01b5 3B       		.uleb128 0x3b
 2073 01b6 0B       		.uleb128 0xb
 2074 01b7 49       		.uleb128 0x49
 2075 01b8 13       		.uleb128 0x13
 2076 01b9 02       		.uleb128 0x2
 2077 01ba 18       		.uleb128 0x18
 2078 01bb 00       		.byte	0
 2079 01bc 00       		.byte	0
 2080 01bd 23       		.uleb128 0x23
 2081 01be 34       		.uleb128 0x34
 2082 01bf 00       		.byte	0
 2083 01c0 03       		.uleb128 0x3
ARM GAS  /tmp/ccOyha2A.s 			page 41


 2084 01c1 08       		.uleb128 0x8
 2085 01c2 3A       		.uleb128 0x3a
 2086 01c3 0B       		.uleb128 0xb
 2087 01c4 3B       		.uleb128 0x3b
 2088 01c5 0B       		.uleb128 0xb
 2089 01c6 49       		.uleb128 0x49
 2090 01c7 13       		.uleb128 0x13
 2091 01c8 02       		.uleb128 0x2
 2092 01c9 17       		.uleb128 0x17
 2093 01ca 00       		.byte	0
 2094 01cb 00       		.byte	0
 2095 01cc 24       		.uleb128 0x24
 2096 01cd 898201   		.uleb128 0x4109
 2097 01d0 01       		.byte	0x1
 2098 01d1 11       		.uleb128 0x11
 2099 01d2 01       		.uleb128 0x1
 2100 01d3 9542     		.uleb128 0x2115
 2101 01d5 19       		.uleb128 0x19
 2102 01d6 31       		.uleb128 0x31
 2103 01d7 13       		.uleb128 0x13
 2104 01d8 00       		.byte	0
 2105 01d9 00       		.byte	0
 2106 01da 25       		.uleb128 0x25
 2107 01db 8A8201   		.uleb128 0x410a
 2108 01de 00       		.byte	0
 2109 01df 02       		.uleb128 0x2
 2110 01e0 18       		.uleb128 0x18
 2111 01e1 9142     		.uleb128 0x2111
 2112 01e3 18       		.uleb128 0x18
 2113 01e4 00       		.byte	0
 2114 01e5 00       		.byte	0
 2115 01e6 26       		.uleb128 0x26
 2116 01e7 34       		.uleb128 0x34
 2117 01e8 00       		.byte	0
 2118 01e9 03       		.uleb128 0x3
 2119 01ea 0E       		.uleb128 0xe
 2120 01eb 3A       		.uleb128 0x3a
 2121 01ec 0B       		.uleb128 0xb
 2122 01ed 3B       		.uleb128 0x3b
 2123 01ee 0B       		.uleb128 0xb
 2124 01ef 49       		.uleb128 0x49
 2125 01f0 13       		.uleb128 0x13
 2126 01f1 02       		.uleb128 0x2
 2127 01f2 17       		.uleb128 0x17
 2128 01f3 00       		.byte	0
 2129 01f4 00       		.byte	0
 2130 01f5 27       		.uleb128 0x27
 2131 01f6 2E       		.uleb128 0x2e
 2132 01f7 01       		.byte	0x1
 2133 01f8 3F       		.uleb128 0x3f
 2134 01f9 19       		.uleb128 0x19
 2135 01fa 03       		.uleb128 0x3
 2136 01fb 0E       		.uleb128 0xe
 2137 01fc 3A       		.uleb128 0x3a
 2138 01fd 0B       		.uleb128 0xb
 2139 01fe 3B       		.uleb128 0x3b
 2140 01ff 0B       		.uleb128 0xb
ARM GAS  /tmp/ccOyha2A.s 			page 42


 2141 0200 27       		.uleb128 0x27
 2142 0201 19       		.uleb128 0x19
 2143 0202 49       		.uleb128 0x49
 2144 0203 13       		.uleb128 0x13
 2145 0204 11       		.uleb128 0x11
 2146 0205 01       		.uleb128 0x1
 2147 0206 12       		.uleb128 0x12
 2148 0207 06       		.uleb128 0x6
 2149 0208 40       		.uleb128 0x40
 2150 0209 18       		.uleb128 0x18
 2151 020a 9742     		.uleb128 0x2117
 2152 020c 19       		.uleb128 0x19
 2153 020d 00       		.byte	0
 2154 020e 00       		.byte	0
 2155 020f 00       		.byte	0
 2156              		.section	.debug_loc,"",%progbits
 2157              	.Ldebug_loc0:
 2158              	.LLST9:
 2159 0000 00000000 		.4byte	.LVL24
 2160 0004 14000000 		.4byte	.LVL25
 2161 0008 0100     		.2byte	0x1
 2162 000a 50       		.byte	0x50
 2163 000b 14000000 		.4byte	.LVL25
 2164 000f 6A000000 		.4byte	.LVL40
 2165 0013 0400     		.2byte	0x4
 2166 0015 F3       		.byte	0xf3
 2167 0016 01       		.uleb128 0x1
 2168 0017 50       		.byte	0x50
 2169 0018 9F       		.byte	0x9f
 2170 0019 6A000000 		.4byte	.LVL40
 2171 001d 6C000000 		.4byte	.LVL41
 2172 0021 0100     		.2byte	0x1
 2173 0023 50       		.byte	0x50
 2174 0024 6C000000 		.4byte	.LVL41
 2175 0028 6E000000 		.4byte	.LFE3
 2176 002c 0400     		.2byte	0x4
 2177 002e F3       		.byte	0xf3
 2178 002f 01       		.uleb128 0x1
 2179 0030 50       		.byte	0x50
 2180 0031 9F       		.byte	0x9f
 2181 0032 00000000 		.4byte	0
 2182 0036 00000000 		.4byte	0
 2183              	.LLST10:
 2184 003a 00000000 		.4byte	.LVL24
 2185 003e 42000000 		.4byte	.LVL31
 2186 0042 0100     		.2byte	0x1
 2187 0044 52       		.byte	0x52
 2188 0045 42000000 		.4byte	.LVL31
 2189 0049 5E000000 		.4byte	.LVL36
 2190 004d 0400     		.2byte	0x4
 2191 004f F3       		.byte	0xf3
 2192 0050 01       		.uleb128 0x1
 2193 0051 52       		.byte	0x52
 2194 0052 9F       		.byte	0x9f
 2195 0053 5E000000 		.4byte	.LVL36
 2196 0057 6E000000 		.4byte	.LFE3
 2197 005b 0100     		.2byte	0x1
ARM GAS  /tmp/ccOyha2A.s 			page 43


 2198 005d 52       		.byte	0x52
 2199 005e 00000000 		.4byte	0
 2200 0062 00000000 		.4byte	0
 2201              	.LLST11:
 2202 0066 00000000 		.4byte	.LVL24
 2203 006a 14000000 		.4byte	.LVL25
 2204 006e 0300     		.2byte	0x3
 2205 0070 91       		.byte	0x91
 2206 0071 04       		.sleb128 4
 2207 0072 9F       		.byte	0x9f
 2208 0073 14000000 		.4byte	.LVL25
 2209 0077 18000000 		.4byte	.LVL26
 2210 007b 0300     		.2byte	0x3
 2211 007d 74       		.byte	0x74
 2212 007e 7F       		.sleb128 -1
 2213 007f 9F       		.byte	0x9f
 2214 0080 18000000 		.4byte	.LVL26
 2215 0084 22000000 		.4byte	.LVL28
 2216 0088 0300     		.2byte	0x3
 2217 008a 76       		.byte	0x76
 2218 008b 7F       		.sleb128 -1
 2219 008c 9F       		.byte	0x9f
 2220 008d 3E000000 		.4byte	.LVL30
 2221 0091 44000000 		.4byte	.LVL32
 2222 0095 0100     		.2byte	0x1
 2223 0097 56       		.byte	0x56
 2224 0098 44000000 		.4byte	.LVL32
 2225 009c 48000000 		.4byte	.LVL33
 2226 00a0 0100     		.2byte	0x1
 2227 00a2 53       		.byte	0x53
 2228 00a3 48000000 		.4byte	.LVL33
 2229 00a7 4E000000 		.4byte	.LVL34
 2230 00ab 0300     		.2byte	0x3
 2231 00ad 73       		.byte	0x73
 2232 00ae 01       		.sleb128 1
 2233 00af 9F       		.byte	0x9f
 2234 00b0 4E000000 		.4byte	.LVL34
 2235 00b4 56000000 		.4byte	.LVL35
 2236 00b8 0100     		.2byte	0x1
 2237 00ba 53       		.byte	0x53
 2238 00bb 5E000000 		.4byte	.LVL36
 2239 00bf 60000000 		.4byte	.LVL37
 2240 00c3 0100     		.2byte	0x1
 2241 00c5 56       		.byte	0x56
 2242 00c6 60000000 		.4byte	.LVL37
 2243 00ca 6A000000 		.4byte	.LVL40
 2244 00ce 0300     		.2byte	0x3
 2245 00d0 74       		.byte	0x74
 2246 00d1 7F       		.sleb128 -1
 2247 00d2 9F       		.byte	0x9f
 2248 00d3 6A000000 		.4byte	.LVL40
 2249 00d7 6E000000 		.4byte	.LFE3
 2250 00db 0300     		.2byte	0x3
 2251 00dd 91       		.byte	0x91
 2252 00de 04       		.sleb128 4
 2253 00df 9F       		.byte	0x9f
 2254 00e0 00000000 		.4byte	0
ARM GAS  /tmp/ccOyha2A.s 			page 44


 2255 00e4 00000000 		.4byte	0
 2256              	.LLST12:
 2257 00e8 20000000 		.4byte	.LVL27
 2258 00ec 2C000000 		.4byte	.LVL29
 2259 00f0 0100     		.2byte	0x1
 2260 00f2 53       		.byte	0x53
 2261 00f3 2C000000 		.4byte	.LVL29
 2262 00f7 44000000 		.4byte	.LVL32
 2263 00fb 0400     		.2byte	0x4
 2264 00fd 73       		.byte	0x73
 2265 00fe A97F     		.sleb128 -87
 2266 0100 9F       		.byte	0x9f
 2267 0101 44000000 		.4byte	.LVL32
 2268 0105 5E000000 		.4byte	.LVL36
 2269 0109 0300     		.2byte	0x3
 2270 010b 77       		.byte	0x77
 2271 010c 50       		.sleb128 -48
 2272 010d 9F       		.byte	0x9f
 2273 010e 5E000000 		.4byte	.LVL36
 2274 0112 62000000 		.4byte	.LVL38
 2275 0116 0400     		.2byte	0x4
 2276 0118 73       		.byte	0x73
 2277 0119 A97F     		.sleb128 -87
 2278 011b 9F       		.byte	0x9f
 2279 011c 62000000 		.4byte	.LVL38
 2280 0120 6A000000 		.4byte	.LVL40
 2281 0124 0300     		.2byte	0x3
 2282 0126 77       		.byte	0x77
 2283 0127 50       		.sleb128 -48
 2284 0128 9F       		.byte	0x9f
 2285 0129 00000000 		.4byte	0
 2286 012d 00000000 		.4byte	0
 2287              	.LLST13:
 2288 0131 00000000 		.4byte	.LVL24
 2289 0135 44000000 		.4byte	.LVL32
 2290 0139 0100     		.2byte	0x1
 2291 013b 50       		.byte	0x50
 2292 013c 44000000 		.4byte	.LVL32
 2293 0140 5E000000 		.4byte	.LVL36
 2294 0144 0100     		.2byte	0x1
 2295 0146 55       		.byte	0x55
 2296 0147 5E000000 		.4byte	.LVL36
 2297 014b 64000000 		.4byte	.LVL39
 2298 014f 0100     		.2byte	0x1
 2299 0151 50       		.byte	0x50
 2300 0152 64000000 		.4byte	.LVL39
 2301 0156 6A000000 		.4byte	.LVL40
 2302 015a 0100     		.2byte	0x1
 2303 015c 55       		.byte	0x55
 2304 015d 6A000000 		.4byte	.LVL40
 2305 0161 6C000000 		.4byte	.LVL41
 2306 0165 0100     		.2byte	0x1
 2307 0167 50       		.byte	0x50
 2308 0168 6C000000 		.4byte	.LVL41
 2309 016c 6E000000 		.4byte	.LFE3
 2310 0170 0400     		.2byte	0x4
 2311 0172 F3       		.byte	0xf3
ARM GAS  /tmp/ccOyha2A.s 			page 45


 2312 0173 01       		.uleb128 0x1
 2313 0174 50       		.byte	0x50
 2314 0175 9F       		.byte	0x9f
 2315 0176 00000000 		.4byte	0
 2316 017a 00000000 		.4byte	0
 2317              	.LLST14:
 2318 017e 3E000000 		.4byte	.LVL30
 2319 0182 44000000 		.4byte	.LVL32
 2320 0186 0100     		.2byte	0x1
 2321 0188 51       		.byte	0x51
 2322 0189 44000000 		.4byte	.LVL32
 2323 018d 4E000000 		.4byte	.LVL34
 2324 0191 0300     		.2byte	0x3
 2325 0193 72       		.byte	0x72
 2326 0194 02       		.sleb128 2
 2327 0195 9F       		.byte	0x9f
 2328 0196 4E000000 		.4byte	.LVL34
 2329 019a 5E000000 		.4byte	.LVL36
 2330 019e 0300     		.2byte	0x3
 2331 01a0 72       		.byte	0x72
 2332 01a1 01       		.sleb128 1
 2333 01a2 9F       		.byte	0x9f
 2334 01a3 5E000000 		.4byte	.LVL36
 2335 01a7 6A000000 		.4byte	.LVL40
 2336 01ab 0100     		.2byte	0x1
 2337 01ad 51       		.byte	0x51
 2338 01ae 00000000 		.4byte	0
 2339 01b2 00000000 		.4byte	0
 2340              	.LLST15:
 2341 01b6 00000000 		.4byte	.LVL42
 2342 01ba 03000000 		.4byte	.LVL43-1
 2343 01be 0100     		.2byte	0x1
 2344 01c0 50       		.byte	0x50
 2345 01c1 03000000 		.4byte	.LVL43-1
 2346 01c5 04000000 		.4byte	.LFE2
 2347 01c9 0400     		.2byte	0x4
 2348 01cb F3       		.byte	0xf3
 2349 01cc 01       		.uleb128 0x1
 2350 01cd 50       		.byte	0x50
 2351 01ce 9F       		.byte	0x9f
 2352 01cf 00000000 		.4byte	0
 2353 01d3 00000000 		.4byte	0
 2354              	.LLST16:
 2355 01d7 00000000 		.4byte	.LVL42
 2356 01db 03000000 		.4byte	.LVL43-1
 2357 01df 0100     		.2byte	0x1
 2358 01e1 52       		.byte	0x52
 2359 01e2 03000000 		.4byte	.LVL43-1
 2360 01e6 04000000 		.4byte	.LFE2
 2361 01ea 0400     		.2byte	0x4
 2362 01ec F3       		.byte	0xf3
 2363 01ed 01       		.uleb128 0x1
 2364 01ee 52       		.byte	0x52
 2365 01ef 9F       		.byte	0x9f
 2366 01f0 00000000 		.4byte	0
 2367 01f4 00000000 		.4byte	0
 2368              	.LLST0:
ARM GAS  /tmp/ccOyha2A.s 			page 46


 2369 01f8 00000000 		.4byte	.LVL0
 2370 01fc 6E000000 		.4byte	.LVL13
 2371 0200 0100     		.2byte	0x1
 2372 0202 50       		.byte	0x50
 2373 0203 6E000000 		.4byte	.LVL13
 2374 0207 8A000000 		.4byte	.LVL17
 2375 020b 0400     		.2byte	0x4
 2376 020d F3       		.byte	0xf3
 2377 020e 01       		.uleb128 0x1
 2378 020f 50       		.byte	0x50
 2379 0210 9F       		.byte	0x9f
 2380 0211 8A000000 		.4byte	.LVL17
 2381 0215 94000000 		.4byte	.LVL21
 2382 0219 0100     		.2byte	0x1
 2383 021b 50       		.byte	0x50
 2384 021c 94000000 		.4byte	.LVL21
 2385 0220 96000000 		.4byte	.LFE1
 2386 0224 0400     		.2byte	0x4
 2387 0226 F3       		.byte	0xf3
 2388 0227 01       		.uleb128 0x1
 2389 0228 50       		.byte	0x50
 2390 0229 9F       		.byte	0x9f
 2391 022a 00000000 		.4byte	0
 2392 022e 00000000 		.4byte	0
 2393              	.LLST1:
 2394 0232 00000000 		.4byte	.LVL0
 2395 0236 6C000000 		.4byte	.LVL12
 2396 023a 0100     		.2byte	0x1
 2397 023c 52       		.byte	0x52
 2398 023d 6C000000 		.4byte	.LVL12
 2399 0241 8A000000 		.4byte	.LVL17
 2400 0245 0400     		.2byte	0x4
 2401 0247 F3       		.byte	0xf3
 2402 0248 01       		.uleb128 0x1
 2403 0249 52       		.byte	0x52
 2404 024a 9F       		.byte	0x9f
 2405 024b 8A000000 		.4byte	.LVL17
 2406 024f 96000000 		.4byte	.LFE1
 2407 0253 0100     		.2byte	0x1
 2408 0255 52       		.byte	0x52
 2409 0256 00000000 		.4byte	0
 2410 025a 00000000 		.4byte	0
 2411              	.LLST2:
 2412 025e 00000000 		.4byte	.LVL0
 2413 0262 28000000 		.4byte	.LVL2
 2414 0266 0300     		.2byte	0x3
 2415 0268 91       		.byte	0x91
 2416 0269 04       		.sleb128 4
 2417 026a 9F       		.byte	0x9f
 2418 026b 28000000 		.4byte	.LVL2
 2419 026f 30000000 		.4byte	.LVL3
 2420 0273 0300     		.2byte	0x3
 2421 0275 91       		.byte	0x91
 2422 0276 44       		.sleb128 -60
 2423 0277 9F       		.byte	0x9f
 2424 0278 30000000 		.4byte	.LVL3
 2425 027c 34000000 		.4byte	.LVL4
ARM GAS  /tmp/ccOyha2A.s 			page 47


 2426 0280 0300     		.2byte	0x3
 2427 0282 74       		.byte	0x74
 2428 0283 7F       		.sleb128 -1
 2429 0284 9F       		.byte	0x9f
 2430 0285 34000000 		.4byte	.LVL4
 2431 0289 3E000000 		.4byte	.LVL6
 2432 028d 0300     		.2byte	0x3
 2433 028f 77       		.byte	0x77
 2434 0290 7F       		.sleb128 -1
 2435 0291 9F       		.byte	0x9f
 2436 0292 66000000 		.4byte	.LVL11
 2437 0296 6E000000 		.4byte	.LVL13
 2438 029a 0100     		.2byte	0x1
 2439 029c 57       		.byte	0x57
 2440 029d 6E000000 		.4byte	.LVL13
 2441 02a1 72000000 		.4byte	.LVL14
 2442 02a5 0100     		.2byte	0x1
 2443 02a7 53       		.byte	0x53
 2444 02a8 72000000 		.4byte	.LVL14
 2445 02ac 78000000 		.4byte	.LVL15
 2446 02b0 0300     		.2byte	0x3
 2447 02b2 73       		.byte	0x73
 2448 02b3 01       		.sleb128 1
 2449 02b4 9F       		.byte	0x9f
 2450 02b5 78000000 		.4byte	.LVL15
 2451 02b9 7E000000 		.4byte	.LVL16
 2452 02bd 0100     		.2byte	0x1
 2453 02bf 53       		.byte	0x53
 2454 02c0 8A000000 		.4byte	.LVL17
 2455 02c4 8E000000 		.4byte	.LVL19
 2456 02c8 0300     		.2byte	0x3
 2457 02ca 91       		.byte	0x91
 2458 02cb 04       		.sleb128 4
 2459 02cc 9F       		.byte	0x9f
 2460 02cd 92000000 		.4byte	.LVL20
 2461 02d1 96000000 		.4byte	.LFE1
 2462 02d5 0300     		.2byte	0x3
 2463 02d7 91       		.byte	0x91
 2464 02d8 04       		.sleb128 4
 2465 02d9 9F       		.byte	0x9f
 2466 02da 00000000 		.4byte	0
 2467 02de 00000000 		.4byte	0
 2468              	.LLST3:
 2469 02e2 3C000000 		.4byte	.LVL5
 2470 02e6 48000000 		.4byte	.LVL7
 2471 02ea 0100     		.2byte	0x1
 2472 02ec 53       		.byte	0x53
 2473 02ed 48000000 		.4byte	.LVL7
 2474 02f1 62000000 		.4byte	.LVL9
 2475 02f5 0400     		.2byte	0x4
 2476 02f7 73       		.byte	0x73
 2477 02f8 A97F     		.sleb128 -87
 2478 02fa 9F       		.byte	0x9f
 2479 02fb 62000000 		.4byte	.LVL9
 2480 02ff 8A000000 		.4byte	.LVL17
 2481 0303 0300     		.2byte	0x3
 2482 0305 7C       		.byte	0x7c
ARM GAS  /tmp/ccOyha2A.s 			page 48


 2483 0306 50       		.sleb128 -48
 2484 0307 9F       		.byte	0x9f
 2485 0308 8E000000 		.4byte	.LVL19
 2486 030c 92000000 		.4byte	.LVL20
 2487 0310 0400     		.2byte	0x4
 2488 0312 73       		.byte	0x73
 2489 0313 A97F     		.sleb128 -87
 2490 0315 9F       		.byte	0x9f
 2491 0316 00000000 		.4byte	0
 2492 031a 00000000 		.4byte	0
 2493              	.LLST4:
 2494 031e 28000000 		.4byte	.LVL2
 2495 0322 3E000000 		.4byte	.LVL6
 2496 0326 0100     		.2byte	0x1
 2497 0328 56       		.byte	0x56
 2498 0329 3E000000 		.4byte	.LVL6
 2499 032d 8A000000 		.4byte	.LVL17
 2500 0331 0100     		.2byte	0x1
 2501 0333 55       		.byte	0x55
 2502 0334 8C000000 		.4byte	.LVL18
 2503 0338 8E000000 		.4byte	.LVL19
 2504 033c 0100     		.2byte	0x1
 2505 033e 56       		.byte	0x56
 2506 033f 8E000000 		.4byte	.LVL19
 2507 0343 92000000 		.4byte	.LVL20
 2508 0347 0100     		.2byte	0x1
 2509 0349 55       		.byte	0x55
 2510 034a 00000000 		.4byte	0
 2511 034e 00000000 		.4byte	0
 2512              	.LLST5:
 2513 0352 20000000 		.4byte	.LVL1
 2514 0356 92000000 		.4byte	.LVL20
 2515 035a 0600     		.2byte	0x6
 2516 035c 78       		.byte	0x78
 2517 035d 00       		.sleb128 0
 2518 035e 08       		.byte	0x8
 2519 035f FF       		.byte	0xff
 2520 0360 1A       		.byte	0x1a
 2521 0361 9F       		.byte	0x9f
 2522 0362 00000000 		.4byte	0
 2523 0366 00000000 		.4byte	0
 2524              	.LLST6:
 2525 036a 5A000000 		.4byte	.LVL8
 2526 036e 64000000 		.4byte	.LVL10
 2527 0372 0100     		.2byte	0x1
 2528 0374 51       		.byte	0x51
 2529 0375 64000000 		.4byte	.LVL10
 2530 0379 6E000000 		.4byte	.LVL13
 2531 037d 0100     		.2byte	0x1
 2532 037f 54       		.byte	0x54
 2533 0380 6E000000 		.4byte	.LVL13
 2534 0384 78000000 		.4byte	.LVL15
 2535 0388 0300     		.2byte	0x3
 2536 038a 72       		.byte	0x72
 2537 038b 02       		.sleb128 2
 2538 038c 9F       		.byte	0x9f
 2539 038d 78000000 		.4byte	.LVL15
ARM GAS  /tmp/ccOyha2A.s 			page 49


 2540 0391 7E000000 		.4byte	.LVL16
 2541 0395 0300     		.2byte	0x3
 2542 0397 72       		.byte	0x72
 2543 0398 01       		.sleb128 1
 2544 0399 9F       		.byte	0x9f
 2545 039a 8E000000 		.4byte	.LVL19
 2546 039e 92000000 		.4byte	.LVL20
 2547 03a2 0100     		.2byte	0x1
 2548 03a4 51       		.byte	0x51
 2549 03a5 00000000 		.4byte	0
 2550 03a9 00000000 		.4byte	0
 2551              	.LLST7:
 2552 03ad 00000000 		.4byte	.LVL22
 2553 03b1 03000000 		.4byte	.LVL23-1
 2554 03b5 0100     		.2byte	0x1
 2555 03b7 50       		.byte	0x50
 2556 03b8 03000000 		.4byte	.LVL23-1
 2557 03bc 04000000 		.4byte	.LFE0
 2558 03c0 0400     		.2byte	0x4
 2559 03c2 F3       		.byte	0xf3
 2560 03c3 01       		.uleb128 0x1
 2561 03c4 50       		.byte	0x50
 2562 03c5 9F       		.byte	0x9f
 2563 03c6 00000000 		.4byte	0
 2564 03ca 00000000 		.4byte	0
 2565              	.LLST8:
 2566 03ce 00000000 		.4byte	.LVL22
 2567 03d2 03000000 		.4byte	.LVL23-1
 2568 03d6 0100     		.2byte	0x1
 2569 03d8 52       		.byte	0x52
 2570 03d9 03000000 		.4byte	.LVL23-1
 2571 03dd 04000000 		.4byte	.LFE0
 2572 03e1 0400     		.2byte	0x4
 2573 03e3 F3       		.byte	0xf3
 2574 03e4 01       		.uleb128 0x1
 2575 03e5 52       		.byte	0x52
 2576 03e6 9F       		.byte	0x9f
 2577 03e7 00000000 		.4byte	0
 2578 03eb 00000000 		.4byte	0
 2579              		.section	.debug_aranges,"",%progbits
 2580 0000 34000000 		.4byte	0x34
 2581 0004 0200     		.2byte	0x2
 2582 0006 00000000 		.4byte	.Ldebug_info0
 2583 000a 04       		.byte	0x4
 2584 000b 00       		.byte	0
 2585 000c 0000     		.2byte	0
 2586 000e 0000     		.2byte	0
 2587 0010 00000000 		.4byte	.LFB1
 2588 0014 96000000 		.4byte	.LFE1-.LFB1
 2589 0018 00000000 		.4byte	.LFB0
 2590 001c 04000000 		.4byte	.LFE0-.LFB0
 2591 0020 00000000 		.4byte	.LFB3
 2592 0024 6E000000 		.4byte	.LFE3-.LFB3
 2593 0028 00000000 		.4byte	.LFB2
 2594 002c 04000000 		.4byte	.LFE2-.LFB2
 2595 0030 00000000 		.4byte	0
 2596 0034 00000000 		.4byte	0
ARM GAS  /tmp/ccOyha2A.s 			page 50


 2597              		.section	.debug_ranges,"",%progbits
 2598              	.Ldebug_ranges0:
 2599 0000 00000000 		.4byte	.LFB1
 2600 0004 96000000 		.4byte	.LFE1
 2601 0008 00000000 		.4byte	.LFB0
 2602 000c 04000000 		.4byte	.LFE0
 2603 0010 00000000 		.4byte	.LFB3
 2604 0014 6E000000 		.4byte	.LFE3
 2605 0018 00000000 		.4byte	.LFB2
 2606 001c 04000000 		.4byte	.LFE2
 2607 0020 00000000 		.4byte	0
 2608 0024 00000000 		.4byte	0
 2609              		.section	.debug_line,"",%progbits
 2610              	.Ldebug_line0:
 2611 0000 38010000 		.section	.debug_str,"MS",%progbits,1
 2611      02009C00 
 2611      00000201 
 2611      FB0E0D00 
 2611      01010101 
 2612              	.LASF39:
 2613 0000 5F64736F 		.ascii	"_dso_handle\000"
 2613      5F68616E 
 2613      646C6500 
 2614              	.LASF119:
 2615 000c 76616C75 		.ascii	"value\000"
 2615      6500
 2616              	.LASF47:
 2617 0012 5F73697A 		.ascii	"_size\000"
 2617      6500
 2618              	.LASF91:
 2619 0018 5F72616E 		.ascii	"_rand48\000"
 2619      64343800 
 2620              	.LASF71:
 2621 0020 5F656D65 		.ascii	"_emergency\000"
 2621      7267656E 
 2621      637900
 2622              	.LASF120:
 2623 002b 73747269 		.ascii	"string\000"
 2623      6E6700
 2624              	.LASF107:
 2625 0032 5F676574 		.ascii	"_getdate_err\000"
 2625      64617465 
 2625      5F657272 
 2625      00
 2626              	.LASF61:
 2627 003f 5F646174 		.ascii	"_data\000"
 2627      6100
 2628              	.LASF111:
 2629 0045 5F776372 		.ascii	"_wcrtomb_state\000"
 2629      746F6D62 
 2629      5F737461 
 2629      746500
 2630              	.LASF112:
 2631 0054 5F776373 		.ascii	"_wcsrtombs_state\000"
 2631      72746F6D 
 2631      62735F73 
 2631      74617465 
ARM GAS  /tmp/ccOyha2A.s 			page 51


 2631      00
 2632              	.LASF8:
 2633 0065 6C6F6E67 		.ascii	"long long unsigned int\000"
 2633      206C6F6E 
 2633      6720756E 
 2633      7369676E 
 2633      65642069 
 2634              	.LASF51:
 2635 007c 5F6C6266 		.ascii	"_lbfsize\000"
 2635      73697A65 
 2635      00
 2636              	.LASF109:
 2637 0085 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2637      746F7763 
 2637      5F737461 
 2637      746500
 2638              	.LASF104:
 2639 0094 5F776374 		.ascii	"_wctomb_state\000"
 2639      6F6D625F 
 2639      73746174 
 2639      6500
 2640              	.LASF28:
 2641 00a2 5F5F746D 		.ascii	"__tm_sec\000"
 2641      5F736563 
 2641      00
 2642              	.LASF7:
 2643 00ab 6C6F6E67 		.ascii	"long long int\000"
 2643      206C6F6E 
 2643      6720696E 
 2643      7400
 2644              	.LASF1:
 2645 00b9 7369676E 		.ascii	"signed char\000"
 2645      65642063 
 2645      68617200 
 2646              	.LASF57:
 2647 00c5 5F756275 		.ascii	"_ubuf\000"
 2647      6600
 2648              	.LASF46:
 2649 00cb 5F626173 		.ascii	"_base\000"
 2649      6500
 2650              	.LASF30:
 2651 00d1 5F5F746D 		.ascii	"__tm_hour\000"
 2651      5F686F75 
 2651      7200
 2652              	.LASF86:
 2653 00db 5F5F7366 		.ascii	"__sf\000"
 2653      00
 2654              	.LASF37:
 2655 00e0 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2655      65786974 
 2655      5F617267 
 2655      7300
 2656              	.LASF52:
 2657 00ee 5F636F6F 		.ascii	"_cookie\000"
 2657      6B696500 
 2658              	.LASF85:
 2659 00f6 5F5F7367 		.ascii	"__sglue\000"
ARM GAS  /tmp/ccOyha2A.s 			page 52


 2659      6C756500 
 2660              	.LASF5:
 2661 00fe 6C6F6E67 		.ascii	"long int\000"
 2661      20696E74 
 2661      00
 2662              	.LASF49:
 2663 0107 5F666C61 		.ascii	"_flags\000"
 2663      677300
 2664              	.LASF41:
 2665 010e 5F69735F 		.ascii	"_is_cxa\000"
 2665      63786100 
 2666              	.LASF67:
 2667 0116 5F737464 		.ascii	"_stdin\000"
 2667      696E00
 2668              	.LASF59:
 2669 011d 5F626C6B 		.ascii	"_blksize\000"
 2669      73697A65 
 2669      00
 2670              	.LASF122:
 2671 0126 756C746F 		.ascii	"ultoa\000"
 2671      6100
 2672              	.LASF81:
 2673 012c 5F637674 		.ascii	"_cvtbuf\000"
 2673      62756600 
 2674              	.LASF60:
 2675 0134 5F6F6666 		.ascii	"_offset\000"
 2675      73657400 
 2676              	.LASF110:
 2677 013c 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2677      72746F77 
 2677      63735F73 
 2677      74617465 
 2677      00
 2678              	.LASF108:
 2679 014d 5F6D6272 		.ascii	"_mbrlen_state\000"
 2679      6C656E5F 
 2679      73746174 
 2679      6500
 2680              	.LASF38:
 2681 015b 5F666E61 		.ascii	"_fnargs\000"
 2681      72677300 
 2682              	.LASF44:
 2683 0163 5F666E73 		.ascii	"_fns\000"
 2683      00
 2684              	.LASF24:
 2685 0168 5F736967 		.ascii	"_sign\000"
 2685      6E00
 2686              	.LASF19:
 2687 016e 5F666C6F 		.ascii	"_flock_t\000"
 2687      636B5F74 
 2687      00
 2688              	.LASF69:
 2689 0177 5F737464 		.ascii	"_stderr\000"
 2689      65727200 
 2690              	.LASF26:
 2691 017f 5F426967 		.ascii	"_Bigint\000"
 2691      696E7400 
ARM GAS  /tmp/ccOyha2A.s 			page 53


 2692              	.LASF99:
 2693 0187 5F67616D 		.ascii	"_gamma_signgam\000"
 2693      6D615F73 
 2693      69676E67 
 2693      616D00
 2694              	.LASF127:
 2695 0196 2E2E2F63 		.ascii	"../cores/arduino/itoa.c\000"
 2695      6F726573 
 2695      2F617264 
 2695      75696E6F 
 2695      2F69746F 
 2696              	.LASF53:
 2697 01ae 5F726561 		.ascii	"_read\000"
 2697      6400
 2698              	.LASF77:
 2699 01b4 5F726573 		.ascii	"_result_k\000"
 2699      756C745F 
 2699      6B00
 2700              	.LASF27:
 2701 01be 5F5F746D 		.ascii	"__tm\000"
 2701      00
 2702              	.LASF0:
 2703 01c3 756E7369 		.ascii	"unsigned int\000"
 2703      676E6564 
 2703      20696E74 
 2703      00
 2704              	.LASF14:
 2705 01d0 5F5F7763 		.ascii	"__wchb\000"
 2705      686200
 2706              	.LASF68:
 2707 01d7 5F737464 		.ascii	"_stdout\000"
 2707      6F757400 
 2708              	.LASF80:
 2709 01df 5F637674 		.ascii	"_cvtlen\000"
 2709      6C656E00 
 2710              	.LASF6:
 2711 01e7 6C6F6E67 		.ascii	"long unsigned int\000"
 2711      20756E73 
 2711      69676E65 
 2711      6420696E 
 2711      7400
 2712              	.LASF50:
 2713 01f9 5F66696C 		.ascii	"_file\000"
 2713      6500
 2714              	.LASF89:
 2715 01ff 5F6E696F 		.ascii	"_niobs\000"
 2715      627300
 2716              	.LASF4:
 2717 0206 73686F72 		.ascii	"short unsigned int\000"
 2717      7420756E 
 2717      7369676E 
 2717      65642069 
 2717      6E7400
 2718              	.LASF83:
 2719 0219 5F617465 		.ascii	"_atexit0\000"
 2719      78697430 
 2719      00
ARM GAS  /tmp/ccOyha2A.s 			page 54


 2720              	.LASF106:
 2721 0222 5F736967 		.ascii	"_signal_buf\000"
 2721      6E616C5F 
 2721      62756600 
 2722              	.LASF97:
 2723 022e 5F617363 		.ascii	"_asctime_buf\000"
 2723      74696D65 
 2723      5F627566 
 2723      00
 2724              	.LASF124:
 2725 023b 6C746F61 		.ascii	"ltoa\000"
 2725      00
 2726              	.LASF76:
 2727 0240 5F726573 		.ascii	"_result\000"
 2727      756C7400 
 2728              	.LASF13:
 2729 0248 5F5F7763 		.ascii	"__wch\000"
 2729      6800
 2730              	.LASF114:
 2731 024e 5F6E6578 		.ascii	"_nextf\000"
 2731      746600
 2732              	.LASF12:
 2733 0255 77696E74 		.ascii	"wint_t\000"
 2733      5F7400
 2734              	.LASF62:
 2735 025c 5F6C6F63 		.ascii	"_lock\000"
 2735      6B00
 2736              	.LASF64:
 2737 0262 5F666C61 		.ascii	"_flags2\000"
 2737      67733200 
 2738              	.LASF54:
 2739 026a 5F777269 		.ascii	"_write\000"
 2739      746500
 2740              	.LASF33:
 2741 0271 5F5F746D 		.ascii	"__tm_year\000"
 2741      5F796561 
 2741      7200
 2742              	.LASF15:
 2743 027b 73697A65 		.ascii	"sizetype\000"
 2743      74797065 
 2743      00
 2744              	.LASF126:
 2745 0284 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2745      43393920 
 2745      362E332E 
 2745      31203230 
 2745      31373036 
 2746 02b7 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2746      76352D64 
 2746      3136202D 
 2746      6D666C6F 
 2746      61742D61 
 2747 02ea 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2747      6E2D7365 
 2747      6374696F 
 2747      6E73202D 
 2747      66646174 
ARM GAS  /tmp/ccOyha2A.s 			page 55


 2748 031d 6F6E7374 		.ascii	"onstant\000"
 2748      616E7400 
 2749              	.LASF32:
 2750 0325 5F5F746D 		.ascii	"__tm_mon\000"
 2750      5F6D6F6E 
 2750      00
 2751              	.LASF42:
 2752 032e 5F617465 		.ascii	"_atexit\000"
 2752      78697400 
 2753              	.LASF74:
 2754 0336 5F5F7364 		.ascii	"__sdidinit\000"
 2754      6964696E 
 2754      697400
 2755              	.LASF10:
 2756 0341 5F6F6666 		.ascii	"_off_t\000"
 2756      5F7400
 2757              	.LASF79:
 2758 0348 5F667265 		.ascii	"_freelist\000"
 2758      656C6973 
 2758      7400
 2759              	.LASF9:
 2760 0352 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2760      4B5F5245 
 2760      43555253 
 2760      4956455F 
 2760      5400
 2761              	.LASF2:
 2762 0364 756E7369 		.ascii	"unsigned char\000"
 2762      676E6564 
 2762      20636861 
 2762      7200
 2763              	.LASF82:
 2764 0372 5F6E6577 		.ascii	"_new\000"
 2764      00
 2765              	.LASF113:
 2766 0377 5F685F65 		.ascii	"_h_errno\000"
 2766      72726E6F 
 2766      00
 2767              	.LASF3:
 2768 0380 73686F72 		.ascii	"short int\000"
 2768      7420696E 
 2768      7400
 2769              	.LASF35:
 2770 038a 5F5F746D 		.ascii	"__tm_yday\000"
 2770      5F796461 
 2770      7900
 2771              	.LASF45:
 2772 0394 5F5F7362 		.ascii	"__sbuf\000"
 2772      756600
 2773              	.LASF90:
 2774 039b 5F696F62 		.ascii	"_iobs\000"
 2774      7300
 2775              	.LASF87:
 2776 03a1 5F5F4649 		.ascii	"__FILE\000"
 2776      4C4500
 2777              	.LASF18:
 2778 03a8 5F6D6273 		.ascii	"_mbstate_t\000"
ARM GAS  /tmp/ccOyha2A.s 			page 56


 2778      74617465 
 2778      5F7400
 2779              	.LASF48:
 2780 03b3 5F5F7346 		.ascii	"__sFILE\000"
 2780      494C4500 
 2781              	.LASF63:
 2782 03bb 5F6D6273 		.ascii	"_mbstate\000"
 2782      74617465 
 2782      00
 2783              	.LASF100:
 2784 03c4 5F72616E 		.ascii	"_rand_next\000"
 2784      645F6E65 
 2784      787400
 2785              	.LASF102:
 2786 03cf 5F6D626C 		.ascii	"_mblen_state\000"
 2786      656E5F73 
 2786      74617465 
 2786      00
 2787              	.LASF70:
 2788 03dc 5F696E63 		.ascii	"_inc\000"
 2788      00
 2789              	.LASF43:
 2790 03e1 5F696E64 		.ascii	"_ind\000"
 2790      00
 2791              	.LASF73:
 2792 03e6 5F637572 		.ascii	"_current_locale\000"
 2792      72656E74 
 2792      5F6C6F63 
 2792      616C6500 
 2793              	.LASF75:
 2794 03f6 5F5F636C 		.ascii	"__cleanup\000"
 2794      65616E75 
 2794      7000
 2795              	.LASF23:
 2796 0400 5F6D6178 		.ascii	"_maxwds\000"
 2796      77647300 
 2797              	.LASF65:
 2798 0408 5F726565 		.ascii	"_reent\000"
 2798      6E7400
 2799              	.LASF123:
 2800 040f 75746F61 		.ascii	"utoa\000"
 2800      00
 2801              	.LASF92:
 2802 0414 5F736565 		.ascii	"_seed\000"
 2802      6400
 2803              	.LASF16:
 2804 041a 5F5F636F 		.ascii	"__count\000"
 2804      756E7400 
 2805              	.LASF17:
 2806 0422 5F5F7661 		.ascii	"__value\000"
 2806      6C756500 
 2807              	.LASF55:
 2808 042a 5F736565 		.ascii	"_seek\000"
 2808      6B00
 2809              	.LASF129:
 2810 0430 69746F61 		.ascii	"itoa\000"
 2810      00
ARM GAS  /tmp/ccOyha2A.s 			page 57


 2811              	.LASF117:
 2812 0435 5F696D70 		.ascii	"_impure_ptr\000"
 2812      7572655F 
 2812      70747200 
 2813              	.LASF11:
 2814 0441 5F66706F 		.ascii	"_fpos_t\000"
 2814      735F7400 
 2815              	.LASF66:
 2816 0449 5F657272 		.ascii	"_errno\000"
 2816      6E6F00
 2817              	.LASF20:
 2818 0450 63686172 		.ascii	"char\000"
 2818      00
 2819              	.LASF29:
 2820 0455 5F5F746D 		.ascii	"__tm_min\000"
 2820      5F6D696E 
 2820      00
 2821              	.LASF93:
 2822 045e 5F6D756C 		.ascii	"_mult\000"
 2822      7400
 2823              	.LASF22:
 2824 0464 5F6E6578 		.ascii	"_next\000"
 2824      7400
 2825              	.LASF96:
 2826 046a 5F737472 		.ascii	"_strtok_last\000"
 2826      746F6B5F 
 2826      6C617374 
 2826      00
 2827              	.LASF40:
 2828 0477 5F666E74 		.ascii	"_fntypes\000"
 2828      79706573 
 2828      00
 2829              	.LASF121:
 2830 0480 72616469 		.ascii	"radix\000"
 2830      7800
 2831              	.LASF128:
 2832 0486 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2832      652F746F 
 2832      72626A6F 
 2832      726E2F65 
 2832      636C6970 
 2833              	.LASF21:
 2834 04b5 5F5F554C 		.ascii	"__ULong\000"
 2834      6F6E6700 
 2835              	.LASF94:
 2836 04bd 5F616464 		.ascii	"_add\000"
 2836      00
 2837              	.LASF118:
 2838 04c2 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2838      62616C5F 
 2838      696D7075 
 2838      72655F70 
 2838      747200
 2839              	.LASF72:
 2840 04d5 5F637572 		.ascii	"_current_category\000"
 2840      72656E74 
 2840      5F636174 
ARM GAS  /tmp/ccOyha2A.s 			page 58


 2840      65676F72 
 2840      7900
 2841              	.LASF95:
 2842 04e7 5F756E75 		.ascii	"_unused_rand\000"
 2842      7365645F 
 2842      72616E64 
 2842      00
 2843              	.LASF25:
 2844 04f4 5F776473 		.ascii	"_wds\000"
 2844      00
 2845              	.LASF34:
 2846 04f9 5F5F746D 		.ascii	"__tm_wday\000"
 2846      5F776461 
 2846      7900
 2847              	.LASF88:
 2848 0503 5F676C75 		.ascii	"_glue\000"
 2848      6500
 2849              	.LASF115:
 2850 0509 5F6E6D61 		.ascii	"_nmalloc\000"
 2850      6C6C6F63 
 2850      00
 2851              	.LASF105:
 2852 0512 5F6C3634 		.ascii	"_l64a_buf\000"
 2852      615F6275 
 2852      6600
 2853              	.LASF125:
 2854 051c 7369676E 		.ascii	"sign\000"
 2854      00
 2855              	.LASF84:
 2856 0521 5F736967 		.ascii	"_sig_func\000"
 2856      5F66756E 
 2856      6300
 2857              	.LASF58:
 2858 052b 5F6E6275 		.ascii	"_nbuf\000"
 2858      6600
 2859              	.LASF116:
 2860 0531 5F756E75 		.ascii	"_unused\000"
 2860      73656400 
 2861              	.LASF36:
 2862 0539 5F5F746D 		.ascii	"__tm_isdst\000"
 2862      5F697364 
 2862      737400
 2863              	.LASF98:
 2864 0544 5F6C6F63 		.ascii	"_localtime_buf\000"
 2864      616C7469 
 2864      6D655F62 
 2864      756600
 2865              	.LASF56:
 2866 0553 5F636C6F 		.ascii	"_close\000"
 2866      736500
 2867              	.LASF101:
 2868 055a 5F723438 		.ascii	"_r48\000"
 2868      00
 2869              	.LASF103:
 2870 055f 5F6D6274 		.ascii	"_mbtowc_state\000"
 2870      6F77635F 
 2870      73746174 
ARM GAS  /tmp/ccOyha2A.s 			page 59


 2870      6500
 2871              	.LASF78:
 2872 056d 5F703573 		.ascii	"_p5s\000"
 2872      00
 2873              	.LASF31:
 2874 0572 5F5F746D 		.ascii	"__tm_mday\000"
 2874      5F6D6461 
 2874      7900
 2875              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
