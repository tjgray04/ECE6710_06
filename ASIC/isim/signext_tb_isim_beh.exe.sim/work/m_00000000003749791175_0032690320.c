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
static const char *ng0 = "C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/signext_tb.v";
static int ng1[] = {0, 0};
static const char *ng2 = "SIMULATION STARTED...";
static int ng3[] = {2, 0};
static int ng4[] = {8, 0};
static const char *ng5 = "ERROR @ time %d: immExt is %h, but should be %h.";
static int ng6[] = {1, 0};
static const char *ng7 = "SIMULATION FINISHED.";



static void Initial_44_0(char *t0)
{
    char t7[8];
    char t8[8];
    char t20[8];
    char t22[8];
    char t43[16];
    char t47[8];
    char t50[8];
    char t55[8];
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
    unsigned int t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t44;
    char *t45;
    char *t46;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);

LAB4:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(51, ng0);
    xsi_vlogfile_write(1, 0, 0, ng2, 1, t0);
    xsi_set_current_line(55, ng0);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1608);
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

LAB8:    xsi_set_current_line(61, ng0);
    xsi_vlogfile_write(1, 0, 0, ng7, 1, t0);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    xsi_vlog_finish(*((unsigned int *)t2));
    goto LAB1;

LAB7:    xsi_set_current_line(55, ng0);

LAB9:    xsi_set_current_line(56, ng0);
    t15 = (t0 + 2336);
    xsi_process_wait(t15, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(56, ng0);
    t16 = (t0 + 1608);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 1448);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 8);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    t9 = (t0 + 1448);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    memset(t20, 0, 8);
    t17 = (t20 + 4);
    t18 = (t16 + 4);
    t10 = *((unsigned int *)t16);
    t11 = (t10 >> 7);
    t12 = (t11 & 1);
    *((unsigned int *)t20) = t12;
    t13 = *((unsigned int *)t18);
    t14 = (t13 >> 7);
    t21 = (t14 & 1);
    *((unsigned int *)t17) = t21;
    xsi_vlog_mul_concat(t8, 8, 1, t6, 1U, t20, 1);
    xsi_vlogtype_concat(t7, 16, 16, 2U, t8, 8, t5, 8);
    memset(t22, 0, 8);
    t19 = (t3 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t3);
    t25 = *((unsigned int *)t7);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t19);
    t28 = *((unsigned int *)t23);
    t29 = (t27 ^ t28);
    t30 = (t26 | t29);
    t31 = *((unsigned int *)t19);
    t32 = *((unsigned int *)t23);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB13;

LAB12:    if (t33 != 0)
        goto LAB14;

LAB15:    t37 = (t22 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t22);
    t41 = (t40 & t39);
    t42 = (t41 != 0);
    if (t42 > 0)
        goto LAB16;

LAB17:
LAB18:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB6;

LAB13:    *((unsigned int *)t22) = 1;
    goto LAB15;

LAB14:    t36 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(58, ng0);
    t44 = xsi_vlog_time(t43, 1000.0000000000000, 1000.0000000000000);
    t45 = (t0 + 1048U);
    t46 = *((char **)t45);
    t45 = (t0 + 1448);
    t48 = (t45 + 56U);
    t49 = *((char **)t48);
    t51 = ((char*)((ng4)));
    t52 = (t0 + 1448);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memset(t55, 0, 8);
    t56 = (t55 + 4);
    t57 = (t54 + 4);
    t58 = *((unsigned int *)t54);
    t59 = (t58 >> 7);
    t60 = (t59 & 1);
    *((unsigned int *)t55) = t60;
    t61 = *((unsigned int *)t57);
    t62 = (t61 >> 7);
    t63 = (t62 & 1);
    *((unsigned int *)t56) = t63;
    xsi_vlog_mul_concat(t50, 8, 1, t51, 1U, t55, 1);
    xsi_vlogtype_concat(t47, 16, 16, 2U, t50, 8, t49, 8);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t43, 64, (char)118, t46, 16, (char)118, t47, 16);
    goto LAB18;

}


extern void work_m_00000000003749791175_0032690320_init()
{
	static char *pe[] = {(void *)Initial_44_0};
	xsi_register_didat("work_m_00000000003749791175_0032690320", "isim/signext_tb_isim_beh.exe.sim/work/m_00000000003749791175_0032690320.didat");
	xsi_register_executes(pe);
}
