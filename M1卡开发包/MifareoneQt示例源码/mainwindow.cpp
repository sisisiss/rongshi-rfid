#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "ourmifare.h"
//#include <QDebug>
#include <QMessageBox>

const unsigned char BLOCK0_EN = 0x01;
const unsigned char BLOCK1_EN = 0x02;
const unsigned char BLOCK2_EN = 0x04;
const unsigned char NEEDSERIAL = 0x08;
const unsigned char EXTERNKEY = 0x10;
const unsigned char NEEDHALT = 0x20;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);


}


MainWindow::~MainWindow()
{
    delete ui;

}

void MainWindow::on_pushButton_clicked()//让设备发出声响
{//网站:www.icmcu.com,张工QQ：344810310
    QString str;
    unsigned char status;//存放返回值

    status = pcdbeep(80);

    if(status == 0)
    {//成功

    }
    else if(status == 22)
    {
        QMessageBox::information(this, "提示", "错误代码：22，通讯异常,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 24)
    {
        QMessageBox::information(this, "提示", "错误代码：24，通讯超时,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 23)
    {
        QMessageBox::information(this, "提示", "请先连接USB IC卡读写器，如果已连接还出现此提示，请用超级模式启动程序或QT开发开台！！！");
    }
    else
    {
        QMessageBox::information(this, "提示", str.sprintf("错误代码：%d",status));
    }

    //qDebug() << status;
}

void MainWindow::on_pushButton_5_clicked()//读出设备全球唯一的设备编号，作为加密狗用
{//网站:www.icmcu.com,张工QQ：344810310
    QString str;
    unsigned char status;//存放返回值



    unsigned char devno[4];

    status = pcdgetdevicenumber(devno);

    if(status == 0)
    {//成功
        QMessageBox::information(this, "提示", str.sprintf("设备编号：%.2X-%.2X-%.2X-%.2X",devno[0],devno[1],devno[2],devno[3]));
    }
    else if(status == 22)
    {
        QMessageBox::information(this, "提示", "错误代码：22，通讯异常,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 24)
    {
        QMessageBox::information(this, "提示", "错误代码：24，通讯超时,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 23)
    {
        QMessageBox::information(this, "提示", "请先连接USB IC卡读写器，如果已连接还出现此提示，请用超级模式启动程序或QT开发开台！！！");
    }
    else
    {
        QMessageBox::information(this, "提示", str.sprintf("错误代码：%d",status));
    }

}

void MainWindow::on_pushButton_4_clicked()//轻松读卡
{//网站:www.icmcu.com,张工QQ：344810310
    QString str,str1;

    unsigned char status;//存放返回值
    unsigned char myctrlword;//控制字
    unsigned char mypiccserial[4];//卡序列号
    unsigned char myareano;//区号
    unsigned char authmode;//密码类型，用A密码或B密码
    unsigned char mypicckey[6];//密码
    unsigned char mypiccdata[48];//卡数据缓冲

    int i;

    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
    myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano = 8; //指定为第8区
    //批定密码模式
    authmode = 1; //大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] = 0xFF;
    mypicckey[1] = 0xFF;
    mypicckey[2] = 0xFF;
    mypicckey[3] = 0xFF;
    mypicckey[4] = 0xFF;
    mypicckey[5] = 0xFF;

    status = piccreadex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata);
    //在下面设定断点，然后查看mypiccserial、mypiccdata，
    //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
    //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
    //处理返回函数

    if(status == 0)
    {//成功

        unsigned int long_i;

        long_i = mypiccserial[3];

        long_i *= 256;
        long_i += mypiccserial[2];

        long_i *= 256;
        long_i += mypiccserial[1];

        long_i *= 256;
        long_i += mypiccserial[0];

        str1.sprintf("读卡成功，卡号[ %.10u",long_i);

        str = str1 + "]，扇区数据[";

        for(i = 0;i < 48;i++)
        {
            str+=str1.sprintf("%.2X",mypiccdata[i]);

        }
        str += "]";

        ui->textEdit->setText(str);

    }
    else if(status == 8)
    {
        QMessageBox::information(this, "提示", "请先把卡放在感应区......");
    }
    else if(status == 22)
    {
        QMessageBox::information(this, "提示", "错误代码：22，通讯异常,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 24)
    {
        QMessageBox::information(this, "提示", "错误代码：24，通讯超时,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 23)
    {
        QMessageBox::information(this, "提示", "请先连接USB IC卡读写器，如果已连接还出现此提示，请用超级模式启动程序或QT开发开台。");
    }
    else
    {
        QMessageBox::information(this, "提示", str.sprintf("错误代码：%d",status));
    }
}

void MainWindow::on_pushButton_3_clicked()//轻松写卡
{//网站:www.icmcu.com,张工QQ：344810310

    QString str,str1;

    unsigned char status;//存放返回值
    unsigned char myctrlword;//控制字
    unsigned char mypiccserial[4];//卡序列号
    unsigned char myareano;//区号
    unsigned char authmode;//密码类型，用A密码或B密码
    unsigned char mypicckey[6];//密码
    unsigned char mypiccdata[48];//卡数据缓冲

    int i;

    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
    myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano = 8; //指定为第8区
    //批定密码模式
    authmode = 1; //大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] = 0xFF;
    mypicckey[1] = 0xFF;
    mypicckey[2] = 0xFF;
    mypicckey[3] = 0xFF;
    mypicckey[4] = 0xFF;
    mypicckey[5] = 0xFF;

    for(i = 0;i < 48;i++)
    {
        mypiccdata[i] = i + 1;
    }

    status = piccwriteex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata);
    //在下面设定断点，然后查看mypiccserial、mypiccdata，
    //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
    //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
    //处理返回函数

    if(status == 0)
    {//成功

        unsigned int long_i;

        long_i = mypiccserial[3];

        long_i *= 256;
        long_i += mypiccserial[2];

        long_i *= 256;
        long_i += mypiccserial[1];

        long_i *= 256;
        long_i += mypiccserial[0];

        str1.sprintf("写卡成功，卡号[ %.10u",long_i);

        str = str1 + "]";

        ui->textEdit->setText(str);

    }
    else if(status == 8)
    {
        QMessageBox::information(this, "提示", "请先把卡放在感应区......");
    }
    else if(status == 22)
    {
        QMessageBox::information(this, "提示", "错误代码：22，通讯异常,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 24)
    {
        QMessageBox::information(this, "提示", "错误代码：24，通讯超时,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 23)
    {
        QMessageBox::information(this, "提示", "请先连接USB IC卡读写器，如果已连接还出现此提示，请用超级模式启动程序或QT开发开台。");
    }
    else
    {
        QMessageBox::information(this, "提示", str.sprintf("错误代码：%d",status));
    }

}

void MainWindow::on_pushButton_2_clicked()//改单区密码
{//网站:www.icmcu.com,张工QQ：344810310
    QString str,str1;

    unsigned char status;//存放返回值

    unsigned char myctrlword;//控制字
    unsigned char mypiccserial[4];//卡序列号
    unsigned char myareano;//区号
    unsigned char authmode;//密码类型，用A密码或B密码

    unsigned char myoldpicckey[6];//密码

    unsigned char mynewpicckeydata[17];//密码块信息17个字节


    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
    myctrlword = EXTERNKEY;

    //指定区号
    myareano = 8; //指定为第8区
    //批定密码模式
    authmode = 1; //大于0表示用A密码认证，推荐用A密码认证

    //旧密码
    myoldpicckey[0] = 0xFF;
    myoldpicckey[1] = 0xFF;
    myoldpicckey[2] = 0xFF;
    myoldpicckey[3] = 0xFF;
    myoldpicckey[4] = 0xFF;
    myoldpicckey[5] = 0xFF;

    //新密码数据
    //新A密码
    mynewpicckeydata[0] = 0xFF;
    mynewpicckeydata[1] = 0xFF;
    mynewpicckeydata[2] = 0xFF;
    mynewpicckeydata[3] = 0xFF;
    mynewpicckeydata[4] = 0xFF;
    mynewpicckeydata[5] = 0xFF;

    //访问位，不要轻易改，改错卡将做废  FF078069
    mynewpicckeydata[6] = 0xFF;
    mynewpicckeydata[7] = 0x07;
    mynewpicckeydata[8] = 0x80;
    mynewpicckeydata[9] = 0x69;

    //新B密码
    mynewpicckeydata[10] = 0x00;
    mynewpicckeydata[11] = 0x00;
    mynewpicckeydata[12] = 0x00;
    mynewpicckeydata[13] = 0x00;
    mynewpicckeydata[14] = 0x00;
    mynewpicckeydata[15] = 0x00;

    //选项
    mynewpicckeydata[16] = 0x00;//为0表示只改A官密码 为1表示改A密码同时也改B密码，为3表示改AB密码及访问位，警示：不要轻易改访问位


    status = piccchangesinglekeyex(myctrlword, mypiccserial, myareano, authmode, myoldpicckey, mynewpicckeydata);
    //在下面设定断点，然后查看mypiccserial、mypiccdata，
    //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
    //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
    //处理返回函数

    if(status == 0)
    {//成功

        unsigned int long_i;

        long_i = mypiccserial[3];

        long_i *= 256;
        long_i += mypiccserial[2];

        long_i *= 256;
        long_i += mypiccserial[1];

        long_i *= 256;
        long_i += mypiccserial[0];

        str1.sprintf("修改密码成功!卡号[ %.10u",long_i);

        str = str1 + "]";

        ui->textEdit->setText(str);

    }
    else if(status == 8)
    {
        QMessageBox::information(this, "提示", "请先把卡放在感应区......");
    }
    else if(status == 22)
    {
        QMessageBox::information(this, "提示", "错误代码：22，通讯异常,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 24)
    {
        QMessageBox::information(this, "提示", "错误代码：24，通讯超时,在linux虚拟机上调试时可能会出现这种提示。");
    }
    else if(status == 23)
    {
        QMessageBox::information(this, "提示", "请先连接USB IC卡读写器，如果已连接还出现此提示，请用超级模式启动程序或QT开发开台。");
    }
    else
    {
        QMessageBox::information(this, "提示", str.sprintf("错误代码：%d",status));
    }
}

void MainWindow::on_pushButton_6_clicked()
{
    close();
}
