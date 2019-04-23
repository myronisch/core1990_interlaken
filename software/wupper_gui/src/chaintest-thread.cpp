#include "chaintest-thread.h"
#include <QDebug>
#include <QMutex>
#include <time.h>
#include <stdint.h>
#include "../../wupper_tools/wupper/Wupper.h"
#include "../../wupper_tools/wupper/WupperException.h"

bool connected = true;

extern double now(void);



ChaintestThread::ChaintestThread(QObject *parent, uint64_t vaddr1,uint64_t paddr1,uint64_t vaddr2,uint64_t paddr2) :
    QThread(parent)
{
    Stop = false;
    m_vaddr1 = vaddr1;
    m_paddr1 = paddr1;
    m_vaddr2 = vaddr2;
    m_paddr2 = paddr2;

}

ChaintestThread::~ChaintestThread()
{
    qDebug()<<"Deleted ChaintestThread";

}

int ChaintestThread::start_lfsr(void)
{
    // Start LFSR

    //wupper_dev_t wupper;
    if (!connected)
    return 1;

    wupper.cfg_set_option("APP_MUX",0);
    wupper.cfg_set_option("APP_ENABLE",1);

    int max_tlp_lfsr = wupper.dma_max_tlp_bytes();

    wupper.dma_to_host(0, m_paddr1, 64*1024, max_tlp_lfsr, 0);
    wupper.dma_wait(0);

    wupper.cfg_set_option("APP_ENABLE",0);
    wupper.dma_fifo_flush();
    return 0;
}


int ChaintestThread::start_loopback(void)
{
    //select app mux 1 for application in the firmware.
    int max_tlp_mul = wupper.dma_max_tlp_bytes();

    //printf("Reading data from buffer 1...\n");
    wupper.cfg_set_option("APP_MUX",1);
    wupper.cfg_set_option("APP_ENABLE",1);
    wupper.dma_to_host(0, m_paddr2, 64*1024, max_tlp_mul, 0);
    wupper.dma_from_host(1, m_paddr1, 64*1024, max_tlp_mul, 0);
    //wupper.dma_wait(0);
    wupper.dma_wait(1);
    wupper.dma_stop(0);

    wupper.cfg_set_option("APP_ENABLE",0);
    return 0;
}

double ChaintestThread::compare_buffers(void)
{
    //compare buffers

    uint64_t *memptr1;
    uint64_t *memptr2;
    memptr1 = (uint64_t*)m_vaddr1;
    memptr2 = (uint64_t*)m_vaddr2;
    int b;
    uint64_t num1, num2;

    int errors = 0;
    for(b=0; b<1024;b++)
    {
        num1 = *(memptr1++);
        num2 = *(memptr2++);
        if (num1 != num2)
        {
            printf("%i %lX != %lX\n", b, num1, num2);
            errors++;
        }
    }
    qDebug()<<"Errors" << (double)errors/(double)(1024);

    return ((double)errors/(1024));
}

// run() will be called when a thread starts
void ChaintestThread::run()
{

    qDebug()<<"Starting ChainTest thread";
    wupper.card_open(0);
    Stop =false;

    srand (time(NULL));
    uint64_t r0, r1, r2, r3;
    r0 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r1 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r2 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r3 = (uint64_t)rand()|((uint64_t)rand())<<32;

    //set seed
    //qDebug() << "Writing seed to application register...";
    wupper.cfg_set_option("LFSR_SEED_0",r0);
    wupper.cfg_set_option("LFSR_SEED_1",r1);
    wupper.cfg_set_option("LFSR_SEED_2",r2);
    wupper.cfg_set_option("LFSR_SEED_3",r3);

    // reset LFSR with seed value
    wupper.cfg_set_option("LFSR_LOAD_SEED",1);

    int cycle = 0;
    double timedelta = 2;
    double t0 = now();
    double errors=0;
    double total;
    while(true)
    {
        start_lfsr();
        start_loopback();
        errors += compare_buffers();
        total += 1;
        double t1 = now();
        if(t1-t0 > timedelta)
        {
            t0 = t1;
            emit chaintestData(errors/total, cycle++);
            errors = 0;
            total = 0;
        }
        if(Stop)break;
    }
    wupper.card_close();
    emit chaintestCompleted();
}


