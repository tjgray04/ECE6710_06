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
static const char *ng0 = "C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/regfile_tb.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {255U, 0U};
static const char *ng3 = "Start simulation...";
static int ng4[] = {1, 0};
static int ng5[] = {2, 0};
static int ng6[] = {4, 0};
static const char *ng7 = "ERROR @ time %d: dDst is %b, should be %b. rDst is %d";
static const char *ng8 = "ERROR @ time %d: dSrc is %b, should be %b. rSrc is %d";
static const char *ng9 = "Simulation finished.";



static void Initial_54_0(char *t0)
{
    char t7[8];
    char t8[8];
    char t32[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);

LAB4:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(63, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 95000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_power(t7, 32, t5, 32, t6, 32, 1);
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB8:    xsi_set_current_line(70, ng0);

LAB10:    xsi_set_current_line(71, ng0);
    t15 = (t0 + 3296);
    xsi_process_wait(t15, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(72, ng0);
    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2088);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 4);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB7;

LAB12:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB13:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_power(t7, 32, t5, 32, t6, 32, 1);
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB14:    xsi_set_current_line(77, ng0);

LAB16:    xsi_set_current_line(78, ng0);
    t15 = (t0 + 2568);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t0 + 2088);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 4);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    memcpy(t7, t4, 8);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 4294967295U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 4294967295U);
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 4);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t6 = (t3 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t9);
    t20 = (t13 ^ t14);
    t21 = (t12 | t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB19;

LAB18:    if (t24 != 0)
        goto LAB20;

LAB21:    t16 = (t7 + 4);
    t27 = *((unsigned int *)t16);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB22;

LAB23:
LAB24:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t6 = (t3 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t9);
    t20 = (t13 ^ t14);
    t21 = (t12 | t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB26;

LAB25:    if (t24 != 0)
        goto LAB27;

LAB28:    t16 = (t7 + 4);
    t27 = *((unsigned int *)t16);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB29;

LAB30:
LAB31:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB13;

LAB19:    *((unsigned int *)t7) = 1;
    goto LAB21;

LAB20:    t15 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(81, ng0);
    t17 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t18 = (t0 + 1208U);
    t19 = *((char **)t18);
    t18 = (t0 + 2408);
    t33 = (t18 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 2088);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t32, 64, (char)118, t19, 16, (char)118, t34, 16, (char)118, t37, 4);
    goto LAB24;

LAB26:    *((unsigned int *)t7) = 1;
    goto LAB28;

LAB27:    t15 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(82, ng0);
    t17 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    t18 = (t0 + 2408);
    t33 = (t18 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 1928);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t32, 64, (char)118, t19, 16, (char)118, t34, 16, (char)118, t37, 4);
    goto LAB31;

LAB32:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(88, ng0);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB33:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_power(t7, 32, t5, 32, t6, 32, 1);
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB34:    xsi_set_current_line(88, ng0);

LAB36:    xsi_set_current_line(89, ng0);
    t15 = (t0 + 3296);
    xsi_process_wait(t15, 20000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB33;

LAB38:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB39:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_power(t7, 32, t5, 32, t6, 32, 1);
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(107, ng0);
    xsi_vlogfile_write(1, 0, 0, ng9, 1, t0);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng5)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB40:    xsi_set_current_line(99, ng0);

LAB42:    xsi_set_current_line(100, ng0);
    t15 = (t0 + 2568);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t0 + 2088);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 4);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    memcpy(t7, t4, 8);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 4294967295U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 4294967295U);
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 4);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB43:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t6 = (t3 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t9);
    t20 = (t13 ^ t14);
    t21 = (t12 | t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB45;

LAB44:    if (t24 != 0)
        goto LAB46;

LAB47:    t16 = (t7 + 4);
    t27 = *((unsigned int *)t16);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB48;

LAB49:
LAB50:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t7, 0, 8);
    t6 = (t3 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t9);
    t20 = (t13 ^ t14);
    t21 = (t12 | t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB52;

LAB51:    if (t24 != 0)
        goto LAB53;

LAB54:    t16 = (t7 + 4);
    t27 = *((unsigned int *)t16);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB55;

LAB56:
LAB57:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB39;

LAB45:    *((unsigned int *)t7) = 1;
    goto LAB47;

LAB46:    t15 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(103, ng0);
    t17 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t18 = (t0 + 1208U);
    t19 = *((char **)t18);
    t18 = (t0 + 2408);
    t33 = (t18 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 2088);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t32, 64, (char)118, t19, 16, (char)118, t34, 16, (char)118, t37, 4);
    goto LAB50;

LAB52:    *((unsigned int *)t7) = 1;
    goto LAB54;

LAB53:    t15 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(104, ng0);
    t17 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    t18 = (t0 + 2408);
    t33 = (t18 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 1928);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t32, 64, (char)118, t19, 16, (char)118, t34, 16, (char)118, t37, 4);
    goto LAB57;

}

static void Always_111_1(char *t0)
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3544);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1608);
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
    t24 = (t0 + 1608);
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


extern void work_m_00000000002683530812_0837601054_init()
{
	static char *pe[] = {(void *)Initial_54_0,(void *)Always_111_1};
	xsi_register_didat("work_m_00000000002683530812_0837601054", "isim/regfile_tb_isim_beh.exe.sim/work/m_00000000002683530812_0837601054.didat");
	xsi_register_executes(pe);
}
