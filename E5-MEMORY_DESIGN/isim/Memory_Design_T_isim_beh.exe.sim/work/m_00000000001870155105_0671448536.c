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
static const char *ng0 = "D:/workplace/verilog/E5-MEMORY_DESIGN/MEMORY_DESIGN.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {4294967295U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4042322160U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {2863311530U, 0U};



static void Always_54_0(char *t0)
{
    char t16[8];
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
    int t13;
    char *t14;
    char *t15;
    unsigned int t17;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(63, ng0);

LAB22:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB23:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 8);

LAB34:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);

LAB9:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 1208U);
    t12 = *((char **)t11);

LAB10:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t11, 2);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB21:    goto LAB8;

LAB11:    xsi_set_current_line(57, ng0);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 2568);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 32);
    goto LAB21;

LAB13:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB21;

LAB15:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB21;

LAB17:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB21;

LAB24:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t4 = (t16 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 255U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 255U);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 8);
    goto LAB34;

LAB26:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t4 = (t16 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 8);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 8);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 255U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 255U);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 8);
    goto LAB34;

LAB28:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t4 = (t16 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 16);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 16);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 255U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 255U);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 8);
    goto LAB34;

LAB30:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t4 = (t16 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 24);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 24);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 255U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 255U);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 8);
    goto LAB34;

}


extern void work_m_00000000001870155105_0671448536_init()
{
	static char *pe[] = {(void *)Always_54_0};
	xsi_register_didat("work_m_00000000001870155105_0671448536", "isim/Memory_Design_T_isim_beh.exe.sim/work/m_00000000001870155105_0671448536.didat");
	xsi_register_executes(pe);
}
