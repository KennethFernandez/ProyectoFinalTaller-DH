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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/clock32pps.v";
static int ng1[] = {500000, 0};
static int ng2[] = {250000, 0};
static int ng3[] = {125000, 0};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {0U, 0U};



static void Always_34_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2532);
    *((int *)t2) = 1;
    t3 = (t0 + 1932);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1288);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 19, 0LL);
    goto LAB2;

}

static void Always_36_1(char *t0)
{
    char t11[8];
    char t12[8];
    char t15[8];
    char t16[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    char *t18;
    unsigned int t19;
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
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2540);
    *((int *)t2) = 1;
    t3 = (t0 + 2076);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1380);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    t8 = ((char*)((ng2)));
    t9 = (t0 + 968U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_multiply(t11, 32, t8, 32, t10, 1);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_minus(t12, 32, t7, 32, t11, 32);
    t9 = ((char*)((ng3)));
    t13 = (t0 + 1060U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    xsi_vlog_unsigned_multiply(t15, 32, t9, 32, t14, 1);
    memset(t16, 0, 8);
    xsi_vlog_unsigned_minus(t16, 32, t12, 32, t15, 32);
    memset(t17, 0, 8);
    t13 = (t6 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t16);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t18);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB9;

LAB6:    if (t28 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t17) = 1;

LAB9:    t32 = (t17 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t17);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 19, t5, 32);
    t6 = (t0 + 1288);
    xsi_vlogvar_assign_value(t6, t11, 0, 0, 19);

LAB12:    goto LAB2;

LAB8:    t31 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);
    t38 = ((char*)((ng4)));
    t39 = (t0 + 1288);
    xsi_vlogvar_assign_value(t39, t38, 0, 0, 19);
    goto LAB12;

}

static void Cont_43_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t31[8];
    char t32[8];
    char t35[8];
    char t36[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;

LAB0:    t1 = (t0 + 2192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 692U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    memset(t4, 0, 8);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t13) != 0)
        goto LAB10;

LAB11:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB12;

LAB13:    t52 = *((unsigned int *)t4);
    t53 = (~(t52));
    t54 = *((unsigned int *)t20);
    t55 = (t53 || t54);
    if (t55 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t20) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t56, 8);

LAB20:    t57 = (t0 + 2600);
    t58 = (t57 + 32U);
    t59 = *((char **)t58);
    t60 = (t59 + 40U);
    t61 = *((char **)t60);
    memset(t61, 0, 8);
    t62 = 1U;
    t63 = t62;
    t64 = (t3 + 4);
    t65 = *((unsigned int *)t3);
    t62 = (t62 & t65);
    t66 = *((unsigned int *)t64);
    t63 = (t63 & t66);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t68 | t62);
    t69 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t69 | t63);
    xsi_driver_vfirst_trans(t57, 0, 0);
    t70 = (t0 + 2548);
    *((int *)t70) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB11;

LAB12:    t24 = (t0 + 1288);
    t25 = (t24 + 36U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng1)));
    t28 = ((char*)((ng2)));
    t29 = (t0 + 968U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_multiply(t31, 32, t28, 32, t30, 1);
    memset(t32, 0, 8);
    xsi_vlog_unsigned_minus(t32, 32, t27, 32, t31, 32);
    t29 = ((char*)((ng3)));
    t33 = (t0 + 1060U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_multiply(t35, 32, t29, 32, t34, 1);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_minus(t36, 32, t32, 32, t35, 32);
    memset(t37, 0, 8);
    t33 = (t26 + 4);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t26);
    t40 = *((unsigned int *)t36);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t33);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB24;

LAB21:    if (t48 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t37) = 1;

LAB24:    goto LAB13;

LAB14:    t56 = ((char*)((ng6)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t37, 1, t56, 1);
    goto LAB20;

LAB18:    memcpy(t3, t37, 8);
    goto LAB20;

LAB23:    t51 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB24;

}

static void Cont_44_3(char *t0)
{
    char t9[8];
    char t10[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;

LAB0:    t1 = (t0 + 2336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    t6 = ((char*)((ng2)));
    t7 = (t0 + 968U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_multiply(t9, 32, t6, 32, t8, 1);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t5, 32, t9, 32);
    t7 = ((char*)((ng3)));
    t11 = (t0 + 1060U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_multiply(t13, 32, t7, 32, t12, 1);
    memset(t14, 0, 8);
    xsi_vlog_unsigned_minus(t14, 32, t10, 32, t13, 32);
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t16);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB7;

LAB4:    if (t26 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    t30 = (t0 + 2636);
    t31 = (t30 + 32U);
    t32 = *((char **)t31);
    t33 = (t32 + 40U);
    t34 = *((char **)t33);
    memset(t34, 0, 8);
    t35 = 1U;
    t36 = t35;
    t37 = (t15 + 4);
    t38 = *((unsigned int *)t15);
    t35 = (t35 & t38);
    t39 = *((unsigned int *)t37);
    t36 = (t36 & t39);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t41 | t35);
    t42 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t42 | t36);
    xsi_driver_vfirst_trans(t30, 0, 0);
    t43 = (t0 + 2556);
    *((int *)t43) = 1;

LAB1:    return;
LAB6:    t29 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB7;

}


extern void work_m_00000000001610128882_1214416288_init()
{
	static char *pe[] = {(void *)Always_34_0,(void *)Always_36_1,(void *)Cont_43_2,(void *)Cont_44_3};
	xsi_register_didat("work_m_00000000001610128882_1214416288", "isim/PruebaReloj32milis_isim_beh.exe.sim/work/m_00000000001610128882_1214416288.didat");
	xsi_register_executes(pe);
}
