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
    work_m_00000000000084754853_4144471541_init();
    work_m_00000000002034158331_3645764524_init();
    work_m_00000000004164269847_1733832700_init();
    work_m_00000000001432610816_1307194410_init();
    work_m_00000000000688201244_0345418465_init();
    work_m_00000000002464516654_2039536153_init();
    work_m_00000000002775407860_1621229167_init();
    work_m_00000000002395630288_1785967555_init();
    work_m_00000000001863422768_1778936876_init();
    work_m_00000000003554151168_3685833879_init();
    work_m_00000000001669106402_1158921438_init();
    work_m_00000000003530780395_0103510313_init();
    work_m_00000000002076567833_3240934780_init();
    work_m_00000000004019544855_0886308060_init();
    work_m_00000000002885909765_1173193764_init();
    work_m_00000000001106611086_1746258098_init();
    work_m_00000000003399542738_4024466370_init();
    work_m_00000000002549837865_0077108627_init();
    work_m_00000000003404757195_0430450161_init();
    work_m_00000000000915861272_0269190177_init();
    work_m_00000000004293555464_3975733304_init();
    work_m_00000000000252018553_2321183677_init();
    work_m_00000000004150346169_2520395732_init();
    work_m_00000000002298759644_0993796712_init();
    work_m_00000000002590885020_3340807422_init();
    work_m_00000000001231637279_1292031434_init();
    work_m_00000000002322541697_3508565487_init();
    work_m_00000000003929947501_0156190743_init();
    work_m_00000000000056312757_0053799672_init();
    work_m_00000000004197753684_3877310806_init();
    work_m_00000000000723919746_1131260308_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000723919746_1131260308");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
