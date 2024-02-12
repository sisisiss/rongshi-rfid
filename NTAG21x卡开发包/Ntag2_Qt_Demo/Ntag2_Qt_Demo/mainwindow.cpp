#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDebug>
#include "QLibrary"
#include "QMessageBox"

//本示例可在windows、linux系统内编译、运行
//判断windows、linux系统，声明动态库函数----------------------------------------------------------------------------------------------------------------------------------------------
//让读写器发出声音
typedef  unsigned char (*pcdbeep)(unsigned long xms);
#ifdef Q_OS_WIN
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("OUR_MIFARE.dll").resolve("pcdbeep");
#else
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("./libOURIDR.so").resolve("pcdbeep");
#endif

//返回本读写器独一无二的设备编号
typedef  unsigned char (*pcdgetdevicenumber)(unsigned char *devicenumber);
#ifdef Q_OS_WIN
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("OUR_MIFARE.dll").resolve("pcdgetdevicenumber");
#else
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("./libOURIDR.so").resolve("pcdgetdevicenumber");
#endif

//读取卡片的uid
typedef  unsigned char (*piccrequest_ul)(unsigned char *serial);
#ifdef Q_OS_WIN
    piccrequest_ul mypiccrequest_ul = (piccrequest_ul)QLibrary("OUR_MIFARE.dll").resolve("piccrequest_ul");
#else
    piccrequest_ul mypiccrequest_ul = (piccrequest_ul)QLibrary("./libOURIDR.so").resolve("piccrequest_ul");
#endif

//读取卡片4页数据
typedef  unsigned char (*piccread_ul)(unsigned char blockadd,unsigned char *piccdata);
#ifdef Q_OS_WIN
    piccread_ul mypiccread_ul = (piccread_ul)QLibrary("OUR_MIFARE.dll").resolve("piccread_ul");
#else
    piccread_ul mypiccread_ul = (piccread_ul)QLibrary("./libOURIDR.so").resolve("piccread_ul");
#endif

//写1页数据
typedef  unsigned char (*piccwrite_ul)(unsigned char blockadd,unsigned char *piccdata);
#ifdef Q_OS_WIN
    piccwrite_ul mypiccwrite_ul = (piccwrite_ul)QLibrary("OUR_MIFARE.dll").resolve("piccwrite_ul");
#else
    piccwrite_ul mypiccwrite_ul = (piccwrite_ul)QLibrary("./libOURIDR.so").resolve("piccwrite_ul");
#endif

//认证卡片密码
typedef  unsigned char (*piccauthkey_ntag)(unsigned char *picckey,unsigned char *piccntagpack);
#ifdef Q_OS_WIN
    piccauthkey_ntag mypiccauthkey_ntag = (piccauthkey_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccauthkey_ntag");
#else
    piccauthkey_ntag mypiccauthkey_ntag = (piccauthkey_ntag)QLibrary("./libOURIDR.so").resolve("piccauthkey_ntag");
#endif

//读取卡的版本号及型号
typedef  unsigned char (*piccgetversion_ntag)(unsigned char *mypiccversiondata);
#ifdef Q_OS_WIN
    piccgetversion_ntag mypiccgetversion_ntag = (piccgetversion_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccgetversion_ntag");
#else
    piccgetversion_ntag mypiccgetversion_ntag = (piccgetversion_ntag)QLibrary("./libOURIDR.so").resolve("piccgetversion_ntag");
#endif

//读取卡的签字信息
typedef  unsigned char (*piccreadsig_ntag)(unsigned char *piccsigdata);
#ifdef Q_OS_WIN
    piccreadsig_ntag mypiccreadsig_ntag = (piccreadsig_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccreadsig_ntag");
#else
    piccreadsig_ntag mypiccreadsig_ntag = (piccreadsig_ntag)QLibrary("./libOURIDR.so").resolve("piccreadsig_ntag");
#endif

//读取卡操作的单向计数器（卡操作流水号）
typedef  unsigned char (*piccreadcnt_ntag)(unsigned char *mypicccntdata);
#ifdef Q_OS_WIN
    piccreadcnt_ntag mypiccreadcnt_ntag = (piccreadcnt_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccreadcnt_ntag");
#else
    piccreadcnt_ntag mypiccreadcnt_ntag = (piccreadcnt_ntag)QLibrary("./libOURIDR.so").resolve("piccreadcnt_ntag");
#endif

//锁定页数据
typedef  unsigned char (*picclock_ntag)(unsigned char locktype,unsigned char *mypicclockdata);
#ifdef Q_OS_WIN
    picclock_ntag mypicclock_ntag = (picclock_ntag)QLibrary("OUR_MIFARE.dll").resolve("picclock_ntag");
#else
    picclock_ntag mypicclock_ntag = (picclock_ntag)QLibrary("./libOURIDR.so").resolve("picclock_ntag");
#endif

//初始化卡，开启读写卡密码保护功能
typedef  unsigned char (*piccinit_ntag)(unsigned char ctrlword,unsigned char *serial,unsigned char *pickey,unsigned char *configdata);
#ifdef Q_OS_WIN
    piccinit_ntag mypiccinit_ntag = (piccinit_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccinit_ntag");
#else
    piccinit_ntag mypiccinit_ntag = (piccinit_ntag)QLibrary("./libOURIDR.so").resolve("piccinit_ntag");
#endif

//轻松读卡
typedef  unsigned char (*piccreadex_ntag)(unsigned char ctrlword,unsigned char *serial,unsigned char *pickey,unsigned char blockadd,unsigned char blocksize,unsigned char *picdata);
#ifdef Q_OS_WIN
    piccreadex_ntag mypiccreadex_ntag = (piccreadex_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccreadex_ntag");
#else
    piccreadex_ntag mypiccreadex_ntag = (piccreadex_ntag)QLibrary("./libOURIDR.so").resolve("piccreadex_ntag");
#endif

//轻松写卡
typedef  unsigned char (*piccwriteex_ntag)(unsigned char ctrlword,unsigned char *serial,unsigned char *pickey,unsigned char blockadd,unsigned char blocksize,unsigned char *picdata);
#ifdef Q_OS_WIN
    piccwriteex_ntag mypiccwriteex_ntag = (piccwriteex_ntag)QLibrary("OUR_MIFARE.dll").resolve("piccwriteex_ntag");
#else
    piccwriteex_ntag mypiccwriteex_ntag = (piccwriteex_ntag)QLibrary("./libOURIDR.so").resolve("piccwriteex_ntag");
#endif


//检测输入数据是否为16进制数------------------------------------------------------------------------------------------------------------------------------------------------------------
static bool checkinput(QString inputstr){
    QString inputyes="0123456789abcdefABCDEF";
    for(int i=0;i<inputstr.length();i++){
        if(inputyes.contains(inputstr.mid(i,1),Qt::CaseSensitive)){
        }else{return false;}
    }
    return true;
}

//检测动态库文件是否在运行目录内----------------------------------------------------------------------------------------------------------------------------------------------------------
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

//显示返回的错误代码信息-----------------------------------------------------------------------------------------------------------------------------------------------------------------
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
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，读页数据失败，可能需要验证密码！");
        break;
    case 14:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，写页数据失败，可能需要验证密码！");
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



MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pb_beep_clicked()
{
    if(!checkdllos()){return;}      //判断运行目录内动态库文件是否存在

    unsigned char status;
    status = mypcdbeep(30);
    if(status==0){
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_getdevnum_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char devicenumber[4];    //设备编号缓冲
    unsigned char status;             //函数返回状态
    status = mypcdgetdevicenumber(devicenumber);
    if(status==0){
        mypcdbeep(30);
        QMessageBox::information(NULL, "提示", QString::asprintf("设备编号：%03d-%03d-%03d-%03d", devicenumber[0],devicenumber[1],devicenumber[2],devicenumber[3]));
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_request_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态

    ui->lineEdit_uid->setText("");
    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        mypcdbeep(30);
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_read4page_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char blockadd;           //读卡起始页地址
    unsigned char mypicdata[16];      //读卡数据缓冲

    ui->lineEdit_uid->setText("");
    ui->plainTextEdit_data->setPlainText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
        blockadd=ui->spinBox_star_rw->value();
        status = mypiccread_ul(blockadd,mypicdata);
        if(status==0){
            QString datastr="" ;
            for (int i = 0; i < 16; i++) {
                datastr=datastr+QString::asprintf("%02X ",mypicdata[i]);
            }
            ui->plainTextEdit_data->setPlainText(datastr);
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","读卡成功，卡号："+uidstr );
        }else{
            disperrinf(status);
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_write1page_clicked()
{
    if(!checkdllos()){return;}      //判断运行目录内动态库文件是否存在

    //检测写卡数据
    unsigned char piccdatabuf[255]; //写卡数据缓冲
    QChar ch;
    QString writinf = ui->plainTextEdit_data->toPlainText().trimmed();
    QString writinf1 = "";
    int m = 0;
    int n = 0;
    char s;

    if(writinf.length()<1){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制写卡数据！");
        ui->plainTextEdit_data->setFocus();
        return;
    }

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
                piccdatabuf[m++] = writinf1.toInt(&ok,16);
                writinf1 = "";
                n = 0;
                if(m>=49){
                    break;
                }
            }
        }
        else if(s == ' '){

        }
        else
        {
            QMessageBox::critical(NULL, "提示", "写卡数据错误，请输入正确的16进制数据！");
            ui->plainTextEdit_data->setFocus();
            return;
        }
    }

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char blockadd;           //写卡起始页地址

    ui->lineEdit_uid->setText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
        blockadd=ui->spinBox_star_rw->value();
        status = mypiccwrite_ul(blockadd,piccdatabuf);
        if(status==0){            
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","写卡成功，卡号："+uidstr );
        }else{
            disperrinf(status);
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_auth_clicked()
{
    if(!checkdllos()){return;}      //判断运行目录内动态库文件是否存在

    unsigned char mypickey[4];      //认证密码
    QString keystr=ui->lineEdit_authkey->text().trimmed();
    if(keystr.length()==8 and checkinput(keystr)){
        bool ok;
        for(int i=0;i<4;i++){
            mypickey[i]=QString(keystr.mid(i*2,2)).toInt(&ok,16);
        }
    }else{
        QMessageBox::critical(NULL, "提示","请输入8位16进制卡认证密码！");
        ui->lineEdit_authkey->setFocus();
        return;
    }

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char mypiccntagpack[2];  //认证后返回的确认码

    ui->lineEdit_uid->setText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);

        status = mypiccauthkey_ntag(mypickey,mypiccntagpack);
        if(status==0){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","卡密码认证成功，卡号："+uidstr );
        }else{
            disperrinf(status);
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_getver_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char mypiccversiondata[8];      //卡版本及型号缓冲

    ui->lineEdit_uid->setText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);

        status = mypiccgetversion_ntag(mypiccversiondata);
        if(status==0){
            QString datastr="" ;
            for (int i = 0; i < 8; i++) {
                datastr=datastr+QString::asprintf("%02X",mypiccversiondata[i]);
            }
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","读卡成功，卡号："+uidstr +"，版本型号："+datastr);
        }else{
            disperrinf(status);
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_getsign_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char piccsigdata[32];    //卡签名信息

    ui->lineEdit_uid->setText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);

        status = mypiccreadsig_ntag(piccsigdata);
        if(status==0){
            QString datastr="" ;
            for (int i = 0; i < 32; i++) {
                datastr=datastr+QString::asprintf("%02X",piccsigdata[i]);
            }
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","卡签字信息："+datastr );
        }else{
            disperrinf(status);
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_getcounter_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char mypicccntdata[3];   //卡操作计数器缓冲

    ui->lineEdit_uid->setText("");

    status = mypiccrequest_ul(mypiccserial);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);

        status = mypiccreadcnt_ntag(mypicccntdata);
        if(status==0){
            QString datastr="" ;
            for (int i = 0; i < 3; i++) {
                datastr=datastr+QString::asprintf("%02X",mypicccntdata[i]);
            }
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示","读卡成功，卡号："+uidstr +"，卡操作的单向计数器："+datastr);
        }else{
            if(status==13){
                 QMessageBox::critical(NULL, "提示","卡号："+uidstr +"，可能是计数器功能尚未启用或卡片不支持计数功能！");
            }else{
                disperrinf(status);
            }
        }
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_staticlock_clicked()
{
    if(!checkdllos()){return;}            //判断运行目录内动态库文件是否存在

    int answ=QMessageBox::question (this, "警告", "你确定要开启卡片的静态锁吗 ？锁定后3-15页数据不能再次修改！", QMessageBox::Ok, QMessageBox::Cancel);
    if (answ ==1024){
        unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
        unsigned char status;             //函数返回状态
        unsigned char mypicclockdata[4];  //锁定状态

        ui->lineEdit_uid->setText("");

        status = mypiccrequest_ul(mypiccserial);
        if(status==0){
            QString uidstr="" ;
            for (int i = 0; i < 7; i++) {
                uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
            }
            ui->lineEdit_uid->setText(uidstr);

            mypicclockdata[0] = 0x00;
            mypicclockdata[1] = 0x00;
            mypicclockdata[2] = 0xF9;
            mypicclockdata[3] = 0x00;
            status = mypicclock_ntag(0,mypicclockdata);
            if(status==0){
                mypcdbeep(30);
                QMessageBox::information(NULL, "提示","3~15页静态锁数据写入成功！" );
            }else{
                disperrinf(status);
            }
        }
        else
        {
            disperrinf(status);
        }
    }
}


void MainWindow::on_pb_dynamiclock_clicked()
{
    if(!checkdllos()){return;}            //判断运行目录内动态库文件是否存在

    int answ=QMessageBox::question (this, "警告", "你确定要开启卡片的动态锁吗 ？锁定后16及以后的页数据不能再次修改！", QMessageBox::Ok, QMessageBox::Cancel);
    if (answ ==1024){
        unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
        unsigned char status;             //函数返回状态
        unsigned char mypicclockdata[4];  //锁定状态

        ui->lineEdit_uid->setText("");

        status = mypiccrequest_ul(mypiccserial);
        if(status==0){
            QString uidstr="" ;
            for (int i = 0; i < 7; i++) {
                uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
            }
            ui->lineEdit_uid->setText(uidstr);

            mypicclockdata[0] = 0x01;
            mypicclockdata[1] = 0x01;
            mypicclockdata[2] = 0x00;
            mypicclockdata[3] = 0x00;
            status = mypicclock_ntag(1,mypicclockdata);
            if(status==0){
                mypcdbeep(30);
                QMessageBox::information(NULL, "提示","16之后页动态锁数据写入成功！" );
            }else{
                disperrinf(status);
            }
        }
        else
        {
            disperrinf(status);
        }
    }
}


void MainWindow::on_pb_init_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char myctrlword;         //写卡控制字
    unsigned char mypiccdata[16];     //卡配置数据
    unsigned char mypickey[4];        //卡片认证密码

    ui->lineEdit_uid->setText("");

    if(ui->checkbox_sele->isChecked()){     //选择先认证卡密码成功再读写卡
        QString authkey=ui->lineEdit_authkey->text().trimmed();
        if(authkey.length()==8 and checkinput(authkey)){
            for(int i=0;i<4;i++){
                bool ok;
                mypickey[i]=QString(authkey.mid(i*2,2)).toInt(&ok,16);
            }
            myctrlword=0x10;
        }else{
            QMessageBox::critical(NULL, "提示","请输入8位16进制认证密码！");
            ui->lineEdit_authkey->setFocus();
            return;
        }
    }else{
        myctrlword=0x00;    //无需认证卡密码
    }

    if(ui->comboBox_init->currentIndex()==0){   //开启卡密码保护功能
        int answ=QMessageBox::question (this, "警告", "    您确定要开启卡片的密码保护功能吗 ？开启密码保护功能后需记住卡片的新密码，否则卡片将报废！", QMessageBox::Ok, QMessageBox::Cancel);
        if (answ !=1024){
            return;
        }
        mypiccdata[0] = 0x00;
        mypiccdata[1] = 0x00;
        mypiccdata[2] = 0x00;
        mypiccdata[3] = ui->spinBox_star->value();      //密码保护起始页地址
        myctrlword=myctrlword+0x01;

        mypiccdata[4] = (ui->spinBox_num->value() % 8); //认证次数
        if(ui->checkBox_readen->isChecked()){
            mypiccdata[4] =mypiccdata[4] +0x80;         //开启读密码保护
        }
        mypiccdata[5] = 0x00;    //启用计数器
        mypiccdata[6] = 0x00;
        mypiccdata[7] = 0x00;
        myctrlword=myctrlword+0x02;

        QString newkey=ui->lineEdit_authkey->text().trimmed();
        if(newkey.length()==8 and checkinput(newkey)){
            for(int i=0;i<4;i++){
                bool ok;
                mypiccdata[8+i]=QString(newkey.mid(i*2,2)).toInt(&ok,16);
            }
            mypiccdata[12] = 0x16;
            mypiccdata[13] = 0x16;
            mypiccdata[14] = 0x00;
            mypiccdata[15] = 0x00;
            myctrlword=myctrlword+0x04;

        }else{
            QMessageBox::critical(NULL, "提示","请输入8位16进制认证密码！");
            return;
        }
    }else{      //取消卡密码保护功能
        mypiccdata[0] = 0x00;
        mypiccdata[1] = 0x00;
        mypiccdata[2] = 0x00;
        mypiccdata[3] = 0xff;
        myctrlword=myctrlword+0x01;

        mypiccdata[4] = 0x00;
        mypiccdata[5] = 0x00;
        mypiccdata[6] = 0x00;
        mypiccdata[7] = 0x00;
        myctrlword=myctrlword+0x02;
    }

    status = mypiccinit_ntag(myctrlword,mypiccserial,mypickey,mypiccdata);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
        mypcdbeep(30);
        QMessageBox::information(NULL, "提示","卡片初始化成功，卡号："+uidstr );
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_easy_read_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char myctrlword;         //写卡控制字
    unsigned char mypicdata[48];      //读卡数据缓冲
    unsigned char mypickey[4];        //卡片认证密码
    unsigned char blockadd;           //操作超始页地址
    unsigned char blocksize;          //操作页数

    if(ui->spinBox_num_rw->value()>12 || ui->spinBox_num_rw->value()<1){
        QMessageBox::critical(NULL, "提示","一次最多只能读12页！超过12页请分次读取。");
        return;
    }

    ui->lineEdit_uid->setText("");
    ui->plainTextEdit_data->setPlainText("");

    if(ui->checkbox_sele->isChecked()){     //选择先认证卡密码成功再读写卡
        QString authkey=ui->lineEdit_authkey->text().trimmed();
        if(authkey.length()==8 and checkinput(authkey)){
            for(int i=0;i<4;i++){
                bool ok;
                mypickey[i]=QString(authkey.mid(i*2,2)).toInt(&ok,16);
            }
            myctrlword=0x10;
        }else{
            QMessageBox::critical(NULL, "提示","请输入8位16进制认证密码！");
            ui->lineEdit_authkey->setFocus();
            return;
        }
    }else{
        myctrlword=0x00;    //无需认证卡密码
    }

    blockadd=ui->spinBox_star_rw->value();
    blocksize=ui->spinBox_num_rw->value();
    status = mypiccreadex_ntag(myctrlword, mypiccserial, mypickey, blockadd, blocksize, mypicdata);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
        QString datastr="" ;
        for (int i = 0; i <  blocksize*4; i++) {
            datastr=datastr+QString::asprintf("%02X ",mypicdata[i]);
        }
        ui->plainTextEdit_data->setPlainText(datastr);
        mypcdbeep(30);
        QMessageBox::information(NULL, "提示","读卡成功，卡号："+uidstr );
    }
    else
    {
        disperrinf(status);
    }
}


void MainWindow::on_pb_easy_write_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[7];    //卡唯一序列号uid缓冲
    unsigned char status;             //函数返回状态
    unsigned char myctrlword;         //写卡控制字
    unsigned char mypickey[4];        //卡片认证密码
    unsigned char blockadd;           //操作超始页地址
    unsigned char blocksize;          //操作页数

    if(ui->spinBox_num_rw->value()>11 || ui->spinBox_num_rw->value()<1){
        QMessageBox::critical(NULL, "提示","一次最多只能写11页！超过11页请分次写入。");
        return;
    }

    //检测写卡数据
    unsigned char piccdatabuf[255]; //写卡数据缓冲
    QChar ch;
    QString writinf = ui->plainTextEdit_data->toPlainText().trimmed();
    QString writinf1 = "";
    int m = 0;
    int n = 0;
    char s;

    if(writinf.length()<1){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制写卡数据！");
        ui->plainTextEdit_data->setFocus();
        return;
    }

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
                piccdatabuf[m++] = writinf1.toInt(&ok,16);
                writinf1 = "";
                n = 0;
                if(m>=49){
                    break;
                }
            }
        }
        else if(s == ' '){

        }
        else
        {
            QMessageBox::critical(NULL, "提示", "写卡数据错误，请输入正确的16进制数据！");
            ui->plainTextEdit_data->setFocus();
            return;
        }
    }

    ui->lineEdit_uid->setText("");

    if(ui->checkbox_sele->isChecked()){     //选择先认证卡密码成功再读写卡
        QString authkey=ui->lineEdit_authkey->text().trimmed();
        if(authkey.length()==8 and checkinput(authkey)){
            for(int i=0;i<4;i++){
                bool ok;
                mypickey[i]=QString(authkey.mid(i*2,2)).toInt(&ok,16);
            }
            myctrlword=0x10;
        }else{
            QMessageBox::critical(NULL, "提示","请输入8位16进制认证密码！");
            ui->lineEdit_authkey->setFocus();
            return;
        }
    }else{
        myctrlword=0x00;    //无需认证卡密码
    }

    blockadd=ui->spinBox_star_rw->value();
    blocksize=ui->spinBox_num_rw->value();
    status = mypiccwriteex_ntag(myctrlword, mypiccserial, mypickey, blockadd, blocksize, piccdatabuf);
    if(status==0){
        QString uidstr="" ;
        for (int i = 0; i < 7; i++) {
            uidstr=uidstr+QString::asprintf("%02X",mypiccserial[i]);
        }
        ui->lineEdit_uid->setText(uidstr);
        mypcdbeep(30);
        QMessageBox::information(NULL, "提示","写卡成功，卡号："+uidstr );
    }
    else
    {
        disperrinf(status);
    }
}

