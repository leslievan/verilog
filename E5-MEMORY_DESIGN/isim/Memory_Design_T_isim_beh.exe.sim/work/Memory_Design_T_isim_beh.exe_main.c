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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001628221361_1311446194_init();
    work_m_00000000000008679847_2869370624_init();
    xilinxcorelib_ver_m_00000000001358910285_1420689212_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000000277421008_2343620650_init();
    xilinxcorelib_ver_m_00000000001603977570_1282505482_init();
    work_m_00000000000403262735_1948799799_init();
    work_m_00000000001870155105_0671448536_init();
    work_m_00000000002491289180_2696122838_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002491289180_2696122838");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
