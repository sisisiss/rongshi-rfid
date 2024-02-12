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
        //Easy to read
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccreadex_ul", CallingConvention = CallingConvention.StdCall)]
        public static extern byte piccreadex_ul(byte ctrlword, byte[] serial, byte blockadd, byte blocksize, byte[] piccdata);
        //parameters:
        //ctrlword：
        //serial：Card serial number array, is used to specify or return card serial number
        //blockadd：Specifies read card code
        //piccdata：Used to return to the card the 0 to 2 pieces of data, a total of 48 bytes.


        //------------------------------------------------------------------------------------------------------------------------------------------------------
        //Easy to write
        [DllImport("OUR_MIFARE.dll", EntryPoint = "piccwriteex_ul", CallingConvention = CallingConvention.StdCall)]
        static extern byte piccwriteex_ul(byte ctrlword, byte[] serial, byte blockadd, byte blocksize, byte[] piccdata);
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
            byte[] mypiccserial = new byte[7];//card serial         
            byte blockadd;                    //Read Begin Page address
            byte blocksize;
            byte[] mypicdata = new byte[48];  //DataBuff
            string CardData;

            blockadd = (byte)rwblockadd.Value;
            blocksize = (byte)rwblocksize.Value;

            status = piccreadex_ul(0, mypiccserial, blockadd, blocksize, mypicdata);
            switch (status)
            {
                case 0:
                    CardData = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardData = CardData + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardData;

                    CardData = "";
                    for (int i = 0; i < blocksize*4; i++)
                    {
                        CardData = CardData + mypicdata[i].ToString("X2");
                    }
                    richTextBox1.Text = CardData;
                    pcdbeep(38);
                    MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);

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
            byte[] mypiccserial = new byte[7];//card serial         
            byte blockadd;                    //Read Begin Page address
            byte blocksize;
            byte[] mypicdata = new byte[48];  //DataBuff
            string CardData;

            blockadd = (byte)rwblockadd.Value;
            blocksize = (byte)rwblocksize.Value;

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

            for (int i = 0; i < blocksize * 4; i++)
            {
                mypicdata[i] = Convert.ToByte(Convert.ToInt32(CardData.Substring(i * 2, 2), 16)); ;
            }


            status = piccwriteex_ul(0, mypiccserial, blockadd, blocksize, mypicdata);
            switch (status)
            {
                case 0:
                    CardData = "";
                    for (int i = 0; i < 7; i++)
                    {
                        CardData = CardData + mypiccserial[i].ToString("X2");
                    }
                    textBox3.Text = CardData;

                    pcdbeep(38);
                    MessageBox.Show("Operation is successful!", "note:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);

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
    }
}
