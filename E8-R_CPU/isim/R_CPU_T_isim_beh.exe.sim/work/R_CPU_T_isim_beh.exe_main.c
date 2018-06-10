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
    xilinxcorelib_ver_m_00000000001358910285_1420689212_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000002621774987_1250903104_init();
    xilinxcorelib_ver_m_00000000001603977570_1225830552_init();
    work_m_00000000000403262735_1948799799_init();
    work_m_00000000003944978334_1393068579_init();
    work_m_00000000001246569103_1859292485_init();
    work_m_00000000002174823188_0647223277_init();
    work_m_00000000002176972150_0886308060_init();
    work_m_00000000002336066869_3392915353_init();
    work_m_00000000002391009943_1664706852_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002391009943_1664706852");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
