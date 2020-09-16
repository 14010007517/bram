/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*======================================================================
  beeper driver APP .
  All right reserved.
======================================================================*/
#include <stdio.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <strings.h>
#include <signal.h>
#include <unistd.h>
#include <pthread.h>
#include <fcntl.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <ctype.h>
#include <termios.h>
#include <sys/mman.h>

#define UIO_NAME 	"/dev/uio1"
#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)
#define INT_REGISTER_ADDRESS 0x40000034

#define FATAL do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", \
  __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)

int fd;
int fd_dev;
void *virt_addr;

// 信号处理函数
void my_signal_fun(int signum)
{
    char buf[2] = "1";
    int count = 4;
    int on = 1;				// uio 使能命令
    void *map_base;
    off_t target;
    int k;
    unsigned long read_result;

    /* Map one page */
    target = 0x39100000;
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev, target & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

    virt_addr = map_base + (target & MAP_MASK);

    for (k=0;k<10;k++)
    {
    	read_result = *((volatile unsigned long *) (virt_addr + k*4));
    	printf("Read value from target 0x%lx is 0x%lx\n", (target+ k*4),read_result);
    	fflush(stdout);
    };
    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
////////////////////////////////////////////////////////////
    target = 0x40000038;
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev, target & ~MAP_MASK);
    virt_addr = map_base + (target & MAP_MASK);
    *((volatile unsigned long *) virt_addr) = 0;//读完数据后，向0x40000038写0
    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    ///////////////////////////////////////////////////////////////////////////////////
    write(fd, &on, count);	// 使能uio中断
}



int main(int argc, char *argv[])
{
    unsigned char key_val;
    int ret;
    int Oflags;
    int count = 4;
    void *map_base;
    off_t target;
    int k;
    unsigned long read_result;

    if((fd_dev = open("/dev/mem", O_RDWR | O_DSYNC)) == -1) FATAL;
    printf("/dev/mem opened.\n");
    fflush(stdout);

    /* Map one page */
/*
    target = 0x40000034;
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev, target & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

    virt_addr = map_base + (target & MAP_MASK);
    do {
	    read_result = *((volatile unsigned long *)virt_addr);
    } while (0 != read_result);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
*/
    target = 0xa0000000;
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev, target & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

    virt_addr = map_base + (target & MAP_MASK);
    for (k=0;k<10;k++)
    {
        *((volatile unsigned char *) (virt_addr + k * 4)) = k * 4;
    	read_result = *((volatile unsigned char *) (virt_addr + k*4));
    	printf("Write value to target 0x%lx is 0x%lx\n", (target + k*4),read_result);
    	fflush(stdout);
    };
    if(munmap(map_base, MAP_SIZE) == -1) FATAL;

    target = 0xb0000000;
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev, target & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

    virt_addr = map_base + (target & MAP_MASK);

    for (k=0;k<10;k++)
    {
    	read_result = *((volatile unsigned char *) (virt_addr + k*4));
    	printf("Read value from target 0x%lx is 0x%lx\n", (target + k*4),read_result);
    	fflush(stdout);
    };
    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
////////////////////////////////////////////////////////////
    close(fd_dev);

    return 0;
}
