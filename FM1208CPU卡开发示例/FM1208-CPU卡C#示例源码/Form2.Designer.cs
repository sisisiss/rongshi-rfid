namespace C井源代码CPU卡操作
{
    partial class Form2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel3 = new System.Windows.Forms.Panel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.button4 = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel3
            // 
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.textBox1);
            this.panel3.Controls.Add(this.label15);
            this.panel3.Controls.Add(this.button4);
            this.panel3.Controls.Add(this.textBox2);
            this.panel3.Controls.Add(this.label17);
            this.panel3.Location = new System.Drawing.Point(12, 22);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(567, 62);
            this.panel3.TabIndex = 10;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(131, 4);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(291, 21);
            this.textBox1.TabIndex = 15;
            this.textBox1.Text = "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(15, 9);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(113, 12);
            this.label15.TabIndex = 14;
            this.label15.Text = "旧密码(16进制数)：";
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(443, 20);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(111, 27);
            this.button4.TabIndex = 13;
            this.button4.Text = "卡密码更改";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(131, 30);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(291, 21);
            this.textBox2.TabIndex = 11;
            this.textBox2.Text = "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(15, 35);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(113, 12);
            this.label17.TabIndex = 10;
            this.label17.Text = "新密码(16进制数)：";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.ForeColor = System.Drawing.Color.Blue;
            this.label14.Location = new System.Drawing.Point(16, 7);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(65, 12);
            this.label14.TabIndex = 11;
            this.label14.Text = "修改卡密码";
            // 
            // label22
            // 
            this.label22.AutoEllipsis = true;
            this.label22.ForeColor = System.Drawing.Color.Red;
            this.label22.Location = new System.Drawing.Point(12, 99);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(423, 39);
            this.label22.TabIndex = 23;
            this.label22.Text = "    强制清空卡，用cpursinit函数成功初始化过后，如果卡密码丢去了，可以尝试用强制清空卡函数清空卡至出厂状态。";
            this.label22.UseCompatibleTextRendering = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(456, 99);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(111, 27);
            this.button1.TabIndex = 24;
            this.button1.Text = "强制清空卡";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(590, 143);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label22);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.panel3);
            this.MaximizeBox = false;
            this.Name = "Form2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "扩展功能，一般很少用到，不需理会";
            this.Load += new System.EventHandler(this.Form2_Load);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Button button1;
    }
}