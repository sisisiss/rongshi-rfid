#include "mainwindow.h"
#include <QApplication>
#include <QDesktopWidget>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QDesktopWidget * desktop=qApp->desktop();

    MainWindow w;
    w.move(desktop->width()/2 - w.width()/2, desktop->height()/2 - w.height()/2);//w.move(left, top)
    w.show();

    return a.exec();
}
