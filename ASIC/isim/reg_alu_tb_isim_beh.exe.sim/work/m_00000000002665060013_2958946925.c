/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/reg_alu_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "BEGINNING SIMULATION...";
static int ng4[] = {16, 0};
static unsigned int ng5[] = {0U, 0U};
static const char *ng6 = "ERROR @ time %d in state %d: dDst is %h, but should be %h.";
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {18U, 0U};
static const char *ng10 = "ERROR @ time %d in state %d: psrOut is %b, but should be %b.";
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {3U, 0U};
static unsigned int ng13[] = {65280U, 0U};
static unsigned int ng14[] = {4U, 0U};
static const char *ng15 = "ERROR @ time %d in state %d: dSrc is %h, but should be %h.";
static unsigned int ng16[] = {5U, 0U};
static unsigned int ng17[] = {6U, 0U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {8U, 0U};
static unsigned int ng20[] = {9U, 0U};
static unsigned int ng21[] = {32768U, 0U};
static unsigned int ng22[] = {11U, 0U};
static unsigned int ng23[] = {16U, 0U};
static unsigned int ng24[] = {17U, 0U};
static unsigned int ng25[] = {65535U, 0U};
static const char *ng26 = "SIMULATION FINISHED";
static int ng27[] = {2, 0};
static unsigned int ng28[] = {13U, 0U};
static unsigned int ng29[] = {15U, 0U};
static unsigned int ng30[] = {255U, 0U};
static unsigned int ng31[] = {20U, 0U};
static unsigned int ng32[] = {19U, 0U};



static void Initial_92_0(char *t0)
{
    char t6[8];
    char t28[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 7104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);

LAB4:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(107, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 90000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(116, ng0);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6184);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 6184);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(226, ng0);
    xsi_vlogfile_write(1, 0, 0, ng26, 1, t0);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng27)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB8:    xsi_set_current_line(116, ng0);

LAB10:    xsi_set_current_line(117, ng0);
    t13 = (t0 + 6912);
    xsi_process_wait(t13, 2000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB12:    t5 = ((char*)((ng5)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng12)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng14)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng16)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng17)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng18)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng19)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng20)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng11)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng22)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB35;

LAB36:
LAB38:
LAB37:    xsi_set_current_line(215, ng0);

LAB211:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng19)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB213;

LAB212:    if (t19 != 0)
        goto LAB214;

LAB215:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB216;

LAB217:
LAB218:    xsi_set_current_line(217, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB219;
    goto LAB1;

LAB13:    xsi_set_current_line(119, ng0);

LAB40:    xsi_set_current_line(121, ng0);
    t7 = (t0 + 6912);
    xsi_process_wait(t7, 5000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB15:    xsi_set_current_line(125, ng0);

LAB49:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 6912);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB17:    xsi_set_current_line(131, ng0);

LAB58:    xsi_set_current_line(132, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB60;

LAB59:    if (t19 != 0)
        goto LAB61;

LAB62:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB63;

LAB64:
LAB65:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB19:    xsi_set_current_line(137, ng0);

LAB74:    xsi_set_current_line(138, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB76;

LAB75:    if (t19 != 0)
        goto LAB77;

LAB78:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB79;

LAB80:
LAB81:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB82;
    goto LAB1;

LAB21:    xsi_set_current_line(143, ng0);

LAB90:    xsi_set_current_line(144, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB92;

LAB91:    if (t19 != 0)
        goto LAB93;

LAB94:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB95;

LAB96:
LAB97:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB98;
    goto LAB1;

LAB23:    xsi_set_current_line(149, ng0);

LAB113:    xsi_set_current_line(151, ng0);
    t3 = (t0 + 6912);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB114;
    goto LAB1;

LAB25:    xsi_set_current_line(155, ng0);

LAB122:    xsi_set_current_line(156, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB124;

LAB123:    if (t19 != 0)
        goto LAB125;

LAB126:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB127;

LAB128:
LAB129:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB130;
    goto LAB1;

LAB27:    xsi_set_current_line(161, ng0);

LAB145:    xsi_set_current_line(162, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng19)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB147;

LAB146:    if (t19 != 0)
        goto LAB148;

LAB149:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB150;

LAB151:
LAB152:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB153;
    goto LAB1;

LAB29:    xsi_set_current_line(167, ng0);

LAB168:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 6912);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB169;
    goto LAB1;

LAB31:    xsi_set_current_line(173, ng0);

LAB170:    xsi_set_current_line(175, ng0);
    t3 = (t0 + 6912);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB171;
    goto LAB1;

LAB33:    xsi_set_current_line(179, ng0);

LAB179:    xsi_set_current_line(180, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB181;

LAB180:    if (t19 != 0)
        goto LAB182;

LAB183:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB184;

LAB185:
LAB186:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB187;
    goto LAB1;

LAB35:    xsi_set_current_line(185, ng0);

LAB195:    xsi_set_current_line(186, ng0);
    t3 = (t0 + 3544U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng23)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB197;

LAB196:    if (t19 != 0)
        goto LAB198;

LAB199:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB200;

LAB201:
LAB202:    xsi_set_current_line(187, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB203;
    goto LAB1;

LAB39:    xsi_set_current_line(222, ng0);
    t2 = (t0 + 6912);
    xsi_process_wait(t2, 3000LL);
    *((char **)t1) = &&LAB234;
    goto LAB1;

LAB41:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB43;

LAB42:    if (t19 != 0)
        goto LAB44;

LAB45:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB46;

LAB47:
LAB48:    goto LAB39;

LAB43:    *((unsigned int *)t6) = 1;
    goto LAB45;

LAB44:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(123, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng5)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB48;

LAB50:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB52;

LAB51:    if (t19 != 0)
        goto LAB53;

LAB54:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB55;

LAB56:
LAB57:    goto LAB39;

LAB52:    *((unsigned int *)t6) = 1;
    goto LAB54;

LAB53:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(129, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng7)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB57;

LAB60:    *((unsigned int *)t6) = 1;
    goto LAB62;

LAB61:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(132, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng8)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB65;

LAB66:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB68;

LAB67:    if (t19 != 0)
        goto LAB69;

LAB70:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB71;

LAB72:
LAB73:    goto LAB39;

LAB68:    *((unsigned int *)t6) = 1;
    goto LAB70;

LAB69:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(135, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng8)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB73;

LAB76:    *((unsigned int *)t6) = 1;
    goto LAB78;

LAB77:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB78;

LAB79:    xsi_set_current_line(138, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng12)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB81;

LAB82:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng13)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB84;

LAB83:    if (t19 != 0)
        goto LAB85;

LAB86:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB87;

LAB88:
LAB89:    goto LAB39;

LAB84:    *((unsigned int *)t6) = 1;
    goto LAB86;

LAB85:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB86;

LAB87:    xsi_set_current_line(141, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng12)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng13)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB89;

LAB92:    *((unsigned int *)t6) = 1;
    goto LAB94;

LAB93:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB94;

LAB95:    xsi_set_current_line(144, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng14)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB97;

LAB98:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 3224U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng13)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB100;

LAB99:    if (t19 != 0)
        goto LAB101;

LAB102:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB103;

LAB104:
LAB105:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB107;

LAB106:    if (t19 != 0)
        goto LAB108;

LAB109:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB110;

LAB111:
LAB112:    goto LAB39;

LAB100:    *((unsigned int *)t6) = 1;
    goto LAB102;

LAB101:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB102;

LAB103:    xsi_set_current_line(146, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng14)));
    t31 = (t0 + 3224U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng13)));
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB105;

LAB107:    *((unsigned int *)t6) = 1;
    goto LAB109;

LAB108:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB109;

LAB110:    xsi_set_current_line(147, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng14)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB112;

LAB114:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB116;

LAB115:    if (t19 != 0)
        goto LAB117;

LAB118:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB119;

LAB120:
LAB121:    goto LAB39;

LAB116:    *((unsigned int *)t6) = 1;
    goto LAB118;

LAB117:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(153, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng16)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB121;

LAB124:    *((unsigned int *)t6) = 1;
    goto LAB126;

LAB125:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB126;

LAB127:    xsi_set_current_line(156, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng17)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng8)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB129;

LAB130:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 3224U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng13)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB132;

LAB131:    if (t19 != 0)
        goto LAB133;

LAB134:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB135;

LAB136:
LAB137:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB139;

LAB138:    if (t19 != 0)
        goto LAB140;

LAB141:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB142;

LAB143:
LAB144:    goto LAB39;

LAB132:    *((unsigned int *)t6) = 1;
    goto LAB134;

LAB133:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB134;

LAB135:    xsi_set_current_line(158, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng17)));
    t31 = (t0 + 3224U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng13)));
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB137;

LAB139:    *((unsigned int *)t6) = 1;
    goto LAB141;

LAB140:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB141;

LAB142:    xsi_set_current_line(159, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng17)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB144;

LAB147:    *((unsigned int *)t6) = 1;
    goto LAB149;

LAB148:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB149;

LAB150:    xsi_set_current_line(162, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng18)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng19)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB152;

LAB153:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 3224U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB155;

LAB154:    if (t19 != 0)
        goto LAB156;

LAB157:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB158;

LAB159:
LAB160:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB162;

LAB161:    if (t19 != 0)
        goto LAB163;

LAB164:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB165;

LAB166:
LAB167:    goto LAB39;

LAB155:    *((unsigned int *)t6) = 1;
    goto LAB157;

LAB156:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB157;

LAB158:    xsi_set_current_line(164, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng18)));
    t31 = (t0 + 3224U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB160;

LAB162:    *((unsigned int *)t6) = 1;
    goto LAB164;

LAB163:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB164;

LAB165:    xsi_set_current_line(165, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng18)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB167;

LAB169:    goto LAB39;

LAB171:    xsi_set_current_line(177, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB173;

LAB172:    if (t19 != 0)
        goto LAB174;

LAB175:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB176;

LAB177:
LAB178:    goto LAB39;

LAB173:    *((unsigned int *)t6) = 1;
    goto LAB175;

LAB174:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB175;

LAB176:    xsi_set_current_line(177, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng20)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng7)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB178;

LAB181:    *((unsigned int *)t6) = 1;
    goto LAB183;

LAB182:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB183;

LAB184:    xsi_set_current_line(180, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng11)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB186;

LAB187:    xsi_set_current_line(183, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng21)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB189;

LAB188:    if (t19 != 0)
        goto LAB190;

LAB191:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB192;

LAB193:
LAB194:    goto LAB39;

LAB189:    *((unsigned int *)t6) = 1;
    goto LAB191;

LAB190:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB191;

LAB192:    xsi_set_current_line(183, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng11)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng21)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB194;

LAB197:    *((unsigned int *)t6) = 1;
    goto LAB199;

LAB198:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB199;

LAB200:    xsi_set_current_line(186, ng0);
    t30 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t31 = ((char*)((ng22)));
    t32 = (t0 + 3544U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng24)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t31, 4, (char)118, t33, 5, (char)118, t32, 5);
    goto LAB202;

LAB203:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng25)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB205;

LAB204:    if (t19 != 0)
        goto LAB206;

LAB207:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB208;

LAB209:
LAB210:    goto LAB39;

LAB205:    *((unsigned int *)t6) = 1;
    goto LAB207;

LAB206:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB207;

LAB208:    xsi_set_current_line(189, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng22)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng25)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB210;

LAB213:    *((unsigned int *)t6) = 1;
    goto LAB215;

LAB214:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB215;

LAB216:    xsi_set_current_line(216, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng11)));
    t31 = (t0 + 3544U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng19)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 5, (char)118, t31, 5);
    goto LAB218;

LAB219:    xsi_set_current_line(218, ng0);
    t2 = (t0 + 3224U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB221;

LAB220:    if (t19 != 0)
        goto LAB222;

LAB223:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB224;

LAB225:
LAB226:    xsi_set_current_line(219, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t15 = (t11 ^ t12);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB228;

LAB227:    if (t19 != 0)
        goto LAB229;

LAB230:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB231;

LAB232:
LAB233:    goto LAB39;

LAB221:    *((unsigned int *)t6) = 1;
    goto LAB223;

LAB222:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB223;

LAB224:    xsi_set_current_line(218, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng11)));
    t31 = (t0 + 3224U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB226;

LAB228:    *((unsigned int *)t6) = 1;
    goto LAB230;

LAB229:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB230;

LAB231:    xsi_set_current_line(219, ng0);
    t29 = xsi_vlog_time(t28, 1000.0000000000000, 1000.0000000000000);
    t30 = ((char*)((ng11)));
    t31 = (t0 + 3384U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t28, 64, (char)118, t30, 4, (char)118, t32, 16, (char)118, t31, 16);
    goto LAB233;

LAB234:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 6184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t5, 32, t7, 32);
    t13 = (t0 + 6184);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB7;

}

static void Always_230_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 7160);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(230, ng0);
    t4 = (t0 + 3944);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3944);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_233_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 7600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(233, ng0);
    t2 = (t0 + 8416);
    *((int *)t2) = 1;
    t3 = (t0 + 7632);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(233, ng0);

LAB5:    xsi_set_current_line(234, ng0);
    t4 = (t0 + 5704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(237, ng0);
    t2 = (t0 + 6024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5864);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(235, ng0);
    t13 = ((char*)((ng5)));
    t14 = (t0 + 5864);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 4, 0LL);
    goto LAB8;

}

static void Always_241_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(241, ng0);
    t2 = (t0 + 8432);
    *((int *)t2) = 1;
    t3 = (t0 + 7880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(241, ng0);

LAB5:    xsi_set_current_line(242, ng0);
    t4 = (t0 + 5864);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(259, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6024);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB31:    goto LAB2;

LAB7:    xsi_set_current_line(243, ng0);
    t9 = ((char*)((ng7)));
    t10 = (t0 + 6024);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    goto LAB31;

LAB9:    xsi_set_current_line(244, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB11:    xsi_set_current_line(245, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB13:    xsi_set_current_line(246, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB15:    xsi_set_current_line(247, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB17:    xsi_set_current_line(248, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB19:    xsi_set_current_line(249, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB21:    xsi_set_current_line(250, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB23:    xsi_set_current_line(251, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB25:    xsi_set_current_line(252, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB27:    xsi_set_current_line(253, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

}

static void Always_264_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 8096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(264, ng0);
    t2 = (t0 + 8448);
    *((int *)t2) = 1;
    t3 = (t0 + 8128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(264, ng0);

LAB5:    xsi_set_current_line(265, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(266, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(267, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(268, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(270, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(271, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(273, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(275, ng0);
    t2 = (t0 + 5864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(388, ng0);

LAB46:    xsi_set_current_line(389, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(390, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(391, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(392, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(393, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(394, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(395, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(396, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);

LAB33:    goto LAB2;

LAB7:    xsi_set_current_line(276, ng0);

LAB34:    xsi_set_current_line(277, ng0);
    t7 = ((char*)((ng7)));
    t8 = (t0 + 4104);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    xsi_set_current_line(278, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(280, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB9:    xsi_set_current_line(283, ng0);

LAB35:    xsi_set_current_line(284, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(285, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(287, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    goto LAB33;

LAB11:    xsi_set_current_line(289, ng0);

LAB36:    xsi_set_current_line(290, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(291, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(293, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(294, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB13:    xsi_set_current_line(296, ng0);

LAB37:    xsi_set_current_line(297, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(298, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(299, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(300, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(301, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB15:    xsi_set_current_line(303, ng0);

LAB38:    xsi_set_current_line(304, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 4744);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(305, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB33;

LAB17:    xsi_set_current_line(307, ng0);

LAB39:    xsi_set_current_line(308, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(309, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(310, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(311, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    goto LAB33;

LAB19:    xsi_set_current_line(313, ng0);

LAB40:    xsi_set_current_line(314, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(315, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(316, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(317, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(318, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB21:    xsi_set_current_line(320, ng0);

LAB41:    xsi_set_current_line(321, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 4744);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(322, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB33;

LAB23:    xsi_set_current_line(324, ng0);

LAB42:    goto LAB33;

LAB25:    xsi_set_current_line(327, ng0);

LAB43:    xsi_set_current_line(328, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(329, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(330, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(331, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(332, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB27:    xsi_set_current_line(334, ng0);

LAB44:    xsi_set_current_line(335, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(336, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(337, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(338, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(339, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

LAB29:    xsi_set_current_line(341, ng0);

LAB45:    xsi_set_current_line(342, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(343, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(344, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(345, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(346, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB33;

}


extern void work_m_00000000002665060013_2958946925_init()
{
	static char *pe[] = {(void *)Initial_92_0,(void *)Always_230_1,(void *)Always_233_2,(void *)Always_241_3,(void *)Always_264_4};
	xsi_register_didat("work_m_00000000002665060013_2958946925", "isim/reg_alu_tb_isim_beh.exe.sim/work/m_00000000002665060013_2958946925.didat");
	xsi_register_executes(pe);
}
