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

    void on_pb_init_clicked();

    void on_pb_addfile_clicked();

    void on_pb_addeasyfile_clicked();

    void on_pb_changkey_clicked();

    void on_pb_read_clicked();

    void on_pb_write_clicked();

    void on_pb_easy_write_clicked();

    //void on_pushButton_clicked();

    void on_pb_clear_clicked();

    void on_pb_changecardkey_clicked();

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
