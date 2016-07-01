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
    unisims_ver_m_02760857255181855774_2593380106_init();
    unisims_ver_m_03665957290517102759_2282143210_init();
    unisims_ver_m_06158891332638045337_3897995058_init();
    unisims_ver_m_06158891332638045337_1625843133_init();
    unisims_ver_m_11740342327072834795_0225263307_init();
    unisims_ver_m_17544706326343019120_3745672393_init();
    work_m_16917222519474380773_3217360272_init();
    work_m_01366081892737401356_0532468105_init();
    work_m_01558109313150556764_1087167475_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_01558109313150556764_1087167475");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
