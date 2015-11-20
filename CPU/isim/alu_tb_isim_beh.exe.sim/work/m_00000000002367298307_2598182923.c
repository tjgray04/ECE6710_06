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
static const char *ng0 = "C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/alu_tb.v";
static int ng1[] = {0, 0};
static const char *ng2 = "Starting simulation....";
static int ng3[] = {2, 0};
static int ng4[] = {16, 0};
static int ng5[] = {1, 0};
static int ng6[] = {5, 0};
static unsigned int ng7[] = {5U, 0U};
static const char *ng8 = "ERROR: On ADD at time %d. Result = %d, should be %d";
static unsigned int ng9[] = {6U, 0U};
static const char *ng10 = "ERROR: On ADDU at time %d. Result = %d, should be %d";
static unsigned int ng11[] = {9U, 0U};
static const char *ng12 = "ERROR: On SUB at time %d. Result = %d, should be %d";
static unsigned int ng13[] = {1U, 0U};
static const char *ng14 = "ERROR: On AND at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b";
static unsigned int ng15[] = {2U, 0U};
static const char *ng16 = "ERROR: On OR at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b";
static unsigned int ng17[] = {3U, 0U};
static const char *ng18 = "ERROR: On XOR at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b";
static unsigned int ng19[] = {20U, 0U};
static const char *ng20 = "ERROR: On SLL at time %d. Result = %d, should be %d";
static unsigned int ng21[] = {17U, 0U};
static const char *ng22 = "ERROR: On SRL at time %d. Result = %d, should be %d";
static unsigned int ng23[] = {18U, 0U};
static const char *ng24 = "ERROR: On SLA at time %d. Result = %d, should be %d";
static unsigned int ng25[] = {19U, 0U};
static const char *ng26 = "ERROR: On SRA at time %d. Result = %d, should be %d";
static unsigned int ng27[] = {15U, 0U};
static const char *ng28 = "ERROR: On LUI at time %d. Result = %d, should be %d";
static unsigned int ng29[] = {13U, 0U};
static const char *ng30 = "ERROR: On MOV at time %d. Result = %d, should be %d";
static const char *ng31 = "ERROR: On default at time %d. Result = %d, should be %d";
static const char *ng32 = "Simulation finished.";



static void Initial_50_0(char *t0)
{
    char t7[8];
    char t8[8];
    char t17[8];
    char t19[8];
    char t39[16];
    char t43[8];
    char t46[8];
    char t50[8];
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
    char *t18;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    int t29;
    char *t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t40;
    char *t41;
    char *t42;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    int t103;
    int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB4:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    xsi_vlogfile_write(1, 0, 0, ng2, 1, t0);
    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng4)));
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
        goto LAB7;

LAB8:    xsi_set_current_line(87, ng0);
    xsi_vlogfile_write(1, 0, 0, ng32, 1, t0);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB7:    xsi_set_current_line(62, ng0);

LAB9:    xsi_set_current_line(63, ng0);
    xsi_set_current_line(63, ng0);
    t15 = ((char*)((ng3)));
    t16 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_signed_power(t17, 32, t15, 32, t16, 32, 1);
    t18 = ((char*)((ng5)));
    memset(t19, 0, 8);
    xsi_vlog_signed_minus(t19, 32, t17, 32, t18, 32);
    t20 = (t0 + 2248);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 32);

LAB10:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greatereq(t7, 32, t4, 32, t5, 32);
    t6 = (t7 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t7);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t9 = (t0 + 2088);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB6;

LAB11:    xsi_set_current_line(63, ng0);

LAB13:    xsi_set_current_line(64, ng0);
    xsi_set_current_line(64, ng0);
    t9 = ((char*)((ng1)));
    t15 = (t0 + 2408);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 32);

LAB14:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
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
        goto LAB15;

LAB16:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_minus(t7, 32, t5, 32, t6, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB10;

LAB15:    xsi_set_current_line(64, ng0);

LAB17:    xsi_set_current_line(65, ng0);
    t15 = (t0 + 2088);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t17, 0, 8);
    t20 = (t17 + 4);
    t21 = (t18 + 4);
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 0);
    *((unsigned int *)t17) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 0);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t26 & 65535U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 65535U);
    t28 = (t0 + 1768);
    xsi_vlogvar_assign_value(t28, t17, 0, 0, 16);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 65535U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 65535U);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 16);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 31U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 31U);
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 5);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB19:    t5 = ((char*)((ng7)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t5, 5);
    if (t29 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng9)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng11)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng13)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng15)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng17)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng19)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng21)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng23)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng25)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng27)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng29)));
    t29 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t29 == 1)
        goto LAB42;

LAB43:
LAB45:
LAB44:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t5);
    t25 = *((unsigned int *)t6);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB150;

LAB149:    if (t26 != 0)
        goto LAB151;

LAB152:    t15 = (t7 + 4);
    t34 = *((unsigned int *)t15);
    t35 = (~(t34));
    t36 = *((unsigned int *)t7);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB153;

LAB154:
LAB155:
LAB46:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t9 = (t0 + 2408);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB14;

LAB20:    xsi_set_current_line(70, ng0);
    t6 = (t0 + 1208U);
    t9 = *((char **)t6);
    t6 = (t0 + 1768);
    t15 = (t6 + 56U);
    t16 = *((char **)t15);
    t18 = (t0 + 1608);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 16, t16, 16, t21, 16);
    memset(t19, 0, 8);
    t28 = (t9 + 4);
    t30 = (t17 + 4);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t17);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t28);
    t14 = *((unsigned int *)t30);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t28);
    t25 = *((unsigned int *)t30);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB48;

LAB47:    if (t26 != 0)
        goto LAB49;

LAB50:    t33 = (t19 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t19);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB51;

LAB52:
LAB53:    goto LAB46;

LAB22:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 16, t9, 16, t18, 16);
    memset(t8, 0, 8);
    t20 = (t5 + 4);
    t21 = (t7 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t20);
    t14 = *((unsigned int *)t21);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB55;

LAB54:    if (t26 != 0)
        goto LAB56;

LAB57:    t30 = (t8 + 4);
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t8);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB58;

LAB59:
LAB60:    goto LAB46;

LAB24:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_minus(t17, 16, t9, 16, t18, 16);
    memset(t19, 0, 8);
    t20 = (t5 + 4);
    t21 = (t17 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t17);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t20);
    t14 = *((unsigned int *)t21);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB62;

LAB61:    if (t26 != 0)
        goto LAB63;

LAB64:    t30 = (t19 + 4);
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t19);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB65;

LAB66:
LAB67:    goto LAB46;

LAB26:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t18);
    t12 = (t10 & t11);
    *((unsigned int *)t7) = t12;
    t20 = (t9 + 4);
    t21 = (t18 + 4);
    t28 = (t7 + 4);
    t13 = *((unsigned int *)t20);
    t14 = *((unsigned int *)t21);
    t22 = (t13 | t14);
    *((unsigned int *)t28) = t22;
    t23 = *((unsigned int *)t28);
    t24 = (t23 != 0);
    if (t24 == 1)
        goto LAB68;

LAB69:
LAB70:    memset(t8, 0, 8);
    t33 = (t5 + 4);
    t40 = (t7 + 4);
    t60 = *((unsigned int *)t5);
    t61 = *((unsigned int *)t7);
    t62 = (t60 ^ t61);
    t63 = *((unsigned int *)t33);
    t64 = *((unsigned int *)t40);
    t65 = (t63 ^ t64);
    t66 = (t62 | t65);
    t67 = *((unsigned int *)t33);
    t68 = *((unsigned int *)t40);
    t69 = (t67 | t68);
    t70 = (~(t69));
    t71 = (t66 & t70);
    if (t71 != 0)
        goto LAB72;

LAB71:    if (t69 != 0)
        goto LAB73;

LAB74:    t42 = (t8 + 4);
    t72 = *((unsigned int *)t42);
    t73 = (~(t72));
    t74 = *((unsigned int *)t8);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB75;

LAB76:
LAB77:    goto LAB46;

LAB28:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t18);
    t12 = (t10 | t11);
    *((unsigned int *)t7) = t12;
    t20 = (t9 + 4);
    t21 = (t18 + 4);
    t28 = (t7 + 4);
    t13 = *((unsigned int *)t20);
    t14 = *((unsigned int *)t21);
    t22 = (t13 | t14);
    *((unsigned int *)t28) = t22;
    t23 = *((unsigned int *)t28);
    t24 = (t23 != 0);
    if (t24 == 1)
        goto LAB81;

LAB82:
LAB83:    memset(t8, 0, 8);
    t33 = (t5 + 4);
    t40 = (t7 + 4);
    t56 = *((unsigned int *)t5);
    t57 = *((unsigned int *)t7);
    t58 = (t56 ^ t57);
    t59 = *((unsigned int *)t33);
    t60 = *((unsigned int *)t40);
    t61 = (t59 ^ t60);
    t62 = (t58 | t61);
    t63 = *((unsigned int *)t33);
    t64 = *((unsigned int *)t40);
    t65 = (t63 | t64);
    t66 = (~(t65));
    t67 = (t62 & t66);
    if (t67 != 0)
        goto LAB85;

LAB84:    if (t65 != 0)
        goto LAB86;

LAB87:    t42 = (t8 + 4);
    t68 = *((unsigned int *)t42);
    t69 = (~(t68));
    t70 = *((unsigned int *)t8);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB88;

LAB89:
LAB90:    goto LAB46;

LAB30:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t18);
    t12 = (t10 ^ t11);
    *((unsigned int *)t7) = t12;
    t20 = (t9 + 4);
    t21 = (t18 + 4);
    t28 = (t7 + 4);
    t13 = *((unsigned int *)t20);
    t14 = *((unsigned int *)t21);
    t22 = (t13 | t14);
    *((unsigned int *)t28) = t22;
    t23 = *((unsigned int *)t28);
    t24 = (t23 != 0);
    if (t24 == 1)
        goto LAB94;

LAB95:
LAB96:    memset(t8, 0, 8);
    t30 = (t5 + 4);
    t32 = (t7 + 4);
    t27 = *((unsigned int *)t5);
    t31 = *((unsigned int *)t7);
    t34 = (t27 ^ t31);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t32);
    t37 = (t35 ^ t36);
    t38 = (t34 | t37);
    t51 = *((unsigned int *)t30);
    t54 = *((unsigned int *)t32);
    t55 = (t51 | t54);
    t56 = (~(t55));
    t57 = (t38 & t56);
    if (t57 != 0)
        goto LAB98;

LAB97:    if (t55 != 0)
        goto LAB99;

LAB100:    t40 = (t8 + 4);
    t58 = *((unsigned int *)t40);
    t59 = (~(t58));
    t60 = *((unsigned int *)t8);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB101;

LAB102:
LAB103:    goto LAB46;

LAB32:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t7, 0, 8);
    t20 = (t7 + 4);
    t21 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 15U);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 & 15U);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 16, t9, 16, t7, 4);
    memset(t17, 0, 8);
    t28 = (t5 + 4);
    t30 = (t8 + 4);
    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t8);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t28);
    t27 = *((unsigned int *)t30);
    t31 = (t26 ^ t27);
    t34 = (t25 | t31);
    t35 = *((unsigned int *)t28);
    t36 = *((unsigned int *)t30);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t51 = (t34 & t38);
    if (t51 != 0)
        goto LAB108;

LAB107:    if (t37 != 0)
        goto LAB109;

LAB110:    t33 = (t17 + 4);
    t54 = *((unsigned int *)t33);
    t55 = (~(t54));
    t56 = *((unsigned int *)t17);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB111;

LAB112:
LAB113:    goto LAB46;

LAB34:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t7, 0, 8);
    t20 = (t7 + 4);
    t21 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 15U);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 & 15U);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_rshift(t8, 16, t9, 16, t7, 4);
    memset(t17, 0, 8);
    t28 = (t5 + 4);
    t30 = (t8 + 4);
    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t8);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t28);
    t27 = *((unsigned int *)t30);
    t31 = (t26 ^ t27);
    t34 = (t25 | t31);
    t35 = *((unsigned int *)t28);
    t36 = *((unsigned int *)t30);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t51 = (t34 & t38);
    if (t51 != 0)
        goto LAB115;

LAB114:    if (t37 != 0)
        goto LAB116;

LAB117:    t33 = (t17 + 4);
    t54 = *((unsigned int *)t33);
    t55 = (~(t54));
    t56 = *((unsigned int *)t17);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB118;

LAB119:
LAB120:    goto LAB46;

LAB36:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t7, 0, 8);
    t20 = (t7 + 4);
    t21 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 15U);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 & 15U);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_arith_lshift(t8, 16, t9, 16, t7, 4);
    memset(t17, 0, 8);
    t28 = (t5 + 4);
    t30 = (t8 + 4);
    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t8);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t28);
    t27 = *((unsigned int *)t30);
    t31 = (t26 ^ t27);
    t34 = (t25 | t31);
    t35 = *((unsigned int *)t28);
    t36 = *((unsigned int *)t30);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t51 = (t34 & t38);
    if (t51 != 0)
        goto LAB122;

LAB121:    if (t37 != 0)
        goto LAB123;

LAB124:    t33 = (t17 + 4);
    t54 = *((unsigned int *)t33);
    t55 = (~(t54));
    t56 = *((unsigned int *)t17);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB125;

LAB126:
LAB127:    goto LAB46;

LAB38:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memset(t7, 0, 8);
    t20 = (t7 + 4);
    t21 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 15U);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 & 15U);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t8, 16, t9, 16, t7, 4);
    memset(t17, 0, 8);
    t28 = (t5 + 4);
    t30 = (t8 + 4);
    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t8);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t28);
    t27 = *((unsigned int *)t30);
    t31 = (t26 ^ t27);
    t34 = (t25 | t31);
    t35 = *((unsigned int *)t28);
    t36 = *((unsigned int *)t30);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t51 = (t34 & t38);
    if (t51 != 0)
        goto LAB129;

LAB128:    if (t37 != 0)
        goto LAB130;

LAB131:    t33 = (t17 + 4);
    t54 = *((unsigned int *)t33);
    t55 = (~(t54));
    t56 = *((unsigned int *)t17);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB132;

LAB133:
LAB134:    goto LAB46;

LAB40:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1768);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    memset(t8, 0, 8);
    t15 = (t8 + 4);
    t16 = (t9 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t16);
    t13 = (t12 >> 0);
    *((unsigned int *)t15) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 255U);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 & 255U);
    t18 = (t0 + 1608);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memset(t17, 0, 8);
    t28 = (t17 + 4);
    t30 = (t21 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (t23 >> 0);
    *((unsigned int *)t17) = t24;
    t25 = *((unsigned int *)t30);
    t26 = (t25 >> 0);
    *((unsigned int *)t28) = t26;
    t27 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t27 & 255U);
    t31 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t31 & 255U);
    xsi_vlogtype_concat(t7, 16, 16, 2U, t17, 8, t8, 8);
    memset(t19, 0, 8);
    t32 = (t5 + 4);
    t33 = (t7 + 4);
    t34 = *((unsigned int *)t5);
    t35 = *((unsigned int *)t7);
    t36 = (t34 ^ t35);
    t37 = *((unsigned int *)t32);
    t38 = *((unsigned int *)t33);
    t51 = (t37 ^ t38);
    t54 = (t36 | t51);
    t55 = *((unsigned int *)t32);
    t56 = *((unsigned int *)t33);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB136;

LAB135:    if (t57 != 0)
        goto LAB137;

LAB138:    t41 = (t19 + 4);
    t60 = *((unsigned int *)t41);
    t61 = (~(t60));
    t62 = *((unsigned int *)t19);
    t63 = (t62 & t61);
    t64 = (t63 != 0);
    if (t64 > 0)
        goto LAB139;

LAB140:
LAB141:    goto LAB46;

LAB42:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 1608);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    memset(t7, 0, 8);
    t15 = (t5 + 4);
    t16 = (t9 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t9);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t15);
    t14 = *((unsigned int *)t16);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t15);
    t25 = *((unsigned int *)t16);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB143;

LAB142:    if (t26 != 0)
        goto LAB144;

LAB145:    t20 = (t7 + 4);
    t34 = *((unsigned int *)t20);
    t35 = (~(t34));
    t36 = *((unsigned int *)t7);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB146;

LAB147:
LAB148:    goto LAB46;

LAB48:    *((unsigned int *)t19) = 1;
    goto LAB50;

LAB49:    t32 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(70, ng0);
    t40 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 1768);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t50, 0, 8);
    xsi_vlog_signed_add(t50, 16, t45, 16, t49, 16);
    xsi_vlogfile_write(1, 0, 0, ng8, 4, t0, (char)118, t39, 64, (char)118, t42, 16, (char)119, t50, 16);
    goto LAB53;

LAB55:    *((unsigned int *)t8) = 1;
    goto LAB57;

LAB56:    t28 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB57;

LAB58:    xsi_set_current_line(71, ng0);
    t32 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t33 = (t0 + 1208U);
    t40 = *((char **)t33);
    t33 = (t0 + 1768);
    t41 = (t33 + 56U);
    t42 = *((char **)t41);
    t44 = (t0 + 1608);
    t45 = (t44 + 56U);
    t47 = *((char **)t45);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 16, t42, 16, t47, 16);
    xsi_vlogfile_write(1, 0, 0, ng10, 4, t0, (char)118, t39, 64, (char)118, t40, 16, (char)118, t17, 16);
    goto LAB60;

LAB62:    *((unsigned int *)t19) = 1;
    goto LAB64;

LAB63:    t28 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(72, ng0);
    t32 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t33 = (t0 + 1208U);
    t40 = *((char **)t33);
    t33 = (t0 + 1768);
    t41 = (t33 + 56U);
    t42 = *((char **)t41);
    t44 = (t0 + 1608);
    t45 = (t44 + 56U);
    t47 = *((char **)t45);
    memset(t50, 0, 8);
    xsi_vlog_signed_minus(t50, 16, t42, 16, t47, 16);
    xsi_vlogfile_write(1, 0, 0, ng12, 4, t0, (char)118, t39, 64, (char)118, t40, 16, (char)119, t50, 16);
    goto LAB67;

LAB68:    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t28);
    *((unsigned int *)t7) = (t25 | t26);
    t30 = (t9 + 4);
    t32 = (t18 + 4);
    t27 = *((unsigned int *)t9);
    t31 = (~(t27));
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t18);
    t37 = (~(t36));
    t38 = *((unsigned int *)t32);
    t51 = (~(t38));
    t52 = (t31 & t35);
    t53 = (t37 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t56 & t54);
    t57 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t57 & t55);
    t58 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t58 & t54);
    t59 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t59 & t55);
    goto LAB70;

LAB72:    *((unsigned int *)t8) = 1;
    goto LAB74;

LAB73:    t41 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB74;

LAB75:    xsi_set_current_line(73, ng0);
    t44 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t45 = (t0 + 1208U);
    t47 = *((char **)t45);
    t45 = (t0 + 1768);
    t48 = (t45 + 56U);
    t49 = *((char **)t48);
    t77 = (t0 + 1608);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t80 = *((unsigned int *)t49);
    t81 = *((unsigned int *)t79);
    t82 = (t80 & t81);
    *((unsigned int *)t17) = t82;
    t83 = (t49 + 4);
    t84 = (t79 + 4);
    t85 = (t17 + 4);
    t86 = *((unsigned int *)t83);
    t87 = *((unsigned int *)t84);
    t88 = (t86 | t87);
    *((unsigned int *)t85) = t88;
    t89 = *((unsigned int *)t85);
    t90 = (t89 != 0);
    if (t90 == 1)
        goto LAB78;

LAB79:
LAB80:    t111 = (t0 + 1768);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t0 + 1608);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    xsi_vlogfile_write(1, 0, 0, ng14, 6, t0, (char)118, t39, 64, (char)118, t47, 16, (char)118, t17, 16, (char)118, t113, 16, (char)118, t116, 16);
    goto LAB77;

LAB78:    t91 = *((unsigned int *)t17);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t17) = (t91 | t92);
    t93 = (t49 + 4);
    t94 = (t79 + 4);
    t95 = *((unsigned int *)t49);
    t96 = (~(t95));
    t97 = *((unsigned int *)t93);
    t98 = (~(t97));
    t99 = *((unsigned int *)t79);
    t100 = (~(t99));
    t101 = *((unsigned int *)t94);
    t102 = (~(t101));
    t103 = (t96 & t98);
    t104 = (t100 & t102);
    t105 = (~(t103));
    t106 = (~(t104));
    t107 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t107 & t105);
    t108 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t108 & t106);
    t109 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t109 & t105);
    t110 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t110 & t106);
    goto LAB80;

LAB81:    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t28);
    *((unsigned int *)t7) = (t25 | t26);
    t30 = (t9 + 4);
    t32 = (t18 + 4);
    t27 = *((unsigned int *)t30);
    t31 = (~(t27));
    t34 = *((unsigned int *)t9);
    t52 = (t34 & t31);
    t35 = *((unsigned int *)t32);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t53 = (t37 & t36);
    t38 = (~(t52));
    t51 = (~(t53));
    t54 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t54 & t38);
    t55 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t55 & t51);
    goto LAB83;

LAB85:    *((unsigned int *)t8) = 1;
    goto LAB87;

LAB86:    t41 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB87;

LAB88:    xsi_set_current_line(74, ng0);
    t44 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t45 = (t0 + 1208U);
    t47 = *((char **)t45);
    t45 = (t0 + 1768);
    t48 = (t45 + 56U);
    t49 = *((char **)t48);
    t77 = (t0 + 1608);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t73 = *((unsigned int *)t49);
    t74 = *((unsigned int *)t79);
    t75 = (t73 | t74);
    *((unsigned int *)t17) = t75;
    t83 = (t49 + 4);
    t84 = (t79 + 4);
    t85 = (t17 + 4);
    t76 = *((unsigned int *)t83);
    t80 = *((unsigned int *)t84);
    t81 = (t76 | t80);
    *((unsigned int *)t85) = t81;
    t82 = *((unsigned int *)t85);
    t86 = (t82 != 0);
    if (t86 == 1)
        goto LAB91;

LAB92:
LAB93:    t111 = (t0 + 1768);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t0 + 1608);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    xsi_vlogfile_write(1, 0, 0, ng16, 6, t0, (char)118, t39, 64, (char)118, t47, 16, (char)118, t17, 16, (char)118, t113, 16, (char)118, t116, 16);
    goto LAB90;

LAB91:    t87 = *((unsigned int *)t17);
    t88 = *((unsigned int *)t85);
    *((unsigned int *)t17) = (t87 | t88);
    t93 = (t49 + 4);
    t94 = (t79 + 4);
    t89 = *((unsigned int *)t93);
    t90 = (~(t89));
    t91 = *((unsigned int *)t49);
    t103 = (t91 & t90);
    t92 = *((unsigned int *)t94);
    t95 = (~(t92));
    t96 = *((unsigned int *)t79);
    t104 = (t96 & t95);
    t97 = (~(t103));
    t98 = (~(t104));
    t99 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t99 & t97);
    t100 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t100 & t98);
    goto LAB93;

LAB94:    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t28);
    *((unsigned int *)t7) = (t25 | t26);
    goto LAB96;

LAB98:    *((unsigned int *)t8) = 1;
    goto LAB100;

LAB99:    t33 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB100;

LAB101:    xsi_set_current_line(75, ng0);
    t41 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t42 = (t0 + 1208U);
    t44 = *((char **)t42);
    t42 = (t0 + 1768);
    t45 = (t42 + 56U);
    t47 = *((char **)t45);
    t48 = (t0 + 1608);
    t49 = (t48 + 56U);
    t77 = *((char **)t49);
    t63 = *((unsigned int *)t47);
    t64 = *((unsigned int *)t77);
    t65 = (t63 ^ t64);
    *((unsigned int *)t17) = t65;
    t78 = (t47 + 4);
    t79 = (t77 + 4);
    t83 = (t17 + 4);
    t66 = *((unsigned int *)t78);
    t67 = *((unsigned int *)t79);
    t68 = (t66 | t67);
    *((unsigned int *)t83) = t68;
    t69 = *((unsigned int *)t83);
    t70 = (t69 != 0);
    if (t70 == 1)
        goto LAB104;

LAB105:
LAB106:    t84 = (t0 + 1768);
    t85 = (t84 + 56U);
    t93 = *((char **)t85);
    t94 = (t0 + 1608);
    t111 = (t94 + 56U);
    t112 = *((char **)t111);
    xsi_vlogfile_write(1, 0, 0, ng18, 6, t0, (char)118, t39, 64, (char)118, t44, 16, (char)118, t17, 16, (char)118, t93, 16, (char)118, t112, 16);
    goto LAB103;

LAB104:    t71 = *((unsigned int *)t17);
    t72 = *((unsigned int *)t83);
    *((unsigned int *)t17) = (t71 | t72);
    goto LAB106;

LAB108:    *((unsigned int *)t17) = 1;
    goto LAB110;

LAB109:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(76, ng0);
    t40 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 1768);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t19, 0, 8);
    t77 = (t19 + 4);
    t78 = (t49 + 4);
    t59 = *((unsigned int *)t49);
    t60 = (t59 >> 0);
    *((unsigned int *)t19) = t60;
    t61 = *((unsigned int *)t78);
    t62 = (t61 >> 0);
    *((unsigned int *)t77) = t62;
    t63 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t63 & 15U);
    t64 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t64 & 15U);
    memset(t43, 0, 8);
    xsi_vlog_unsigned_lshift(t43, 16, t45, 16, t19, 4);
    xsi_vlogfile_write(1, 0, 0, ng20, 4, t0, (char)118, t39, 64, (char)118, t42, 16, (char)118, t43, 16);
    goto LAB113;

LAB115:    *((unsigned int *)t17) = 1;
    goto LAB117;

LAB116:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB117;

LAB118:    xsi_set_current_line(77, ng0);
    t40 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 1768);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t19, 0, 8);
    t77 = (t19 + 4);
    t78 = (t49 + 4);
    t59 = *((unsigned int *)t49);
    t60 = (t59 >> 0);
    *((unsigned int *)t19) = t60;
    t61 = *((unsigned int *)t78);
    t62 = (t61 >> 0);
    *((unsigned int *)t77) = t62;
    t63 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t63 & 15U);
    t64 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t64 & 15U);
    memset(t43, 0, 8);
    xsi_vlog_unsigned_rshift(t43, 16, t45, 16, t19, 4);
    xsi_vlogfile_write(1, 0, 0, ng22, 4, t0, (char)118, t39, 64, (char)118, t42, 16, (char)118, t43, 16);
    goto LAB120;

LAB122:    *((unsigned int *)t17) = 1;
    goto LAB124;

LAB123:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB124;

LAB125:    xsi_set_current_line(78, ng0);
    t40 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 1768);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t19, 0, 8);
    t77 = (t19 + 4);
    t78 = (t49 + 4);
    t59 = *((unsigned int *)t49);
    t60 = (t59 >> 0);
    *((unsigned int *)t19) = t60;
    t61 = *((unsigned int *)t78);
    t62 = (t61 >> 0);
    *((unsigned int *)t77) = t62;
    t63 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t63 & 15U);
    t64 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t64 & 15U);
    memset(t43, 0, 8);
    xsi_vlog_unsigned_arith_lshift(t43, 16, t45, 16, t19, 4);
    xsi_vlogfile_write(1, 0, 0, ng24, 4, t0, (char)118, t39, 64, (char)118, t42, 16, (char)118, t43, 16);
    goto LAB127;

LAB129:    *((unsigned int *)t17) = 1;
    goto LAB131;

LAB130:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB131;

LAB132:    xsi_set_current_line(79, ng0);
    t40 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 1768);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t19, 0, 8);
    t77 = (t19 + 4);
    t78 = (t49 + 4);
    t59 = *((unsigned int *)t49);
    t60 = (t59 >> 0);
    *((unsigned int *)t19) = t60;
    t61 = *((unsigned int *)t78);
    t62 = (t61 >> 0);
    *((unsigned int *)t77) = t62;
    t63 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t63 & 15U);
    t64 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t64 & 15U);
    memset(t43, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t43, 16, t45, 16, t19, 4);
    xsi_vlogfile_write(1, 0, 0, ng26, 4, t0, (char)118, t39, 64, (char)118, t42, 16, (char)118, t43, 16);
    goto LAB134;

LAB136:    *((unsigned int *)t19) = 1;
    goto LAB138;

LAB137:    t40 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB138;

LAB139:    xsi_set_current_line(80, ng0);
    t42 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t44 = (t0 + 1208U);
    t45 = *((char **)t44);
    t44 = (t0 + 1768);
    t47 = (t44 + 56U);
    t48 = *((char **)t47);
    memset(t46, 0, 8);
    t49 = (t46 + 4);
    t77 = (t48 + 4);
    t65 = *((unsigned int *)t48);
    t66 = (t65 >> 0);
    *((unsigned int *)t46) = t66;
    t67 = *((unsigned int *)t77);
    t68 = (t67 >> 0);
    *((unsigned int *)t49) = t68;
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & 255U);
    t70 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t70 & 255U);
    t78 = (t0 + 1608);
    t79 = (t78 + 56U);
    t83 = *((char **)t79);
    memset(t50, 0, 8);
    t84 = (t50 + 4);
    t85 = (t83 + 4);
    t71 = *((unsigned int *)t83);
    t72 = (t71 >> 0);
    *((unsigned int *)t50) = t72;
    t73 = *((unsigned int *)t85);
    t74 = (t73 >> 0);
    *((unsigned int *)t84) = t74;
    t75 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t75 & 255U);
    t76 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t76 & 255U);
    xsi_vlogtype_concat(t43, 16, 16, 2U, t50, 8, t46, 8);
    xsi_vlogfile_write(1, 0, 0, ng28, 4, t0, (char)118, t39, 64, (char)118, t45, 16, (char)118, t43, 16);
    goto LAB141;

LAB143:    *((unsigned int *)t7) = 1;
    goto LAB145;

LAB144:    t18 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB145;

LAB146:    xsi_set_current_line(81, ng0);
    t21 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t28 = (t0 + 1208U);
    t30 = *((char **)t28);
    t28 = (t0 + 1608);
    t32 = (t28 + 56U);
    t33 = *((char **)t32);
    xsi_vlogfile_write(1, 0, 0, ng30, 4, t0, (char)118, t39, 64, (char)118, t30, 16, (char)118, t33, 16);
    goto LAB148;

LAB150:    *((unsigned int *)t7) = 1;
    goto LAB152;

LAB151:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB152;

LAB153:    xsi_set_current_line(82, ng0);
    t16 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t18 = (t0 + 1208U);
    t20 = *((char **)t18);
    t18 = ((char*)((ng1)));
    xsi_vlogfile_write(1, 0, 0, ng31, 4, t0, (char)118, t39, 64, (char)118, t20, 16, (char)119, t18, 32);
    goto LAB155;

}


extern void work_m_00000000002367298307_2598182923_init()
{
	static char *pe[] = {(void *)Initial_50_0};
	xsi_register_didat("work_m_00000000002367298307_2598182923", "isim/alu_tb_isim_beh.exe.sim/work/m_00000000002367298307_2598182923.didat");
	xsi_register_executes(pe);
}
