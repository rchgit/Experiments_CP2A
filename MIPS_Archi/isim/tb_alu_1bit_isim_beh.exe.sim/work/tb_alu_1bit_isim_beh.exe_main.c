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
    work_m_00000000000076636854_3063441418_init();
    work_m_00000000002119584242_3190593924_init();
    work_m_00000000002127209534_2987726008_init();
    work_m_00000000002257324426_2190326824_init();
    work_m_00000000001304820376_1145789250_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001304820376_1145789250");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}