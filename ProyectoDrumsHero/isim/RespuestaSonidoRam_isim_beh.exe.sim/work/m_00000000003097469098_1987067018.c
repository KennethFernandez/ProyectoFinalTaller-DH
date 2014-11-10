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
static const char *ng0 = "C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/RecorreRam.v";
static unsigned int ng1[] = {2646000U, 0U};
static int ng2[] = {2, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {8912896U, 0U};
static unsigned int ng5[] = {8388608U, 0U};



static void Always_31_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t10[8];
    char t14[8];
    char t23[8];
    char t70[8];
    char t73[8];
    char t75[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2388);
    *((int *)t2) = 1;
    t3 = (t0 + 1932);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t6 = (t0 + 1288);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t11 = (t8 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB7;

LAB6:    t12 = (t9 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t8) > *((unsigned int *)t9))
        goto LAB9;

LAB8:    *((unsigned int *)t10) = 1;

LAB9:    t15 = (t0 + 692U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t16 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t15) == 0)
        goto LAB11;

LAB13:    t22 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t22) = 1;

LAB14:    t24 = *((unsigned int *)t10);
    t25 = *((unsigned int *)t14);
    t26 = (t24 & t25);
    *((unsigned int *)t23) = t26;
    t27 = (t10 + 4);
    t28 = (t14 + 4);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB15;

LAB16:
LAB17:    memset(t5, 0, 8);
    t55 = (t23 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t23);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t55) != 0)
        goto LAB20;

LAB21:    t62 = (t5 + 4);
    t63 = *((unsigned int *)t5);
    t64 = *((unsigned int *)t62);
    t65 = (t63 || t64);
    if (t65 > 0)
        goto LAB22;

LAB23:    t76 = *((unsigned int *)t5);
    t77 = (~(t76));
    t78 = *((unsigned int *)t62);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t62) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t5) > 0)
        goto LAB28;

LAB29:    memcpy(t4, t71, 8);

LAB30:    t80 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t80, t4, 0, 0, 26, 0LL);
    goto LAB2;

LAB7:    t13 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t14) = 1;
    goto LAB14;

LAB15:    t35 = *((unsigned int *)t23);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t23) = (t35 | t36);
    t37 = (t10 + 4);
    t38 = (t14 + 4);
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t14);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (~(t45));
    t47 = (t40 & t42);
    t48 = (t44 & t46);
    t49 = (~(t47));
    t50 = (~(t48));
    t51 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t51 & t49);
    t52 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t52 & t50);
    t53 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t53 & t49);
    t54 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t54 & t50);
    goto LAB17;

LAB18:    *((unsigned int *)t5) = 1;
    goto LAB21;

LAB20:    t61 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB21;

LAB22:    t66 = (t0 + 1288);
    t67 = (t66 + 36U);
    t68 = *((char **)t67);
    t69 = ((char*)((ng2)));
    memset(t70, 0, 8);
    xsi_vlog_unsigned_add(t70, 32, t68, 26, t69, 32);
    t71 = (t0 + 876U);
    t72 = *((char **)t71);
    memset(t73, 0, 8);
    xsi_vlog_unsigned_add(t73, 32, t70, 32, t72, 1);
    t71 = (t0 + 968U);
    t74 = *((char **)t71);
    memset(t75, 0, 8);
    xsi_vlog_unsigned_add(t75, 32, t73, 32, t74, 1);
    goto LAB23;

LAB24:    t71 = ((char*)((ng3)));
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t4, 32, t75, 32, t71, 32);
    goto LAB30;

LAB28:    memcpy(t4, t75, 8);
    goto LAB30;

}

static void Always_42_1(char *t0)
{
    char t4[8];
    char t5[8];
    char t10[8];
    char t14[8];
    char t23[8];
    char t70[8];
    char t73[8];
    char t75[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2396);
    *((int *)t2) = 1;
    t3 = (t0 + 2076);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 1380);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng4)));
    memset(t10, 0, 8);
    t11 = (t8 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB7;

LAB6:    t12 = (t9 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t8) > *((unsigned int *)t9))
        goto LAB9;

LAB8:    *((unsigned int *)t10) = 1;

LAB9:    t15 = (t0 + 692U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t16 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t15) == 0)
        goto LAB11;

LAB13:    t22 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t22) = 1;

LAB14:    t24 = *((unsigned int *)t10);
    t25 = *((unsigned int *)t14);
    t26 = (t24 & t25);
    *((unsigned int *)t23) = t26;
    t27 = (t10 + 4);
    t28 = (t14 + 4);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB15;

LAB16:
LAB17:    memset(t5, 0, 8);
    t55 = (t23 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t23);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t55) != 0)
        goto LAB20;

LAB21:    t62 = (t5 + 4);
    t63 = *((unsigned int *)t5);
    t64 = *((unsigned int *)t62);
    t65 = (t63 || t64);
    if (t65 > 0)
        goto LAB22;

LAB23:    t76 = *((unsigned int *)t5);
    t77 = (~(t76));
    t78 = *((unsigned int *)t62);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t62) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t5) > 0)
        goto LAB28;

LAB29:    memcpy(t4, t71, 8);

LAB30:    t80 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t80, t4, 0, 0, 26, 0LL);
    goto LAB2;

LAB7:    t13 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t14) = 1;
    goto LAB14;

LAB15:    t35 = *((unsigned int *)t23);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t23) = (t35 | t36);
    t37 = (t10 + 4);
    t38 = (t14 + 4);
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t14);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (~(t45));
    t47 = (t40 & t42);
    t48 = (t44 & t46);
    t49 = (~(t47));
    t50 = (~(t48));
    t51 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t51 & t49);
    t52 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t52 & t50);
    t53 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t53 & t49);
    t54 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t54 & t50);
    goto LAB17;

LAB18:    *((unsigned int *)t5) = 1;
    goto LAB21;

LAB20:    t61 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB21;

LAB22:    t66 = (t0 + 1380);
    t67 = (t66 + 36U);
    t68 = *((char **)t67);
    t69 = ((char*)((ng2)));
    memset(t70, 0, 8);
    xsi_vlog_unsigned_add(t70, 32, t68, 26, t69, 32);
    t71 = (t0 + 876U);
    t72 = *((char **)t71);
    memset(t73, 0, 8);
    xsi_vlog_unsigned_add(t73, 32, t70, 32, t72, 1);
    t71 = (t0 + 968U);
    t74 = *((char **)t71);
    memset(t75, 0, 8);
    xsi_vlog_unsigned_add(t75, 32, t73, 32, t74, 1);
    goto LAB23;

LAB24:    t71 = ((char*)((ng5)));
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t4, 32, t75, 32, t71, 32);
    goto LAB30;

LAB28:    memcpy(t4, t75, 8);
    goto LAB30;

}

static void Cont_53_2(char *t0)
{
    char t3[8];
    char t4[8];
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
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 2192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 600U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
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

LAB9:    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    t21 = *((unsigned int *)t12);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 2448);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 67108863U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 25);
    t39 = (t0 + 2404);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1380);
    t17 = (t16 + 36U);
    t18 = *((char **)t17);
    goto LAB9;

LAB10:    t23 = (t0 + 1288);
    t24 = (t23 + 36U);
    t25 = *((char **)t24);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 26, t18, 26, t25, 26);
    goto LAB16;

LAB14:    memcpy(t3, t18, 8);
    goto LAB16;

}


extern void work_m_00000000003097469098_1987067018_init()
{
	static char *pe[] = {(void *)Always_31_0,(void *)Always_42_1,(void *)Cont_53_2};
	xsi_register_didat("work_m_00000000003097469098_1987067018", "isim/RespuestaSonidoRam_isim_beh.exe.sim/work/m_00000000003097469098_1987067018.didat");
	xsi_register_executes(pe);
}
