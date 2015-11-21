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
static int ng1[] = {0, 0};



static void Always_20_0(char *t0)
{
    char t11[8];
    char t12[8];
    char t13[8];
    char t38[8];
    char t39[8];
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
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;

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
    t14 = (t0 + 1528U);
    t15 = *((char **)t14);
    memset(t13, 0, 8);
    t14 = (t15 + 4);
    t16 = *((unsigned int *)t15);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    if (t18 != 15U)
        goto LAB9;

LAB8:    if (*((unsigned int *)t14) == 0)
        goto LAB10;

LAB11:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;

LAB9:    memset(t12, 0, 8);
    t20 = (t13 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t20) != 0)
        goto LAB14;

LAB15:    t27 = (t12 + 4);
    t28 = *((unsigned int *)t12);
    t29 = *((unsigned int *)t27);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB16;

LAB17:    t33 = *((unsigned int *)t12);
    t34 = (~(t33));
    t35 = *((unsigned int *)t27);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t27) > 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t12) > 0)
        goto LAB22;

LAB23:    memcpy(t11, t37, 8);

LAB24:    t31 = (t0 + 2568);
    t40 = (t0 + 2568);
    t41 = (t40 + 72U);
    t42 = *((char **)t41);
    t43 = (t0 + 2568);
    t44 = (t43 + 64U);
    t45 = *((char **)t44);
    t46 = (t0 + 1528U);
    t47 = *((char **)t46);
    xsi_vlog_generic_convert_array_indices(t38, t39, t42, t45, 2, 1, t47, 4, 2);
    t46 = (t38 + 4);
    t48 = *((unsigned int *)t46);
    t49 = (!(t48));
    t50 = (t39 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB25;

LAB26:    goto LAB7;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB12:    *((unsigned int *)t12) = 1;
    goto LAB15;

LAB14:    t26 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB15;

LAB16:    t31 = (t0 + 1688U);
    t32 = *((char **)t31);
    goto LAB17;

LAB18:    t31 = (t0 + 1848U);
    t37 = *((char **)t31);
    goto LAB19;

LAB20:    xsi_vlog_unsigned_bit_combine(t11, 16, t32, 16, t37, 16);
    goto LAB24;

LAB22:    memcpy(t11, t32, 8);
    goto LAB24;

LAB25:    t54 = *((unsigned int *)t38);
    t55 = *((unsigned int *)t39);
    t56 = (t54 - t55);
    t57 = (t56 + 1);
    xsi_vlogvar_wait_assign_value(t31, t11, 0, *((unsigned int *)t39), t57, 0LL);
    goto LAB26;

}

static void Cont_26_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 15U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t28 = *((unsigned int *)t4);
    t29 = (~(t28));
    t30 = *((unsigned int *)t12);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t26, 8);

LAB16:    t32 = (t0 + 4416);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 65535U;
    t38 = t37;
    t39 = (t3 + 4);
    t40 = *((unsigned int *)t3);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 15);
    t45 = (t0 + 4320);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2568);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t0 + 2568);
    t24 = (t23 + 64U);
    t25 = *((char **)t24);
    t26 = (t0 + 1368U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t19, 32, t18, t22, t25, 2, 1, t27, 4, 2);
    goto LAB9;

LAB10:    t26 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t19, 32, t26, 32);
    goto LAB16;

LAB14:    memcpy(t3, t19, 8);
    goto LAB16;

}

static void Cont_27_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 15U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t28 = *((unsigned int *)t4);
    t29 = (~(t28));
    t30 = *((unsigned int *)t12);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t26, 8);

LAB16:    t32 = (t0 + 4480);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 65535U;
    t38 = t37;
    t39 = (t3 + 4);
    t40 = *((unsigned int *)t3);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 15);
    t45 = (t0 + 4336);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2568);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t0 + 2568);
    t24 = (t23 + 64U);
    t25 = *((char **)t24);
    t26 = (t0 + 1528U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t19, 32, t18, t22, t25, 2, 1, t27, 4, 2);
    goto LAB9;

LAB10:    t26 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t19, 32, t26, 32);
    goto LAB16;

LAB14:    memcpy(t3, t19, 8);
    goto LAB16;

}


extern void work_m_00000000001401010327_1621107508_init()
{
	static char *pe[] = {(void *)Always_20_0,(void *)Cont_26_1,(void *)Cont_27_2};
	xsi_register_didat("work_m_00000000001401010327_1621107508", "isim/reg_alu_tb_isim_beh.exe.sim/work/m_00000000001401010327_1621107508.didat");
	xsi_register_executes(pe);
}
