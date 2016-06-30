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
    work_m_17180083899172789689_0883189854_init();
    work_m_01172449943735780511_1579609468_init();
    work_m_06743113703461198409_3199030888_init();
    work_m_06323039218398405831_0956604630_init();
    work_m_15487815271368861569_0853349353_init();
    work_m_02581702276611400789_1954471857_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_02581702276611400789_1954471857");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
