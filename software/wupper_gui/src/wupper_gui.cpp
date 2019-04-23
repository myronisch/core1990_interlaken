#include "wupper_gui.h"
#include "ui_Wupper_gui.h"
#include <QDebug>
#include <QProcess>
#include <QStringList>
#include <QFile>
#include <QByteArrayMatcher>
#include <QScrollBar>
#include "../../wupper_tools/wupper/Wupper.h"
#include "../../wupper_tools/wupper/WupperException.h"
#include "throughput-thread.h"
#include "chaintest-thread.h"


Wupper::Wupper(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Wupper)
{
    bool cmem_allocated = true;
    uint64_t vaddr1, vaddr2, paddr1, paddr2;
    ui->setupUi(this);
    ui->lineEdit_4->setStyleSheet("QLineEdit{background:grey;}");
    connected = true;
    u_int ret;
    ret = CMEM_Open();
    int bsize = 1024*1024;
    if (!ret)
      ret = CMEM_SegmentAllocate(bsize, (char *)"Wupper-dma-transfer1", &buffer1);
    if (!ret)
      ret = CMEM_SegmentAllocate(bsize, (char *)"Wupper-dma-transfer2", &buffer2);

    if (!ret)
      ret = CMEM_SegmentPhysicalAddress(buffer1, &paddr1);

    if (!ret)
      ret = CMEM_SegmentVirtualAddress(buffer1, &vaddr1);

    if (!ret)
      ret = CMEM_SegmentPhysicalAddress(buffer2, &paddr2);

    if (!ret)
      ret = CMEM_SegmentVirtualAddress(buffer2, &vaddr2);
    printf("paddr1: %lX\npaddr2: %lX\nvaddr1: %lX\nvaddr2: %lX\n", paddr1, paddr2, vaddr1, vaddr2);
    if(ret!=0)
        cmem_allocated=false;
    
    wupper.card_open(0);
    
    averageSpeed = 0;
    
    tThread = new ThroughputThread(this, vaddr1, paddr1);
    cThread = new ChaintestThread(this, vaddr1, paddr1, vaddr2, paddr2);

    if(cmem_allocated){
        ui->measureThroughput->setEnabled(true);
        ui->startFullChain->setEnabled(true);
    }
    else
    {
        ui->measureThroughput->setEnabled(false);
        ui->startFullChain->setEnabled(false);
        console("Cmem not allocated. Close the window and restart the driver!");
    }

    // connect signal/slot
    connect(tThread, SIGNAL(throughputData(double, int, double)),
              this, SLOT(onThroughputData(double, int, double)));
    connect(tThread, SIGNAL(consoleOutput(QString)),
              this, SLOT(onConsoleOutput(QString)));

    connect(cThread, SIGNAL(chaintestData(double, int)),
              this, SLOT(onChaintestData(double, int)));
    connect(cThread, SIGNAL(consoleOutput(QString)),
              this, SLOT(onConsoleOutput(QString)));

    //set standard blocksize value
    tThread->setBlockSize(204800);

    //Init customplot

    plotX.resize(30);
    plotY.resize(30);

    plot2X.resize(30);
    plot2Y.resize(30);

    // add two new graphs and set their look:
    ui->customplot->addGraph();
    ui->customplot2->addGraph();
    ui->customplot->graph(0)->setPen(QPen(Qt::blue)); // line color blue for first graph
    ui->customplot2->graph(0)->setPen(QPen(Qt::red)); // line color blue for first graph
    ui->customplot->graph(0)->setBrush(QBrush(QColor(0, 0, 255, 20))); //graph will be filled with translucent blue
    //ui->customplot2->graph(0)->setBrush(QBrush(QColor(0, 243, 87, 102))); //graph will be filled with light red

    // set labels
    ui->customplot->xAxis2->setLabel("Time in seconds");
    ui->customplot->yAxis2->setLabel("DMA transfers in GigaB/s");

    ui->customplot2->xAxis2->setLabel("Full chain cyles");
    ui->customplot2->yAxis2->setLabel("Errors in %");

   ui->customplot->xAxis->setTickLabelType(QCPAxis::ltDateTime);
   ui->customplot->xAxis->setDateTimeFormat("hh:mm:ss");
   ui->customplot->xAxis->setAutoTickStep(false);
   ui->customplot->xAxis->setTickStep(10);

   ui->customplot2->xAxis->setAutoTickStep(false);
   ui->customplot2->xAxis->setTickStep(250);

    ui->customplot->yAxis2->setVisible(true);
    ui->customplot->yAxis2->setTickLabels(false);
    ui->customplot->xAxis2->setVisible(true);
    ui->customplot->xAxis2->setTickLabels(false);

    ui->customplot2->yAxis2->setVisible(true);
    ui->customplot2->yAxis2->setTickLabels(false);
    ui->customplot2->xAxis2->setVisible(true);
    ui->customplot2->xAxis2->setTickLabels(false);

    // make left and bottom axes always transfer their ranges to right and top axes:
    connect(ui->customplot->xAxis, SIGNAL(rangeChanged(QCPRange)), ui->customplot->xAxis2, SLOT(setRange(QCPRange)));
    connect(ui->customplot->yAxis, SIGNAL(rangeChanged(QCPRange)), ui->customplot->yAxis2, SLOT(setRange(QCPRange)));

    connect(ui->customplot2->xAxis, SIGNAL(rangeChanged(QCPRange)), ui->customplot2->xAxis2, SLOT(setRange(QCPRange)));
    connect(ui->customplot2->yAxis, SIGNAL(rangeChanged(QCPRange)), ui->customplot2->yAxis2, SLOT(setRange(QCPRange)));

    // Allow user to drag axis ranges with mouse, zoom with mouse wheel and select graphs by clicking:
    ui->customplot->setInteractions(QCP::iRangeDrag | QCP::iRangeZoom | QCP::iSelectPlottables);
    ui->customplot2->setInteractions(QCP::iRangeDrag | QCP::iRangeZoom | QCP::iSelectPlottables);
    // pass data points to graphs:

    double key = QDateTime::currentDateTime().toMSecsSinceEpoch()/1000.0;
    for (int i=0; i<30; ++i)
    {
     plotX[i] = key; //time in seconds
     plotY[i] = 0;              // exponential envelope
    }

    int tempcounter = 0;
    for (int i=0; i<30; ++i)
    {
     plot2X[i] = tempcounter++;
     plot2Y[i] = 0;              // exponential envelope
    }


    ui->customplot->graph(0)->setData(plotX, plotY);
    ui->customplot2->graph(0)->setData(plot2X, plot2Y);
    // let the ranges scale themselves so graph 0 fits perfectly in the visible area:
    ui->customplot->graph(0)->rescaleAxes();
    ui->customplot2->graph(0)->rescaleAxes();
    // same thing for graph 1, but only enlarge ranges (in case graph 1 is smaller than graph 0):


    // Note: we could have also just called ui->customplot->rescaleAxes(); instead



    ui->customplot->replot();
    ui->customplot2->replot();

}

Wupper::~Wupper()
{
    delete ui;
    qDebug()<<"Waiting for tThread to finish...";
    if (tThread->isRunning()  ){
        tThread->Stop = true;

        while(tThread->isRunning() );
    }
    qDebug()<<"Waiting for cThread to finish...";
    if (cThread->isRunning()  ){
        cThread->Stop = true;

        while(cThread->isRunning() );
    }
    qDebug()<<"All threads finished...";
    delete tThread;
    delete cThread;
    
    
    CMEM_SegmentFree(buffer1);
    CMEM_SegmentFree(buffer2);
    CMEM_Close();
    if (connected)
        wupper.card_close();
}

void Wupper::console(QString text){
    ui->textConsole->append(text);
    QScrollBar *sb = ui->textConsole->verticalScrollBar();
    sb->setValue(sb->maximum());
}

void Wupper::onConsoleOutput(QString text){
    console(text);
}

void Wupper:: onThroughputData(double data, int transfers, double temperature){

    //calculate average

    if (transfers ==0) averageSpeed = data;
    else averageSpeed= (data/(double)(transfers+1)) + averageSpeed / (((double)(transfers+1))/((double)transfers));
    ui->label_average->setText(QString::number(averageSpeed)+ " GiB/s");
    gbTransfered += data*2;
    ui->label_blockcycles->setText( QString::number(gbTransfered/1024)+ " TB");

    // print core temperature
    ui->label_temp->setText(QString::number(temperature));

    // set x-as with time
    double key = QDateTime::currentDateTime().toMSecsSinceEpoch()/1000.0;

    // pass data points to graphs:
    for (int i=0; i<29; ++i)
    {
      plotX[i] = plotX[i+1];

      plotY[i] = plotY[i+1];

    }
    plotY[29] = data;
    plotX[29] = key;

    ui->customplot->graph(0)->setData(plotX, plotY);

    // let the ranges scale themselves so graph 0 fits perfectly in the visible area:
    ui->customplot->graph(0)->rescaleAxes();

    ui->customplot->replot();
}

void Wupper::onChaintestData(double data, int cycles){

    console("Chain test Data value: "+ QString::number(data));
    for (int i=0; i<29; ++i)
    {
      plot2X[i] = plot2X[i+1];

      plot2Y[i] = plot2Y[i+1];

    }
    plot2Y[29] = data*100;
    plot2X[29] = cycles;

    ui->customplot2->graph(0)->setData(plot2X, plot2Y);

    // let the ranges scale themselves so graph 0 fits perfectly in the visible area:
    ui->customplot2->graph(0)->rescaleAxes();

    ui->customplot2->replot();

}

void Wupper::on_initWupper_clicked()
{
    qDebug()<<"Init Application!";
    QProcess bash;

    bash.start("bash", QStringList() <<"../init_app.sh");

    bash.waitForFinished();

    qDebug()<<"Output:";
    qDebug()<<bash.readAllStandardOutput();


    qDebug()<<"Errors:";
    qDebug()<<bash.readAllStandardError();

    bash.close();
}


void Wupper::on_getStatus_clicked()
{
    //tThread->Stop = true;

    if (connected){
        console("Get Wupper status");

        // get Card ID
        u_long card_id;
        int card_control;
        QString card;
        uint64_t card_DNA = wupper.cfg_get_option("FPGA_DNA");
        ui->lineEdit->setText(QString::asprintf("%lX", card_DNA));
        
        card_id = wupper.cfg_get_option("CARD_TYPE");
        if(card_id==0x2C6)
        {
            card ="HTG-710";
            card_control=1;
        }
        if(card_id==0x2C5)
        {
            card ="VC-709";
            card_control=1;
        }
        if(card_control==0)
        {
            printf("Card ID:         UNKNOWN\n");
        }
        else 
            card_id=-1;
        ui->lineEdit_2->setText(card);

        // Get FW version
        unsigned long date=0;

        unsigned int version_day=0;
        unsigned int version_month=0;
        unsigned int version_year=0;
        unsigned int version_hour=0;
        unsigned int version_minute=0;

        date = wupper.cfg_get_option("BOARD_ID_TIMESTAMP");
        //Not very elegant
        version_year=(date >> 32);
        version_month=(0x00FF)&(date >> 24);
        version_day=(0x0000FF)&(date >> 16);
        version_hour=(0x000000FF)&(date >> 8);
        version_minute=(0x00000000FF)&date;



        QString fw_vers ;
        fw_vers.sprintf("%02X/%02X/%02X %02X:%02X ", version_day, version_month, version_year, version_hour, version_minute);
        ui->lineEdit_3->setText(fw_vers);

        //Get PLL status
        u_long value;
        value = wupper.cfg_get_option("MMCM_MAIN_PLL_LOCK");
        if(value & 1){
            ui->lineEdit_4->setStyleSheet("QLineEdit{background:green;}");
         }else
            ui->lineEdit_4->setStyleSheet("QLineEdit{background:red;}");


        }
        else {

            console("no connection Wupper, re-init Wupper");
        }


    }

void Wupper::on_measureThroughput_toggled(bool checked)
{
    if(checked){
        ui->measureThroughput->setText("Stop measurement");
        //uncheck all buttons
        ui->getStatus->setEnabled(false);
        ui->initWupper->setEnabled(false);
        ui->setBlockSize->setEnabled(false);
        ui->startFullChain->setEnabled(false);

        // start measurement
        if(connected){
            console("Start measuring the throughput!");
            qDebug()<<"Start measuring the throughput!";
            tThread->Stop= false;
            tThread->start();
        }else console("no connection Wupper, re-init Wupper");

    }else{
        tThread->Stop= true;
        //restore all buttons
        ui->getStatus->setEnabled(true);
        ui->initWupper->setEnabled(true);
        ui->setBlockSize->setEnabled(true);
        ui->startFullChain->setEnabled(true);
        ui->measureThroughput->setText("Start measurement");
    }
}

void Wupper::on_setBlockSize_clicked()
{
    int size = ui->spinBox->value();
    size = tThread->setBlockSize(size);
    ui->spinBox->setValue(size);
}



void Wupper::on_startFullChain_toggled(bool checked)
{
    if (checked){
        ui->startFullChain->setText("Stop test");
        //uncheck all buttons
        ui->getStatus->setEnabled(false);
        ui->initWupper->setEnabled(false);
        ui->setBlockSize->setEnabled(false);
        ui->measureThroughput->setEnabled(false);
        if(connected){
            console("Starting the full chain test!");
            cThread->Stop= false;
            cThread->start();
            console("Started...");
        }else console("no connection Wupper, re-init Wupper");

     }else{
        cThread->Stop= true;
        console("Stopping chain test");
        //restore all buttons
        ui->getStatus->setEnabled(true);
        ui->initWupper->setEnabled(true);
        ui->setBlockSize->setEnabled(true);
        ui->measureThroughput->setEnabled(true);
        ui->startFullChain->setText("Start DMA read test");
    }

}

