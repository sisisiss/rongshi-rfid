import com.sun.jna.Library ;
import com.sun.jna.Native;
import java.io.IOException;

interface CLibrary extends Library {
    //DLL绝对路径的地址获取，注意要去空格，特别坑
    //不同版本的读写器，接口DLL文件名称、函数名称是一样的,但内核代码不一样，请选用与读写器、操作系统一致的OUR_MIFARE.dll
    String filePath = CLibrary.class.getResource("").getPath().replaceFirst("/","").replaceAll("%20"," ")+"OUR_MIFARE";
    CLibrary sdtapi = (CLibrary) Native.loadLibrary(filePath, CLibrary.class);

    //动态链接库中的方法
    byte pcdbeep(int xms);                         //让设备发出声音
    byte pcdgetdevicenumber(byte[] devicenumber);  //读取设备编号
    byte piccreadex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);             //轻松读卡
    byte piccwriteex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);            //轻松写卡
    byte piccchangesinglekey(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccnewkey);  //改单区密码
    byte piccchangesinglekeyex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccdata);  //改单区密码，可同时修改A密码，或密码权限访问字(密码权限编码)或B密码
    byte piccrequest(byte[] serial);              //寻卡
    byte piccauthkey1(byte[] serial,byte area,byte keyA1B0,byte[] picckey);    //认证卡片密码
    byte piccread(byte block,byte[] blockdate);   //读指定块信息
    byte piccwrite(byte block,byte[] blockdate);   //读指定块信息
}

public class M1CardReadWriteDemo {

    public static final byte BLOCK0_EN = 0x01;      //操作第0块
    public static final byte BLOCK1_EN = 0x02;      //操作第1块
    public static final byte BLOCK2_EN = 0x04;      //操作第2块
    public static final byte NEEDSERIAL = 0x08;     //仅对指定序列号的卡操作
    public static final byte EXTERNKEY = 0x10;      //使用函数时需指定密码，否则使用预存在读写器中的密码（该密码只能写入，无法读出，很安全）
    public static final byte NEEDHALT = 0x20;       //读卡或写卡后顺便休眠该卡，休眠后，卡必须拿离开感应区，再放回感应区，才能进行第二次操作。

    public static void main(String[] args) throws Exception {
        System.setProperty("jna.encoding", "gbk");

        int status;                       //存放返回值
        byte[] devicenumber = new byte[4];//4字节设备编号
        byte myareano;                    //区号
        byte authmode;                    //密码类型，用A密码或B密码
        byte myctrlword;                  //控制字
        byte[] mypicckey = new byte[6];   //6字节卡认证密码
        byte[] mypiccserial = new byte[4];//4字节卡序列号
        byte[] mypiccdata = new byte[48]; //48字节卡扇区数据缓冲

        if (args.length == 0) {
            System.out.println("请先输入运行参数！");
            System.out.println("\n参数 0：驱动读卡器嘀一声");
            System.out.println("\n参数 1：读取设备编号");
            System.out.println("\n参数 2：轻松读卡，一次读出指定扇区内三块共48字节数据");
            System.out.println("\n参数 3：轻松写卡,一次写指定扇区内三块共48字节数据");
            System.out.println("\n参数 4：修改卡片的A密码+控制字+B密码");
            System.out.println("\n参数 5：读取指定块共16个字节数据");
            System.out.println("\n参数 6：写16个字节数据到指定块");
            return;
        }

        //Java中只能使用string1.equals(string2)的方式来比较字符串
        if (args[0].equals("0")) {             //驱动读卡器发嘀一声
            System.out.print("\n\n0-驱动读卡器嘀一声\n");
            CLibrary.sdtapi.pcdbeep(50);
            System.out.print("结果:如果能听到读卡器嘀一声表示成功，否则请检查读卡器是否已连上线！\n\n");

        } else if (args[0].equals("1"))          //读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
        {
            status = (int) (CLibrary.sdtapi.pcdgetdevicenumber(devicenumber) & 0xff);//& 0xff用于转为无符号行数据
            System.out.print("\n\n1-读取设备编号\n");
            System.out.print("结果:");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("读取成功!设备编号为" + (devicenumber[0] & 0xff) + "-" + (devicenumber[1] & 0xff) + "-" + (devicenumber[2] & 0xff) + "-" + (devicenumber[3] & 0xff));
                System.out.print("\n\n");
            } else {
                PrintErrInf(status);   //错误代码提示
            }

        } else if (args[0].equals("2")) {     //轻松读卡，一次读出指定扇区内三块共48字节数据
            myctrlword = (byte) (BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY);    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
            myareano = 8;                   //指定为第8区
            authmode = 1;                   //指定卡密码认证模式，大于0表示用A密码认证，推荐用A密码认证
            mypicckey[0] = (byte) 0xff;     //指定6字世的卡认证密码
            mypicckey[1] = (byte) 0xff;
            mypicckey[2] = (byte) 0xff;
            mypicckey[3] = (byte) 0xff;
            mypicckey[4] = (byte) 0xff;
            mypicckey[5] = (byte) 0xff;

            status = (int) (CLibrary.sdtapi.piccreadex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) & 0xff);
            System.out.print("\n\n2-轻松读卡\n");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("读卡成功，卡序列号：" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
                String ReadBuff = "";
                for (int i = 0; i < 48; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccdata[i] & 0xff);
                    ReadBuff = ReadBuff + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n扇区内数据：" + ReadBuff);
            } else {
                PrintErrInf(status);   //错误代码提示
            }

        } else if (args[0].equals("3")) {     //轻松写卡,一次写指定扇区内三块共48字节数据
            myctrlword = (byte) (BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY);    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
            myareano = 8;                   //指定为第8区
            authmode = 1;                   //指定卡密码认证模式，大于0表示用A密码认证，推荐用A密码认证
            mypicckey[0] = (byte) 0xff;     //指定6字世的卡认证密码
            mypicckey[1] = (byte) 0xff;
            mypicckey[2] = (byte) 0xff;
            mypicckey[3] = (byte) 0xff;
            mypicckey[4] = (byte) 0xff;
            mypicckey[5] = (byte) 0xff;

            //写中文或字母数字等字符信息，将要写入的字符转ASCII码写入
            String WriteStr = "伟大的中华人民共和国万岁！1949-10-01                                "; //将要写入的文字生成字节数组
            byte[] WriteBuf = WriteStr.getBytes("gb2312");
            for (int i = 0; i < 48; i++) {  //指定写卡数据，最长48个字节
                mypiccdata[i] = WriteBuf[i];
            }

            status = (int) (CLibrary.sdtapi.piccwriteex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) & 0xff);
            System.out.print("\n\n3-轻松写卡\n");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("写卡成功,卡序列号:" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
                System.out.print("\n\n");
            } else {
                PrintErrInf(status);   //错误代码提示
            }

        } else if (args[0].equals("4")) {     //修改卡片的A密码+控制字+B密码
            byte[] mypiccoldkey = new byte[6];//卡旧密码
            byte[] mypiccnewkey = new byte[17];//卡新A密码+控制字+B密码

            myctrlword = (byte) (BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY);    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
            myareano = 8;                   //指定为第8区
            authmode = 1;                   //指定卡密码认证模式，大于0表示用A密码认证，推荐用A密码认证
            mypiccoldkey[0] = (byte) 0xff;  //指定6字节的卡认证密码
            mypiccoldkey[1] = (byte) 0xff;
            mypiccoldkey[2] = (byte) 0xff;
            mypiccoldkey[3] = (byte) 0xff;
            mypiccoldkey[4] = (byte) 0xff;
            mypiccoldkey[5] = (byte) 0xff;

            mypiccnewkey[0] = (byte) 0xff;  //6字节的新A密码
            mypiccnewkey[1] = (byte) 0xff;
            mypiccnewkey[2] = (byte) 0xff;
            mypiccnewkey[3] = (byte) 0xff;
            mypiccnewkey[4] = (byte) 0xff;
            mypiccnewkey[5] = (byte) 0xff;

            mypiccnewkey[6] = (byte) 0xff;  //4字节的控制字，除非您能确定了解不要随便更改，否则卡报废
            mypiccnewkey[7] = (byte) 0x07;
            mypiccnewkey[8] = (byte) 0x80;
            mypiccnewkey[9] = (byte) 0x69;

            mypiccnewkey[10] = (byte) 0xff;  //6字节的新B密码
            mypiccnewkey[11] = (byte) 0xff;
            mypiccnewkey[12] = (byte) 0xff;
            mypiccnewkey[13] = (byte) 0xff;
            mypiccnewkey[14] = (byte) 0xff;
            mypiccnewkey[15] = (byte) 0xff;

            mypiccnewkey[16] = (byte) 0x03;  //功能码：3 表示同时更改A、B 密码及权限访问字；2 表示密码权限访问字不更改，只改A、B密码；0 示只改A密码

            status = (int) (CLibrary.sdtapi.piccchangesinglekeyex(myctrlword, mypiccserial, myareano, authmode, mypiccoldkey, mypiccnewkey) & 0xff);
            System.out.print("\n\n4-更改卡密码\n");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("卡密码更改成功,卡序列号:" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
                System.out.print("\n\n");
            } else {
                PrintErrInf(status);   //错误代码提示
            }

        } else if (args[0].equals("5")) {       //读取指定块共16个字节数据
            byte myblock;                       //块号为区号*4+0、1、2、3，其中第3块为密码控制块
            byte[] myblockdata = new byte[16]; //卡数据缓冲
            myareano = 8;                      //指定为第8区
            myblock = (byte) (myareano * 4 + 0);      //第0块地址
            authmode = 1;                      //指定卡密码认证模式，大于0表示用A密码认证，推荐用A密码认证
            mypicckey[0] = (byte) 0xff;        //指定6字世的卡认证密码
            mypicckey[1] = (byte) 0xff;
            mypicckey[2] = (byte) 0xff;
            mypicckey[3] = (byte) 0xff;
            mypicckey[4] = (byte) 0xff;
            mypicckey[5] = (byte) 0xff;

            status = (int) (CLibrary.sdtapi.piccrequest(mypiccserial) & 0xff);
            if (status == 0) {
                status = (int) (CLibrary.sdtapi.piccauthkey1(mypiccserial, myareano, authmode, mypicckey) & 0xff);
                if (status == 0) {
                    status = (int) (CLibrary.sdtapi.piccread(myblock, myblockdata) & 0xff);
                    if (status == 0) {
                        CLibrary.sdtapi.pcdbeep(38);
                        System.out.print("\n5-读块成功，卡序列号：" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
                        String ReadBuff = "";
                        for (int i = 0; i < 16; i++) {
                            String bytestr = "00" + Integer.toHexString(myblockdata[i] & 0xff);
                            ReadBuff = ReadBuff + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                        }
                        System.out.print("\n块内数据：" + ReadBuff);
                    } else {
                        PrintErrInf(status);   //错误代码提示
                    }
                } else {
                    PrintErrInf(status);   //错误代码提示
                }
            } else {
                PrintErrInf(status);   //错误代码提示
            }

        } else if (args[0].equals("6")) {       //写指定块共16个字节数据
            byte myblock;                      //块号为区号*4+0、1、2、3，其中第3块为密码控制块
            byte blockid;
            byte[] myblockdata = new byte[16]; //卡数据缓冲
            myareano = 8;                      //指定为第8区
            blockid = 0;                       //块号,3块为密码块
            myblock = (byte) (myareano * 4 + blockid);//块地址
            authmode = 1;                      //指定卡密码认证模式，大于0表示用A密码认证，推荐用A密码认证
            mypicckey[0] = (byte) 0xff;        //指定6字世的卡认证密码
            mypicckey[1] = (byte) 0xff;
            mypicckey[2] = (byte) 0xff;
            mypicckey[3] = (byte) 0xff;
            mypicckey[4] = (byte) 0xff;
            mypicckey[5] = (byte) 0xff;

            if (blockid < 3) {
                for (int i = 0; i < 16; i++) {
                    myblockdata[i] = (byte) (i);
                }
            } else {
                System.out.print("第三块为密码块，推荐使用piccchangesinglekeyex函数");
                System.exit(1);
            }

            status = (int) (CLibrary.sdtapi.piccrequest(mypiccserial) & 0xff);
            if (status == 0) {
                status = (int) (CLibrary.sdtapi.piccauthkey1(mypiccserial, myareano, authmode, mypicckey) & 0xff);
                if (status == 0) {
                    status = (int) (CLibrary.sdtapi.piccwrite(myblock, myblockdata) & 0xff);
                    if (status == 0) {
                        CLibrary.sdtapi.pcdbeep(38);
                        System.out.print("\n6-写块成功，卡序列号：" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
                    } else {
                        PrintErrInf(status);   //错误代码提示
                    }
                } else {
                    PrintErrInf(status);   //错误代码提示
                }
            } else {
                PrintErrInf(status);   //错误代码提示
            }
        }

    }

    //----------------------------------------------------------------------------------错误代码提示
    static void PrintErrInf(int errcode) {
        switch(errcode){
            case 1:
                System.out.print("错误代码：1，0~2块都没读出来，可能刷卡太块。但卡序列号已被读出来！");
                break;
            case 2:
                System.out.print("错误代码：2，第0块已被读出，但1~2块读取失败。卡序列号已被读出来！");
                break;
            case 3:
                System.out.print("错误代码：3，第0、1块已被读出，但2块读取失败。卡序列号已被读出来！");
                break;
            case 8:
                System.out.print("错误代码：8，未寻到卡，请重新拿开卡后再放到感应区！");
                break;
            case 9:
                System.out.print("错误代码：9，有多张卡在感应区，寻卡过程中防冲突失败，读序列吗错误！");
                break;
            case 10:
                System.out.print("错误代码：10，该卡可能已被休眠，无法选中卡片！");
                break;
            case 11:
                System.out.print("错误代码：11，密码装载失败！");
                break;
            case 12:
                System.out.print("错误代码：12，卡片密码认证失败！");
                break;
            case 13:
                System.out.print("错误代码：13，读本块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！");
                break;
            case 14:
                System.out.print("错误代码：14，写本块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！");
                break;
            case 21:
                System.out.print("错误代码：21，没有动态库！");
                break;
            case 22:
                System.out.print("错误代码：22，动态库或驱动程序异常！");
                break;
            case 23:
                System.out.print("错误代码：23，驱动程序错误或尚未安装！");
                break;
            case 24:
                System.out.print("错误代码：24，操作超时，一般是动态库没有反映！");
                break;
            case 25:
                System.out.print("错误代码：25，发送字数不够！");
                break;
            case 26:
                System.out.print("错误代码：26，发送的CRC错！");
                break;
            case 27:
                System.out.print("错误代码：27，接收的字数不够！");
                break;
            case 28:
                System.out.print("错误代码：28，接收的CRC错！");
                break;
            default:
                System.out.print("未知错误，错误代码："+Integer.toString(errcode));
                break;
        }
    }

}