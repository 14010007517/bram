/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */


#include "xil_printf.h"

#include <stdio.h>
#include "platform.h"
#include "xil_io.h"   //这个头文件下面包含很重要的IO读写函数
#include "xparameters.h"  //这个头文件里把硬件的地址映射等参数都写成了宏定义方便使用

//void print(char *str);

int main()
{
       int num;
       int rev;
    init_platform();

    xil_printf("------The test is start...------\n\r");


    //XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR是axi_bram_ctrl_0的地址，Xil_Out32通过控制axi_bram_ctrl_0，向blk_mem_gen_0写数据
    for( num=0; num<15; num++ )
    {
       Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + num*4, 0x10000000+num);     //
    }


    //XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR是axi_bram_ctrl_1的地址，Xil_In32 通过控制axi_bram_ctrl_0，把blk_mem_gen_0里的数据读出来
    //PS和PL可以在blk_mem_gen_0里共享数据
   for( num=0; num<15; num++ )
       {
              rev = Xil_In32(XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR + num*4);
              xil_printf( "The data at %x is %x \n\r",XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR + num*4,rev);
       }

    xil_printf("------The test is end!------\n\r");

    cleanup_platform();
    return 0;
}
