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
    work_m_00000000002629899848_3446455085_init();
    work_m_00000000000675587399_0258203161_init();
    work_m_00000000000225362034_2733840786_init();
    work_m_00000000002018077054_0121821997_init();
    work_m_00000000000124436811_3432709046_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000124436811_3432709046");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
