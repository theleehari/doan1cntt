﻿namespace QLchSach
{
    partial class frmMain
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.tsFile = new System.Windows.Forms.ToolStripMenuItem();
            this.tsThoat = new System.Windows.Forms.ToolStripMenuItem();
            this.tsThanhVien = new System.Windows.Forms.ToolStripMenuItem();
            this.tsNhanVien = new System.Windows.Forms.ToolStripMenuItem();
            this.tsHoaDon = new System.Windows.Forms.ToolStripMenuItem();
            this.tsSach = new System.Windows.Forms.ToolStripMenuItem();
            this.tsThemHoaDon = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsFile,
            this.tsThanhVien,
            this.tsNhanVien,
            this.tsHoaDon,
            this.tsSach,
            this.tsThemHoaDon});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // tsFile
            // 
            this.tsFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsThoat});
            this.tsFile.Name = "tsFile";
            this.tsFile.Size = new System.Drawing.Size(37, 20);
            this.tsFile.Text = "&File";
            // 
            // tsThoat
            // 
            this.tsThoat.Name = "tsThoat";
            this.tsThoat.Size = new System.Drawing.Size(104, 22);
            this.tsThoat.Text = "&Thoát";
            // 
            // tsThanhVien
            // 
            this.tsThanhVien.Name = "tsThanhVien";
            this.tsThanhVien.Size = new System.Drawing.Size(77, 20);
            this.tsThanhVien.Text = "&Thành viên";
            // 
            // tsNhanVien
            // 
            this.tsNhanVien.Name = "tsNhanVien";
            this.tsNhanVien.Size = new System.Drawing.Size(73, 20);
            this.tsNhanVien.Text = "&Nhân viên";
            // 
            // tsHoaDon
            // 
            this.tsHoaDon.Name = "tsHoaDon";
            this.tsHoaDon.Size = new System.Drawing.Size(65, 20);
            this.tsHoaDon.Text = "&Hóa đơn";
            // 
            // tsSach
            // 
            this.tsSach.Name = "tsSach";
            this.tsSach.Size = new System.Drawing.Size(44, 20);
            this.tsSach.Text = "&Sách";
            // 
            // tsThemHoaDon
            // 
            this.tsThemHoaDon.Name = "tsThemHoaDon";
            this.tsThemHoaDon.Size = new System.Drawing.Size(96, 20);
            this.tsThemHoaDon.Text = "&Thêm hóa đơn";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMain";
            this.Text = "Management Book Store";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmMain_FormClosed);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.MdiChildActivate += new System.EventHandler(this.frmMain_MdiChildActivate);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem tsFile;
        private System.Windows.Forms.ToolStripMenuItem tsThanhVien;
        private System.Windows.Forms.ToolStripMenuItem tsNhanVien;
        private System.Windows.Forms.ToolStripMenuItem tsHoaDon;
        private System.Windows.Forms.ToolStripMenuItem tsSach;
        private System.Windows.Forms.ToolStripMenuItem tsThoat;
        private System.Windows.Forms.ToolStripMenuItem tsThemHoaDon;
    }
}