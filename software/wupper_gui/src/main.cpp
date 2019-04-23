#include "wupper_gui.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Wupper w;
    w.show();

    return a.exec();
}
