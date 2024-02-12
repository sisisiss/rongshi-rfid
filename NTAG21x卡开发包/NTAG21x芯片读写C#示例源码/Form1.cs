using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
//using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Runtime.InteropServices;  //call dll must declare 
using System.Text;//Be sure to join this


namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        //Constants defined
        public const byte BLOCK0_EN = 0x01;//Operating 0 blocks
        public const byte BLOCK1_EN = 0x02;//Operating 1 blocks
        public const byte BLOCK2_EN = 0x04;//Operating 2 blocks
        public const byte NEEDSERIAL = 0x08;//Only the specified serial number card operation
        public const byte EXTERNKEY = 0x10;
        public const byte NEEDHALT = 0x20;//Read or write CARDS after dormancy card, by the way, after dormancy, leave induction card must take, return to active area, to carry out the second operation。

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //External function declaration: make sound equipment
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdbeep", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdbeep(UInt32 xms);//xms  milliseconds 

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //Read the device number, can be used as a software encryption dog, can also according to the number on the company website query warranty period
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdgetdevicenumber", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdgetdevicenumber(byte[] devicenumber);//devicenumber


        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //Read card Serial Number only 
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccrequest_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccrequest_ul(byte[] serial);// Serial Number 

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //Read card 4 pages data
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccread_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccread_ul(byte blockadd, byte[] piccdata);// Serial Number 

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //Write 1 Page
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwrite_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccwrite_ul(byte blockadd, byte[] piccdata);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //认证密码
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccauthkey_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccauthkey_ntag(byte[] picckey, byte[] piccntagpack);

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取卡的版本号及型号
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccgetversion_ntag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccgetversion_ntag(byte[] mypiccversiondata);//devicenumber

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取卡的签字信息
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadsig_ntag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccreadsig_ntag(byte[] piccsigdata);//devicenumber

        //------------------------------------------------------------------------------------------------------------------------------------------------------    
        //读取卡操作的单向计数器（卡操作流水号）
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadcnt_ntag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccreadcnt_ntag(byte[] mypicccntdata);//devicenumber

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //锁定页数据
        [DllImport("OUR_MIFARE.dll", EntryPoint = "picclock_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte picclock_ntag(byte locktype, byte[] mypicclockdata);

        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //初始化卡
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccinit_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccinit_ntag(byte ctrlword, byte[] serial, byte[] picckey,  byte[] piccdata);


        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //Easy to read
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadex_ntag", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccreadex_ntag(byte ctrlword, byte[] serial, byte[] picckey, byte blockadd, byte blocksize, byte[] piccdata);
        //parameters:
        //ctrlword：
        //serial：Card serial number array, is used to specify or return card serial number
        //picckey:password
        //blockadd：Specifies read card code
        //piccdata：Used to return to the card the 0 to 2 pieces of data, a total of 48 bytes.


        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //Easy to write
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwriteex_ntag", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccwriteex_ntag(byte ctrlword, byte[] serial, byte[] picckey, byte blockadd, byte blocksize, byte[] piccdata);
        //parameters:
        //ctrlword：
        //serial：Card serial number array, is used to specify or return card serial number
        //blockadd：Specifies read card code
        //piccdata：Used to return to the card the 0 to 2 pieces of data, a total of 48 bytes.


        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //Send Display Information to Drive
        [DllImport("OUR_MIFARE.dll", EntryPoint = "lcddispfull", CallingConvention = CallingConvention.StdCall)]
        static extern byte lcddispfull(string lcdstr);
        //parameters:
        //lcdstr：According to the content

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)//easy to read ICcard
        {
            byte status;                      //Store the return value
            byte myctrlword;
            byte[] mypiccserial = new byte[7];//card serial         
            byte[] mypickey = new byte[4];
            byte blockadd;                    //Read Begin Page address
            byte blocksize;
            byte[] mypicdata = new byte[48];  //DataBuff
            string CardData;
            string CardKey;
            int i;

            if (rwps.Value > 12 || rwps.Value<1)
            {
                DialogResult dr = MessageBox.Show("一次最多只能读12页！", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning );
                rwps.Select();
                return;
            }

            if (checkBox3.Checked)
            {
                if ((textBox8.Text.Trim()).Length != 8)
                {
                    DialogResult dr = MessageBox.Show("卡密码不足8位，请输入正确的认证密码。", "Note", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    textBox8.Select();
                    return;
                }
                CardKey = textBox8.Text.Trim();
                for (i = 0; i < 4; i++)
                {
                    mypickey[i] = Convert.ToByte(Convert.ToInt32(CardKey.Substring(i * 2, 2), 16)); ;
                }
                myctrlword = 0x10;
            }
            else { myctrlword = 0x00; }

            blockadd = (byte)rwbegp.Value;  //读起始页地址
            blocksize = (byte)rwps.Value;   //读页数

            //----------------------------------------------------------------------------------------
            byte comedc = 0x1b;
            string ComOrd = "0F1B";

            comedc = (byte)(comedc ^ myctrlword); //控制字
            ComOrd = ComOrd + myctrlword.ToString("X2");

            for (i = 0; i < 7; i++)           //卡序号 
            {
                comedc = (byte)(comedc ^ mypiccserial[i]);
                ComOrd = ComOrd + mypiccserial[i].ToString("X2");
            }

            for (i = 0; i < 4; i++)           //认证密码 
            {
                comedc = (byte)(comedc ^ mypickey[i]);
                ComOrd = ComOrd + mypickey[i].ToString("X2");
            }

            comedc = (byte)(comedc ^ blockadd); //页地址
            ComOrd = ComOrd + blockadd.ToString("X2");

            comedc = (byte)(comedc ^ blocksize); //页数
            ComOrd = ComOrd + blocksize.ToString("X2");

            ComOrd = ComOrd + comedc.ToString("X2"); //校验码
            richTextBox2.Text = ComOrd;
            //----------------------------------------------------------------------------------------
            status = piccreadex_ntag(myctrlword, mypiccserial, mypickey, blockadd, blocksize, mypicdata);
            switch (status)
            {
                case 0:
                    CardData = "";
                    for ( i = 0; i < 7; i++)
                    {
                        CardData = CardData + mypiccserial[i].ToString("X2");
                    }
                    textBox7.Text = CardData;

                    CardData = "";
                    for ( i = 0; i < blocksize*4; i++)
                    {
                        CardData = CardData + mypicdata[i].ToString("X2");
                    }
                    richTextBox1.Text = CardData;
                    pcdbeep(38);
                    MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);

                    break;
                //......
                case 8:
                    richTextBox1.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 12:
                    richTextBox1.Text = "";
                    MessageBox.Show("密码错误!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 13:
                    richTextBox1.Text = "读卡失败，可能需要验证密码";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 23:
                    richTextBox1.Text = "";
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    richTextBox1.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }


            //Return to explain
            /*
            REQUEST 8//Not Find card 
            READSERIAL 9//Read a sequence error
            SELECTCARD 10//Selected card error
            LOADKEY 11//load key errir
            AUTHKEY 12//authentication Key error
            READ 13//Read card Error
            WRITE 14//Write card Error

            NONEDLL 21//not dll
            DRIVERORDLL 22//dll files error
            DRIVERNULL 23//not install drivers or the drivers is  err
            TIMEOUT 24//Timeout 
            TXSIZE 25//Send word is not enough
            TXCRC 26//send CRC error
            RXSIZE 27// receive information is not enough
            RXCRC 28//receive CRC is error



            */
        }

        private void button2_Click(object sender, EventArgs e)//easy to write card
        {
            byte status;                      //Store the return value
            byte myctrlword;
            byte[] mypiccserial = new byte[7];//card serial      
            byte[] mypickey = new byte[4];
            byte blockadd;                    //Read Begin Page address
            byte blocksize;
            byte[] mypicdata = new byte[48];  //DataBuff
            string CardData;
            int i;

            if (rwps.Value > 11 || rwps.Value < 1)
            {
                DialogResult dr = MessageBox.Show("一次最多只能写11页！", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                rwps.Select();
                return;
            }

            if (checkBox3.Checked)
            {
                if ((textBox8.Text.Trim()).Length != 8)
                {
                    DialogResult dr = MessageBox.Show("卡密码不足8位，请输入正确的认证密码。", "Note", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    textBox8.Select();
                    return;
                }
               string  CardKey = textBox8.Text.Trim();
                for ( i = 0; i < 4; i++)
                {
                    mypickey[i] = Convert.ToByte(Convert.ToInt32(CardKey.Substring(i * 2, 2), 16)); ;
                }
                myctrlword = 0x10;
            }
            else { myctrlword = 0x00; }

            blockadd = (byte)rwbegp.Value;  //读起始页地址
            blocksize = (byte)rwps.Value;   //读页数

            if ((richTextBox1.Text.Trim()).Length < blocksize*4*2)
            {
                DialogResult dr = MessageBox.Show("Write data is not enough, whether to fill 0 in the rear?", "Note", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (dr != DialogResult.OK)
                {
                    return;
                }
                else
                {
                    CardData = (richTextBox1.Text.Trim() + "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000").Substring(0, blocksize * 4 * 2);
                }
            }
            else
            {
                CardData = richTextBox1.Text.Trim().Substring(0, blocksize * 4 * 2);
            }
            richTextBox1.Text = CardData;

            for ( i = 0; i < blocksize * 4; i++)
            {
                mypicdata[i] = Convert.ToByte(Convert.ToInt32(CardData.Substring(i * 2, 2), 16)); ;
            }

            //----------------------------------------------------------------------------------------
            byte comedc = 0x1c;
            string ComOrd = "3B1C";

            comedc = (byte)(comedc ^ myctrlword); //控制字
            ComOrd = ComOrd + myctrlword.ToString("X2");

            for (i = 0; i < 7; i++)           //卡序号 
            {
                comedc = (byte)(comedc ^ mypiccserial[i]);
                ComOrd = ComOrd + mypiccserial[i].ToString("X2");
            }

            for (i = 0; i < 4; i++)           //认证密码 
            {
                comedc = (byte)(comedc ^ mypickey[i]);
                ComOrd = ComOrd + mypickey[i].ToString("X2");
            }

            comedc = (byte)(comedc ^ blockadd); //页地址
            ComOrd = ComOrd + blockadd.ToString("X2");

            comedc = (byte)(comedc ^ blocksize); //页数
            ComOrd = ComOrd + blocksize.ToString("X2");

            for (i = 0; i < 44; i++)           //数据 
            {
                comedc = (byte)(comedc ^ mypicdata[i]);
                ComOrd = ComOrd + mypicdata[i].ToString("X2");
            }

            ComOrd = ComOrd + comedc.ToString("X2"); //校验码
            richTextBox2.Text = ComOrd;
            //----------------------------------------------------------------------------------------


            status = piccwriteex_ntag(myctrlword, mypiccserial, mypickey, blockadd, blocksize, mypicdata);
            switch (status)
            {
                case 0:
                    CardData = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardData = CardData + mypiccserial[i].ToString("X2");
                    }
                    textBox7.Text = CardData;

                    pcdbeep(38);
                    MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);

                    break;
                //......
                case 8:
                    textBox7.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 12:
                    textBox7.Text = "";
                    MessageBox.Show("密码错误!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 14:
                    textBox7.Text = "";
                    MessageBox.Show("写卡失败，可能需要验证密码 或 页已经锁死!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 23:
                    textBox7.Text = "";
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox7.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }


            //Return to explain
            /*
            REQUEST 8//Not Find card 
            READSERIAL 9//Read a sequence error
            SELECTCARD 10//Selected card error
            LOADKEY 11//load key errir
            AUTHKEY 12//authentication Key error
            READ 13//Read card Error
            WRITE 14//Write card Error

            NONEDLL 21//not dll
            DRIVERORDLL 22//dll files error
            DRIVERNULL 23//not install drivers or the drivers is  err
            TIMEOUT 24//Timeout 
            TXSIZE 25//Send word is not enough
            TXCRC 26//send CRC error
            RXSIZE 27// receive information is not enough
            RXCRC 28//receive CRC is error



            */
        }

        private void button4_Click(object sender, EventArgs e)
        {
            pcdbeep(50);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            

            //Return to explain
            /*
            REQUEST 8//Not Find card 
            READSERIAL 9//Read a sequence error
            SELECTCARD 10//Selected card error
            LOADKEY 11//load key errir
            AUTHKEY 12//authentication Key error
            READ 13//Read card Error
            WRITE 14//Write card Error

            NONEDLL 21//not dll
            DRIVERORDLL 22//dll files error
            DRIVERNULL 23//not install drivers or the drivers is  err
            TIMEOUT 24//Timeout 
            TXSIZE 25//Send word is not enough
            TXCRC 26//send CRC error
            RXSIZE 27// receive information is not enough
            RXCRC 28//receive CRC is error



            */
        }

        private void button8_Click(object sender, EventArgs e)//Read the device number, can be used as a software encryption dog, can also according to the number on the company website query warranty period
        {
            byte[] devno = new byte[4];
            if (pcdgetdevicenumber(devno) == 0)
            {
                MessageBox.Show(System.Convert.ToString(devno[0]) + "-" + System.Convert.ToString(devno[1]) + "-" + System.Convert.ToString(devno[2]) + "-" + System.Convert.ToString(devno[3]));
                //ShowMessage(IntToStr(devno[0]) + "-" + IntToStr(devno[1]) + "-" + IntToStr(devno[2]) + "-" + IntToStr(devno[3]));
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {

        }

        private void button11_Click(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            string CardSN;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;
                    pcdbeep(38);
                    MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk );
                    break;
                //......
                case 8:
                    textBox3.Text ="";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = ""; 
                    MessageBox.Show("Error Code:" + status,"warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button10_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            
        }

        private void button6_Click(object sender, EventArgs e)
        {
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 1;
        }

        private void button7_Click_1(object sender, EventArgs e)
        {
            byte status;                      //Store the return value
            byte[] mypiccserial = new byte[7];//card serial         
            byte blockadd;                    //Read Begin Page address
            byte[] mypicdata = new byte[16];  //DataBuff
            string CardData;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardData = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardData = CardData + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardData;

                    blockadd = (byte)rwblockadd.Value;

                    status = piccread_ul(blockadd, mypicdata);
                    if (status==0)
                    {
                        CardData = "";
                        for (int i = 0; i < 16; i++)
                        {
                            CardData = CardData + mypicdata[i].ToString("X2");
                        }
                        textBox4.Text = CardData;
                        pcdbeep(38);
                        MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button10_Click_1(object sender, EventArgs e)
        {
            byte status;                      //Store the return value
            byte[] mypiccserial = new byte[7];//card serial         
            byte blockadd;                    //Read Begin Page address
            byte[] mypicdata = new byte[4];  //DataBuff
            string CardIdH;
            string CardData;

            if((textBox5.Text.Trim()).Length <8  )
            {
                DialogResult dr = MessageBox.Show("Write data is not enough, whether to fill 0 in the rear?", "Note", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (dr != DialogResult.OK)
                {
                    return;
                }
                else
                {
                    CardData = (textBox5.Text.Trim() + "00000000").Substring(0, 8);
                }
            }
            else
            {
                CardData = textBox5.Text.Trim().Substring (0,8);
            }
            textBox5.Text = CardData;


            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardIdH = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardIdH = CardIdH + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardIdH;

                    blockadd = (byte)rwblockadd.Value;
                    for (int i = 0; i < 4; i++)
                    {
                        mypicdata[i] = Convert.ToByte(Convert.ToInt32(CardData.Substring(i*2, 2), 16)); ;
                    }

                    status = piccwrite_ul(blockadd, mypicdata);
                    if (status == 0)
                    {                        
                        pcdbeep(38);
                        MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        if (status == 14)
                        { MessageBox.Show("Error Code:" + status + "，写卡失败，可能需要密码 或 页已被锁死！", "note", MessageBoxButtons.OK, MessageBoxIcon.Warning); }
                        else
                        { MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning); }
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_KeyPress(object sender, KeyPressEventArgs e)  
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
            
           
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void richTextBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            byte status;                      //Store the return value
            byte[] mypiccserial = new byte[7];//card serial         
            byte blockadd;                    //Read Begin Page address
            byte[] mypickey = new byte[4];  //DataBuff
            byte[] mypiccntagpack = new byte[2];//认证后返回的确认码

            string CardIdH;
            string CardKey;

            if ((textBox1.Text.Trim()).Length != 8)
            {
                DialogResult dr = MessageBox.Show("卡密码不足8位，请输入正确的认证密码。", "Note", MessageBoxButtons.OK , MessageBoxIcon.Asterisk );

                    return;
            }

            CardKey = textBox1.Text.Trim();

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardIdH = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardIdH = CardIdH + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardIdH;

                    for (int i = 0; i < 4; i++)
                    {
                        mypickey[i] = Convert.ToByte(Convert.ToInt32(CardKey.Substring(i * 2, 2), 16)); ;
                    }

                    status = piccauthkey_ntag(mypickey, mypiccntagpack);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        MessageBox.Show("卡密码认证成功!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        if (status == 12)
                        {
                            MessageBox.Show("Error Code:" + status, "卡密码认证失败！", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                        else
                        {
                            MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }

        private void button5_Click_1(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            byte[] mypiccversiondata = new byte[8];
            string CardSN;
            int i;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for ( i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;

                    status = piccgetversion_ntag(mypiccversiondata);
                    if (status==0)
                    {
                        pcdbeep(38);
                        CardSN = "";
                        for (i=0;i<8;i++)
                        {
                            CardSN = CardSN + mypiccversiondata[i].ToString("X2");
                        }
                        MessageBox.Show("卡版本信息：" + CardSN, "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        MessageBox.Show("Error Code:" + status + ",读卡版本信息失败！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }                
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button6_Click_1(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            byte[] piccsigdata = new byte[32];
            string CardSN;
            int i;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;

                    status = piccreadsig_ntag(piccsigdata);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        CardSN = "";
                        for (i = 0; i < 32; i++)
                        {
                            CardSN = CardSN + piccsigdata[i].ToString("X2");
                        }
                        MessageBox.Show("卡签字信息：" + CardSN, "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        MessageBox.Show("Error Code:" + status + ",读卡的签字信息失败！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button9_Click_1(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            byte[] mypicccntdata = new byte[3];
            string CardSN;
            int i;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;

                    status = piccreadcnt_ntag(mypicccntdata);
                    if (status == 0)
                    {
                        pcdbeep(38);
                        CardSN = "";
                        for (i = 0; i < 3; i++)
                        {
                            CardSN = CardSN + mypicccntdata[i].ToString("X2");
                        }
                        MessageBox.Show("卡操作的单向计数器：" + CardSN, "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        MessageBox.Show("Error Code:" + status + ",可能是计数器功能尚未启用或卡本身不支持计数功能！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button12_Click(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            byte[] mypicclockdata = new byte[4];
            string CardSN;
            int i;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;

                    if (MessageBox.Show("确定要将3`15页数据锁死?", "Confirm Message", MessageBoxButtons.OKCancel,MessageBoxIcon.Question) == DialogResult.OK)
                    {
                        mypicclockdata[0] = 0x00;
                        mypicclockdata[1] = 0x00;
                        mypicclockdata[2] = 0xF9;
                        mypicclockdata[3] = 0x00;

                        status = picclock_ntag(0, mypicclockdata);
                        if (status == 0)
                        {                           
                            MessageBox.Show("0~15页锁定位写入成功!" , "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                        }
                        else
                        {
                            MessageBox.Show("Error Code:" + status + ",写卡失败！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void button13_Click(object sender, EventArgs e)
        {
            byte status;//Store the return value
            byte[] mypiccserial = new byte[7];//card serial            
            byte[] mypicclockdata = new byte[4];
            string CardSN;
            int i;

            status = piccrequest_ul(mypiccserial);
            switch (status)
            {
                case 0:
                    CardSN = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardSN;

                    if (MessageBox.Show("确定要将3`15页数据锁死?", "Confirm Message", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                    {
                        mypicclockdata[0] = 0x01;
                        mypicclockdata[1] = 0x01;
                        mypicclockdata[2] = 0x00;
                        mypicclockdata[3] = 0x00;

                        status = picclock_ntag(1, mypicclockdata);
                        if (status == 0)
                        {
                            MessageBox.Show("16之后的页锁定位写入成功!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                        }
                        else
                        {
                            MessageBox.Show("Error Code:" + status + ",写卡失败！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    break;
                //......
                case 8:
                    textBox3.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox3.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button14_Click(object sender, EventArgs e)
        {
            byte[] mypiccserial = new byte[7];//card serial            
            int i;
            byte status;
            string CardKey;
            byte[] mypickey = new byte[4];
            byte myctrlword;
            byte comedc;
            byte[] mypiccdata =new byte[16];
            string ComOrd;

            if (checkBox1.Checked) 
            {
                if ((textBox2.Text.Trim()).Length != 8)
                {
                    DialogResult dr = MessageBox.Show("卡密码不足8位，请输入正确的认证密码。", "Note", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    textBox2.Select();
                    return;
                }
                CardKey = textBox2.Text.Trim();
                for (i = 0; i < 4; i++)
                {
                    mypickey[i] = Convert.ToByte(Convert.ToInt32(CardKey.Substring(i * 2, 2), 16)); ;
                }

                myctrlword = 0x10;
            }
            else 
            {
                myctrlword = 0x00;
            }

            if (comboBox1.SelectedIndex ==0)  //开启卡密码保护功能
            {
                if ((textBox6.Text.Trim()).Length != 8)
                {
                    DialogResult dr = MessageBox.Show("卡密码不足8位，请输入正确的认证密码。", "Note", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    textBox6.Select();
                    return;
                }
                CardKey = textBox6.Text.Trim();
                for (i = 0; i < 4; i++)
                {
                    mypiccdata[i+8] = Convert.ToByte(Convert.ToInt32(CardKey.Substring(i * 2, 2), 16)); ;
                }
                mypiccdata[12] = 0x16;
                mypiccdata[13] = 0x16;
                mypiccdata[14] = 0x00;
                mypiccdata[15] = 0x00;
                myctrlword =(byte)(myctrlword + 0x04);  //更新控制字

                mypiccdata[0] = 0x00;
                mypiccdata[1] = 0x00;
                mypiccdata[2] = 0x00;
                mypiccdata[3] =(byte) beginpage.Value ;  //密码保护起始页
                myctrlword = (byte)(myctrlword + 0x01);  //更新控制字

                mypiccdata[4] = (byte)(authno.Value % 8);  //认证次数
                if (checkBox2.Checked)                    //开启读密码保护
                {
                    mypiccdata[4] =(byte)(mypiccdata[4] + 0x80);
                }
                mypiccdata[5] = 0x00;    //启用计数器
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
            //-------------------------------------------------------------------
            comedc = 0x16;
            ComOrd = "1D16";

            comedc=(byte)(comedc^myctrlword); //控制字
            ComOrd = ComOrd + myctrlword.ToString("X2");

            for (i = 0; i < 7; i++)           //卡序号 
            {
                comedc =(byte)(comedc ^ mypiccserial[i]);
                ComOrd = ComOrd + mypiccserial[i].ToString("X2");
            }

            for (i = 0; i < 4; i++)           //认证密码 
            {
                comedc = (byte)(comedc ^ mypickey[i]);
                ComOrd = ComOrd + mypickey[i].ToString("X2");
            }

            for (i = 0; i < 16; i++)           //数据
            {
                comedc = (byte)(comedc ^ mypiccdata[i]);
                ComOrd = ComOrd + mypiccdata[i].ToString("X2");
            }

            ComOrd = ComOrd + comedc.ToString("X2"); //校验码
            richTextBox2.Text = ComOrd;
            //-------------------------------------------------------------------

            status = piccinit_ntag(myctrlword, mypiccserial, mypickey, mypiccdata);
            switch (status)
            {
                case 0:
                    pcdbeep(38);
                    string CardSN = "";
                    for (i = 0; i < 7; i++)
                    {
                        CardSN = CardSN + mypiccserial[i].ToString("X2");
                    }
                    textBox7.Text = CardSN;
                    MessageBox.Show("卡片初始化成功！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Information );
                    break;
                case 8:
                    textBox7.Text = "";
                    MessageBox.Show("Please put the card on the induction area!", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;
                case 12:
                    MessageBox.Show("卡密码认证失败！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Information );
                    break;
                case 14:
                    MessageBox.Show("初始化卡失败，可能要先认证密码！", "warn", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                case 23:
                    MessageBox.Show("Please Connection the USB Card reader !", "Note:", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    break;

                default:
                    textBox7.Text = "";
                    MessageBox.Show("Error Code:" + status, "warn", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    break;

            }

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }

        private void textBox6_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }

        private void textBox8_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && !Char.IsDigit(e.KeyChar) && !(e.KeyChar >= 97 && e.KeyChar <= 102) && !(e.KeyChar >= 65 && e.KeyChar <= 70))  //only input hex data
            {
                e.Handled = true;
            }
        }
    }
}
