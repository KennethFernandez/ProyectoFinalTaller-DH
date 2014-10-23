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
static const char *ng0 = "C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/RandomTenBits.v";
static int ng1[] = {3, 0};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};



static void Always_26_0(char *t0)
{
    char t4[8];
    char t17[8];
    char t18[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;

LAB0:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1548);
    *((int *)t2) = 1;
    t3 = (t0 + 1380);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t5 = (t0 + 828);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 7U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 7U);
    t16 = (t0 + 828);
    t20 = (t0 + 828);
    t21 = (t20 + 44U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng1)));
    t24 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t17, t18, t19, ((int*)(t22)), 2, t23, 32, 1, t24, 32, 1);
    t25 = (t17 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t18 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    t32 = (t19 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 828);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 3);
    t15 = (t14 & 1);
    *((unsigned int *)t6) = t15;
    t8 = (t0 + 828);
    t9 = (t8 + 36U);
    t16 = *((char **)t9);
    memset(t17, 0, 8);
    t20 = (t17 + 4);
    t21 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t29 = (t26 >> 2);
    t33 = (t29 & 1);
    *((unsigned int *)t17) = t33;
    t36 = *((unsigned int *)t21);
    t38 = (t36 >> 2);
    t39 = (t38 & 1);
    *((unsigned int *)t20) = t39;
    t42 = *((unsigned int *)t4);
    t43 = *((unsigned int *)t17);
    t44 = (t42 ^ t43);
    *((unsigned int *)t18) = t44;
    t22 = (t4 + 4);
    t23 = (t17 + 4);
    t24 = (t18 + 4);
    t45 = *((unsigned int *)t22);
    t46 = *((unsigned int *)t23);
    t47 = (t45 | t46);
    *((unsigned int *)t24) = t47;
    t48 = *((unsigned int *)t24);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB8;

LAB9:
LAB10:    t25 = (t0 + 828);
    t28 = (t0 + 828);
    t32 = (t28 + 44U);
    t52 = *((char **)t32);
    t53 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t19, t52, 2, t53, 32, 1);
    t54 = (t19 + 4);
    t55 = *((unsigned int *)t54);
    t27 = (!(t55));
    if (t27 == 1)
        goto LAB11;

LAB12:    goto LAB2;

LAB6:    t36 = *((unsigned int *)t19);
    t37 = (t36 + 0);
    t38 = *((unsigned int *)t17);
    t39 = *((unsigned int *)t18);
    t40 = (t38 - t39);
    t41 = (t40 + 1);
    xsi_vlogvar_wait_assign_value(t16, t4, t37, *((unsigned int *)t18), t41, 0LL);
    goto LAB7;

LAB8:    t50 = *((unsigned int *)t18);
    t51 = *((unsigned int *)t24);
    *((unsigned int *)t18) = (t50 | t51);
    goto LAB10;

LAB11:    xsi_vlogvar_wait_assign_value(t25, t18, 0, *((unsigned int *)t19), 1, 0LL);
    goto LAB12;

}


extern void work_m_00000000000600754006_3430948383_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000000600754006_3430948383", "isim/PruebaListaValores_isim_beh.exe.sim/work/m_00000000000600754006_3430948383.didat");
	xsi_register_executes(pe);
}
