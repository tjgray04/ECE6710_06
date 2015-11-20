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
static const char *ng0 = "C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/regfile.v";



static void Always_20_0(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 4304);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(22, ng0);
    t11 = (t0 + 1848U);
    t12 = *((char **)t11);
    t11 = (t0 + 2568);
    t15 = (t0 + 2568);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2568);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 1528U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 4, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    goto LAB7;

LAB8:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB9;

}

static void Cont_25_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t2);
    t9 = (t7 | t8);
    if (t9 != 15U)
        goto LAB5;

LAB4:    if (*((unsigned int *)t2) == 0)
        goto LAB6;

LAB7:    t10 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t10) = 1;

LAB5:    memset(t4, 0, 8);
    t11 = (t5 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t11) != 0)
        goto LAB10;

LAB11:    t18 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB12;

LAB13:    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t18);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t18) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t30, 8);

LAB20:    t37 = (t0 + 4416);
    t39 = (t37 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memset(t42, 0, 8);
    t43 = 65535U;
    t44 = t43;
    t45 = (t3 + 4);
    t46 = *((unsigned int *)t3);
    t43 = (t43 & t46);
    t47 = *((unsigned int *)t45);
    t44 = (t44 & t47);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t49 | t43);
    t50 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t50 | t44);
    xsi_driver_vfirst_trans(t37, 0, 15);
    t51 = (t0 + 4320);
    *((int *)t51) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t5) = 1;
    goto LAB5;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t17 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB12:    t22 = (t0 + 1688U);
    t23 = *((char **)t22);
    goto LAB13;

LAB14:    t22 = (t0 + 2568);
    t28 = (t22 + 56U);
    t29 = *((char **)t28);
    t31 = (t0 + 2568);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1368U);
    t38 = *((char **)t37);
    xsi_vlog_generic_get_array_select_value(t30, 16, t29, t33, t36, 2, 1, t38, 4, 2);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 16, t23, 16, t30, 16);
    goto LAB20;

LAB18:    memcpy(t3, t23, 8);
    goto LAB20;

}

static void Cont_26_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1528U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t2);
    t9 = (t7 | t8);
    if (t9 != 15U)
        goto LAB5;

LAB4:    if (*((unsigned int *)t2) == 0)
        goto LAB6;

LAB7:    t10 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t10) = 1;

LAB5:    memset(t4, 0, 8);
    t11 = (t5 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t11) != 0)
        goto LAB10;

LAB11:    t18 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB12;

LAB13:    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t18);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t18) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t30, 8);

LAB20:    t37 = (t0 + 4480);
    t39 = (t37 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memset(t42, 0, 8);
    t43 = 65535U;
    t44 = t43;
    t45 = (t3 + 4);
    t46 = *((unsigned int *)t3);
    t43 = (t43 & t46);
    t47 = *((unsigned int *)t45);
    t44 = (t44 & t47);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t49 | t43);
    t50 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t50 | t44);
    xsi_driver_vfirst_trans(t37, 0, 15);
    t51 = (t0 + 4336);
    *((int *)t51) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t5) = 1;
    goto LAB5;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t17 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB12:    t22 = (t0 + 1688U);
    t23 = *((char **)t22);
    goto LAB13;

LAB14:    t22 = (t0 + 2568);
    t28 = (t22 + 56U);
    t29 = *((char **)t28);
    t31 = (t0 + 2568);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1528U);
    t38 = *((char **)t37);
    xsi_vlog_generic_get_array_select_value(t30, 16, t29, t33, t36, 2, 1, t38, 4, 2);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 16, t23, 16, t30, 16);
    goto LAB20;

LAB18:    memcpy(t3, t23, 8);
    goto LAB20;

}


extern void work_m_00000000001401010327_1621107508_init()
{
	static char *pe[] = {(void *)Always_20_0,(void *)Cont_25_1,(void *)Cont_26_2};
	xsi_register_didat("work_m_00000000001401010327_1621107508", "isim/regfile_tb_isim_beh.exe.sim/work/m_00000000001401010327_1621107508.didat");
	xsi_register_executes(pe);
}
