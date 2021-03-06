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
    work_m_09027454709488853318_2344364332_init();
    work_m_18403000364724015277_0578652909_init();
    work_m_18403000364724015277_3518628839_init();
    work_m_06743113703461198409_3199030888_init();
    work_m_09027454709488853318_1621736756_init();
    work_m_18403000364724015277_1440962589_init();
    work_m_18403000364724015277_3001060819_init();
    work_m_18403000364724015277_2972559586_init();
    work_m_18403000364724015277_0561754514_init();
    work_m_18403000364724015277_0241733338_init();
    work_m_03479548580005829096_0853349353_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_03479548580005829096_0853349353");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
