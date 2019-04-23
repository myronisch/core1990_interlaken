#ifndef CHAINTESTTHREAD
#define CHAINTESTTHREAD
#include <QThread>
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"
#include <stdint.h>

class ChaintestThread : public QThread
{
    Q_OBJECT
public:
    explicit ChaintestThread(QObject *parent ,uint64_t vaddr1,uint64_t paddr1,uint64_t vaddr2,uint64_t paddr2);
    ~ChaintestThread();
    void run();

    // if Stop = true, the thread will break
    // out of the loop, and will be disposed
    bool Stop;
    bool cmem_allocated;

signals:
    void chaintestCompleted(void);
    void  chaintestData(double, int);
    void consoleOutput(QString);

public slots:



private:
    int Errors;
    int Cycles;
    
    uint64_t m_vaddr1, m_paddr1, m_vaddr2, m_paddr2;
    double compare_buffers(void);
    int start_loopback(void);
    int start_lfsr(void);
    WupperCard wupper;

};


#endif // CHAINTESTTHREAD

