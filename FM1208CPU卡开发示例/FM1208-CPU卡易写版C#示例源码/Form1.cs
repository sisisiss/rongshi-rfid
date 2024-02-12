using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;  //调用动态库一定要加入这个引用

namespace C井源代码CPU卡操作
{
    public partial class Form1 : Form
    {
      

        public Form1()
        {
            InitializeComponent();           
        }

        public byte NEWKEYR = 0x00;   //'更改只读密码
        public byte NEWKEYWR = 0x01;  //'更改读写密码

        public byte OLDKEYR = 0x00;   //'用只读密码认证
        public byte OLDKEYWR = 0x02;  //'用读写密码认证

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //寻卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccrequest")]
        static extern byte piccrequest(long serial);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //轻松读卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadex")]
        static extern byte piccreadex(byte ctrlword, byte[] serial, byte area, byte keyA1B0, byte[] picckey, byte[] piccdata0_2);
        //参数：说明
        //ctrlword：控制字
        //serial：卡序列号数组，用于指定或返回卡序列号
        //area：指定读卡区号
        //keyA1B0：指定用A或B密码认证,一般是用A密码，只有特殊用途下才用B密码，在这不做详细解释。
        //picckey：指定卡密码，6个字节，卡出厂时的初始密码为6个0xff
        //piccdata0_2：用于返回卡该区第0块到第2块的数据，共48个字节.
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //轻松写卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwriteex")]
        static extern byte piccwriteex(byte ctrlword, byte[] serial, byte area, byte keyA1B0, byte[] picckey, byte[] piccdata0_2);
        //参数：说明
        //ctrlword：控制字
        //serial：卡序列号数组，用于指定或返回卡序列号
        //area：指定读卡区号
        //keyA1B0：指定用A或B密码认证,一般是用A密码，只有特殊用途下才用B密码，在这不做详细解释。
        //picckey：指定卡密码，6个字节，卡出厂时的初始密码为6个0xff
        //piccdata0_2：用于返回卡该区第0块到第2块的数据，共48个字节.
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //修改卡单区的密码
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccchangesinglekey")]
        static extern byte piccchangesinglekey(byte ctrlword, byte[] serial, byte area, byte keyA1B0, byte[] piccoldkey, byte[] piccnewkey);
        //参数：说明
        //ctrlword：控制字
        //serial：卡序列号数组，用于指定或返回卡序列号
        //area：指定读卡区号
        //keyA1B0：指定用A或B密码认证,一般是用A密码，只有特殊用途下才用B密码，在这不做详细解释。
        //piccoldkey：//旧密码
        //piccnewkey：//新密码.
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //外部函数声明：让设备发出声响
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdbeep", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdbeep(Int32 xms);//xms单位为毫秒 
        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdgetdevicenumber")]
        static extern byte pcdgetdevicenumber(byte[] devicenumber);//devicenumber用于返回编号 
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //'CPU卡寻卡及将卡复位到14443A-4的指令状态
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpurequest")]
        static extern byte cpurequest(byte[] serial, byte[] param, byte[] cosver, byte[] code);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //初始化函数，(ctrlword是否需要先清空卡,不需要清空的话，可以需输入卡密码，卡密码长度)ctrlword_0是否先清空卡，分配空间（字节数），
        //Public Declare Function cpursinit Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal customsize As Long) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpursinit", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpursinit(byte ctrlword, byte[] key, byte[] keylen, Int32 customsize);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //增加文件（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间) 
        //Public Declare Function cpursfileadd Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal readonlykey As Long, ByVal readonlykeylen As Byte, ByVal writekey As Long, ByVal writekeylen As Byte, ByVal customsize As Long) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpursfileadd_s", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpursfileadd_s(byte fileno, byte[] readonlykey, byte[] readonlykeylen, byte[] writekey, byte[] writekeylen, Int32 customsize);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //'修改文件密码，修改后，请妥慎记住，否则该文件将无法再用
        //Public Declare Function cpursfilekeychg Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpursfilekeychg", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpursfilekeychg(byte fileno, byte keytype, byte[] oldkey, byte[] oldkeylen, byte[] newkey, byte[] newkeylen);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //'修改卡密码，卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件是无效的。
        //Public Declare Function cpurscardkeychg Lib "OUR_MIFARE.dll" (ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpurscardkeychg", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpurscardkeychg(byte fileno, byte[] readonlykey, byte[] readonlykeylen, byte[] writekey, byte[] writekeylen, Int32 customsize);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //读文件数据(文件序号,读写密码,密码长度,读取起始位置,读取长度,读出内容)
        //Public Declare Function cpursfiledataread Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpursfiledataread", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpursfiledataread(byte fileno, byte keytype, byte[] rwkey, byte[] rwkeylen, Int32 startaddr, byte[] databuf, Int32 datalen);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //写文件数据(文件序号,文件读写密码,密码长度,写入起始位置,写入长度，写入内容)
        //Public Declare Function cpursfiledatawrite Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpursfiledatawrite_s", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpursfiledatawrite_s(byte fileno, byte keytype, byte[] rwkey, byte[] rwkeylen, Int32 startaddr, byte[] databuf, Int32 datalen);
        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //修改卡密码，卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件是无效的。
        //Public Declare Function cpurscardkeychg Lib "OUR_MIFARE.dll" (ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpurscardkeychg", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpurscardkeychg(byte[] oldkey, byte[] oldlen, byte[] newkey, byte[] newlen);


        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;
            comboBox3.SelectedIndex = 0;
            comboBox4.SelectedIndex = 0;
            comboBox5.SelectedIndex = 0;
            comboBox6.SelectedIndex = 0;

        }

        private static bool checkpassw(string paswstr, byte[] cardmima, byte[] mimalen)   //判断密码是否合法
        {
            int i;
            byte isbyteyesno;
            paswstr = paswstr.Trim(); 
            string[] macsz = paswstr.Split(new char[2] { ' ', ' ' });//分割字符串            

            mimalen[0] = Convert.ToByte(macsz.Length);
            try
            {
                for (i = 0; i <=Convert.ToInt16(mimalen[0])-1; i++)
                {
                    isbyteyesno = Convert.ToByte(macsz[i], 16);
                    cardmima[i] = Convert.ToByte(macsz[i], 16);       
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        private static byte messdisp(byte errno)
        {
            switch (errno)
            {
                case 0:
                     MessageBox.Show("操作成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                     break;
                case 8:
                     MessageBox.Show("请重新拿开卡后再放到感应区!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 50:
                     MessageBox.Show("RATS错误，厂家调试代码，用户不需理会!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 51:
                     MessageBox.Show("PPS错误，厂家调试代码，用户不需理会!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 52:
                     MessageBox.Show("已进入了14443-4协议状态，可进行CPU卡功能所有操作了!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 53:
                     MessageBox.Show("CPU卡功能通讯错误!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 54:
                     MessageBox.Show("数据不足，需要接着发送未完成的数据至卡上!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 55:
                     MessageBox.Show("发送ACK指令给卡，让卡接着发送数据回来!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 56:
                     MessageBox.Show("清空根目录失败!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 57:
                     MessageBox.Show("卡片不支持功能!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 58:
                     MessageBox.Show("卡片初始化失败!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 59:
                     MessageBox.Show("分配的空间不足!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 60:
                     MessageBox.Show("本次操作的实体已存在!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 61:
                     MessageBox.Show("无足够空间!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 62:
                     MessageBox.Show("文件不存在!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 63:
                     MessageBox.Show("权限不足,有可能是用只读密码认证，导致无法更改读写密码或无法写文件!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 64:
                     MessageBox.Show("密码不存在，或密钥文件未创建!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 65:
                     MessageBox.Show("传送长度错误!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 66:
                     MessageBox.Show("Le错误，即接收的数据长度指定过大!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 67:
                     MessageBox.Show("功能不支持或卡中无MF 或卡片已锁定!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 68:
                     MessageBox.Show("密码认证错识次数过多，该密码已被锁死!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 86:
                     MessageBox.Show("更改后的密码长度必须和创建时的长度一致!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 87:
                     MessageBox.Show("应用目录不存在!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 88:
                     MessageBox.Show("应用文件不存在!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 89:
                     MessageBox.Show("文件号不能超过5!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 90:
                     MessageBox.Show("读取文件时返回的长度不足，数据可能不正确!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 91:
                     MessageBox.Show("一次读文件的长度不能超过255!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                case 92:
                     MessageBox.Show("一次写文件的长度不能超过247!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
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
                     MessageBox.Show("密码错误，剩余次数为"+Convert .ToString (errno-70)+"，如果为0，该密码将锁死，无法再认证", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                     break;
                default:
                     MessageBox.Show("操作失败，返回错误代码！" + Convert.ToString(errno), "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                     break; 


            }
            return 0;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            byte status;  //'存放返回值
            byte i;

            byte[] mypiccserial = new byte[4];//'卡序列号            
            byte[] myparam= new byte[4];

            byte[] myver = new byte[1];
            byte[] mycode=new byte[1];
            double cardhao;
            string cardhohex="";
            string parastr = "";
            string aaa;
            
            status = cpurequest(mypiccserial, myparam, myver, mycode);
            switch (status)
            {
                case 0 :                   

                case 52 :
                        cardhao = mypiccserial[3];
                        cardhao = cardhao * 256;
                        cardhao = cardhao + mypiccserial[2];
                        cardhao = cardhao * 256;
                        cardhao = cardhao + mypiccserial[1];
                        cardhao = cardhao * 256;
                        cardhao = cardhao + mypiccserial[0];
                        textBox1.Text =Convert.ToString (cardhao);

                        for (i = 0; i <= 3; i++)
                        {
                            aaa = "000" + string.Format("{0:X}", mypiccserial[i]);
                            aaa = aaa.Substring(aaa.Length - 2);
                            if (i < 3)
                            {
                                cardhohex = cardhohex + aaa + "-";
                            }
                            else
                            { cardhohex = cardhohex + aaa; }
                        }
                     
                        for (i = 0; i <= 3; i++)
                        {
                            aaa = "000" + string.Format("{0:X}", myparam[i]);
                            aaa = aaa.Substring(aaa.Length - 2);
                            if (i < 3)
                            {
                                parastr = parastr + aaa + "-";
                            }
                            else
                            { parastr = parastr + aaa; }
                        }

                        status = pcdbeep(20);
                        MessageBox.Show("复位CPU卡成功,CPU卡进入14443A-4的协议模式，可以接着重复操作第二步进行调试了。\r\n" + "卡号:" + cardhohex + ",参数：" + parastr + "，厂商代码(复旦为90):" + string.Format("{0:X}", mycode[0]), "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        break;
                case 8:
                        MessageBox.Show("未寻到感应区上的CPU卡，请重新拿开卡后再放到感应区！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        break;
                default :
                        MessageBox.Show("操作失败，返回错误代码！" + Convert.ToString(status), "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        break;       
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
      
         byte i;
         byte[] mylen=new byte[1];
         Int32 spacesize;
         byte status;
         byte[] keybuf=new byte[20];//'卡密码   

         if (!checkpassw(textBox2.Text, keybuf, mylen))
         {
             MessageBox.Show("请输入正确的卡密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
             textBox2.Select();
             return;
         }

         spacesize =Convert.ToInt32(spacesize1.Value);
         if (spacesize1.Value < 1)
         {
             MessageBox.Show("应用空间大小为0，请重新输入！" , "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
             spacesize1.Select();
             return;
         }

         if (checkBox1.Checked )
         { i = 1; }
         else { i = 0; }

         status = cpursinit(i, keybuf, mylen, spacesize);
         switch (status)
         {
             case 0:
                  status = pcdbeep(20);
                  MessageBox.Show("初始化卡成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                  break;
             default :
                  status=messdisp(status);
                  break; 
         }


        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form2 f2 = new Form2();
            f2.Owner = this;
            f2.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            byte i;
            Int32 spacesize; //文件大小
            byte status;
            byte[] readkeylen = new byte[1];            
            byte[] readkeybuf = new byte[20];//'只读密码   
            byte[] rwkeylen = new byte[1];
            byte[] rwkeybuf = new byte[20];//'读写密码   

            if (!checkpassw(textBox4.Text, readkeybuf, readkeylen))
            {
                MessageBox.Show("请输入正确的只读密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox4.Select();
                return;
            }

            if (!checkpassw(textBox3.Text, rwkeybuf, rwkeylen))
            {
                MessageBox.Show("请输入正确的读写密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox3.Select();
                return;
            }

            spacesize =Convert.ToInt32(filesize1.Value);
            if (spacesize1.Value < 1)
            {
                MessageBox.Show("文件大小为0，请重新输入！" , "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                filesize1.Select(); 
                return;
            }

            i =Convert.ToByte (comboBox1.SelectedIndex);

            status = cpursfileadd_s(i, readkeybuf, readkeylen, rwkeybuf, rwkeylen, spacesize);
            switch (status)
            {
                case 0:
                    status = pcdbeep(20);
                    MessageBox.Show("创建文件成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status = messdisp(status);
                    break;
            }


        }

        private void button4_Click(object sender, EventArgs e)
        {
            byte fino;
            byte i=0;
            byte status;
            byte[] oldkeylen = new byte[1];
            byte[] oldkeybuf = new byte[20];//'旧密码   
            byte[] newkeylen = new byte[1];
            byte[] neweybuf = new byte[20];//'新密码   


            if (!checkpassw(textBox5.Text, oldkeybuf, oldkeylen))
            {
                MessageBox.Show("请输入正确的认证密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox5.Select();
                return;
            }

            if (!checkpassw(textBox6.Text, neweybuf, newkeylen))
            {
                MessageBox.Show("请输入正确的新密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox6.Select();
                return;
            }

             //   '需要更改的密码类型
            if( comboBox4.SelectedIndex== 0)
            {i = NEWKEYR;}  //'更改只读密码
            else{i = NEWKEYWR;} //'更改读写密码
        
            //    '用来认证的密码类型
            if( comboBox3.SelectedIndex== 0)
            {i=Convert.ToByte(i+OLDKEYR);}  //'用只读密码来认证
            else{i =Convert.ToByte(i + OLDKEYWR);} //'用读写密码来认证

            fino =Convert.ToByte(comboBox2.SelectedIndex);
            status = cpursfilekeychg(fino, i, oldkeybuf, oldkeylen, neweybuf, newkeylen);
            switch (status)
            {
                case 0:
                    status = pcdbeep(20);
                    MessageBox.Show("修改文件密码成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status = messdisp(status);
                    break;
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            byte fino;
            byte i = 0;
            byte status;
            Int32 staradd;
            Int32 datalen;
            byte[] rwkeylen = new byte[1];
            byte[] rwkeybuf = new byte[20];//'旧密码   
            byte[] rwbuf = new byte[8000];//'新密码   
            string strls = "";
            string recestr = "";

            if (!checkpassw(textBox7.Text, rwkeybuf, rwkeylen))
            {
                MessageBox.Show("请输入正确的认证密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox7.Select();
                return;
            }

            fino = Convert.ToByte(comboBox5.SelectedIndex);

            staradd = Convert.ToInt32(staradd1.Value);

            datalen = Convert.ToInt32(datalen1.Value); 

            //    '用来认证的密码类型
            if (comboBox6.SelectedIndex == 0)
            { i =  OLDKEYR; }  //'用只读密码来认证
            else { i =  OLDKEYWR; } //'用读写密码来认证

            status = cpursfiledataread(fino, i, rwkeybuf, rwkeylen, staradd, rwbuf, datalen);
            
            switch (status)
            {
                case 0:
                    for (i = 0; i <= datalen; i++)
                    {
                        strls = "000" + string.Format("{0:X}", rwbuf[i]);
                        strls = strls.Substring(strls.Length - 2);
                        recestr = recestr + strls + " ";
                    }
                    textBox8.Text = recestr;
                    status = pcdbeep(20);
                    MessageBox.Show("读取数据成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status = messdisp(status);
                    break;
            }

        }

        private void button7_Click(object sender, EventArgs e)
        {
            byte fino;
            byte i = 0;
            byte status;
            Int32 staradd;
            Int32 datalen;
            byte[] rwkeylen = new byte[1];
            byte[] rwkeybuf = new byte[20];//'旧密码   
            byte[] rwbuf = new byte[8000];//'新密码   

            if (!checkpassw(textBox8.Text, rwbuf, rwkeylen))
            {
                MessageBox.Show("请输入正确的数据！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox8.Select();
                return;
            }

            if (!checkpassw(textBox7.Text, rwkeybuf, rwkeylen))
            {
                MessageBox.Show("请输入正确的认证密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox7.Select();
                return;
            }

            fino = Convert.ToByte(comboBox5.SelectedIndex);

            staradd = Convert.ToInt32(staradd1.Value);

            datalen = Convert.ToInt32(datalen1.Value);

            //    '用来认证的密码类型
            if (comboBox6.SelectedIndex == 0)
            { i = OLDKEYR; }  //'用只读密码来认证
            else { i = OLDKEYWR; } //'用读写密码来认证

            status = cpursfiledatawrite_s(fino, i, rwkeybuf, rwkeylen, staradd, rwbuf, datalen);

            switch (status)
            {
                case 0:
                    status = pcdbeep(20);
                    MessageBox.Show("写入数据成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status = messdisp(status);
                    break;
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            textBox8.Text = "";
        }

        private void label24_Click(object sender, EventArgs e)
        {

        }
    }
}
