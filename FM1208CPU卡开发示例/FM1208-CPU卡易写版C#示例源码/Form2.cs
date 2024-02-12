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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        //------------------------------------------------------------------------------------------------------------------------------
        //外部函数声明：让设备发出声响
        [DllImport("OUR_MIFARE.dll", EntryPoint = "pcdbeep", CallingConvention = CallingConvention.StdCall)]
        static extern byte pcdbeep(Int32 xms);//xms单位为毫秒 
        //------------------------------------------------------------------------------------------------------------------------------
        //修改卡密码，卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件是无效的。
        //Public Declare Function cpurscardkeychg Lib "OUR_MIFARE.dll" (ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpurscardkeychg", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpurscardkeychg(byte[] oldkey, byte[] oldlen, byte[] newkey, byte[] newlen);
        //------------------------------------------------------------------------------------------------------------------------------
        //强制清空卡，用cpursinit函数成功初始化过后，如果卡密码丢去了，可以尝试用以下的强制清空卡函数清空卡至出厂状态。
        //Public Declare Function cpurscardclr Lib "OUR_MIFARE.dll" () As Byte
        [DllImport("OUR_MIFARE.dll", EntryPoint = "cpurscardclr", CallingConvention = CallingConvention.StdCall)]
        static extern byte cpurscardclr();

        private static bool checkpassw(string paswstr, byte[] cardmima, byte[] mimalen)   //判断密码是否合法
        {
            int i;
            byte isbyteyesno;
            paswstr = paswstr.Trim();
            string[] macsz = paswstr.Split(new char[2] { ' ', ' ' });//分割字符串            

            mimalen[0] = Convert.ToByte(macsz.Length);
            try
            {
                for (i = 0; i <= Convert.ToInt16(mimalen[0]) - 1; i++)
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
                    MessageBox.Show("密码错误，剩余次数为" + Convert.ToString(errno - 70) + "，如果为0，该密码将锁死，无法再认证", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                default:
                    MessageBox.Show("操作失败，返回错误代码！" + Convert.ToString(errno), "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;


            }
            return 0;

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            byte status;
            byte[] oldkeylen = new byte[1];
            byte[] oldkeybuf = new byte[20];//'旧密码   
            byte[] newkeylen = new byte[1];
            byte[] neweybuf = new byte[20];//'新密码   


            if (!checkpassw(textBox1.Text, oldkeybuf, oldkeylen))
            {
                MessageBox.Show("请输入正确的认证密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox1.Select();
                return;
            }

            if (!checkpassw(textBox2.Text, neweybuf, newkeylen))
            {
                MessageBox.Show("请输入正确的新密码！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox2.Select();
                return;
            }

            status = cpurscardkeychg(oldkeybuf, oldkeylen, neweybuf, newkeylen);
            switch (status)
            {
                case 0:
                    status = pcdbeep(20);
                    MessageBox.Show("修改卡密码成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status =messdisp(status);
                    break;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            byte status;
            status = cpurscardclr();
            switch (status)
            {
                case 0:
                    status = pcdbeep(20);
                    MessageBox.Show("强制清空卡成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                case 64:
                    MessageBox.Show("此卡为未经过我们cpursinit函数成功初始化的卡！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    break;
                default:
                    status = messdisp(status);
                    break;
            }
        }
    }
}
