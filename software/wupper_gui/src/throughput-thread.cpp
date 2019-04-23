#include "throughput-thread.h"
#include <QDebug>
#include <QMutex>
#include <time.h>
#include <stdint.h>
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"





ThroughputThread::ThroughputThread(QObject *parent, uint64_t vaddr, uint64_t paddr) :
    QThread(parent)
{
    m_paddr = paddr;
    m_vaddr = vaddr;
    emit consoleOutput(QString::asprintf("Physical addr: %lX, Virtual addr: %lX", m_paddr, m_vaddr));
    Stop = false;
    transfers= 0;
    BlockSize = 1024;
}

ThroughputThread::~ThroughputThread()
{
    qDebug()<<"Deleted ThrougputThread";
}

double now(void){
    struct timespec tp;
    clock_gettime(CLOCK_MONOTONIC, &tp);
    return tp.tv_sec + 1e-9*tp.tv_nsec;

}

int ThroughputThread::setBlockSize(int size){

    BlockSize = size;
    if(BlockSize <1 || BlockSize > 204800){
        BlockSize = 1024*200;
        emit consoleOutput("Block size incorrect: setting to optimum value "+ QString::number(BlockSize)+" kB.");
    }
    else
    {
        emit consoleOutput("Block size adjusted to "+ QString::number(BlockSize)+" kB.");
    }
    return BlockSize;
}



// run() will be called when a thread starts
void ThroughputThread::run()
{
    WupperCard wupper;
    wupper.card_open(0);
    emit consoleOutput("Starting ThroughPutThread");
    qDebug()<<"Starting ThroughPut Thread";
    Stop = false;
    //generate seed using rand()
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


    // start application to PC
    int max_tlp;
    max_tlp = wupper.dma_max_tlp_bytes();
    double timedelta = 2;
    double t0 = now();
    unsigned long long blocks_read = 0;

    //select app mux 0 for LFSR
    wupper.cfg_set_option("APP_MUX",0);
    wupper.cfg_set_option("APP_ENABLE",1);

    int i= 0;
    while(1)
    {
        if(Stop)break;
        wupper.dma_to_host(0, m_paddr, 1024*BlockSize, max_tlp, 0);
        wupper.dma_wait(0);
        blocks_read += BlockSize;
        double t1 = now();
        if(t1-t0 > timedelta)
        {
            double data =(double)blocks_read*1024/((t1-t0)*1024*1024*1024);
            blocks_read = 0;
            t0 = t1;
            i=0;
            // FPGA temp
            u_long core_temp;
            double temperature;
            core_temp = wupper.cfg_get_option("FPGA_CORE_TEMP");
            temperature = ((((double) core_temp)*(503.975))/4096) - 273.15;
            emit throughputData(data,transfers++, temperature);
        }
        i++;
    }
    wupper.cfg_set_option("APP_ENABLE",0);
    wupper.dma_fifo_flush();
    wupper.card_close();
    /*
    / emit the signal for the count label
    emit valueChanged(i++);
    if(i>Length)break;
    // slowdown the count change, msec
    this->msleep(500);

    */
    qDebug()<<"Throughput thread completed";
    emit throughputCompleted();
}
