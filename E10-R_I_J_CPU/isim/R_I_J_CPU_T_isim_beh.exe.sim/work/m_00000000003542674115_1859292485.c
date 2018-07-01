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
static const char *ng0 = "D:/workplace/verilog/E10-R_I_J_CPU/Translate_Control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32U, 0U};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {34U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {36U, 0U};
static unsigned int ng7[] = {37U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {38U, 0U};
static unsigned int ng10[] = {2U, 0U};
static unsigned int ng11[] = {39U, 0U};
static unsigned int ng12[] = {3U, 0U};
static unsigned int ng13[] = {43U, 0U};
static unsigned int ng14[] = {6U, 0U};
static unsigned int ng15[] = {7U, 0U};
static unsigned int ng16[] = {8U, 0U};
static int ng17[] = {0, 0};
static int ng18[] = {1, 0};
static unsigned int ng19[] = {12U, 0U};
static unsigned int ng20[] = {14U, 0U};
static unsigned int ng21[] = {11U, 0U};
static unsigned int ng22[] = {35U, 0U};
static unsigned int ng23[] = {3U, 1U};



static void Always_47_0(char *t0)
{
    char t12[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t36[8];
    char t50[8];
    char t58[8];
    char t66[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    unsigned int t16;
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
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);

LAB30:    xsi_set_current_line(50, ng0);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);

LAB31:    t7 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t8, 6, t7, 6);
    if (t9 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB48;

LAB49:
LAB51:
LAB50:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB52:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t15 + 4);
    t4 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t17 = (t16 >> 5);
    t18 = (t17 & 1);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t4);
    t20 = (t19 >> 5);
    t21 = (t20 & 1);
    *((unsigned int *)t2) = t21;
    memset(t14, 0, 8);
    t7 = (t15 + 4);
    t22 = *((unsigned int *)t7);
    t23 = (~(t22));
    t24 = *((unsigned int *)t15);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t7) == 0)
        goto LAB53;

LAB55:    t10 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t10) = 1;

LAB56:    t11 = (t14 + 4);
    t27 = (t15 + 4);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    *((unsigned int *)t14) = t29;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t27) != 0)
        goto LAB58;

LAB57:    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & 1U);
    t35 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t35 & 1U);
    memset(t36, 0, 8);
    t37 = (t14 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t14);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t37) != 0)
        goto LAB61;

LAB62:    t44 = (t36 + 4);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t44);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB63;

LAB64:    memcpy(t66, t36, 8);

LAB65:    memset(t13, 0, 8);
    t96 = (t66 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t66);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t96) != 0)
        goto LAB75;

LAB76:    t103 = (t13 + 4);
    t104 = *((unsigned int *)t13);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB77;

LAB78:    t108 = *((unsigned int *)t13);
    t109 = (~(t108));
    t110 = *((unsigned int *)t103);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t103) > 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t13) > 0)
        goto LAB83;

LAB84:    memcpy(t12, t112, 8);

LAB85:    t113 = (t0 + 2568);
    xsi_vlogvar_assign_value(t113, t12, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t15 + 4);
    t4 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t17 = (t16 >> 5);
    t18 = (t17 & 1);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t4);
    t20 = (t19 >> 5);
    t21 = (t20 & 1);
    *((unsigned int *)t2) = t21;
    memset(t14, 0, 8);
    t7 = (t15 + 4);
    t22 = *((unsigned int *)t7);
    t23 = (~(t22));
    t24 = *((unsigned int *)t15);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB89;

LAB87:    if (*((unsigned int *)t7) == 0)
        goto LAB86;

LAB88:    t10 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t10) = 1;

LAB89:    t11 = (t14 + 4);
    t27 = (t15 + 4);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    *((unsigned int *)t14) = t29;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t27) != 0)
        goto LAB91;

LAB90:    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & 1U);
    t35 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t35 & 1U);
    memset(t36, 0, 8);
    t37 = (t14 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t14);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB92;

LAB93:    if (*((unsigned int *)t37) != 0)
        goto LAB94;

LAB95:    t44 = (t36 + 4);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t44);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB96;

LAB97:    memcpy(t66, t36, 8);

LAB98:    memset(t13, 0, 8);
    t96 = (t66 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t66);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB106;

LAB107:    if (*((unsigned int *)t96) != 0)
        goto LAB108;

LAB109:    t103 = (t13 + 4);
    t104 = *((unsigned int *)t13);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB110;

LAB111:    t108 = *((unsigned int *)t13);
    t109 = (~(t108));
    t110 = *((unsigned int *)t103);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB112;

LAB113:    if (*((unsigned int *)t103) > 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t13) > 0)
        goto LAB116;

LAB117:    memcpy(t12, t112, 8);

LAB118:    t113 = (t0 + 2888);
    xsi_vlogvar_assign_value(t113, t12, 0, 0, 2);
    goto LAB29;

LAB9:    xsi_set_current_line(70, ng0);

LAB119:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB11:    xsi_set_current_line(80, ng0);

LAB120:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB13:    xsi_set_current_line(90, ng0);

LAB121:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB15:    xsi_set_current_line(100, ng0);

LAB122:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB17:    xsi_set_current_line(110, ng0);

LAB123:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB19:    xsi_set_current_line(120, ng0);

LAB124:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB21:    xsi_set_current_line(130, ng0);

LAB125:    xsi_set_current_line(131, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t16 = *((unsigned int *)t2);
    t17 = (~(t16));
    t18 = *((unsigned int *)t3);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB126;

LAB127:    if (*((unsigned int *)t2) != 0)
        goto LAB128;

LAB129:    t7 = (t13 + 4);
    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t7);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB130;

LAB131:    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t28 = (t25 || t26);
    if (t28 > 0)
        goto LAB132;

LAB133:    if (*((unsigned int *)t7) > 0)
        goto LAB134;

LAB135:    if (*((unsigned int *)t13) > 0)
        goto LAB136;

LAB137:    memcpy(t12, t11, 8);

LAB138:    t27 = (t0 + 2888);
    xsi_vlogvar_assign_value(t27, t12, 0, 0, 2);
    goto LAB29;

LAB23:    xsi_set_current_line(140, ng0);

LAB139:    xsi_set_current_line(141, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t16 = *((unsigned int *)t2);
    t17 = (~(t16));
    t18 = *((unsigned int *)t3);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB140;

LAB141:    if (*((unsigned int *)t2) != 0)
        goto LAB142;

LAB143:    t7 = (t13 + 4);
    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t7);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB144;

LAB145:    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t28 = (t25 || t26);
    if (t28 > 0)
        goto LAB146;

LAB147:    if (*((unsigned int *)t7) > 0)
        goto LAB148;

LAB149:    if (*((unsigned int *)t13) > 0)
        goto LAB150;

LAB151:    memcpy(t12, t11, 8);

LAB152:    t27 = (t0 + 2888);
    xsi_vlogvar_assign_value(t27, t12, 0, 0, 2);
    goto LAB29;

LAB25:    xsi_set_current_line(150, ng0);

LAB153:    xsi_set_current_line(151, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB27:    xsi_set_current_line(160, ng0);

LAB154:    xsi_set_current_line(161, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB29;

LAB32:    xsi_set_current_line(51, ng0);
    t10 = ((char*)((ng3)));
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 3);
    goto LAB52;

LAB34:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB36:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB38:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB40:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB42:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB44:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB46:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB48:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB52;

LAB53:    *((unsigned int *)t14) = 1;
    goto LAB56;

LAB58:    t30 = *((unsigned int *)t14);
    t31 = *((unsigned int *)t27);
    *((unsigned int *)t14) = (t30 | t31);
    t32 = *((unsigned int *)t11);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t11) = (t32 | t33);
    goto LAB57;

LAB59:    *((unsigned int *)t36) = 1;
    goto LAB62;

LAB61:    t43 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB62;

LAB63:    t48 = (t0 + 1208U);
    t49 = *((char **)t48);
    memset(t50, 0, 8);
    t48 = (t50 + 4);
    t51 = (t49 + 4);
    t52 = *((unsigned int *)t49);
    t53 = (t52 >> 3);
    t54 = (t53 & 1);
    *((unsigned int *)t50) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 >> 3);
    t57 = (t56 & 1);
    *((unsigned int *)t48) = t57;
    memset(t58, 0, 8);
    t59 = (t50 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t50);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t59) != 0)
        goto LAB68;

LAB69:    t67 = *((unsigned int *)t36);
    t68 = *((unsigned int *)t58);
    t69 = (t67 & t68);
    *((unsigned int *)t66) = t69;
    t70 = (t36 + 4);
    t71 = (t58 + 4);
    t72 = (t66 + 4);
    t73 = *((unsigned int *)t70);
    t74 = *((unsigned int *)t71);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB70;

LAB71:
LAB72:    goto LAB65;

LAB66:    *((unsigned int *)t58) = 1;
    goto LAB69;

LAB68:    t65 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB69;

LAB70:    t78 = *((unsigned int *)t66);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t66) = (t78 | t79);
    t80 = (t36 + 4);
    t81 = (t58 + 4);
    t82 = *((unsigned int *)t36);
    t83 = (~(t82));
    t84 = *((unsigned int *)t80);
    t85 = (~(t84));
    t86 = *((unsigned int *)t58);
    t87 = (~(t86));
    t88 = *((unsigned int *)t81);
    t89 = (~(t88));
    t6 = (t83 & t85);
    t9 = (t87 & t89);
    t90 = (~(t6));
    t91 = (~(t9));
    t92 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t92 & t90);
    t93 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t93 & t91);
    t94 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t94 & t90);
    t95 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t95 & t91);
    goto LAB72;

LAB73:    *((unsigned int *)t13) = 1;
    goto LAB76;

LAB75:    t102 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB76;

LAB77:    t107 = ((char*)((ng17)));
    goto LAB78;

LAB79:    t112 = ((char*)((ng18)));
    goto LAB80;

LAB81:    xsi_vlog_unsigned_bit_combine(t12, 32, t107, 32, t112, 32);
    goto LAB85;

LAB83:    memcpy(t12, t107, 8);
    goto LAB85;

LAB86:    *((unsigned int *)t14) = 1;
    goto LAB89;

LAB91:    t30 = *((unsigned int *)t14);
    t31 = *((unsigned int *)t27);
    *((unsigned int *)t14) = (t30 | t31);
    t32 = *((unsigned int *)t11);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t11) = (t32 | t33);
    goto LAB90;

LAB92:    *((unsigned int *)t36) = 1;
    goto LAB95;

LAB94:    t43 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB95;

LAB96:    t48 = (t0 + 1208U);
    t49 = *((char **)t48);
    memset(t50, 0, 8);
    t48 = (t50 + 4);
    t51 = (t49 + 4);
    t52 = *((unsigned int *)t49);
    t53 = (t52 >> 3);
    t54 = (t53 & 1);
    *((unsigned int *)t50) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 >> 3);
    t57 = (t56 & 1);
    *((unsigned int *)t48) = t57;
    memset(t58, 0, 8);
    t59 = (t50 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t50);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t59) != 0)
        goto LAB101;

LAB102:    t67 = *((unsigned int *)t36);
    t68 = *((unsigned int *)t58);
    t69 = (t67 & t68);
    *((unsigned int *)t66) = t69;
    t70 = (t36 + 4);
    t71 = (t58 + 4);
    t72 = (t66 + 4);
    t73 = *((unsigned int *)t70);
    t74 = *((unsigned int *)t71);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB103;

LAB104:
LAB105:    goto LAB98;

LAB99:    *((unsigned int *)t58) = 1;
    goto LAB102;

LAB101:    t65 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB102;

LAB103:    t78 = *((unsigned int *)t66);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t66) = (t78 | t79);
    t80 = (t36 + 4);
    t81 = (t58 + 4);
    t82 = *((unsigned int *)t36);
    t83 = (~(t82));
    t84 = *((unsigned int *)t80);
    t85 = (~(t84));
    t86 = *((unsigned int *)t58);
    t87 = (~(t86));
    t88 = *((unsigned int *)t81);
    t89 = (~(t88));
    t6 = (t83 & t85);
    t9 = (t87 & t89);
    t90 = (~(t6));
    t91 = (~(t9));
    t92 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t92 & t90);
    t93 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t93 & t91);
    t94 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t94 & t90);
    t95 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t95 & t91);
    goto LAB105;

LAB106:    *((unsigned int *)t13) = 1;
    goto LAB109;

LAB108:    t102 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB109;

LAB110:    t107 = ((char*)((ng1)));
    goto LAB111;

LAB112:    t112 = ((char*)((ng8)));
    goto LAB113;

LAB114:    xsi_vlog_unsigned_bit_combine(t12, 2, t107, 2, t112, 2);
    goto LAB118;

LAB116:    memcpy(t12, t107, 8);
    goto LAB118;

LAB126:    *((unsigned int *)t13) = 1;
    goto LAB129;

LAB128:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB129;

LAB130:    t10 = ((char*)((ng1)));
    goto LAB131;

LAB132:    t11 = ((char*)((ng10)));
    goto LAB133;

LAB134:    xsi_vlog_unsigned_bit_combine(t12, 2, t10, 2, t11, 2);
    goto LAB138;

LAB136:    memcpy(t12, t10, 8);
    goto LAB138;

LAB140:    *((unsigned int *)t13) = 1;
    goto LAB143;

LAB142:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB143;

LAB144:    t10 = ((char*)((ng10)));
    goto LAB145;

LAB146:    t11 = ((char*)((ng1)));
    goto LAB147;

LAB148:    xsi_vlog_unsigned_bit_combine(t12, 2, t10, 2, t11, 2);
    goto LAB152;

LAB150:    memcpy(t12, t10, 8);
    goto LAB152;

}


extern void work_m_00000000003542674115_1859292485_init()
{
	static char *pe[] = {(void *)Always_47_0};
	xsi_register_didat("work_m_00000000003542674115_1859292485", "isim/R_I_J_CPU_T_isim_beh.exe.sim/work/m_00000000003542674115_1859292485.didat");
	xsi_register_executes(pe);
}
