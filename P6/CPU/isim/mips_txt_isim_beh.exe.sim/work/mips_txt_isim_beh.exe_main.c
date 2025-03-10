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
    work_m_00000000001113723978_4144471541_init();
    work_m_00000000000809892746_3645764524_init();
    work_m_00000000002505881817_1733832700_init();
    work_m_00000000001943509475_1307194410_init();
    work_m_00000000003834040545_0345418465_init();
    work_m_00000000000711263013_2039536153_init();
    work_m_00000000002775407860_1621229167_init();
    work_m_00000000002395630288_1785967555_init();
    work_m_00000000001863422768_1778936876_init();
    work_m_00000000003898652901_3685833879_init();
    work_m_00000000000553053290_1158921438_init();
    work_m_00000000002265941663_0103510313_init();
    work_m_00000000003413500810_3240934780_init();
    work_m_00000000003165695366_0886308060_init();
    work_m_00000000004182076471_1173193764_init();
    work_m_00000000001673356228_1746258098_init();
    work_m_00000000003035912378_4024466370_init();
    work_m_00000000001009185938_0077108627_init();
    work_m_00000000003404757195_0430450161_init();
    work_m_00000000001807891157_2321183677_init();
    work_m_00000000002197650664_2520395732_init();
    work_m_00000000002298759644_0993796712_init();
    work_m_00000000003704720432_3340807422_init();
    work_m_00000000001292031516_1292031434_init();
    work_m_00000000002236823428_3877310806_init();
    work_m_00000000001292392995_1131260308_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001292392995_1131260308");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
