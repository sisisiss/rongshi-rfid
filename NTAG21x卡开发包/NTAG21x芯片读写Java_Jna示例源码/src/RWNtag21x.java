import com.sun.jna.Library ;
import com.sun.jna.Native;

interface CLibrary extends Library {
    //DLL绝对路径的地址获取，注意要去空格，不要使用中文目录
    //不同版本的读写器，接口DLL文件名称、函数名称是一样的,但内核代码不一样，请选用与读写器、操作系统一致的OUR_MIFARE.dll
    String filePath = CLibrary.class.getResource("").getPath().replaceFirst("/","").replaceAll("%20"," ")+"OUR_MIFARE";
    CLibrary sdtapi = (CLibrary) Native.loadLibrary(filePath, CLibrary.class);

    //动态链接库中的方法
    byte pcdbeep(int xms);                         //让设备发出声音
    byte pcdgetdevicenumber(byte[] devicenumber);  //读取设备编号
    byte piccrequest_ul(byte[] mypiccserial);      //读卡的序列号
    byte piccread_ul(byte ReadPageBegin,byte[] mypiccdata);//读卡内4个页数据
    byte piccwrite_ul(byte WritePage,byte[] mypiccdata);   //写数据到指定页
    byte piccauthkey_ntag(byte[] mypicckey,byte[] mypiccntagpack);  //校验卡片密码
    byte piccreadex_ntag(byte myctrlword,byte[] mypiccserial,byte[] mypicckey,byte myblockaddr,byte myblocksize,byte[] mypiccdata);    //轻松读卡，一次最多可读12页共48个字节的数据
    byte piccwriteex_ntag(byte myctrlword,byte[] mypiccserial,byte[] mypicckey,byte myblockaddr,byte myblocksize,byte[] mypiccdata);   //轻松写卡，一次最多可读11页共44个字节的数据
    byte piccinit_ntag(byte myctrlword,byte[] mypiccserial,byte[] mypicckey,byte[] mypiccdata); //设置卡密码及保护机制
}

public class RWNtag21x {
    public static void main(String[] args) {
        System.setProperty("jna.encoding", "GBK");
        String filePath = CLibrary.class.getResource("").getPath().replaceFirst("/", "").replaceAll("%20", " ") + "OUR_MIFARE.DLL";
        System.out.println("本示例引用的DLL文件：" + filePath);

        if (args.length == 0) {
            System.out.println("\n请先输入运行参数！");
            System.out.println("\n参数 0：驱动读卡器嘀一声");
            System.out.println("\n参数 1：读取设备编号");
            System.out.println("\n参数 2：读卡的序列号");
            System.out.println("\n参数 3：读卡内4个连续页的数据");
            System.out.println("\n参数 4：写数据到指定页");
            System.out.println("\n参数 5：校验卡片密码");
            System.out.println("\n参数 6：轻松读卡，一次最多可读12页共48个字节的数据");
            System.out.println("\n参数 7：轻松写卡，一次最多可读11页共44个字节的数据");
            System.out.println("\n参数 8：设置卡密码及保护机制");
            return;
        }

        //Java中只能使用string1.equals(string2)的方式来比较字符串
        if (args[0].equals("0")) {             //驱动读卡器发嘀一声
            System.out.print("\n0-驱动读卡器嘀一声\n");
            CLibrary.sdtapi.pcdbeep(50);
            System.out.print("结果:如果能听到读卡器嘀一声表示成功，否则请检查读卡器是否已连上线！\n");

        } else if (args[0].equals("1")){         //读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
            int status;                          //存放返回值
            byte[] devicenumber = new byte[4];   //4字节设备编号

            status = (int) (CLibrary.sdtapi.pcdgetdevicenumber(devicenumber) & 0xff);//& 0xff用于转为无符号行数据
            System.out.print("\n1-读取设备编号\n");
            System.out.print("结果:");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                System.out.print("读取成功!设备编号为：" + (devicenumber[0] & 0xff) + "-" + (devicenumber[1] & 0xff) + "-" + (devicenumber[2] & 0xff) + "-" + (devicenumber[3] & 0xff) + "\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("2")){          //读卡的序列号
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号

            status = (int) (CLibrary.sdtapi.piccrequest_ul(mypiccserial) & 0xff);//& 0xff用于转为无符号行数据
            System.out.print("\n2-读卡的序列号\n");
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("7字节卡序号：" + uidstr+"\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("3")){          //读卡内4个页的数据
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte[] mypiccdata=new byte[16];      //16个字节读卡的数据缓冲
            byte ReadPageBegin=4;                //读起始页地址

            status = (int) (CLibrary.sdtapi.piccrequest_ul(mypiccserial) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n3-读卡内4个页的数据");
                System.out.print("\n卡序号：" + uidstr);
                status = (int) (CLibrary.sdtapi.piccread_ul(ReadPageBegin,mypiccdata) & 0xff);//& 0xff用于转为无符号行数据
                if (status == 0) {
                    CLibrary.sdtapi.pcdbeep(38);
                    String databuf = "";
                    for (int i = 0; i < mypiccdata.length ; i++) {
                        String bytestr = "00" + Integer.toHexString(mypiccdata[i] & 0xff);
                        databuf = databuf + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                    }
                    System.out.print("\n页内数据：" + databuf + "\n");
                }else {
                    PrintErrInf(status);   //返回代码提示
                }
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("4")){          //写数据到指定页
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte[] mypiccdata=new byte[4];       //4个字节的数据缓冲
            byte WritePage=4;                    //页地址

            status = (int) (CLibrary.sdtapi.piccrequest_ul(mypiccserial) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n4-写数据到指定页");
                System.out.print("\n卡序号：" + uidstr+"\n");
                mypiccdata[0]=0;mypiccdata[1]=1;mypiccdata[2]=2;mypiccdata[3]=3;
                status = (int) (CLibrary.sdtapi.piccwrite_ul(WritePage,mypiccdata) & 0xff);//& 0xff用于转为无符号行数据
                if (status == 0) {
                    CLibrary.sdtapi.pcdbeep(38);
                    System.out.print("第"+Integer.toString(WritePage)+"页数据改写成功！\n");
                }else {
                    PrintErrInf(status);   //返回代码提示
                }
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("5")){          //校验卡片密码
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte[] mypicckey=new byte[4];        //4个字节的卡密码
            byte[] mypiccntagpack=new byte[2];   //返回的确认码

            status = (int) (CLibrary.sdtapi.piccrequest_ul(mypiccserial) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n5-校验卡片密码");
                System.out.print("\n卡序号：" + uidstr+"\n");

                status = (int) (CLibrary.sdtapi.piccauthkey_ntag(mypicckey,mypiccntagpack) & 0xff);//& 0xff用于转为无符号行数据
                if (status == 0) {
                    CLibrary.sdtapi.pcdbeep(38);
                    System.out.print("卡密码认证成功!确认码为："+Integer.toHexString(mypiccntagpack[0])+" "+Integer.toHexString(mypiccntagpack[1]));
                }else {
                    PrintErrInf(status);   //返回代码提示
                }
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("6")){          //校轻松读卡，一次最多可读12页共48个字节的数据
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte[] mypicckey=new byte[4];        //4个字节的卡密码
            byte[] mypiccdata=new byte[48];      //48个字节读卡的数据缓冲
            byte myblockaddr=4;                  //读起始页地址
            byte myblocksize=12;                 //读卡页数
            byte myctrlword=0;                   //取值0不认证密码，16要认证卡密码

            if(myctrlword==16) {   //如果要认证卡密码，设置认证密码
                mypicckey[0]=(byte) 0x12;mypicckey[1]=(byte) 0x34;mypicckey[2]=(byte) 0x56;mypicckey[3]=(byte) 0x78;
            }

            System.out.print("\n6-轻松读卡");
            status = (int) (CLibrary.sdtapi.piccreadex_ntag(myctrlword,mypiccserial,mypicckey,myblockaddr,myblocksize,mypiccdata) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n卡序号：" + uidstr);

                String databuf="";
                for (int i = 0; i < myblocksize*4; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccdata[i] & 0xff);
                    databuf = databuf + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n卡内数据：" + databuf+"\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("7")) {         //轻松写卡，一次最多可读11页共44个字节的数据
            int status;                          //存放返回值
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte[] mypicckey = new byte[4];      //4个字节的卡密码
            byte[] mypiccdata = new byte[44];    //44个字节写卡缓冲
            byte myblockaddr = 4;                //写起始页地址
            byte myblocksize = 11;               //写卡页数
            byte myctrlword = 0;                 //取值0不认证密码，16要认证卡密码

            if (myctrlword == 16) {   //如果要认证卡密码，设置认证密码
                mypicckey[0] = (byte) 0x12;
                mypicckey[1] = (byte) 0x34;
                mypicckey[2] = (byte) 0x56;
                mypicckey[3] = (byte) 0x78;
            }
            //写中文或字母数字等字符信息，将要写入的字符转ASCII码写入
            String WriteStr = "伟大的中华人民共和国万岁！1949-10-01                                "; //将要写入的文字生成字节数组
            byte[] WriteBuf = WriteStr.getBytes();
            for (int i = 0; i < myblocksize*4; i++) {  //指定写卡数据，写卡页数*4个字节
                mypiccdata[i] = WriteBuf[i];
            }

            System.out.print("\n7-轻松写卡");
            status = (int) (CLibrary.sdtapi.piccwriteex_ntag(myctrlword, mypiccserial, mypicckey, myblockaddr, myblocksize, mypiccdata) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n卡序号：" + uidstr + "，写卡成功！\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }

        }else if (args[0].equals("8")) {         //设置卡密码及保护机制
            int status;                          //存放返回值
            byte[] mypicckey = new byte[4];      //4个字节的卡旧密码
            byte[] newPickey = new byte[44];     //4个字节的新密码
            byte[] mypiccserial = new byte[7];   //7字节卡号
            byte EnOrDisKey = 1;                 //0开启密码保护功能，1取消密码保护功能
            byte ReadNeedKey = 0;                //取值0读卡不需要认证密码，非0读卡也要认证密码
            byte myctrlword = 16;                //取值0不需要认证密码，16要认证卡密码  对卡操作
            byte KeyErrNum=0;                    //对卡操作允许密码错误次数（0为不限次）
            byte[] mypiccdata=new byte[16];      //本次对卡的配置信息

            if (myctrlword == 16) {   //如果要认证卡密码，设置认证密码
                mypicckey[0] = (byte) 0x12;
                mypicckey[1] = (byte) 0x34;
                mypicckey[2] = (byte) 0x56;
                mypicckey[3] = (byte) 0x78;
            }
            if(EnOrDisKey==0){      //卡片开启密码保护功能，开启后要记住卡密码，否则卡报废！！！
                myctrlword=(byte)(myctrlword+4);
                mypiccdata[3]=20;               //配置：密码保护起始页，要根据不同类型的卡来设置
                myctrlword=(byte)(myctrlword+1);

                mypiccdata[4]=(byte)(KeyErrNum % 8); //配置：最大卡密码认证错误次数
                if(ReadNeedKey>0){                   //配置：读卡时需要认证卡密码
                    mypiccdata[4]=(byte)(mypiccdata[4]+(byte)(0x80));
                }
                myctrlword=(byte)(myctrlword+2);   //配置：启用计数器
                newPickey[0]=(byte) 0x12;newPickey[1]=(byte) 0x34;newPickey[2]=(byte) 0x56;newPickey[3]=(byte) 0x78;  //配置：4个字节的新密码
                mypiccdata[12]=(byte)(0x16);
                mypiccdata[13]=(byte)(0x16);
            }else{   //卡片取消密码保护功能
                mypiccdata[3]=(byte)(0xff);
                myctrlword=(byte)(myctrlword+1);
                myctrlword=(byte)(myctrlword+2);
            }

            System.out.print("\n8-设置卡密码及保护机制");
            status = (int) (CLibrary.sdtapi.piccinit_ntag(myctrlword,mypiccserial,mypicckey,mypiccdata) & 0xff);//& 0xff用于转为无符号行数据
            if (status == 0) {
                CLibrary.sdtapi.pcdbeep(38);
                String uidstr = "";
                for (int i = 0; i < 7; i++) {
                    String bytestr = "00" + Integer.toHexString(mypiccserial[i] & 0xff);
                    uidstr = uidstr + bytestr.substring(bytestr.length() - 2, bytestr.length()) + " ";
                }
                System.out.print("\n卡序号：" + uidstr + "，设置卡密码及保护机制成功！\n");
            } else {
                PrintErrInf(status);   //返回代码提示
            }
        }
    }

    //----------------------------------------------------------------------------------返回代码提示
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
