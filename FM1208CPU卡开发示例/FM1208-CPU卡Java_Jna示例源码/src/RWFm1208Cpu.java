import com.sun.jna.Library ;
import com.sun.jna.Native;
import java.io.IOException;

interface CLibrary extends Library {
    //DLL绝对路径的地址获取，注意要去空格，不要使用中文目录
    //不同版本的读写器，接口DLL文件名称、函数名称是一样的,但内核代码不一样，请选用与读写器、操作系统一致的OUR_MIFARE.dll
    String filePath = CLibrary.class.getResource("").getPath().replaceFirst("/","").replaceAll("%20"," ")+"OUR_MIFARE";
    CLibrary sdtapi = (CLibrary) Native.loadLibrary(filePath, CLibrary.class);

    //动态链接库中的方法
    byte pcdbeep(int xms);                         //让设备发出声音
    byte pcdgetdevicenumber(byte[] devicenumber);  //读取设备编号
    byte cpurequest(byte[] mypiccserial,byte[] myparam,byte[] myver,byte[] mycode);    //激活CPU卡
    byte cpursinit(byte emptycard, byte[] mypicckey, byte mykeylen, int spacesize);    //初始化CPU卡
    byte cpursfileadd(byte FileIndex,byte[] RFilekey,byte RKLen, byte[] WFilekey,byte WKLen,int FileSize);   //创建空文件
    byte cpursfilekeychg(byte FileIndex, byte ctrlCode,byte[] Autkey,byte AKLen,byte[] Newkey,byte NKLen);   //修改文件密码
    byte cpursfiledataread(byte FileIndex,byte ctrlCode,byte[] Autkey,byte AKLen,byte DataStart,byte[] DataBuf,byte DataLen);    //读CPU卡内文件信息
    byte cpursfiledatawrite(byte FileIndex,byte ctrlCode,byte[] Autkey,byte AKLen,byte DataStart,byte[] DataBuf,byte DataLen);   //写数据到文件内
    byte cpurscardkeychg(byte[] Oldkey,byte OKLen, byte[] Newkey,byte NKLen);  //修改CPU卡密码，卡密码与文件密码无关不影响数据安全
    byte cpurscardclr();  //强制清空已用cpursinit函数成功初始化过的卡
}

public class RWFm1208Cpu {

    public static void main(String[] args) throws Exception  {
        System.setProperty("jna.encoding", "GBK");
        String filePath = CLibrary.class.getResource("").getPath().replaceFirst("/", "").replaceAll("%20", " ") + "OUR_MIFARE.DLL";
        System.out.println("本示例引用的DLL文件：" + filePath);

        if (args.length == 0) {
            System.out.println("\n请先输入运行参数！");
            System.out.println("\n参数 0：驱动读卡器嘀一声");
            System.out.println("\n参数 1：读取设备编号");
            System.out.println("\n参数 2：激活CPU卡");
            System.out.println("\n参数 3：初始化CPU卡");
            System.out.println("\n参数 4：创建文件");
            System.out.println("\n参数 5：修改文件密码");
            System.out.println("\n参数 6：读CPU卡内文件信息");
            System.out.println("\n参数 7：写数据到文件内");
            System.out.println("\n参数 8：更改CPU卡认证密码");
            System.out.println("\n参数 9：强制清空已用cpursinit函数成功初始化过的卡");
            return;
        }

        //Java中只能使用string1.equals(string2)的方式来比较字符串
        if (args[0].equals("0")) {             //驱动读卡器发嘀一声
            System.out.print("\n0-驱动读卡器嘀一声\n");
            CLibrary.sdtapi.pcdbeep(50);
            System.out.print("结果:如果能听到读卡器嘀一声表示成功，否则请检查读卡器是否已连上线！\n");

        } else if (args[0].equals("1"))          //读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
        {
            int status;                          //存放返回值
            byte[] devicenumber = new byte[4];   //4字节设备编号

            status =(int)(CLibrary.sdtapi.pcdgetdevicenumber(devicenumber) & 0xff);//& 0xff用于转为无符号行数据
            System.out.print("\n1-读取设备编号\n");
            System.out.print("结果:");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("读取成功!设备编号为：" + (devicenumber[0] & 0xff) + "-" + (devicenumber[1] & 0xff) + "-" + (devicenumber[2] & 0xff) + "-" + (devicenumber[3] & 0xff)+"\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("2"))          //激活CPU卡，每次卡离开过感应区都要先激活才能继续操作卡片
        {
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[4];   //4字节设备编号
            byte[] myparam = new byte[4];        //4字节卡参数
            byte[] myver= new byte[1];
            byte[] mycode= new byte[1];

            System.out.print("\n2-激活CPU卡，每次卡离开过感应区都要先激活才能继续操作卡片\n");
            status =(int)(CLibrary.sdtapi.cpurequest(mypiccserial,myparam, myver, mycode) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 || status == 52) {
                CLibrary.sdtapi.pcdbeep(38);
                String serialnumber = "";
                for (int i = 0; i < 4; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    serialnumber = serialnumber + bytestr.substring(bytestr.length() - 2, bytestr.length());
                }
                System.out.print("CPU卡激活成功，卡号：" + serialnumber+"\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("3"))          //初始化CPU卡
        {
            int status;                          //存放返回值
            byte[] mypicckey = new byte[16];     //卡片认证密码,16进制，最好不要随便修改，此密码不影响数据安全
            byte mykeylen = 16 ;                 //卡片密码长度
            int  spacesize= 1000;                //应用空间字节大小(要大于所有文件总和)，根据不同容量的卡设不同值
            byte emptycard=1;                    //初始化前是否清空卡内数据，取值1将先清空卡，取值为0不清空现有数据

            for(int i=0;i<16;i++){
                mypicckey[i]=(byte) 0xff;
            }
            System.out.print("\n3-初始化CPU卡\n");
            status =(int)(CLibrary.sdtapi.cpursinit(emptycard, mypicckey, mykeylen, spacesize) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("初始化卡成功！\n" );
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("4"))           //创建文件
        {
            int status;                          //存放返回值
            byte RKLen = 16 ;                    //文件 只读权限密码 长度
            byte[] RFilekey = new byte[RKLen];   //文件 只读权限密码
            byte WKLen = 16 ;                    //文件 读写权限密码 长度
            byte[] WFilekey = new byte[WKLen];   //文件 读写权限密码，此权限高，可认证此密码修改只读密码，要记住文件密码
            byte FileIndex=0;                    //文件号，取值0 到 5
            int FileSize=300;                    //指定文件大小字节数

            for(int i=0;i<16;i++){
                RFilekey[i]=(byte) 0xff;
                WFilekey[i]=(byte) 0xff;
            }

            System.out.print("\n4-创建文件\n");
            status =(int)(CLibrary.sdtapi.cpursfileadd(FileIndex, RFilekey, RKLen, WFilekey, WKLen, FileSize) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print(Integer.toHexString(FileIndex)+" 号文件创建成功！\n" );
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("5"))           //修改文件密码
        {
            int status;                          //存放返回值
            byte OldKey=0;                       //取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证
            byte AKLen = 16 ;                    //文件 认证密码 长度
            byte[] Autkey = new byte[AKLen];     //文件 认证密码

            byte ChaKey=0;                       //取值 0 表示更改只读密码，   取值 1 表示更改读写密码
            byte NKLen = 16 ;                    //文件 新密码密码 长度
            byte[] Newkey = new byte[NKLen];     //文件 新密码密码
            byte FileIndex=0;                    //文件号，取值0 到 5
            byte ctrlCode=(byte)(ChaKey+OldKey);

            for(int i=0;i<16;i++){               //文件认证密码、文件新密码，修改好要记住新密码，否则文件不能读写
                Autkey[i]=(byte) 0xff;
                Newkey[i]=(byte) 0xff;
            }

            System.out.print("\n5-修改文件密码\n");
            status =(int)(CLibrary.sdtapi.cpursfilekeychg(FileIndex, ctrlCode, Autkey, AKLen, Newkey, NKLen) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print(Integer.toHexString(FileIndex)+" 号文件密码修改成功！\n" );
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("6"))           //读CPU卡内文件信息
        {
            int status;                          //存放返回值
            byte AKLen = 16 ;                    //文件 认证密码 长度
            byte[] Autkey = new byte[AKLen];     //文件 认证密码
            byte FileIndex=0;                    //文件号，取值0 到 5
            byte DataStart=0;                    //读起始位置
            byte DataLen = 50 ;                  //读长度最大不能超过255，如文件长度>255 要循环读取
            byte[] DataBuf = new byte[DataLen];  //读文件数据缓冲
            byte ctrlCode=2;                     //取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证

            for(int i=0;i<16;i++){               //文件认证密码
                Autkey[i]=(byte) 0xff;
            }

            System.out.print("\n6-读CPU卡内文件信息\n");
            status = (int)(CLibrary.sdtapi.cpursfiledataread(FileIndex, ctrlCode, Autkey, AKLen, DataStart, DataBuf,DataLen) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                String filedata="";
                for (int i = 0; i < DataLen; i++) {
                    String bytestr = "00" + Integer.toHexString(DataBuf[i] & 0xff);
                    filedata = filedata + bytestr.substring(bytestr.length() - 2, bytestr.length()) +" ";
                }
                System.out.print(Integer.toHexString(FileIndex)+" 号文件读取数据："+filedata+"\n" );
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("7"))           //写数据到文件内
        {
            int status;                          //存放返回值
            byte AKLen = 16 ;                    //文件 认证密码 长度
            byte[] Autkey = new byte[AKLen];     //文件 认证密码
            byte FileIndex=0;                    //文件号，取值0 到 5
            byte DataStart=0;                    //写起始位置
            byte DataLen = 50 ;                  //写长度最大不能超过247，如文件长度>247 要循环写入
            byte[] DataBuf = new byte[DataLen];  //写文件数据缓冲
            byte ctrlCode=2;                     //取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证

            for(int i=0;i<16;i++){               //文件认证密码
                Autkey[i]=(byte) 0xff;
            }

            //写中文或字母数字等字符信息，将要写入的字符转ASCII码写入
            String WriteStr = "伟大的中华人民共和国万岁！1949-10-01                                "; //将要写入的文字生成字节数组
            byte[] strbuf = WriteStr.getBytes("gb2312");
            for (int i = 0; i < DataLen; i++) {           //将要写的数据填入写卡缓冲
                DataBuf[i] = strbuf[i];
            }

            System.out.print("\n7-写数据到文件内\n");
            status =(int)(CLibrary.sdtapi.cpursfiledatawrite(FileIndex, ctrlCode, Autkey, AKLen, DataStart, DataBuf,DataLen) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print(Integer.toHexString(FileIndex)+" 号文件写数据成功！\n" );
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("8"))           //修改改卡片密码(一般无必要修改，卡密码与文件内数据无关)
        {
            int status;                          //存放返回值
            byte OKLen = 16;                     //卡 旧密码 长度
            byte[] Oldkey = new byte[OKLen];     //卡 旧密码

            byte NKLen = 16;                     //卡 新密码密码 长度
            byte[] Newkey = new byte[NKLen];     //卡 新密码密码

            for (int i = 0; i < 16; i++) {       //修改卡密码请记住
                Oldkey[i] = (byte) 0xff;
                Newkey[i] = (byte) 0xff;
            }

            System.out.print("\n8-修改CPU卡片密码\n");
            status =(int)(CLibrary.sdtapi.cpurscardkeychg(Oldkey, OKLen, Newkey, NKLen) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("CPU卡修改卡片密码成功！\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("9")){    //强制清空已用cpursinit函数成功初始化过的卡
            int status=(int)(CLibrary.sdtapi.cpurscardclr() & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0 ) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("\n强制清空卡成功！\n");
            } else if(status == 64){
                System.out.print("此卡为未经过我们cpursinit函数成功初始化的卡！\n");
            }else{
                PrintErrInf(status);   //返回代码提示
            }
        }
    }

    //----------------------------------------------------------------------------------返回代码提示
    static void PrintErrInf(int errcode) {
        switch(errcode){
            case 8:
                System.out.print("错误代码：8，未寻到卡，请重新拿开卡后再放到感应区！\n");
                break;
            case 21:
                System.out.print("错误代码：21，没有动态库！\n");
                break;
            case 22:
                System.out.print("错误代码：22，动态库或驱动程序异常！\n");
                break;
            case 23:
                System.out.print("错误代码：23，驱动程序错误或尚未安装！\n");
                break;
            case 24:
                System.out.print("错误代码：24，操作超时，一般是动态库没有反映！\n");
                break;
            case 25:
                System.out.print("错误代码：25，发送字数不够！\n");
                break;
            case 26:
                System.out.print("错误代码：26，发送的CRC错！\n");
                break;
            case 27:
                System.out.print("错误代码：27，接收的字数不够！\n");
                break;
            case 28:
                System.out.print("错误代码：28，接收的CRC错！\n");
                break;
            case 50:
                System.out.print("错误代码：50，RATS错误，厂家调试代码，用户不需理会！\n");
                break;
            case 51:
                System.out.print("错误代码：51，PPS错误，厂家调试代码，用户不需理会！\n");
                break;
            case 52:
                System.out.print("错误代码：52，已进入了14443-4协议状态，可进行CPU卡功能所有操作了！\n");
                break;
            case 53:
                System.out.print("错误代码：53，CPU卡功能通讯错误,请先激活卡片！\n");
                break;
            case 54:
                System.out.print("错误代码：54，数据不足，需要接着发送未完成的数据至卡上！\n");
                break;
            case 55:
                System.out.print("错误代码：55，发送ACK指令给卡，让卡接着发送数据回来！\n");
                break;
            case 56:
                System.out.print("错误代码：56，清空根目录失败！\n");
                break;
            case 57:
                System.out.print("错误代码：57，卡片不支持功能！\n");
                break;
            case 58:
                System.out.print("错误代码：58，卡片初始化失败！\n");
                break;
            case 59:
                System.out.print("错误代码：59，分配的空间不足！\n");
                break;
            case 60:
                System.out.print("错误代码：60，本次操作的实体已存在！\n");
                break;
            case 61:
                System.out.print("错误代码：61，无足够空间！\n");
                break;
            case 62:
                System.out.print("错误代码：62，文件不存在！\n");
                break;
            case 63:
                System.out.print("错误代码：63，权限不足,有可能是用只读密码认证，导致无法更改读写密码或无法写文件！\n");
                break;
            case 64:
                System.out.print("错误代码：64，密码不存在，或密钥文件未创建！\n");
                break;
            case 65:
                System.out.print("错误代码：65，传送长度错误！\n");
                break;
            case 66:
                System.out.print("错误代码：66，Le错误，即接收的数据长度指定过大！\n");
                break;
            case 67:
                System.out.print("错误代码：67，功能不支持或卡中无MF 或卡片已锁定！\n");
                break;
            case 68:
                System.out.print("错误代码：68，密码认证错误次数过多，该密码已被锁死！\n");
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
                System.out.print("错误代码："+Integer.toString(errcode)+",密码错误，剩余次数为"+Integer.toString(errcode-70)+",如果为0，该密码将锁死，无法再认证！\n");
                break;
            case 86:
                System.out.print("错误代码："+Integer.toString(errcode)+",更改后的密码长度必须和创建时的长度一致！\n");
                break;
            case 87:
                System.out.print("错误代码："+Integer.toString(errcode)+",应用目录不存在！\n");
                break;
            case 88:
                System.out.print("错误代码："+Integer.toString(errcode)+",应用文件不存在！\n");
                break;
            case 89:
                System.out.print("错误代码："+Integer.toString(errcode)+",文件号不能超过 5 \n");
                break;
            case 90:
                System.out.print("错误代码："+Integer.toString(errcode)+",读取文件时返回的长度不足，数据可能不正确！\n");
                break;
            case 91:
                System.out.print("错误代码："+Integer.toString(errcode)+",一次读文件的长度不能超过 255\n");
                break;
            case 92:
                System.out.print("错误代码："+Integer.toString(errcode)+",一次写文件的长度不能超过 247\n");
                break;
            default:
                System.out.print("未知错误，错误代码："+Integer.toString(errcode)+"\n");
                break;
        }
    }

}
