namespace WindowsFormsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.button11 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.button10 = new System.Windows.Forms.Button();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.rwblockadd = new System.Windows.Forms.NumericUpDown();
            this.rwblocksize = new System.Windows.Forms.NumericUpDown();
            this.label2 = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.rwblockadd)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rwblocksize)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(32, 269);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(374, 33);
            this.button1.TabIndex = 0;
            this.button1.Text = "Easy to read\n ULcard ,Onetime Pages<=12";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(32, 378);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(374, 33);
            this.button2.TabIndex = 1;
            this.button2.Text = "Easy to write\n Iccard,Onetime Pages<=12";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(25, 12);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(105, 30);
            this.button4.TabIndex = 3;
            this.button4.Text = "Beep";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(25, 48);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(381, 30);
            this.button8.TabIndex = 7;
            this.button8.Text = "Get the driver SN as an encrypted with dog\n";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(200, 90);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(206, 21);
            this.textBox3.TabIndex = 13;
            // 
            // button11
            // 
            this.button11.Location = new System.Drawing.Point(25, 84);
            this.button11.Name = "button11";
            this.button11.Size = new System.Drawing.Size(169, 30);
            this.button11.TabIndex = 11;
            this.button11.Text = "Read ULcard Serial Only >>";
            this.button11.UseVisualStyleBackColor = true;
            this.button11.Click += new System.EventHandler(this.button11_Click);
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(25, 120);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(169, 29);
            this.button7.TabIndex = 14;
            this.button7.Text = "Read 4 Pages Data";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click_1);
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(200, 125);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(206, 21);
            this.textBox4.TabIndex = 15;
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(25, 155);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(169, 29);
            this.button10.TabIndex = 16;
            this.button10.Text = "Write 1 Page Data";
            this.button10.UseVisualStyleBackColor = true;
            this.button10.Click += new System.EventHandler(this.button10_Click_1);
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(200, 160);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(70, 21);
            this.textBox5.TabIndex = 17;
            this.textBox5.TextChanged += new System.EventHandler(this.textBox5_TextChanged);
            this.textBox5.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox5_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(32, 223);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(161, 14);
            this.label1.TabIndex = 18;
            this.label1.Text = "RW begin Page address:";
            // 
            // rwblockadd
            // 
            this.rwblockadd.Location = new System.Drawing.Point(200, 216);
            this.rwblockadd.Name = "rwblockadd";
            this.rwblockadd.Size = new System.Drawing.Size(53, 21);
            this.rwblockadd.TabIndex = 19;
            this.rwblockadd.Value = new decimal(new int[] {
            4,
            0,
            0,
            0});
            // 
            // rwblocksize
            // 
            this.rwblocksize.Location = new System.Drawing.Point(346, 216);
            this.rwblocksize.Name = "rwblocksize";
            this.rwblocksize.Size = new System.Drawing.Size(53, 21);
            this.rwblocksize.TabIndex = 21;
            this.rwblocksize.Value = new decimal(new int[] {
            12,
            0,
            0,
            0});
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(270, 223);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 14);
            this.label2.TabIndex = 20;
            this.label2.Text = "RW Pages:";
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(32, 308);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(374, 62);
            this.richTextBox1.TabIndex = 22;
            this.richTextBox1.Text = "";
            this.richTextBox1.TextChanged += new System.EventHandler(this.richTextBox1_TextChanged);
            this.richTextBox1.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.richTextBox1_KeyPress);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::WindowsFormsApplication1.Properties.Resources.UL;
            this.pictureBox1.Location = new System.Drawing.Point(429, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(493, 410);
            this.pictureBox1.TabIndex = 23;
            this.pictureBox1.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(926, 425);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.rwblocksize);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.rwblockadd);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.button10);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.button11);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Mifare Ultralight Card ";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.rwblockadd)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rwblocksize)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button button11;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Button button10;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown rwblockadd;
        private System.Windows.Forms.NumericUpDown rwblocksize;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

