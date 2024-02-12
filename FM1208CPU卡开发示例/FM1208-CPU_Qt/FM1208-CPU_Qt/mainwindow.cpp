#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDebug>
#include "QLibrary"
#include "QMessageBox"

//电话、微信：
//QQ：

//本示例可在windows、linux系统内编译、运行
//判断windows、linux系统，声明动态库函数----------------------------------------------------------------------------------------------------------------------------------------------
//让读写器发出声音
typedef  unsigned char (*pcdbeep)(unsigned long xms);
#ifdef Q_OS_WIN
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("OUR_MIFARE.dll").resolve("pcdbeep");
#else
    pcdbeep mypcdbeep = (pcdbeep)QLibrary("./libOURMIFARE.so").resolve("pcdbeep");
#endif

//返回本读写器独一无二的设备编号
typedef  unsigned char (*pcdgetdevicenumber)(unsigned char *devicenumber);
#ifdef Q_OS_WIN
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("OUR_MIFARE.dll").resolve("pcdgetdevicenumber");
#else
    pcdgetdevicenumber mypcdgetdevicenumber = (pcdgetdevicenumber)QLibrary("./libOURMIFARE.so").resolve("pcdgetdevicenumber");
#endif

//CPU卡寻卡及将卡复位到14443A-4的指令状态
typedef  unsigned char (*cpurequest)(unsigned char *serial,unsigned char *param,unsigned char *cosver,unsigned char *code);
#ifdef Q_OS_WIN
    cpurequest mycpurequest = (cpurequest)QLibrary("OUR_MIFARE.dll").resolve("cpurequest");
#else
    cpurequest mycpurequest = (cpurequest)QLibrary("./libOURMIFARE.so").resolve("cpurequest");
#endif

//cpu卡初始化函数，(ctrlword是否需要先清空卡,不需要清空的话，可以需输入卡密码，卡密码长度)ctrlword_0是否先清空卡，分配空间（字节数）
typedef  unsigned char (*cpursinit)(unsigned char ctrlword,unsigned char *key,unsigned char *keylen,int customsize);
#ifdef Q_OS_WIN
    cpursinit mycpursinit = (cpursinit)QLibrary("OUR_MIFARE.dll").resolve("cpursinit");
#else
    cpursinit mycpursinit = (cpursinit)QLibrary("./libOURMIFARE.so").resolve("cpursinit");
#endif

//增加易写文件（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间)
typedef  unsigned char (*cpursfileadd_s)(unsigned char fileno,unsigned char *readonlykey,unsigned char *readonlykeylen,unsigned char *writekey,unsigned char *writekeylen,int customsize);
#ifdef Q_OS_WIN
    cpursfileadd_s mycpursfileadd_s = (cpursfileadd_s)QLibrary("OUR_MIFARE.dll").resolve("cpursfileadd_s");
#else
    cpursfileadd_s mycpursfileadd_s = (cpursfileadd_s)QLibrary("./libOURMIFARE.so").resolve("cpursfileadd_s");
#endif

//增加标准文件（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间)
typedef  unsigned char (*cpursfileadd)(unsigned char fileno,unsigned char *readonlykey,unsigned char *readonlykeylen,unsigned char *writekey,unsigned char *writekeylen,int customsize);
#ifdef Q_OS_WIN
    cpursfileadd mycpursfileadd = (cpursfileadd)QLibrary("OUR_MIFARE.dll").resolve("cpursfileadd");
#else
    cpursfileadd mycpursfileadd = (cpursfileadd)QLibrary("./libOURMIFARE.so").resolve("cpursfileadd");
#endif

//修改文件密码，修改后，请妥慎记住，否则该文件将无法再用
typedef  unsigned char (*cpursfilekeychg)(unsigned char fileno,unsigned char ctrword,unsigned char *oldkey,unsigned char *oldkeylen,unsigned char *newkey,unsigned char *newkeylen);
#ifdef Q_OS_WIN
    cpursfilekeychg mycpursfilekeychg = (cpursfilekeychg)QLibrary("OUR_MIFARE.dll").resolve("cpursfilekeychg");
#else
    cpursfilekeychg mycpursfilekeychg = (cpursfilekeychg)QLibrary("./libOURMIFARE.so").resolve("cpursfilekeychg");
#endif

//读文件数据(文件序号,读写密码,密码长度,读取起始位置,读取长度,读出内容)
typedef  unsigned char (*cpursfiledataread)(unsigned char fileno,unsigned char ctrword,unsigned char *oldkey,unsigned char *oldkeylen,int startaddr,unsigned char *databuf,int datalen);
#ifdef Q_OS_WIN
    cpursfiledataread mycpursfiledataread = (cpursfiledataread)QLibrary("OUR_MIFARE.dll").resolve("cpursfiledataread");
#else
    cpursfiledataread mycpursfiledataread = (cpursfiledataread)QLibrary("./libOURMIFARE.so").resolve("cpursfiledataread");
#endif

//写普通文件数据(文件序号,写密码,密码长度,写起始位置,写长度,写入内容)
typedef  unsigned char (*cpursfiledatawrite)(unsigned char fileno,unsigned char ctrword,unsigned char *oldkey,unsigned char *oldkeylen,int startaddr,unsigned char *databuf,int datalen);
#ifdef Q_OS_WIN
    cpursfiledatawrite mycpursfiledatawrite = (cpursfiledatawrite)QLibrary("OUR_MIFARE.dll").resolve("cpursfiledatawrite");
#else
    cpursfiledatawrite mycpursfiledatawrite = (cpursfiledatawrite)QLibrary("./libOURMIFARE.so").resolve("cpursfiledatawrite");
#endif

//写易写文件数据(文件序号,写密码,密码长度,写起始位置,写长度,写入内容)
typedef  unsigned char (*cpursfiledatawrite_s)(unsigned char fileno,unsigned char ctrword,unsigned char *oldkey,unsigned char *oldkeylen,int startaddr,unsigned char *databuf,int datalen);
#ifdef Q_OS_WIN
    cpursfiledatawrite_s mycpursfiledatawrite_s = (cpursfiledatawrite_s)QLibrary("OUR_MIFARE.dll").resolve("cpursfiledatawrite_s");
#else
    cpursfiledatawrite_s mycpursfiledatawrite_s = (cpursfiledatawrite_s)QLibrary("./libOURMIFARE.so").resolve("cpursfiledatawrite_s");
#endif

//强制清空卡，用cpursinit函数成功初始化过后，如果卡密码丢去了，可以尝试用以下的强制清空卡函数清空卡至出厂状态
typedef  unsigned char (*cpurscardclr)();
#ifdef Q_OS_WIN
    cpurscardclr mycpurscardclr = (cpurscardclr)QLibrary("OUR_MIFARE.dll").resolve("cpurscardclr");
#else
    cpurscardclr mycpurscardclr = (cpurscardclr)QLibrary("./libOURMIFARE.so").resolve("cpurscardclr");
#endif

//修改卡密码，卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件是无效的。
typedef  unsigned char (*cpurscardkeychg)(unsigned char *oldkey,unsigned char *oldkeylen,unsigned char *newkey,unsigned char *newkeylen);
#ifdef Q_OS_WIN
    cpurscardkeychg mycpurscardkeychg = (cpurscardkeychg)QLibrary("OUR_MIFARE.dll").resolve("cpurscardkeychg");
#else
    cpurscardkeychg mycpurscardkeychg = (cpurscardkeychg)QLibrary("./libOURMIFARE.so").resolve("cpurscardkeychg");
#endif


const unsigned char NEWKEYR = 0x00;   //'更改只读密码
const unsigned char NEWKEYWR = 0x01;  //'更改读写密码
const unsigned char OLDKEYR = 0x00;   //'用只读密码认证
const unsigned char OLDKEYWR = 0x02;  //'用读写密码认证


//检测输入数据是否为16进制数------------------------------------------------------------------------------------------------------------------------------------------------------------
static bool checkinput(QString inputstr){
    QString inputyes="0123456789abcdefABCDEF";
    for(int i=0;i<inputstr.length();i++){
        if(inputyes.contains(inputstr.mid(i,1),Qt::CaseSensitive)){
        }else{return false;}
    }
    return true;
}

//检测输入数据是否为16进制数,将正确的16进制字符存入数组，并返回长度------------------------------------------------------------------------------------------------------------------------------------------------------------
static int checkhexdata(QString inputstr,unsigned char *databuf){
    QChar ch;
    QString writinf = inputstr.trimmed();
    QString writinf1 = "";
    int m = 0;
    int n = 0;
    char s;

    if(writinf.length()<1){
        return -1;
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
                databuf[m++] = writinf1.toInt(&ok,16);
                writinf1 = "";
                n = 0;
            }
        }
        else if(s == ' '){

        }
    }
    return m;
}

//检测动态库文件是否在运行目录内----------------------------------------------------------------------------------------------------------------------------------------------------------
static bool checkdllos(){
#ifdef Q_OS_WIN
    QLibrary mylib("OUR_MIFARE.dll");
    if (!mylib.load()){                //判断windows系统下，OUR_MIFARE.dll是否在运行目录内
        QMessageBox::information(NULL, "提示", "请将OUR_MIFARE.dll文件拷贝到生成exe文件相同目录下！");
        return false;
    }else{
        return true;
    }
#else
    QLibrary mylib("./libOURMIFARE.so");
    if (!mylib.load()){                //判断linux系统下，libOURMIFARE.so是否正运行目录内
        QMessageBox::information(NULL, "提示", "请将libOURMIFARE.so文件拷贝到生成的运行文件相同目录下！");
        return false;
    }else{return true;}
#endif
}

//显示返回的错误代码信息-----------------------------------------------------------------------------------------------------------------------------------------------------------------
static void disperrinf(unsigned char result){
    switch (result) {
    case 8:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，未寻到卡，请重新拿开卡后再放到感应区！");
        break;
    case 50:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，RATS错误，厂家调试代码，用户不需理会！");
        break;
    case 51:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，PPS错误，厂家调试代码，用户不需理会！");
        break;
    case 52:
        QMessageBox::information(NULL, "提示", QString::asprintf("代码：%d", result)+"，已进入了14443-4协议状态，可进行CPU卡功能所有操作了！");
        break;
    case 53:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，CPU卡功能通讯错误！");
        break;
    case 54:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，数据不足，需要接着发送未完成的数据至卡上！");
        break;
    case 55:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，发送ACK指令给卡，让卡接着发送数据回来！");
        break;
    case 56:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，清空根目录失败！");
        break;
    case 57:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，卡片不支持此功能！");
        break;
    case 58:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，卡片初始化失败！");
        break;
    case 59:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，分配的空间不足！");
        break;
    case 60:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，本次操作的实体已存在！");
        break;
    case 61:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，无足够空间！");
        break;
    case 62:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，文件不存在！");
        break;
    case 63:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，权限不足,有可能是用只读密码认证，导致无法更改读写密码或无法写文件！");
        break;
    case 64:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，密码不存在，或密钥文件未创建！");
        break;
    case 65:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，传送长度错误！");
        break;
    case 66:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，Le错误，即接收的数据长度指定过大！");
        break;
    case 67:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，功能不支持或卡中无MF 或卡片已锁定！");
        break;
    case 68:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，密码认证错识次数过多，该密码已被锁死！");
        break;
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
        QMessageBox::critical(NULL, "提示", QString::asprintf("密码错误，剩余次数为：%d", result-70)+"，如果为0，该密码将锁死，无法再认证！");
        break;
    case 86:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，更改后的密码长度必须和创建时的长度一致！");
        break;
    case 87:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，应用目录不存在！");
        break;
    case 88:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，应用文件不存在！");
        break;
    case 89:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，文件号不能超过5！");
        break;
    case 90:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，读取文件时返回的长度不足，数据可能不正确！");
        break;
    case 91:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，一次读文件的长度不能超过255！");
        break;
    case 92:
        QMessageBox::critical(NULL, "提示", QString::asprintf("错误代码：%d", result)+"，一次写文件的长度不能超过247！");
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

    QPalette pa;
    pa.setColor(QPalette::WindowText,QColor(255, 0, 0));
    ui->label_7->setPalette(pa);
    ui->label_8->setPalette(pa);
    ui->label_9->setPalette(pa);
    ui->label_19->setPalette(pa);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pb_beep_clicked()
{
    if(!checkdllos()){return;}      //判断运行目录内动态库文件是否存在

    unsigned char status;
    if (mypcdbeep != NULL){         //是否成功连接上 pcdbeep()函数
        status = mypcdbeep(30);
        if(status==0){
        }
        else
        {
            disperrinf(status);
        }
    } else{
        QMessageBox::critical(NULL, "提示", "函数‘pcdbeep’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_getdevnum_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char devicenumber[4];    //设备编号缓冲
    unsigned char status;             //函数返回状态
    if (mypcdgetdevicenumber != NULL){         //是否成功连接上 pcdgetdevicenumber()函数
        status = mypcdgetdevicenumber(devicenumber);
        if(status==0){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", QString::asprintf("设备编号：%03d-%03d-%03d-%03d", devicenumber[0],devicenumber[1],devicenumber[2],devicenumber[3]));
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘pcdgetdevicenumber’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_request_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char mypiccserial[4];    //卡序列号
    unsigned char myparam[4];         //参数
    unsigned char myver[1];           //版本
    unsigned char mycode[1];          //厂商代码(复旦为90)
    unsigned char status;             //函数返回状态

    if (mycpurequest != NULL){        //是否成功连接上 cpurequest()函数
        status = mycpurequest(mypiccserial,myparam,myver,mycode);
        if(status==0  || status==52){
            mypcdbeep(30);
            QString uidstr=QString::asprintf("%02X%02X%02X%02X", mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]);
            QString parstr=QString::asprintf("%02X%02X%02X%02X", myparam[0],myparam[1],myparam[2],myparam[3]);
            QString verstr=QString::asprintf("%02X", myver[0]);
            QString codestr=QString::asprintf("%02X", mycode[0]);

            ui->lineEdit_uid->setText(uidstr);
            QMessageBox::information(NULL, "提示", "卡号："+uidstr+"，参数："+parstr+"，版本号："+verstr+"，厂商代码："+codestr+" 的CPU卡已激活进入14443-4协议模式，可以继续以下的功能操作！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpurequest’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_init_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char ctrlword;           //是否先清空卡
    unsigned char mylen[1];           //密钥长度
    unsigned char keybuf[20];         //密钥
    int keylen;
    int spacesize;                    //空间大小

    if(ui->checkBox_clear->isChecked()){
        ctrlword=1;
    }else{ctrlword=0;}

    QString writinf = ui->lineEdit_cardkey->text().trimmed();
    keylen=checkhexdata(writinf,keybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制卡密码！");
        ui->lineEdit_cardkey->setFocus();
        return;
    }

    mylen[0]=keylen;
    spacesize=ui->spinBox_maxsize->value();

    if (mycpursinit != NULL){        //是否成功连接上 cpursinit()函数
        status = mycpursinit(ctrlword,keybuf,mylen,spacesize);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "CPU卡初始化成功！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursinit’未正确载入，请查询DLL文件版本是否正确！");
    }
}

void MainWindow::on_pb_addeasyfile_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char readkeylen[1];      //只读密钥长度
    unsigned char readkeybuf[20];     //只读密钥
    unsigned char rwkeylen[1];        //读写密钥长度
    unsigned char rwkeybuf[20];       //读写密钥
    int keylen;
    int spacesize;                    //空间大小
    QString keystr;

    fileno=ui->comboBox_addfile->currentIndex(); //新增加的文件号

    keystr = ui->lineEdit_readkey->text().trimmed();
    keylen=checkhexdata(keystr,readkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件只读密码！");
        ui->lineEdit_readkey->setFocus();
        return;
    }
    readkeylen[0]=keylen;

    keystr = ui->lineEdit_rwkey->text().trimmed();
    keylen=checkhexdata(keystr,rwkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件读写密码！");
        ui->lineEdit_rwkey->setFocus();
        return;
    }
    rwkeylen[0]=keylen;

    spacesize=ui->spinBox_2->value();

    if (mycpursfileadd_s != NULL){        //是否成功连接上 cpursfileadd_s()函数
        status = mycpursfileadd_s(fileno,readkeybuf,readkeylen,rwkeybuf,rwkeylen,spacesize);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "CPU卡创建易写文件成功，需要使用易写函数写入文件数据！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfileadd_s’未正确载入，请查询DLL文件版本是否正确！");
    }
}



void MainWindow::on_pb_addfile_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char readkeylen[1];      //只读密钥长度
    unsigned char readkeybuf[20];     //只读密钥
    unsigned char rwkeylen[1];        //读写密钥长度
    unsigned char rwkeybuf[20];       //读写密钥
    int keylen;
    int spacesize;                    //空间大小
    QString keystr;

    fileno=ui->comboBox_addfile->currentIndex();  //新增加的文件号

    keystr = ui->lineEdit_readkey->text().trimmed();
    keylen=checkhexdata(keystr,readkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件只读密码！");
        ui->lineEdit_readkey->setFocus();
        return;
    }
    readkeylen[0]=keylen;

    keystr = ui->lineEdit_rwkey->text().trimmed();
    keylen=checkhexdata(keystr,rwkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件读写密码！");
        ui->lineEdit_rwkey->setFocus();
        return;
    }
    rwkeylen[0]=keylen;

    spacesize=ui->spinBox_2->value();

    if (mycpursfileadd != NULL){        //是否成功连接上 cpursfileadd()函数
        status = mycpursfileadd(fileno,readkeybuf,readkeylen,rwkeybuf,rwkeylen,spacesize);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "CPU卡创建标准文件成功，需使用写标准文件函数写入数据！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfileadd’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_changkey_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char ctrlword;           //控制字
    unsigned char oldkeylen[1];       //旧密钥长度
    unsigned char oldkeybuf[20];      //旧密钥
    unsigned char newkeylen[1];       //新密钥长度
    unsigned char newkeybuf[20];      //新密钥
    int keylen;
    QString keystr;

    fileno=ui->comboBox_changekeyfile->currentIndex();  //要更改密钥的文件号

    if(ui->comboBox_changekey->currentIndex()==0){
        ctrlword=NEWKEYR;       //更改只读密码
    }else{ctrlword=NEWKEYWR;}   //更改读写密码

    if(ui->comboBox_authkey->currentIndex()==0){
        ctrlword=ctrlword+OLDKEYR;      //用只读密码来认证
    }else{ctrlword=ctrlword+OLDKEYWR;}  //用读写密码来认证

    keystr = ui->lineEdit_authkey->text().trimmed();
    keylen=checkhexdata(keystr,oldkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件认证密码！");
        ui->lineEdit_authkey->setFocus();
        return;
    }
    oldkeylen[0]=keylen;

    keystr = ui->lineEdit_newkey->text().trimmed();
    keylen=checkhexdata(keystr,newkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件新密码！");
        ui->lineEdit_newkey->setFocus();
        return;
    }
    newkeylen[0]=keylen;

    if (mycpursfilekeychg != NULL){        //是否成功连接上 cpursfilekeychg()函数
        status = mycpursfilekeychg(fileno,ctrlword,oldkeybuf,oldkeylen,newkeybuf,newkeylen);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "修改文件密码成功");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfilekeychg’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_read_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char ctrlword;           //控制字
    unsigned char oldkeylen[1];       //旧密钥长度
    unsigned char oldkeybuf[20];      //旧密钥
    int staradd;                      //读写起始地址
    int datalen;                      //读写长度
    unsigned char rwbuf[8000];        //读写数据缓冲
    int keylen;
    QString keystr;

    fileno=ui->comboBox_rwfile->currentIndex();  //要读写的文件号
    staradd=ui->spinBox_rwbegin->value();        //读写起始地址
    datalen=ui->spinBox_rwlen->value();          //读写数据长度
    if(datalen<1 || datalen>255){
        QMessageBox::critical(NULL, "提示", "每次读卡最多255字节，请输入正确的读卡长度！");
        ui->spinBox_rwlen->setFocus();
        return;
    }

    if(ui->comboBox_authrwkey->currentIndex()==0){
        ctrlword=OLDKEYR;      //用只读密码来认证
    }else{ctrlword=OLDKEYWR;}  //用读写密码来认证

    keystr = ui->lineEdit_authkey2->text().trimmed();
    keylen=checkhexdata(keystr,oldkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件认证密码！");
        ui->lineEdit_authkey2->setFocus();
        return;
    }
    oldkeylen[0]=keylen;

    if (mycpursfiledataread != NULL){        //是否成功连接上 cpursfiledataread()函数
        status = mycpursfiledataread(fileno,ctrlword,oldkeybuf,oldkeylen,staradd,rwbuf,datalen);
        if(status==0 ){
            mypcdbeep(30);
            QString datastr="";
            for(int i=0;i<datalen;i++){
                datastr=datastr+QString::asprintf("%02X ", rwbuf[i]);
            }
            ui->plainTextEdit->setPlainText(datastr);

            QMessageBox::information(NULL, "提示", "读取数据成功！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfiledataread’未正确载入，请查询DLL文件版本是否正确！");
    }
}



void MainWindow::on_pb_write_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char ctrlword;           //控制字
    unsigned char oldkeylen[1];       //旧密钥长度
    unsigned char oldkeybuf[20];      //旧密钥
    int staradd;                      //读写起始地址
    int datalen;                      //读写长度
    unsigned char rwbuf[8000];        //读写数据缓冲
    int keylen;
    QString keystr;
    QString datastr;

    keystr = ui->lineEdit_authkey2->text().trimmed();
    keylen=checkhexdata(keystr,oldkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件认证密码！");
        ui->lineEdit_authkey2->setFocus();
        return;
    }
    oldkeylen[0]=keylen;

    datastr = ui->plainTextEdit->toPlainText().trimmed();
    datalen=checkhexdata(datastr,rwbuf);
    if(datalen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制写入数据！");
        ui->plainTextEdit->setFocus();
        return;
    }

    fileno=ui->comboBox_rwfile->currentIndex();  //要读写的文件号
    staradd=ui->spinBox_rwbegin->value();        //读写起始地址
    datalen=ui->spinBox_rwlen->value();          //读写数据长度
    if(datalen<1 || datalen>247){
        QMessageBox::critical(NULL, "提示", "每次写卡最多247字节，请输入正确的写卡长度！");
        ui->spinBox_rwlen->setFocus();
        return;
    }

    if(ui->comboBox_authrwkey->currentIndex()==0){
        ctrlword=OLDKEYR;      //用只读密码来认证
    }else{ctrlword=OLDKEYWR;}  //用读写密码来认证

    if (mycpursfiledatawrite != NULL){        //是否成功连接上 cpursfiledatawrite()函数
        status = mycpursfiledatawrite(fileno,ctrlword,oldkeybuf,oldkeylen,staradd,rwbuf,datalen);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "写入数据成功！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfiledatawrite’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_easy_write_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char fileno;             //文件号
    unsigned char ctrlword;           //控制字
    unsigned char oldkeylen[1];       //旧密钥长度
    unsigned char oldkeybuf[20];      //旧密钥
    int staradd;                      //读写起始地址
    int datalen;                      //读写长度
    unsigned char rwbuf[8000];        //读写数据缓冲
    int keylen;
    QString keystr;
    QString datastr;

    keystr = ui->lineEdit_authkey2->text().trimmed();
    keylen=checkhexdata(keystr,oldkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制文件认证密码！");
        ui->lineEdit_authkey2->setFocus();
        return;
    }
    oldkeylen[0]=keylen;

    datastr = ui->plainTextEdit->toPlainText().trimmed();
    datalen=checkhexdata(datastr,rwbuf);
    if(datalen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制写入数据！");
        ui->plainTextEdit->setFocus();
        return;
    }

    fileno=ui->comboBox_rwfile->currentIndex();  //要读写的文件号
    staradd=ui->spinBox_rwbegin->value();        //读写起始地址
    datalen=ui->spinBox_rwlen->value();          //读写数据长度

    if(ui->comboBox_authrwkey->currentIndex()==0){
        ctrlword=OLDKEYR;      //用只读密码来认证
    }else{ctrlword=OLDKEYWR;}  //用读写密码来认证

    if (mycpursfiledatawrite_s != NULL){        //是否成功连接上 cpursfiledatawrite_s()函数
        status = mycpursfiledatawrite_s(fileno,ctrlword,oldkeybuf,oldkeylen,staradd,rwbuf,datalen);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "写入数据成功！");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpursfiledatawrite_s’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_clear_clicked()
{
    if(!checkdllos()){return;}      //判断运行目录内动态库文件是否存在

    unsigned char status;
    if (mycpurscardclr != NULL){         //是否成功连接上 cpurscardclr()函数
        status = mycpurscardclr();
        if(status==0){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "cpu卡强制清空卡成功");
        }else{
            if(status==64){
                QMessageBox::information(NULL, "提示", "此卡为未经过我们cpursinit函数成功初始化的卡");
            }else{
                disperrinf(status);
            }
        }
    } else{
        QMessageBox::critical(NULL, "提示", "函数‘cpurscardclr’未正确载入，请查询DLL文件版本是否正确！");
    }
}


void MainWindow::on_pb_changecardkey_clicked()
{
    if(!checkdllos()){return;}        //判断运行目录内动态库文件是否存在

    unsigned char status;             //函数返回状态
    unsigned char oldkeylen[1];       //旧密钥长度
    unsigned char oldkeybuf[20];      //旧密钥
    unsigned char newkeylen[1];       //新密钥长度
    unsigned char newkeybuf[20];      //新密钥
    int keylen;
    QString keystr;

    keystr = ui->lineEdit_cardoldkey->text().trimmed();
    keylen=checkhexdata(keystr,oldkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制卡旧密码！");
        ui->lineEdit_cardoldkey->setFocus();
        return;
    }
    oldkeylen[0]=keylen;

    keystr = ui->lineEdit_cardnewkey->text().trimmed();
    keylen=checkhexdata(keystr,newkeybuf);
    if(keylen<0){
        QMessageBox::critical(NULL, "提示", "请输入正确的16进制卡新密码！");
        ui->lineEdit_cardnewkey->setFocus();
        return;
    }
    newkeylen[0]=keylen;

    if (mycpurscardkeychg != NULL){        //是否成功连接上 cpurscardkeychg()函数
        status = mycpurscardkeychg(oldkeybuf,oldkeylen,newkeybuf,newkeylen);
        if(status==0 ){
            mypcdbeep(30);
            QMessageBox::information(NULL, "提示", "修改卡片密码成功");
        }
        else
        {
            disperrinf(status);
        }
    }else{
        QMessageBox::critical(NULL, "提示", "函数‘cpurscardkeychg’未正确载入，请查询DLL文件版本是否正确！");
    }
}

