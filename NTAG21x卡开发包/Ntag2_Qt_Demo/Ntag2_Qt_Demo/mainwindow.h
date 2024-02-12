#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_pb_beep_clicked();

    void on_pb_getdevnum_clicked();

    void on_pb_request_clicked();

    void on_pb_read4page_clicked();

    void on_pb_write1page_clicked();

    void on_pb_auth_clicked();

    void on_pb_getver_clicked();

    void on_pb_getsign_clicked();

    void on_pb_getcounter_clicked();

    void on_pb_staticlock_clicked();

    void on_pb_dynamiclock_clicked();

    void on_pb_init_clicked();

    void on_pb_easy_read_clicked();

    void on_pb_easy_write_clicked();

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
