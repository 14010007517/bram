
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <fcntl.h>
#include <ctype.h>
#include <termios.h>
#include <sys/types.h>
#include <sys/mman.h>

typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;

#define PAGE_SIZE       4096UL
#define PAGE_MASK       (PAGE_SIZE  - 1)

uint32_t ioregRead( uint32_t u32Addr )
{
    int fd;
    uint8_t *mbase;

    uint32_t regVal;

    uint32_t phyAddr_base;
    uint32_t phyAddr_offset;

    //phyAddr_base   = u32Addr&PAGE_MASK;
    phyAddr_base   = u32Addr & ~PAGE_MASK;
    phyAddr_offset = u32Addr - phyAddr_base;

    //printf( "addr:%X, base:%X, offset:%X \n", u32Addr, phyAddr_base, phyAddr_offset );

    fd = open("/dev/mem", O_RDWR | O_NDELAY);
    if(fd == -1)
    {
        perror("open /dev/mem error !!!!");
        exit(-1);
    }

    mbase = mmap(0,PAGE_SIZE,PROT_READ,MAP_SHARED,fd, phyAddr_base);
    if(mbase == MAP_FAILED)
    {
        printf("~~~mmap failed %s\n",strerror(errno));
        close(fd);
        return 0xFFFFFFFF;
    }
    //pData  = mbase + phyAddr_offset;
    regVal = *(volatile uint32_t *)(mbase + phyAddr_offset);
    printf("Value at address 0x%X (%p): 0x%X\n", u32Addr , mbase, regVal);
    fflush(stdout);

    close(fd);
    munmap(mbase,PAGE_SIZE);

    return regVal;
}

void ioregWrite(uint32_t u32Addr, uint32_t val)
{
    int fd;
    uint8_t *mbase;

    volatile uint32_t *pData;

    uint32_t regVal;
    uint32_t phyAddr_base;
    uint32_t phyAddr_offset;

    phyAddr_base   = u32Addr & ~PAGE_MASK;
    phyAddr_offset = u32Addr - phyAddr_base;

    //printf( "write addr:%X, base:%X, offset:%X \n", u32Addr, phyAddr_base, phyAddr_offset );

    fd = open("/dev/mem", O_RDWR | O_NDELAY);
    if(fd == -1)
    {
        perror("open /dev/mem error !!!!");
        exit(-1);
    }

    mbase = mmap( 0, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, phyAddr_base );
    if(mbase == MAP_FAILED)
    {
        printf("~~~mmap failed %s\n",strerror(errno));
        close(fd);
        return;
    }

    pData  = (uint32_t *)(mbase + phyAddr_offset);
    *pData = val;
    regVal = *(volatile uint32_t *)(mbase + phyAddr_offset);
    printf("Value at address 0x%X (%p): 0x%X\n", u32Addr , mbase, regVal);
    fflush(stdout);

    close(fd);
    munmap(mbase,PAGE_SIZE);
    //usleep(1000000);
}


int main(){

	int i;

	for (i = 0;i < 10;i++){

		ioregRead(0xb0000000+i*4);

		ioregWrite(0xa0000000+i*4,0x10000000+i);
	//	ioregWrite(0xa0000000+i*4,0x0);

	}



	return 0;
}
