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
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static const char *ng4 = "Start simulation...";
static int ng5[] = {16, 0};
static const char *ng6 = "ERR0R @ time %d: dDst = %b, should be %b. rDst = %b.";
static int ng7[] = {15, 0};
static const char *ng8 = "ERR0R @ time %d: dSrc = %b, should be %b. rSrc = %b.";
static const char *ng9 = "Simulation finished.";
static int ng10[] = {2, 0};



static void Initial_54_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t52[16];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    t1 = (t0 + 3648U);
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
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(63, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(67, ng0);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
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

LAB8:    xsi_set_current_line(129, ng0);
    xsi_vlogfile_write(1, 0, 0, ng9, 1, t0);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng10)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB7:    xsi_set_current_line(67, ng0);

LAB9:    xsi_set_current_line(68, ng0);
    t13 = (t0 + 3456);
    xsi_process_wait(t13, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 16);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    memcpy(t6, t4, 8);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 4294967295U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 4294967295U);
    t13 = (t0 + 2248);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 16);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB11:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB12:    xsi_set_current_line(74, ng0);

LAB14:    xsi_set_current_line(75, ng0);
    t13 = (t0 + 3456);
    xsi_process_wait(t13, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB11;

LAB16:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(83, ng0);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB18:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB19:    xsi_set_current_line(83, ng0);

LAB21:    xsi_set_current_line(84, ng0);
    t13 = (t0 + 3456);
    xsi_process_wait(t13, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    memcpy(t6, t4, 8);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 4294967295U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 4294967295U);
    t13 = (t0 + 1928);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 4);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB27;

LAB24:    if (t18 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t6) = 1;

LAB27:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB62;

LAB59:    if (t18 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t6) = 1;

LAB62:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB63;

LAB64:
LAB65:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB18;

LAB26:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(90, ng0);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t28);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t31);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB32;

LAB31:    if (t42 != 0)
        goto LAB33;

LAB34:    t46 = (t30 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB41;

LAB38:    if (t18 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t6) = 1;

LAB41:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB42;

LAB43:
LAB44:
LAB37:    goto LAB30;

LAB32:    *((unsigned int *)t30) = 1;
    goto LAB34;

LAB33:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(90, ng0);
    t53 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t54 = (t0 + 1208U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng2)));
    t56 = (t0 + 2088);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t52, 64, (char)118, t55, 16, (char)119, t54, 32, (char)118, t58, 4);
    goto LAB37;

LAB40:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(92, ng0);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    t28 = (t0 + 2248);
    t31 = (t28 + 56U);
    t32 = *((char **)t31);
    memset(t30, 0, 8);
    t45 = (t29 + 4);
    t46 = (t32 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t32);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t45);
    t37 = *((unsigned int *)t46);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t45);
    t41 = *((unsigned int *)t46);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB46;

LAB45:    if (t42 != 0)
        goto LAB47;

LAB48:    t54 = (t30 + 4);
    t47 = *((unsigned int *)t54);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t3 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB53;

LAB52:    if (t18 != 0)
        goto LAB54;

LAB55:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB56;

LAB57:
LAB58:
LAB51:    goto LAB44;

LAB46:    *((unsigned int *)t30) = 1;
    goto LAB48;

LAB47:    t53 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(92, ng0);
    t55 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t56 = (t0 + 1208U);
    t57 = *((char **)t56);
    t56 = (t0 + 2248);
    t58 = (t56 + 56U);
    t59 = *((char **)t58);
    t60 = (t0 + 2088);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t52, 64, (char)118, t57, 16, (char)118, t59, 16, (char)118, t62, 4);
    goto LAB51;

LAB53:    *((unsigned int *)t6) = 1;
    goto LAB55;

LAB54:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(94, ng0);
    t28 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t29 = (t0 + 1208U);
    t31 = *((char **)t29);
    t29 = (t0 + 2408);
    t32 = (t29 + 56U);
    t45 = *((char **)t32);
    t46 = (t0 + 2088);
    t53 = (t46 + 56U);
    t54 = *((char **)t53);
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t52, 64, (char)118, t31, 16, (char)118, t45, 16, (char)118, t54, 4);
    goto LAB58;

LAB61:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(98, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t28);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t31);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB67;

LAB66:    if (t42 != 0)
        goto LAB68;

LAB69:    t46 = (t30 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB76;

LAB73:    if (t18 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t6) = 1;

LAB76:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB77;

LAB78:
LAB79:
LAB72:    goto LAB65;

LAB67:    *((unsigned int *)t30) = 1;
    goto LAB69;

LAB68:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(98, ng0);
    t53 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t54 = (t0 + 1048U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng2)));
    t56 = (t0 + 1928);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t52, 64, (char)118, t55, 16, (char)119, t54, 32, (char)118, t58, 4);
    goto LAB72;

LAB75:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB76;

LAB77:    xsi_set_current_line(100, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = (t0 + 2248);
    t31 = (t28 + 56U);
    t32 = *((char **)t31);
    memset(t30, 0, 8);
    t45 = (t29 + 4);
    t46 = (t32 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t32);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t45);
    t37 = *((unsigned int *)t46);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t45);
    t41 = *((unsigned int *)t46);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB81;

LAB80:    if (t42 != 0)
        goto LAB82;

LAB83:    t54 = (t30 + 4);
    t47 = *((unsigned int *)t54);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB84;

LAB85:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t3 + 4);
    t13 = (t5 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB88;

LAB87:    if (t18 != 0)
        goto LAB89;

LAB90:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB91;

LAB92:
LAB93:
LAB86:    goto LAB79;

LAB81:    *((unsigned int *)t30) = 1;
    goto LAB83;

LAB82:    t53 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB83;

LAB84:    xsi_set_current_line(100, ng0);
    t55 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t56 = (t0 + 1048U);
    t57 = *((char **)t56);
    t56 = (t0 + 2248);
    t58 = (t56 + 56U);
    t59 = *((char **)t58);
    t60 = (t0 + 1928);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t52, 64, (char)118, t57, 16, (char)118, t59, 16, (char)118, t62, 4);
    goto LAB86;

LAB88:    *((unsigned int *)t6) = 1;
    goto LAB90;

LAB89:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB90;

LAB91:    xsi_set_current_line(102, ng0);
    t28 = xsi_vlog_time(t52, 1000.0000000000000, 1000.0000000000000);
    t29 = (t0 + 1048U);
    t31 = *((char **)t29);
    t29 = (t0 + 2408);
    t32 = (t29 + 56U);
    t45 = *((char **)t32);
    t46 = (t0 + 1928);
    t53 = (t46 + 56U);
    t54 = *((char **)t53);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t52, 64, (char)118, t31, 16, (char)118, t45, 16, (char)118, t54, 4);
    goto LAB93;

}

static void Always_133_1(char *t0)
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

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3704);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(133, ng0);
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


extern void work_m_00000000000804004174_0837601054_init()
{
	static char *pe[] = {(void *)Initial_54_0,(void *)Always_133_1};
	xsi_register_didat("work_m_00000000000804004174_0837601054", "isim/regfile_tb_isim_beh.exe.sim/work/m_00000000000804004174_0837601054.didat");
	xsi_register_executes(pe);
}
