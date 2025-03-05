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
    work_m_00000000001944693945_0345418465_init();
    work_m_00000000000711263013_2039536153_init();
    work_m_00000000002775407860_1621229167_init();
    work_m_00000000002395630288_1785967555_init();
    work_m_00000000001863422768_1778936876_init();
    work_m_00000000003554151168_3685833879_init();
    work_m_00000000002467252577_1158921438_init();
    work_m_00000000003077154099_0103510313_init();
    work_m_00000000003413500810_3240934780_init();
    work_m_00000000003165695366_0886308060_init();
    work_m_00000000004182076471_1173193764_init();
    work_m_00000000003480900356_1746258098_init();
    work_m_00000000001063455430_4024466370_init();
    work_m_00000000001009185938_0077108627_init();
    work_m_00000000003404757195_0430450161_init();
    work_m_00000000002260385333_2321183677_init();
    work_m_00000000002365021028_2520395732_init();
    work_m_00000000002298759644_0993796712_init();
    work_m_00000000002318750978_3340807422_init();
    work_m_00000000000752554082_1292031434_init();
    work_m_00000000002236823428_3877310806_init();
    work_m_00000000001292392995_2126922064_init();


    xsi_register_tops("work_m_00000000001292392995_2126922064");


    return xsi_run_simulation(argc, argv);

}
