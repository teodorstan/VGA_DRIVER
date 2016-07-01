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
    unisims_ver_m_06122288325972994103_0272001084_init();
    unisims_ver_m_01125403920832684742_1789846214_init();
    unisims_ver_m_01125403920832684742_3402358485_init();
    unisims_ver_m_01125403920832684742_1918347995_init();
    unisims_ver_m_01125403920832684742_3778283450_init();
    unisims_ver_m_01125403920832684742_0811211428_init();
    unisims_ver_m_01125403920832684742_3917326860_init();
    unisims_ver_m_01125403920832684742_2687523668_init();
    unisims_ver_m_03463500734955659081_2546249692_init();
    unisims_ver_m_03463500734955659081_3827179099_init();
    unisims_ver_m_03463500734955659081_2342328481_init();
    unisims_ver_m_03463500734955659081_1961310408_init();
    unisims_ver_m_03463500734955659081_2484193533_init();
    unisims_ver_m_03463500734955659081_2862909036_init();
    unisims_ver_m_03463500734955659081_1343423062_init();
    unisims_ver_m_03463500734955659081_0581945524_init();
    unisims_ver_m_03463500734955659081_3438474089_init();
    unisims_ver_m_13113255489552040034_2692794932_init();
    unisims_ver_m_00008807476459290298_0257217429_init();
    unisims_ver_m_00008807476459290298_3668270966_init();
    unisims_ver_m_08233339944903010392_3841093685_init();
    unisims_ver_m_16269261957556079018_3852734344_init();
    unisims_ver_m_16269261957556079018_0372621018_init();
    unisims_ver_m_06313320939402315622_1593237687_init();
    work_m_07553145721209191587_2796325778_init();
    work_m_14769971564915411241_3995525017_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_14769971564915411241_3995525017");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
