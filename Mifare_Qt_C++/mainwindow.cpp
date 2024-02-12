#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDebug>
#include "QLibrary"
#include "QMessageBox"

#define BLOCK0_EN   0x01   //读写块0
#define BLOCK1_EN   0x02   //读写块1
#define BLOCK2_EN   0x04   //读写块2
#define NEEDSERIAL  0x08   //写指定序列号的卡
#define EXTERNKEY   0x10   //需要每次指定密码
#define NEEDHALT    0x20   //写卡后是否休眠卡


//让读写器发出声音
typedef  unsigned char (*pcdbeep)(unsigned long xms);
#ifdef Q_OS_WIN
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("OUR_MIFARE.dll").resolve("pcdbeep");
#else
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("./libOURIDR.so").resolve("pcdbeep");
#endif

//返回本读写器独一无二的设备编号
typedef  unsigned char (*pcdgetdevicenumber)(unsigned long devicenumber);
#ifdef Q_OS_WIN
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("OUR_MIFARE.dll").resolve("pcdgetdevicenumber");
#else
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("./libOURIDR.so").resolve("pcdgetdevicenumber");
#endif

//轻松读卡
typedef unsigned char (*piccreadex)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
#ifdef Q_OS_WIN
    piccreadex mypiccreadex = (piccreadex)QLibrary("OUR_MIFARE.dll").resolve("piccreadex");
#else
    piccreadex mypiccreadex = (piccreadex)QLibrary("./libOURIDR.so").resolve("piccreadex");
#endif

//轻松写卡
typedef unsigned char (*piccwriteex)(unsigned char ctrlword,unsigned char *serial,unsigned char area, unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
#ifdef Q_OS_WIN
    piccwriteex mypiccwriteex = (piccwriteex)QLibrary("OUR_MIFARE.dll").resolve("piccwriteex");
#else
    piccwriteex mypiccwriteex = (piccwriteex)QLibrary("./libOURIDR.so").resolve("piccwriteex");
#endif

//改单区密码
typedef unsigned char (*piccchangesinglekeyex)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccdata);
#ifdef Q_OS_WIN
    piccchangesinglekeyex mypiccchangesinglekeyex = (piccchangesinglekeyex)QLibrary("OUR_MIFARE.dll").resolve("piccchangesinglekeyex");
#else
    piccchangesinglekeyex mypiccchangesinglekeyex = (piccchangesinglekeyex)QLibrary("./libOURIDR.so").resolve("piccchangesinglekeyex");
#endif

//读出一块的数据，也就是16个字节
typedef unsigned char (*piccread)(unsigned char block,unsigned char *piccdata);
#ifdef Q_OS_WIN
    piccread mypiccread = (piccread)QLibrary("OUR_MIFARE.dll").resolve("piccread");
#else
    piccread mypiccread = (piccread)QLibrary("./libOURIDR.so").resolve("piccread");
#endif


//检测输入数据是否为16进制数
static bool checkinput(QString inputstr){
    QString inputyes="0123456789abcdefABCDEF";
    for(int i=0;i<inputstr.length();i++){
        if(inputyes.contains(inputstr.mid(i,1),Qt::CaseSensitive)){
        }else{return false;}
    }
    return true;
}

//检测动态库文件是否在运行目录内
static bool checkdllos(){
#ifdef Q_OS_WIN
    QLibrary mylib("OUR_MIFARE.dll");
    if (!mylib.load()){                //判断windows系统下，OUR_MIFARE.dll是否在运行目录内
        QMessageBox::information(NULL, "提示", "请将OUR_MIFARE.dll文件拷贝到生成exe文件相同目录下！");
        return false;
    }else{return true;}
#else
    QLibrary mylib("./libOURIDR.so");
    if (!mylib.load()){                //判断linux系统下，libOURIDR.so是否正运行目录内
        QMessageBox::information(NULL, "提示", "请将libOURIDR.so文件拷贝到生成的运行文件相同目录下！");
        return false;
    }else{return true;}
#endif
}


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->comboBox_2->setCurrentIndex(1);    
}


MainWindow::~MainWindow()
{
    delete ui;
}

//显示返回的错误代码信息
static void disperrinf(unsigned char result){
    switch (result) {
    case 1:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，0~2块都没读出来，可能刷卡太块。但卡序列号已被读出来！");
        break;
    case 2:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，第0块已被读出，但1~2块读取失败。卡序列号已被读出来！");
        break;
    case 3:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，第0、1块已被读出，但2块读取失败。卡序列号已被读出来！");
        break;
    case 8:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，未寻到卡，请重新拿开卡后再放到感应区！");
        break;
    case 9:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，有多张卡在感应区，寻卡过程中防冲突失败，读序列吗错误！");
        break;
    case 10:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，该卡可能已被休眠，无法选中卡片！");
        break;
    case 11:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，密码装载失败！");
        break;
    case 12:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，卡片密码认证失败！");
        break;
    case 13:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，读指定块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！");
        break;
    case 14:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，写指定块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！");
        break;
    case 18:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，写UID失败，此卡可能不是UID卡！");
        break;
    case 22:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，动态库或驱动程序异常！");
        break;
    case 23:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，驱动程序错误或发卡器尚未安装！");
        break;
    case 24:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，操作超时，一般是动态库没有反应！");
        break;
    case 25:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，发送字数不够！");
        break;
    case 26:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，驱动程序错误或发卡器尚未安装！");
        break;
    case 27:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，操作超时，一般是动态库没有反应！");
        break;
    case 28:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，发送字数不够！");
        break;
    default:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，未知的错误信息！");
        break;
    }
}


void MainWindow::on_pushButton_4_clicked()//让设备发出声响
{
    if(!checkdllos()){return;}

    unsigned char status;
    status = mypcdbeep(30);
    if(status==0){
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pushButton_3_clicked()//轻松读卡
{
    if(!checkdllos()){return;}

    unsigned char ctrlword;         //控制字
    unsigned char serial[4];        //可写数组，存放4字节卡UID
    unsigned char area;             //读出的区号
    unsigned char keyA1B0;          //AB密码认证
    unsigned char picckey[6];       //存放卡密码的数组
    unsigned char piccdata0_2[48];  //下标0~15存放作为读出的块0的数据，下标16~31存放作为读出的块1的数据，下标32~47存放作为读出的块2的数据
    unsigned char status;           //返回
    unsigned char piccdata[16];     //卡数据缓冲

    //以下控制字含义：读块0、块1、块2，仅读指定序列号的卡，需要每次指定密码
    if (ui->radioButton->isChecked()){
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;  //外部密码
    }else{
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN;  //内部密码
    }
    area = ui->comboBox->currentIndex();           //操作扇区号
    keyA1B0 = ui->comboBox_2->currentIndex();      //密码认证类型，;大于0用A密码 ，等于0用B密码

    QString Key_str = ui->lineEdit->text().trimmed();
    if(Key_str.length()==12 and checkinput(Key_str)){
        for(int i=0;i<6;i++){
            bool ok;
            picckey[i]=QString(Key_str.mid(i*2,2)).toInt(&ok,16);
        }
        status = mypiccreadex(ctrlword,serial,area,keyA1B0,picckey,piccdata0_2);    //读取选定扇区的0、1、2块
        if(status == 0){
            QString blockdata="";
            for(int i=0;i<16;i++){
                blockdata=blockdata+QString::asprintf("%02X ", piccdata0_2[i]);
            }
            ui->lineEdit_2->setText(blockdata);
            blockdata="";
            for(int i=16;i<32;i++){
                blockdata=blockdata+QString::asprintf("%02X ", piccdata0_2[i]);
            }
            ui->lineEdit_3->setText(blockdata);
            blockdata="";
            for(int i=32;i<48;i++){
                blockdata=blockdata+QString::asprintf("%02X ", piccdata0_2[i]);
            }
            ui->lineEdit_4->setText(blockdata);

            status = mypiccread(area * 4 + 3,piccdata);   //读取选定扇区的第3块 A密码、控制位、B密码，无法读取的信息返回 00
            if(status == 0){
                blockdata="";
                for(int i=0;i<16;i++){
                    blockdata=blockdata+QString::asprintf("%02X ", piccdata[i]);
                }
                ui->lineEdit_5->setText(blockdata);
                mypcdbeep(30);
            }else{
                ui->lineEdit_5->clear();
                disperrinf(status);
            }

        }else{
            ui->lineEdit_2->clear();
            ui->lineEdit_3->clear();
            ui->lineEdit_4->clear();
            ui->lineEdit_5->clear();
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示","请输入12位16进制卡片认证密码！");
    }
}


void MainWindow::on_pushButton_12_clicked()//轻松写卡
{
    if(!checkdllos()){return;}

    unsigned char ctrlword;        //控制字
    unsigned char serial[4];       //可写数组
    unsigned char area;            //操作扇区区号
    unsigned char keyA1B0;         //AB密码认证
    unsigned char picckey[6];      //存放卡密码的数组
    unsigned char piccdata0_2[48]; //下标0~15存放作为读出的块0的数据，下标16~31存放作为读出的块1的数据，下标32~47存放作为读出的块2的数据
    unsigned char status;          //返回
    char s;

    //以下控制字含义：读块0、块1、块2，仅读指定序列号的卡，需要每次指定密码
    if (ui->radioButton->isChecked()){
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;  //外部密码
    }else{
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN;  //内部密码
    }
    area = ui->comboBox->currentIndex();           //操作扇区号
    keyA1B0 = ui->comboBox_2->currentIndex();      //密码认证类型，;大于0用A密码 ，等于0用B密码

    QString Key_str = ui->lineEdit->text().trimmed();
    if(Key_str.length()==12 and checkinput(Key_str)){
        for(int i=0;i<6;i++){
            bool ok;
            picckey[i]=QString(Key_str.mid(i*2,2)).toInt(&ok,16);
        }
    }else{
        QMessageBox::critical(NULL, "提示","请输入12位16进制卡片认证密码！");
        return;
    }

    //检测写卡数据
    QChar ch;
    QString writinf = ui->lineEdit_2->text().trimmed()+ui->lineEdit_3->text().trimmed()+ui->lineEdit_4->text().trimmed();
    QString writinf1 = "";
    int m = 0;
    int n = 0;

    ch = writinf.at(0);
    s = writinf.at(0).toLatin1();
    for(int i=0; i<writinf.length() ; i++)
    {
        ch = writinf.at(i);
        s = writinf.at(i).toLatin1();
        if((('0' <= s) && (s <= '9')) || (('A' <= s) && (s <= 'F')) || (('a' <= s) && (s <= 'f')))
        {
            writinf1 += ch;
            n++;
            if(n==2){
                bool ok;
                piccdata0_2[m++] = writinf1.toInt(&ok,16);
                writinf1 = "";
                n = 0;
                if(m>=48){
                    break;
                }
            }
        }
        else if(s == ' '){

        }
        else
        {
            if(m>=0 && m<16){
                QMessageBox::critical(NULL, "提示", "第0块写卡数据错误，请输入正确的16进制数据！");
                ui->lineEdit_2->setSelection(m%16*3,2);
                ui->lineEdit_2->setFocus();
            }else if(m>=16 && m<32){
                QMessageBox::critical(NULL, "提示", "第1块写卡数据错误，请输入正确的16进制数据！");
                ui->lineEdit_3->setSelection(m%16*3,2);
                ui->lineEdit_3->setFocus();
            }else if(m>=32 && m<48){
                QMessageBox::critical(NULL, "提示", "第2块写卡数据错误，请输入正确的16进制数据！");
                ui->lineEdit_4->setSelection(m%16*3,2);
                ui->lineEdit_4->setFocus();
            }
            return;
        }
    }

    status = mypiccwriteex(ctrlword,serial,area,keyA1B0,picckey,piccdata0_2);
    if(status == 0)
    {
        mypcdbeep(30);
        QMessageBox::information(NULL, "提示", "写卡成功！");
    }else{
        disperrinf(status);
    }
}

//改AB密码及控制字
void MainWindow::on_pushButton_14_clicked()
{
    if(!checkdllos()){return;}

    unsigned char ctrlword;     //控制字
    unsigned char serial[4];    //可写数组
    unsigned char area;         //操作扇区号
    unsigned char keyA1B0;      //AB密码认证方式
    unsigned char piccoldkey[6];//存放卡原始密码的数组
    unsigned char piccdata[17]; //存放卡新A密码(也就是准备改成的密码)、密码权限访问字、新B密码的数组、指定更改项目的标志
    unsigned char status;       //返回

    //以下控制字含义：读块0、块1、块2，仅读指定序列号的卡，需要每次指定密码
    if (ui->radioButton->isChecked()){
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;  //外部密码
    }else{
        ctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN;  //内部密码
    }
    area = ui->comboBox->currentIndex();               //操作扇区号
    keyA1B0 = ui->comboBox_2->currentIndex();          //密码认证类型，;大于0用A密码 ，等于0用B密码

    QString Key_str = ui->lineEdit->text().trimmed();
    if(Key_str.length()==12 and checkinput(Key_str)){
        for(int i=0;i<6;i++){
            bool ok;
            piccoldkey[i]=QString(Key_str.mid(i*2,2)).toInt(&ok,16);
        }
    }else{
        QMessageBox::critical(NULL, "提示","请输入12位16进制卡片认证密码！");
        return;
    }

    QChar ch;
    QString writinf = ui->lineEdit_5->text().trimmed();
    QString writinf4 = "";
    int m = 0;
    int n = 0;
    char s;
    for(int i=0; i<writinf.length() ; i++)
    {
        ch = writinf.at(i);
        s = writinf.at(i).toLatin1();
        if((('0' <= s) && (s <= '9')) || (('A' <= s) && (s <= 'F')) || (('a' <= s) && (s <= 'f')))
        {
            writinf4 += ch;
            n++;
            if(n==2){
                bool ok;
                piccdata[m++] = writinf4.toInt(&ok,16);
                writinf4 = "";
                n = 0;
                if(m>=16){
                    break;
                }
            }
        }
        else if(s == ' ') {

        }
        else
        {
            QMessageBox::critical(NULL, "提示", "新A、B密码及控制位输入错误，请输入正确的16进制数据！");
            ui->lineEdit_5->setSelection(i,1);
            ui->lineEdit_5->setFocus();
            return;
        }
    }

    if(m<16)
    {
        QMessageBox::critical(NULL, "提示", "新A、B密码及控制位输入错误，请输入正确的16进制数据！");
        ui->lineEdit_5->setFocus();
        return;
    }

    piccdata[16]=0x03;   //取值0表示只改A密码，2表示改A、B密码，3表示修改A、B及控制位

    int answ=QMessageBox::question (this, "警告", "你确定修改密码控制块的数据吗 ？此数据块如果改写错误，数据卡将会被限制！", QMessageBox::Ok, QMessageBox::Cancel);
    if (answ ==1024){
        status = mypiccchangesinglekeyex(ctrlword,serial,area,keyA1B0,piccoldkey,piccdata);
        if(status == 0){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "操作成功，写卡数据有效！");
        }else {
            disperrinf(status);
        }
    }
}





