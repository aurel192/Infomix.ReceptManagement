﻿namespace Frontend
{
    partial class ReceptNezet
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
            btnOk = new Button();
            btnMegsem = new Button();
            label1 = new Label();
            tboxReceptSzovege = new TextBox();
            lblPaciensNeve = new Label();
            label2 = new Label();
            label3 = new Label();
            lblReceptKiallitasDatuma = new Label();
            SuspendLayout();
            // 
            // btnOk
            // 
            btnOk.Location = new Point(188, 252);
            btnOk.Name = "btnOk";
            btnOk.Size = new Size(96, 23);
            btnOk.TabIndex = 0;
            btnOk.Text = "Ok";
            btnOk.UseVisualStyleBackColor = true;
            btnOk.Click += btnOk_Click;
            // 
            // btnMegsem
            // 
            btnMegsem.Location = new Point(315, 252);
            btnMegsem.Name = "btnMegsem";
            btnMegsem.Size = new Size(96, 23);
            btnMegsem.TabIndex = 1;
            btnMegsem.Text = "Mégsem";
            btnMegsem.UseVisualStyleBackColor = true;
            btnMegsem.Click += btnMegsem_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(16, 16);
            label1.Name = "label1";
            label1.Size = new Size(78, 15);
            label1.TabIndex = 2;
            label1.Text = "Páciens neve:";
            // 
            // tboxReceptSzovege
            // 
            tboxReceptSzovege.Location = new Point(12, 66);
            tboxReceptSzovege.Multiline = true;
            tboxReceptSzovege.Name = "tboxReceptSzovege";
            tboxReceptSzovege.Size = new Size(375, 158);
            tboxReceptSzovege.TabIndex = 3;
            // 
            // lblPaciensNeve
            // 
            lblPaciensNeve.AutoSize = true;
            lblPaciensNeve.Location = new Point(93, 16);
            lblPaciensNeve.Name = "lblPaciensNeve";
            lblPaciensNeve.Size = new Size(0, 15);
            lblPaciensNeve.TabIndex = 4;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(16, 48);
            label2.Name = "label2";
            label2.Size = new Size(91, 15);
            label2.TabIndex = 5;
            label2.Text = "Recept szövege:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(16, 31);
            label3.Name = "label3";
            label3.Size = new Size(94, 15);
            label3.TabIndex = 6;
            label3.Text = "Kiállítás dátuma:";
            // 
            // lblReceptKiallitasDatuma
            // 
            lblReceptKiallitasDatuma.AutoSize = true;
            lblReceptKiallitasDatuma.Location = new Point(109, 32);
            lblReceptKiallitasDatuma.Name = "lblReceptKiallitasDatuma";
            lblReceptKiallitasDatuma.Size = new Size(0, 15);
            lblReceptKiallitasDatuma.TabIndex = 7;
            // 
            // ReceptNezet
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(625, 287);
            Controls.Add(lblReceptKiallitasDatuma);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(lblPaciensNeve);
            Controls.Add(tboxReceptSzovege);
            Controls.Add(label1);
            Controls.Add(btnMegsem);
            Controls.Add(btnOk);
            Name = "ReceptNezet";
            Text = "ReceptNezet";
            Load += ReceptNezet_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnOk;
        private Button btnMegsem;
        private Label label1;
        private TextBox tboxReceptSzovege;
        private Label lblPaciensNeve;
        private Label label2;
        private Label label3;
        private Label lblReceptKiallitasDatuma;
    }
}