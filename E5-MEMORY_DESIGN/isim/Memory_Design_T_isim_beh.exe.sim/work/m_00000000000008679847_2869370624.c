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
static const char *ng0 = "D:/workplace/verilog/E5-MEMORY_DESIGN/DEBOUNCE.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};



static void Always_39_0(char *t0)
{
    char t9[8];
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3984);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 2744);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2024U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t3 + 4);
    t13 = *((unsigned int *)t2);
    t14 = (~(t13));
    t15 = *((unsigned int *)t3);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB106;

LAB107:    if (*((unsigned int *)t2) != 0)
        goto LAB108;

LAB109:    t5 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t5);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB110;

LAB111:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB112;

LAB113:    if (*((unsigned int *)t5) > 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t10) > 0)
        goto LAB116;

LAB117:    memcpy(t9, t11, 8);

LAB118:    t12 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t12, t9, 0, 0, 3, 0LL);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(41, ng0);

LAB22:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 2024U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t11) != 0)
        goto LAB25;

LAB26:    t19 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB27;

LAB28:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t19) > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t10) > 0)
        goto LAB33;

LAB34:    memcpy(t9, t28, 8);

LAB35:    t29 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t29, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB9:    xsi_set_current_line(45, ng0);

LAB36:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2024U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t3) != 0)
        goto LAB39;

LAB40:    t7 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB41;

LAB42:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t7) > 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t10) > 0)
        goto LAB47;

LAB48:    memcpy(t9, t12, 8);

LAB49:    t18 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2024U);
    t3 = *((char **)t2);
    t2 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(49, ng0);

LAB50:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2024U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t3) != 0)
        goto LAB53;

LAB54:    t7 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB55;

LAB56:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t7) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t10) > 0)
        goto LAB61;

LAB62:    memcpy(t9, t12, 8);

LAB63:    t18 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(53, ng0);

LAB64:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 2024U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t3) != 0)
        goto LAB67;

LAB68:    t7 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB69;

LAB70:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t7) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t10) > 0)
        goto LAB75;

LAB76:    memcpy(t9, t12, 8);

LAB77:    t18 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(57, ng0);

LAB78:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 2024U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t3) != 0)
        goto LAB81;

LAB82:    t7 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB83;

LAB84:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t7) > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t10) > 0)
        goto LAB89;

LAB90:    memcpy(t9, t12, 8);

LAB91:    t18 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2024U);
    t3 = *((char **)t2);
    t2 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(61, ng0);

LAB92:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 2024U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t3) != 0)
        goto LAB95;

LAB96:    t7 = (t10 + 4);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB97;

LAB98:    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t7) > 0)
        goto LAB101;

LAB102:    if (*((unsigned int *)t10) > 0)
        goto LAB103;

LAB104:    memcpy(t9, t12, 8);

LAB105:    t18 = (t0 + 2744);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2584);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB23:    *((unsigned int *)t10) = 1;
    goto LAB26;

LAB25:    t18 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB26;

LAB27:    t23 = ((char*)((ng2)));
    goto LAB28;

LAB29:    t28 = ((char*)((ng1)));
    goto LAB30;

LAB31:    xsi_vlog_unsigned_bit_combine(t9, 3, t23, 3, t28, 3);
    goto LAB35;

LAB33:    memcpy(t9, t23, 8);
    goto LAB35;

LAB37:    *((unsigned int *)t10) = 1;
    goto LAB40;

LAB39:    t5 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB40;

LAB41:    t11 = ((char*)((ng3)));
    goto LAB42;

LAB43:    t12 = ((char*)((ng4)));
    goto LAB44;

LAB45:    xsi_vlog_unsigned_bit_combine(t9, 3, t11, 3, t12, 3);
    goto LAB49;

LAB47:    memcpy(t9, t11, 8);
    goto LAB49;

LAB51:    *((unsigned int *)t10) = 1;
    goto LAB54;

LAB53:    t5 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB54;

LAB55:    t11 = ((char*)((ng2)));
    goto LAB56;

LAB57:    t12 = ((char*)((ng1)));
    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t9, 3, t11, 3, t12, 3);
    goto LAB63;

LAB61:    memcpy(t9, t11, 8);
    goto LAB63;

LAB65:    *((unsigned int *)t10) = 1;
    goto LAB68;

LAB67:    t5 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB68;

LAB69:    t11 = ((char*)((ng3)));
    goto LAB70;

LAB71:    t12 = ((char*)((ng5)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t9, 3, t11, 3, t12, 3);
    goto LAB77;

LAB75:    memcpy(t9, t11, 8);
    goto LAB77;

LAB79:    *((unsigned int *)t10) = 1;
    goto LAB82;

LAB81:    t5 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB82;

LAB83:    t11 = ((char*)((ng6)));
    goto LAB84;

LAB85:    t12 = ((char*)((ng1)));
    goto LAB86;

LAB87:    xsi_vlog_unsigned_bit_combine(t9, 3, t11, 3, t12, 3);
    goto LAB91;

LAB89:    memcpy(t9, t11, 8);
    goto LAB91;

LAB93:    *((unsigned int *)t10) = 1;
    goto LAB96;

LAB95:    t5 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB96;

LAB97:    t11 = ((char*)((ng3)));
    goto LAB98;

LAB99:    t12 = ((char*)((ng5)));
    goto LAB100;

LAB101:    xsi_vlog_unsigned_bit_combine(t9, 3, t11, 3, t12, 3);
    goto LAB105;

LAB103:    memcpy(t9, t11, 8);
    goto LAB105;

LAB106:    *((unsigned int *)t10) = 1;
    goto LAB109;

LAB108:    t4 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB109;

LAB110:    t7 = ((char*)((ng3)));
    goto LAB111;

LAB112:    t11 = ((char*)((ng1)));
    goto LAB113;

LAB114:    xsi_vlog_unsigned_bit_combine(t9, 3, t7, 3, t11, 3);
    goto LAB118;

LAB116:    memcpy(t9, t7, 8);
    goto LAB118;

}


extern void work_m_00000000000008679847_2869370624_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000000008679847_2869370624", "isim/Memory_Design_T_isim_beh.exe.sim/work/m_00000000000008679847_2869370624.didat");
	xsi_register_executes(pe);
}
