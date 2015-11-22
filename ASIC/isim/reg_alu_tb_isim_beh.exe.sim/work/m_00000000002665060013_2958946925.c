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
static unsigned int ng5[] = {10U, 0U};
static unsigned int ng6[] = {65535U, 0U};
static const char *ng7 = "ERROR @ time %d in state %d: dDst is %h, but should be %h.";
static unsigned int ng8[] = {0U, 0U};
static unsigned int ng9[] = {16U, 0U};
static const char *ng10 = "ERROR @ time %d in state %d: psrOut is %b, but should be %b.";
static unsigned int ng11[] = {1U, 0U};
static unsigned int ng12[] = {2U, 0U};
static unsigned int ng13[] = {3U, 0U};
static unsigned int ng14[] = {18U, 0U};
static unsigned int ng15[] = {65280U, 0U};
static unsigned int ng16[] = {4U, 0U};
static const char *ng17 = "ERROR @ time %d in state %d: dSrc is %h, but should be %h.";
static unsigned int ng18[] = {5U, 0U};
static unsigned int ng19[] = {6U, 0U};
static unsigned int ng20[] = {7U, 0U};
static unsigned int ng21[] = {8U, 0U};
static unsigned int ng22[] = {9U, 0U};
static unsigned int ng23[] = {32768U, 0U};
static const char *ng24 = "SIMULATION FINISHED";
static int ng25[] = {2, 0};
static unsigned int ng26[] = {13U, 0U};
static unsigned int ng27[] = {15U, 0U};
static unsigned int ng28[] = {255U, 0U};
static unsigned int ng29[] = {20U, 0U};
static unsigned int ng30[] = {19U, 0U};



static void Initial_92_0(char *t0)
{
    char t6[8];
    char t31[16];
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
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

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
    xsi_process_wait(t2, 105000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6184);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 6184);
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
        goto LAB7;

LAB8:    xsi_set_current_line(207, ng0);
    xsi_vlogfile_write(1, 0, 0, ng24, 1, t0);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng25)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB7:    xsi_set_current_line(115, ng0);

LAB9:    xsi_set_current_line(116, ng0);
    t13 = (t0 + 6912);
    xsi_process_wait(t13, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng5)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t14 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng8)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng11)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng12)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng13)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng16)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng18)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng19)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng20)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng5)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng8)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t14 == 1)
        goto LAB32;

LAB33:
LAB35:
LAB34:    xsi_set_current_line(198, ng0);

LAB188:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 3224U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB190;

LAB189:    if (t21 != 0)
        goto LAB191;

LAB192:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB193;

LAB194:
LAB195:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 3384U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB197;

LAB196:    if (t21 != 0)
        goto LAB198;

LAB199:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB200;

LAB201:
LAB202:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 3544U);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB204;

LAB203:    if (t21 != 0)
        goto LAB205;

LAB206:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB207;

LAB208:
LAB209:
LAB36:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 6184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t5, 32, t7, 32);
    t13 = (t0 + 6184);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB6;

LAB12:    xsi_set_current_line(118, ng0);

LAB37:    xsi_set_current_line(120, ng0);
    t7 = (t0 + 3384U);
    t13 = *((char **)t7);
    t7 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t15 = (t13 + 4);
    t16 = (t7 + 4);
    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t7);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t15);
    t12 = *((unsigned int *)t16);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t15);
    t20 = *((unsigned int *)t16);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB39;

LAB38:    if (t21 != 0)
        goto LAB40;

LAB41:    t25 = (t6 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB42;

LAB43:
LAB44:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB46;

LAB45:    if (t21 != 0)
        goto LAB47;

LAB48:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB49;

LAB50:
LAB51:    goto LAB36;

LAB14:    xsi_set_current_line(123, ng0);

LAB52:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 3384U);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB54;

LAB53:    if (t21 != 0)
        goto LAB55;

LAB56:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB36;

LAB16:    xsi_set_current_line(128, ng0);

LAB60:    xsi_set_current_line(130, ng0);
    t3 = (t0 + 3384U);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB62;

LAB61:    if (t21 != 0)
        goto LAB63;

LAB64:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB65;

LAB66:
LAB67:    goto LAB36;

LAB18:    xsi_set_current_line(133, ng0);

LAB68:    xsi_set_current_line(135, ng0);
    t3 = (t0 + 3384U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB70;

LAB69:    if (t21 != 0)
        goto LAB71;

LAB72:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB73;

LAB74:
LAB75:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB77;

LAB76:    if (t21 != 0)
        goto LAB78;

LAB79:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB80;

LAB81:
LAB82:    goto LAB36;

LAB20:    xsi_set_current_line(138, ng0);

LAB83:    xsi_set_current_line(140, ng0);
    t3 = (t0 + 3384U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng15)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB85;

LAB84:    if (t21 != 0)
        goto LAB86;

LAB87:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB88;

LAB89:
LAB90:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB92;

LAB91:    if (t21 != 0)
        goto LAB93;

LAB94:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB95;

LAB96:
LAB97:    goto LAB36;

LAB22:    xsi_set_current_line(143, ng0);

LAB98:    xsi_set_current_line(144, ng0);
    t3 = (t0 + 3224U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng15)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB100;

LAB99:    if (t21 != 0)
        goto LAB101;

LAB102:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB103;

LAB104:
LAB105:    xsi_set_current_line(145, ng0);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB107;

LAB106:    if (t21 != 0)
        goto LAB108;

LAB109:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB110;

LAB111:
LAB112:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB114;

LAB113:    if (t21 != 0)
        goto LAB115;

LAB116:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB117;

LAB118:
LAB119:    goto LAB36;

LAB24:    xsi_set_current_line(148, ng0);

LAB120:    xsi_set_current_line(149, ng0);
    t3 = (t0 + 3224U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng15)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB122;

LAB121:    if (t21 != 0)
        goto LAB123;

LAB124:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB125;

LAB126:
LAB127:    xsi_set_current_line(150, ng0);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB129;

LAB128:    if (t21 != 0)
        goto LAB130;

LAB131:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB132;

LAB133:
LAB134:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB136;

LAB135:    if (t21 != 0)
        goto LAB137;

LAB138:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB139;

LAB140:
LAB141:    goto LAB36;

LAB26:    xsi_set_current_line(153, ng0);

LAB142:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 3224U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB144;

LAB143:    if (t21 != 0)
        goto LAB145;

LAB146:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB147;

LAB148:
LAB149:    xsi_set_current_line(155, ng0);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB151;

LAB150:    if (t21 != 0)
        goto LAB152;

LAB153:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB154;

LAB155:
LAB156:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 3544U);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB158;

LAB157:    if (t21 != 0)
        goto LAB159;

LAB160:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB161;

LAB162:
LAB163:    goto LAB36;

LAB28:    xsi_set_current_line(158, ng0);

LAB164:    goto LAB36;

LAB30:    xsi_set_current_line(163, ng0);

LAB165:    xsi_set_current_line(165, ng0);
    t3 = (t0 + 3384U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t13 = (t3 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t3);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB167;

LAB166:    if (t21 != 0)
        goto LAB168;

LAB169:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB170;

LAB171:
LAB172:    goto LAB36;

LAB32:    xsi_set_current_line(168, ng0);

LAB173:    xsi_set_current_line(170, ng0);
    t3 = (t0 + 3384U);
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
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB175;

LAB174:    if (t21 != 0)
        goto LAB176;

LAB177:    t16 = (t6 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB178;

LAB179:
LAB180:    xsi_set_current_line(171, ng0);
    t2 = (t0 + 3544U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t17 = (t11 ^ t12);
    t18 = (t10 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB182;

LAB181:    if (t21 != 0)
        goto LAB183;

LAB184:    t15 = (t6 + 4);
    t26 = *((unsigned int *)t15);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB185;

LAB186:
LAB187:    goto LAB36;

LAB39:    *((unsigned int *)t6) = 1;
    goto LAB41;

LAB40:    t24 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(120, ng0);
    t32 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t33 = ((char*)((ng8)));
    t34 = (t0 + 3384U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng6)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t33, 4, (char)118, t35, 16, (char)118, t34, 16);
    goto LAB44;

LAB46:    *((unsigned int *)t6) = 1;
    goto LAB48;

LAB47:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(121, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng8)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB51;

LAB54:    *((unsigned int *)t6) = 1;
    goto LAB56;

LAB55:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB56;

LAB57:    xsi_set_current_line(125, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng11)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng8)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB59;

LAB62:    *((unsigned int *)t6) = 1;
    goto LAB64;

LAB63:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(130, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng12)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng8)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB67;

LAB70:    *((unsigned int *)t6) = 1;
    goto LAB72;

LAB71:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB72;

LAB73:    xsi_set_current_line(135, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng13)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB75;

LAB77:    *((unsigned int *)t6) = 1;
    goto LAB79;

LAB78:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB79;

LAB80:    xsi_set_current_line(136, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng13)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng14)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB82;

LAB85:    *((unsigned int *)t6) = 1;
    goto LAB87;

LAB86:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB87;

LAB88:    xsi_set_current_line(140, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng16)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng15)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB90;

LAB92:    *((unsigned int *)t6) = 1;
    goto LAB94;

LAB93:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB94;

LAB95:    xsi_set_current_line(141, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng16)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng14)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB97;

LAB100:    *((unsigned int *)t6) = 1;
    goto LAB102;

LAB101:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB102;

LAB103:    xsi_set_current_line(144, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng18)));
    t32 = (t0 + 3224U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng15)));
    xsi_vlogfile_write(1, 0, 0, ng17, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB105;

LAB107:    *((unsigned int *)t6) = 1;
    goto LAB109;

LAB108:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB109;

LAB110:    xsi_set_current_line(145, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng18)));
    t25 = (t0 + 3384U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 16, (char)118, t25, 16);
    goto LAB112;

LAB114:    *((unsigned int *)t6) = 1;
    goto LAB116;

LAB115:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB116;

LAB117:    xsi_set_current_line(146, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng18)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng14)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB119;

LAB122:    *((unsigned int *)t6) = 1;
    goto LAB124;

LAB123:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB124;

LAB125:    xsi_set_current_line(149, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng19)));
    t32 = (t0 + 3224U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng15)));
    xsi_vlogfile_write(1, 0, 0, ng17, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB127;

LAB129:    *((unsigned int *)t6) = 1;
    goto LAB131;

LAB130:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB131;

LAB132:    xsi_set_current_line(150, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng19)));
    t25 = (t0 + 3384U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 16, (char)118, t25, 16);
    goto LAB134;

LAB136:    *((unsigned int *)t6) = 1;
    goto LAB138;

LAB137:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB138;

LAB139:    xsi_set_current_line(151, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng19)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng14)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB141;

LAB144:    *((unsigned int *)t6) = 1;
    goto LAB146;

LAB145:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB146;

LAB147:    xsi_set_current_line(154, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng20)));
    t32 = (t0 + 3224U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng17, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB149;

LAB151:    *((unsigned int *)t6) = 1;
    goto LAB153;

LAB152:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB153;

LAB154:    xsi_set_current_line(155, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng20)));
    t25 = (t0 + 3384U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng5)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 16, (char)118, t25, 16);
    goto LAB156;

LAB158:    *((unsigned int *)t6) = 1;
    goto LAB160;

LAB159:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB160;

LAB161:    xsi_set_current_line(156, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng20)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng21)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB163;

LAB167:    *((unsigned int *)t6) = 1;
    goto LAB169;

LAB168:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB169;

LAB170:    xsi_set_current_line(165, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng22)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng11)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB172;

LAB175:    *((unsigned int *)t6) = 1;
    goto LAB177;

LAB176:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB177;

LAB178:    xsi_set_current_line(170, ng0);
    t24 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t25 = ((char*)((ng5)));
    t32 = (t0 + 3384U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng23)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t25, 4, (char)118, t33, 16, (char)118, t32, 16);
    goto LAB180;

LAB182:    *((unsigned int *)t6) = 1;
    goto LAB184;

LAB183:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB184;

LAB185:    xsi_set_current_line(171, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng9)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB187;

LAB190:    *((unsigned int *)t6) = 1;
    goto LAB192;

LAB191:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB192;

LAB193:    xsi_set_current_line(199, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 3224U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng8)));
    xsi_vlogfile_write(1, 0, 0, ng17, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 16, (char)118, t25, 16);
    goto LAB195;

LAB197:    *((unsigned int *)t6) = 1;
    goto LAB199;

LAB198:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB199;

LAB200:    xsi_set_current_line(200, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 3384U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng8)));
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 16, (char)118, t25, 16);
    goto LAB202;

LAB204:    *((unsigned int *)t6) = 1;
    goto LAB206;

LAB205:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB206;

LAB207:    xsi_set_current_line(201, ng0);
    t16 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 3544U);
    t32 = *((char **)t25);
    t25 = ((char*)((ng21)));
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t31, 64, (char)118, t24, 4, (char)118, t32, 5, (char)118, t25, 5);
    goto LAB209;

}

static void Always_211_1(char *t0)
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

LAB2:    xsi_set_current_line(211, ng0);
    t2 = (t0 + 7160);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(211, ng0);
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

static void Always_214_2(char *t0)
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

LAB2:    xsi_set_current_line(214, ng0);
    t2 = (t0 + 8416);
    *((int *)t2) = 1;
    t3 = (t0 + 7632);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(214, ng0);

LAB5:    xsi_set_current_line(215, ng0);
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

LAB7:    xsi_set_current_line(218, ng0);
    t2 = (t0 + 6024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5864);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(216, ng0);
    t13 = ((char*)((ng8)));
    t14 = (t0 + 5864);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 4, 0LL);
    goto LAB8;

}

static void Always_222_3(char *t0)
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

LAB2:    xsi_set_current_line(222, ng0);
    t2 = (t0 + 8432);
    *((int *)t2) = 1;
    t3 = (t0 + 7880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(222, ng0);

LAB5:    xsi_set_current_line(223, ng0);
    t4 = (t0 + 5864);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng21)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(240, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 6024);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB31:    goto LAB2;

LAB7:    xsi_set_current_line(224, ng0);
    t9 = ((char*)((ng11)));
    t10 = (t0 + 6024);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    goto LAB31;

LAB9:    xsi_set_current_line(225, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB11:    xsi_set_current_line(226, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB13:    xsi_set_current_line(227, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB15:    xsi_set_current_line(228, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB17:    xsi_set_current_line(229, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB19:    xsi_set_current_line(230, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB21:    xsi_set_current_line(231, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB23:    xsi_set_current_line(232, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB25:    xsi_set_current_line(233, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB27:    xsi_set_current_line(234, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

}

static void Always_245_4(char *t0)
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

LAB2:    xsi_set_current_line(245, ng0);
    t2 = (t0 + 8448);
    *((int *)t2) = 1;
    t3 = (t0 + 8128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(245, ng0);

LAB5:    xsi_set_current_line(246, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(247, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(248, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(249, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(250, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(252, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(253, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(256, ng0);
    t2 = (t0 + 5864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(373, ng0);

LAB43:    xsi_set_current_line(374, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(375, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(376, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(377, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(378, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(379, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(380, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(381, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);

LAB31:    goto LAB2;

LAB7:    xsi_set_current_line(257, ng0);

LAB32:    xsi_set_current_line(258, ng0);
    t7 = ((char*)((ng11)));
    t8 = (t0 + 4104);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    xsi_set_current_line(259, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(261, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(262, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB9:    xsi_set_current_line(264, ng0);

LAB33:    xsi_set_current_line(265, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(266, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(267, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(268, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    goto LAB31;

LAB11:    xsi_set_current_line(270, ng0);

LAB34:    xsi_set_current_line(271, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(273, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(275, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB13:    xsi_set_current_line(277, ng0);

LAB35:    xsi_set_current_line(278, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(280, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(282, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB15:    xsi_set_current_line(284, ng0);

LAB36:    xsi_set_current_line(285, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 4744);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB31;

LAB17:    xsi_set_current_line(288, ng0);

LAB37:    xsi_set_current_line(289, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(290, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(291, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(293, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB19:    xsi_set_current_line(295, ng0);

LAB38:    xsi_set_current_line(296, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 4744);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(297, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB31;

LAB21:    xsi_set_current_line(299, ng0);

LAB39:    goto LAB31;

LAB23:    xsi_set_current_line(302, ng0);

LAB40:    xsi_set_current_line(303, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(304, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(305, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(306, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(307, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB25:    xsi_set_current_line(309, ng0);

LAB41:    xsi_set_current_line(310, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(311, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(312, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(313, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(314, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

LAB27:    xsi_set_current_line(316, ng0);

LAB42:    xsi_set_current_line(317, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(318, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(319, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 4904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(320, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 5064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(321, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB31;

}


extern void work_m_00000000002665060013_2958946925_init()
{
	static char *pe[] = {(void *)Initial_92_0,(void *)Always_211_1,(void *)Always_214_2,(void *)Always_222_3,(void *)Always_245_4};
	xsi_register_didat("work_m_00000000002665060013_2958946925", "isim/reg_alu_tb_isim_beh.exe.sim/work/m_00000000002665060013_2958946925.didat");
	xsi_register_executes(pe);
}
