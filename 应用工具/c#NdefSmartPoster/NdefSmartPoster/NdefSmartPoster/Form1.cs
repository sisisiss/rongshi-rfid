using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Runtime.InteropServices;  //调用动态库一定要加入这个引用

namespace NdefSmartPoster
{
    public partial class Form1 : Form
    {
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //外部函数声明：让设备发出声响
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdbeep", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdbeep(UInt32 xms);//xms单位为毫秒 
        
        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdgetdevicenumber", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdgetdevicenumber(byte[] devicenumber);//devicenumber用于返回编号 

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //清空MifareClass卡类标签NDEF数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_clear", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_clear();//

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //清空ForumType4类标签NDEF数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_forumtype4_clear", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_forumtype4_clear();//

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF文本类型数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_addtext", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_addtext(string languagecodestr, int languagecodestrlen, string textstr, int textstrlen);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_adddata", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_adddata(string typestr, int typestrlen, string datastr, int datastrlen);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF URI数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_adduri", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_adduri(string languagecodestr, int languagecodestrlen, string titlestr, int titlestrlen, int uriheaderindex, string uristr, int uristrlen);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF电子名片数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_addbusinesscard", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_addbusinesscard(string infostr, int infostrlen);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF热点连接数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_addwifi", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_addwifi(string ssidstr, int ssidstrlen,int authtype,int crypttype,string keystr,int keystrlen );

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF蓝牙连接数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_addbluetooth", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_addbluetooth(string blenamestr, int blenamestrlen, byte[] blemac);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //生成NDEF启动应用数据缓冲
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_addapp", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_addapp(string packagestr, int packagestrlen);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //解析数据缓冲中的NDEF信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "tagbuf_read", CallingConvention = CallingConvention.StdCall)]
        static extern byte tagbuf_read(byte[] revstr, byte[] revstrlen, byte[] recordnumber);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //将NDEF数据缓冲写入MifareClasss标签
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwrite_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccwrite_ndeftag(byte ctrlword, byte[] serial, byte[] oldkey, byte[] newkey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //清空MifareClasss类NDEF标签
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccclear_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccclear_ndeftag(byte ctrlword, byte[] serial, byte[] oldkey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取MifareClasss标签内的NDEF信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccread_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccread_ndeftag(byte ctrlword, byte[] serial, byte[] oldkey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //将NDEF数据缓冲写入ForumType4标签 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype4_write_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype4_write_ndeftag(byte ctrlword, byte[] serial, byte[] seriallen, byte[] ndefwritekey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取ForumType4标签内的NDEF信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype4_read_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype4_read_ndeftag(byte ctrlword, byte[] serial, byte[] seriallen, byte[] ndefwritekey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //将NDEF数据缓冲写入ForumType5_15693 标签 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype5_write_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype5_write_ndeftag(byte ctrlword,byte afi, byte[] serial);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取ForumType5_15693标签内的NDEF信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype5_read_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype5_read_ndeftag(byte ctrlword, byte afi, byte[] serial);

        //锁15693块数据------------------------------------------------------------------------------------------------------------------------------------------
        [DllImport("OUR_MIFARE.dll", EntryPoint = "iso15693lockblock", CallingConvention = CallingConvention.StdCall)]
        static extern byte iso15693lockblock(byte flags, byte blockaddr, byte[] uid);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //将NDEF数据缓冲写入ForumType2_Ntag2x 标签 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype2_write_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype2_write_ndeftag(byte ctrlword, byte[] serial, byte[] picckey);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取ForumType2_ntag2x标签内的NDEF信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype2_read_ndeftag", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype2_read_ndeftag(byte ctrlword, byte[] serial, byte[] picckey);

        //-------------------------------------------------------------------------------------------------------------------------------------------------------
        //读取Ntag卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadex_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccreadex_ntag(byte ctrlword, byte[] serial, byte[] picckey, byte blockadd, byte blocksize, byte[] piccdata);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //开启、关闭ntag卡密码保护功能
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccinit_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccinit_ntag(byte ctrlword, byte[] serial, byte[] picckey, byte[] piccdata);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //锁定ntag卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "picclock_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte picclock_ntag(byte locktype, byte[] mypicclockdata);

        //Write ntag2x 1 Page
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwrite_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccwrite_ul(byte blockadd, byte[] piccdata);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //Read card Serial Number only 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccrequest_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccrequest_ul(byte[] serial);// Serial Number 

        //-------------------------------------------------------------------------------------------------------------------------------------------------------
        //读取15693卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "iso15693readex", CallingConvention = CallingConvention.StdCall)]
        static extern byte iso15693readex(byte flags, byte afi, byte startblock, byte blocknum, byte[] uid, byte[] revbuf);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //轻松读MifareClass卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadex", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccreadex(byte ctrlword, byte[] serial, byte area, byte keyA1B0, byte[] picckey, byte[] piccdata0_2);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //轻松读forumtype4卡 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "forumtype4request", CallingConvention = CallingConvention.StdCall)]
        static extern byte forumtype4request(byte ctrlword, byte[] serial, byte[] seriallen);


        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 2;
            comboBox2.SelectedIndex = 7;
            comboBox3.SelectedIndex = 4;
            comboBox4.SelectedIndex = 3;
        }

        private void disperrinf(byte errcode)
        {
            switch (errcode)
            {
                case 8:
                    MessageBox.Show("错误代码：" + errcode .ToString("D") + "，未寻到卡，请将卡放在感应区！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 9:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，读序列码错误！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 10:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，选卡错误！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 11:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，装载密码错误！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 12:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，卡密码认证错误！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 13:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，读卡错误！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 14:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，写卡错误！可能启用了密码保护！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 21:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，没有动态库！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 22:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，动态库或驱动程序异常！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 23:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，驱动程序错误或尚未安装！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 24:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，操作超时，一般是动态库没有反映！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 25:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，发送字数不够！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 26:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，发送的CRC错！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 27:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，接收的字数不够！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 28:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，接收的CRC错！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 45:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，此卡不支持更改UID号或UID块已被锁定！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 46:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，信息过大，标签容量不足！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case 57:
                    MessageBox.Show("错误代码：" + errcode.ToString("D") + "，卡片不支持Forum_Type4协议，可能不是Forum_Type4_Tag卡！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                default:
                    MessageBox.Show("返回码错误代码:" + errcode.ToString("D"), "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }

        private static int checkcardtype()  //判断发卡器感应区内标签类型
        {
            byte status;                      //Store the return value
            byte myctrlword;
            byte[] mypiccserial = new byte[8];//card serial         
            byte[] mypickey = new byte[6];
            byte[] mypicdata = new byte[48];  //DataBuff
            byte[] mypiccseriallen = new byte[1];

            myctrlword = 0x00;           
            status = piccreadex_ntag(myctrlword, mypiccserial, mypickey, 4, 1, mypicdata);
            if (status == 0)
            {
                return 1;   //Ntag21x卡
            }
            else
            {
                status = iso15693readex(myctrlword, 0, 0, 1, mypiccserial, mypicdata);
                if (status == 0)
                {
                    return 2;       //15693卡
                }
                else
                {
                    myctrlword = 23;
                    mypickey[0] = 0xff; mypickey[1] = 0xff; mypickey[2] = 0xff; mypickey[3] = 0xff; mypickey[4] = 0xff; mypickey[5] = 0xff;
                    status = piccreadex(myctrlword, mypiccserial, 0, 1, mypickey, mypicdata);
                    if (status == 0)
                    {
                        return 3;       //MifareClass卡
                    }
                    else
                    {
                        myctrlword = 23;
                        mypickey[0] = 0xa0; mypickey[1] = 0xa1; mypickey[2] = 0xa2; mypickey[3] = 0xa3; mypickey[4] = 0xa4; mypickey[5] = 0xa5;
                        status = piccreadex(myctrlword, mypiccserial, 0, 1, mypickey, mypicdata);
                        if (status == 0)
                        {
                            return 3;  //MifareClass卡
                        }
                        else
                        {
                            myctrlword = 0;
                            if (forumtype4request(myctrlword, mypiccserial, mypiccseriallen) == 0 || forumtype4request(myctrlword, mypiccserial, mypiccseriallen) == 52)
                            {
                                return 4;   //forumtype4卡
                            }
                            else
                            {
                                return 0;
                            }
                        }                        
                    }
                }
            }            
        }

        //锁定ntag2数据页，锁定后标签不可以再次修改，请谨慎使用锁定功能
        private void NtagPageLock()
        {
            byte status;
            byte[] mypicclockdata = new byte[4];

            mypicclockdata[0] = 0x00; mypicclockdata[1] = 0x00; mypicclockdata[2] = 0xf9; mypicclockdata[3] = 0x00;
            status = picclock_ntag(0, mypicclockdata);   //静态锁

            mypicclockdata[0] = 0x01; mypicclockdata[1] = 0x01; mypicclockdata[2] = 0x00; mypicclockdata[3] = 0x00;
            status = picclock_ntag(1, mypicclockdata);   //动态锁
        }

        //开启或关ntag2x卡密码保护功能
        private void NtagKeyEn(byte[] mypiccserial)  
        {         
            int i;
            byte status;
            byte myctrlword;
            byte[] mypiccdata = new byte[16];

            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; //为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; 

            if (checkBox1.Checked)  //卡片已经有密码保护
            {
                myctrlword = 0x10;
            }
            else
            {
                myctrlword = 0x00;
            }

            if (checkBox2.Checked)  //开启卡密码保护功能
            {
                for (i = 0; i < 4; i++)
                {
                    mypiccdata[i + 8] = newpicckey[i];
                }
                mypiccdata[12] = 0x16;
                mypiccdata[13] = 0x16;
                mypiccdata[14] = 0x00;
                mypiccdata[15] = 0x00;
                myctrlword = (byte)(myctrlword + 0x04);  //更新控制字

                mypiccdata[0] = 0x00;
                mypiccdata[1] = 0x00;
                mypiccdata[2] = 0x00;
                mypiccdata[3] = 0x04;  //密码保护起始页
                myctrlword = (byte)(myctrlword + 0x01);  //更新控制字

                mypiccdata[4] = (byte)(0 % 8);  //认证次数
                mypiccdata[5] = 0x00;           //启用计数器
                mypiccdata[6] = 0x00;
                mypiccdata[7] = 0x00;
                myctrlword = (byte)(myctrlword + 0x02);  //更新控制字
            }
            else  //取消卡密码保护功能
            {
                mypiccdata[0] = 0x00;
                mypiccdata[1] = 0x00;
                mypiccdata[2] = 0x00;
                mypiccdata[3] = 0xff;
                myctrlword = (byte)(myctrlword + 0x01);  //更新控制字

                mypiccdata[4] = 0x00;
                mypiccdata[5] = 0x00;
                mypiccdata[6] = 0x00;
                mypiccdata[7] = 0x00;
                myctrlword = (byte)(myctrlword + 0x02);  //更新控制字
            }
            status = piccinit_ntag(myctrlword, mypiccserial, oldpicckey, mypiccdata);
        }
        private void button4_Click(object sender, EventArgs e)
        {
            byte status = pcdbeep(50);
            if(status!=0){
                disperrinf(status); 
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            byte[] devno = new byte[4];
            byte status = pcdgetdevicenumber(devno);
            if (status == 0)
            {
                pcdbeep(50);
                MessageBox.Show("设备的序列号为：" + devno[0].ToString("D3") + "-" + devno[1].ToString("D3") + "-" + devno[2].ToString("D3") + "-" + devno[3].ToString("D3"), "示例程序", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else { disperrinf(status); }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked ;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string languagecodestr = "en";   //语言编码，英文为en,中文为zh
            int languagecodestrlen = languagecodestr.Length;

            string textstr = textBox1.Text.Trim();
            int textstrlen = System.Text.Encoding.GetEncoding(936).GetBytes(textstr).Length;

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen); 
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid+"，NDEF纯文本标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF纯文本标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen); 
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid+"，NDEF纯文本标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF纯文本标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen); 
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword =(byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF纯文本标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF纯文本标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen); 
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF纯文本标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF纯文本标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                    break;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string typestr = textBox2.Text.Trim();
            int typestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(typestr).Length;

            string datastr = textBox3.Text.Trim();
            int datastrlen = System.Text.Encoding.GetEncoding(936).GetBytes(datastr).Length;

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adddata(typestr, typestrlen, datastr, datastrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF数据标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF数据标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adddata(typestr, typestrlen, datastr, datastrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF数据标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF数据标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_adddata(typestr, typestrlen, datastr, datastrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF数据标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF数据标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adddata(typestr, typestrlen, datastr, datastrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF数据标签写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF数据标签数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            } 
        }

        private void button3_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string languagecodestr = "en";  //语言编码，英文为en,中文为zh
            int languagecodestrlen = languagecodestr.Length;

            string titlestr = textBox4.Text.Trim(); //标题
            int titlestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(titlestr).Length; //标题长度

            int uriheaderindex = comboBox1.SelectedIndex;   //前缀

            string uristr = textBox5.Text.Trim();   //uri
            int uristrlen = System.Text.Encoding.GetEncoding(936).GetBytes(uristr).Length; //uri长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF智能海报写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF智能海报数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF智能海报写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF智能海报数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF智能海报写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF智能海报数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen); //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF智能海报写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF智能海报数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string languagecodestr = "en";  //语言编码，英文为en,中文为zh
            int languagecodestrlen = languagecodestr.Length;

            string titlestr = textBox7.Text.Trim(); //标题
            int titlestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(titlestr).Length; //标题长度

            int uriheaderindex = 0;   //地理位置没有链接前缀

            string uristr = "geo:" + textBox6.Text.Trim() + "," + textBox8.Text.Trim();
            int uristrlen = System.Text.Encoding.GetEncoding(936).GetBytes(uristr).Length; //uri长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF地图坐标写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF地图坐标数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF地图坐标写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF地图坐标数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF地图坐标写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF地图坐标数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF地图坐标写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF地图坐标数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string languagecodestr = "en";  //语言编码，英文为en,中文为zh
            int languagecodestrlen = languagecodestr.Length;

            string titlestr = ""; //标题
            int titlestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(titlestr).Length; //标题长度

            int uriheaderindex = 5;   //呼叫电话的链接前缀为5

            string uristr = textBox9.Text.Trim(); //呼叫电话
            int uristrlen = System.Text.Encoding.GetEncoding(936).GetBytes(uristr).Length; //uri长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF呼叫电话写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF呼叫电话数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF呼叫电话写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF呼叫电话数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF呼叫电话写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF呼叫电话数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen);
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF呼叫电话写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF呼叫电话数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string infostr = "BEGIN:VCARD"+"\n";  //语言编码，英文为en,中文为zh
            infostr = infostr + "VERSION:3.0" + "\n";
            infostr = infostr + "FN:" +textBox12.Text.Trim()  + "\n";   //姓名
            infostr = infostr + "TEL:" + textBox11.Text.Trim() + "\n";  //电话
            infostr = infostr + "ORG:" + textBox10.Text.Trim() + "\n";  //单位名称
            infostr = infostr + "ADR:" + textBox15.Text.Trim() + "\n";  //地址
            infostr = infostr + "EMAIL:" + textBox13.Text.Trim() + "\n";//邮箱
            infostr = infostr + "URL:" + textBox14.Text.Trim() + "\n";  //官网
            infostr = infostr + "END:VCARD" + "\n";

            int infostrlen = System.Text.Encoding.GetEncoding(936).GetBytes(infostr).Length; //名片长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbusinesscard(infostr, infostrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF电子名片写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF电子名片数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbusinesscard(infostr, infostrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF电子名片写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF电子名片数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_addbusinesscard(infostr, infostrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);                        
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF电子名片写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF电子名片数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbusinesscard(infostr, infostrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF电子名片写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF电子名片数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }        
       }

        private void button9_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string ssidstr =  textBox16.Text.Trim() ;   //热点名称
            int ssidstrlen = System.Text.Encoding.GetEncoding(936).GetBytes(ssidstr).Length; //热点名称长度

            int authtype = comboBox2.SelectedIndex; //认证方式
            int crypttype = comboBox3.SelectedIndex;//加密算法

            string keystr = textBox17.Text.Trim(); //密码
            int keystrlen = System.Text.Encoding.GetEncoding(936).GetBytes(keystr).Length; //密码长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF无线连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF无线连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF无线连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF无线连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF无线连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF无线连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF无线连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF无线连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }    
        }

        private void button10_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            byte[] macbuf = new byte[6];        //设备MAC地址

            string blenamestr = textBox19.Text.Trim();   //设备名称
            int blenamestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(blenamestr).Length; //设备名称长度

            string[] macstr = textBox18.Text.Split(new char[2] { ':', ':' });//设备MAC地址
            try
            {
                macbuf[0] = (byte)Convert.ToInt32(macstr[0], 16);
                macbuf[1] = (byte)Convert.ToInt32(macstr[1], 16);
                macbuf[2] = (byte)Convert.ToInt32(macstr[2], 16);
                macbuf[3] = (byte)Convert.ToInt32(macstr[3], 16);
                macbuf[4] = (byte)Convert.ToInt32(macstr[4], 16);
                macbuf[5] = (byte)Convert.ToInt32(macstr[5], 16);
            }
            catch
            {
                MessageBox.Show("蓝牙设备的MAC地址输入错误，请输入正确的MAC地址！" , "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox18.Select();
                return;
            }

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbluetooth(blenamestr, blenamestrlen, macbuf);   //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF蓝牙连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF蓝牙连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbluetooth(blenamestr, blenamestrlen, macbuf);   //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF蓝牙连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF蓝牙连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_addbluetooth(blenamestr, blenamestrlen, macbuf);   //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF蓝牙连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF蓝牙连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addbluetooth(blenamestr, blenamestrlen, macbuf);   //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF蓝牙连接写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF蓝牙连接数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }  
        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] appstr = comboBox4.Text.Split(new char[2] { '：', '：' });
            textBox20.Text = appstr[1];
        }

        private void button11_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            string packagestr =  textBox20.Text.Trim() ;   //APP名称            
            int packagestrlen = System.Text.Encoding.GetEncoding(936).GetBytes(packagestr).Length; //APP名称长度

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addapp(packagestr, packagestrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                        status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                        if (status == 0)
                        {
                            NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能
                            //if (KeyEn) { NtagPageLock(); }  锁定Ntag2标签数据块，锁定后不可再改修改，请谨慎使用

                            pcdbeep(38);
                            string carduid = "Ntag2UID：";
                            for (int i = 0; i < 7; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF启动应用写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF启动应用数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addapp(packagestr, packagestrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;
                        afi = 0;
                        status = forumtype5_write_ndeftag(myctrlword, afi, mypiccserial);
                        if (status == 0)
                        {
                            //if (KeyEn)    //15693卡锁定块数据后只能读取不可再修改，为防止卡片锁死，仅在确定需要才开启此段代码。
                            //{
                            //    status = iso15693lockblock(34, 1, mypiccserial);
                            //}
                            pcdbeep(38);
                            string carduid = "15693UID：";
                            for (int i = 0; i < 8; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF启动应用写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF启动应用数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    status = tagbuf_addapp(packagestr, packagestrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        if (havelock) { myctrlword = 0x80 + 0x40 + 0x10; } else { myctrlword = 0x80 + 0x10; }
                        if (KeyEn) { myctrlword = (byte)(myctrlword + 0x04); }
                        status = piccwrite_ndeftag(myctrlword, mypiccserial, oldpicckey, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "MifareClassUID：";
                            for (int i = 0; i < 4; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF启动应用写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF启动应用数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    status = tagbuf_addapp(packagestr, packagestrlen);  //可以用此方法写入多条记录
                    if (status == 0)
                    {
                        myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                        status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                        if (status == 0)
                        {
                            pcdbeep(38);
                            string carduid = "ForumType4UID：";
                            for (int i = 0; i < mypiccseriallen[0]; i++)
                            {
                                carduid = carduid + mypiccserial[i].ToString("X02");
                            }
                            MessageBox.Show(carduid + "，NDEF启动应用写入成功！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else { disperrinf(status); }
                    }
                    else { MessageBox.Show("生成NDEF启动应用数据缓冲时返回码错误代码:" + status, "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error); }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }  
        }

        private void button12_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] oldpicckey = new byte[6];  //卡片旧密码    
            byte[] mypiccseriallen = new byte[1];
            byte[] revstrlen=new byte[1];
            byte[] recordnumber=new byte[1] ;
            byte[] mypiccdata=new byte[2048];
            string carduid = "";

            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            
            textBox21.Text = "";
            status = 255;
            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                    status = forumtype2_read_ndeftag(myctrlword, mypiccserial, oldpicckey);
                    carduid = "Ntag2UID：";
                    for (int i = 0; i < 7; i++)
                    {
                        carduid = carduid + mypiccserial[i].ToString("X02");
                    }
                    break;
                case 2:     //15693标签
                    myctrlword = 0;
                    afi = 0;
                    status = forumtype5_read_ndeftag(myctrlword, afi, mypiccserial);
                    carduid = "15693UID：";
                    for (int i = 0; i < 8; i++)
                    {
                        carduid = carduid + mypiccserial[i].ToString("X02");
                    }
                    break;
                case 3:     //MifareClass标签
                    myctrlword = 0x80 + 0x10;
                    status = piccread_ndeftag(myctrlword, mypiccserial, oldpicckey);
                    carduid = "MifareClassUID：";
                    for (int i = 0; i < 4; i++)
                    {
                        carduid = carduid + mypiccserial[i].ToString("X02");
                    }
                    break;
                case 4:     //ForumType4标签
                    myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                    status = forumtype4_read_ndeftag(myctrlword, mypiccserial, mypiccseriallen, oldpicckey);
                    carduid = "ForumType4UID：";
                    for (int i = 0; i < mypiccseriallen[0]; i++)
                    {
                        carduid = carduid + mypiccserial[i].ToString("X02");
                    }
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }

            if (status == 0)
            {
                pcdbeep(38);
                tagbuf_read(mypiccdata, revstrlen, recordnumber);
                string ndefstr = Encoding.Default.GetString(mypiccdata);
                textBox21.Text =carduid+"\r\n"+ ndefstr;
            }            
        }

        private void button13_Click(object sender, EventArgs e)
        {
            byte status;
            byte afi;
            byte myctrlword;//控制字
            byte[] mypiccserial = new byte[8];//卡序列号
            byte[] mypiccseriallen = new byte[1];
            byte[] oldpicckey = new byte[6];  //卡片旧密码
            byte[] newpicckey = new byte[6];  //卡片新密码
            bool havelock = checkBox1.Checked;             //卡片是否已加锁  
            bool KeyEn = checkBox2.Checked; ;               //是否启用密码保护NDEF信息

            oldpicckey[0] = 0x19; oldpicckey[1] = 0x74; oldpicckey[2] = 0x02; oldpicckey[3] = 0x02; oldpicckey[4] = 0x01; oldpicckey[5] = 0x11;//为防止测试中忘记以设定的密码，标签统一用此组密码加密，客户可自行设置其他的标签保护密码
            newpicckey[0] = 0x19; newpicckey[1] = 0x74; newpicckey[2] = 0x02; newpicckey[3] = 0x02; newpicckey[4] = 0x01; newpicckey[5] = 0x11;

            int cardtype = checkcardtype();
            switch (cardtype)
            {
                case 1:     //Ntag2x标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲

                    if (havelock) { myctrlword = 0x10; } else { myctrlword = 0; }
                    status = forumtype2_write_ndeftag(myctrlword, mypiccserial, oldpicckey);
                    if (status == 0)
                    {
                        checkBox2.Checked = false; //清除保护密码 
                        NtagKeyEn(mypiccserial);   //开启或关闭Ntag2x标签密码保护功能

                        status = piccrequest_ul(mypiccserial);
                        byte[] mypicdata = new byte[4];
                        mypicdata[0] = 0x03; mypicdata[1] = 0x04; mypicdata[2] = 0xd8; mypicdata[3] = 0x00;
                        status = piccwrite_ul(4, mypicdata);
                        mypicdata[0] = 0x00; mypicdata[1] = 0x00; mypicdata[2] = 0xfe; mypicdata[3] = 0x00;
                        status = piccwrite_ul(5, mypicdata);

                        pcdbeep(38);
                        string carduid = "Ntag2UID：";
                        for (int i = 0; i < 7; i++)
                        {
                            carduid = carduid + mypiccserial[i].ToString("X02");
                        }
                        MessageBox.Show(carduid + "，NDEF标签信息已清空！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else { disperrinf(status); }
                    break;
                case 2:     //15693标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    myctrlword = 0;
                    afi = 0;
                    status = forumtype5_write_ndeftag(myctrlword, afi,mypiccserial);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        string carduid = "15693UID：";
                        for (int i = 0; i < 8; i++)
                        {
                            carduid = carduid + mypiccserial[i].ToString("X02");
                        }
                        MessageBox.Show(carduid + "，NDEF标签信息已清空！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else { disperrinf(status); }                    
                    break;
                case 3:             //MifareClass标签
                    tagbuf_clear(); //清空标签数据缓冲
                    if (havelock) { myctrlword = 0x80 + 0x40 + 0x10 + 0x02; } else { myctrlword = 0x80 + 0x10 + 0x02; }                    
                    status = piccclear_ndeftag(myctrlword, mypiccserial, oldpicckey);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        string carduid = "MifareClassUID：";
                        for (int i = 0; i < 4; i++)
                        {
                            carduid = carduid + mypiccserial[i].ToString("X02");
                        }
                        MessageBox.Show(carduid + "，NDEF标签信息已清空！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else { disperrinf(status); }                    
                    break;
                case 4:     //ForumType4标签
                    tagbuf_forumtype4_clear(); //清空标签数据缓冲
                    myctrlword = 0;     //0表示标签无密码，如设置密码取值  &H40 ，mypicckey 存放密码
                    status = forumtype4_write_ndeftag(myctrlword, mypiccserial, mypiccseriallen, newpicckey);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        string carduid = "ForumType4UID：";
                        for (int i = 0; i < mypiccseriallen[0]; i++)
                        {
                            carduid = carduid + mypiccserial[i].ToString("X02");
                        }
                        MessageBox.Show(carduid + "，NDEF标签信息已清空！！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else { disperrinf(status); }                    
                    break;
                default:
                    MessageBox.Show("请刷有效的NFC标签！", "示例提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }
    }
}
