namespace Capa_Presentacion
{
    partial class Almacen
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
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.txtNomPro = new System.Windows.Forms.TextBox();
            this.ID = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIDPro = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtPrecioPro = new System.Windows.Forms.TextBox();
            this.txtDesPro = new System.Windows.Forms.TextBox();
            this.txtStockPro = new System.Windows.Forms.TextBox();
            this.btnModificarPro = new System.Windows.Forms.Button();
            this.btnGuardarCambios = new System.Windows.Forms.Button();
            this.btnCancelarcambios = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.btnVolverMenu = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(26, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(152, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "ALMACEN";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(32, 174);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(536, 299);
            this.dataGridView1.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(29, 136);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(47, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Nombre:";
            // 
            // txtNomPro
            // 
            this.txtNomPro.Location = new System.Drawing.Point(87, 129);
            this.txtNomPro.Name = "txtNomPro";
            this.txtNomPro.Size = new System.Drawing.Size(100, 20);
            this.txtNomPro.TabIndex = 3;
            // 
            // ID
            // 
            this.ID.AutoSize = true;
            this.ID.Location = new System.Drawing.Point(29, 98);
            this.ID.Name = "ID";
            this.ID.Size = new System.Drawing.Size(21, 13);
            this.ID.TabIndex = 4;
            this.ID.Text = "ID:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(218, 98);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Descripcion:";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // txtIDPro
            // 
            this.txtIDPro.Location = new System.Drawing.Point(87, 95);
            this.txtIDPro.Name = "txtIDPro";
            this.txtIDPro.Size = new System.Drawing.Size(100, 20);
            this.txtIDPro.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(424, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Stock:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(218, 132);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(40, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Precio:";
            // 
            // txtPrecioPro
            // 
            this.txtPrecioPro.Location = new System.Drawing.Point(290, 133);
            this.txtPrecioPro.Name = "txtPrecioPro";
            this.txtPrecioPro.Size = new System.Drawing.Size(100, 20);
            this.txtPrecioPro.TabIndex = 10;
            this.txtPrecioPro.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // txtDesPro
            // 
            this.txtDesPro.Location = new System.Drawing.Point(290, 96);
            this.txtDesPro.Name = "txtDesPro";
            this.txtDesPro.Size = new System.Drawing.Size(100, 20);
            this.txtDesPro.TabIndex = 11;
            // 
            // txtStockPro
            // 
            this.txtStockPro.Location = new System.Drawing.Point(468, 100);
            this.txtStockPro.Name = "txtStockPro";
            this.txtStockPro.Size = new System.Drawing.Size(100, 20);
            this.txtStockPro.TabIndex = 12;
            // 
            // btnModificarPro
            // 
            this.btnModificarPro.Location = new System.Drawing.Point(619, 174);
            this.btnModificarPro.Name = "btnModificarPro";
            this.btnModificarPro.Size = new System.Drawing.Size(154, 26);
            this.btnModificarPro.TabIndex = 13;
            this.btnModificarPro.Text = "Modificar Producto";
            this.btnModificarPro.UseVisualStyleBackColor = true;
            // 
            // btnGuardarCambios
            // 
            this.btnGuardarCambios.Location = new System.Drawing.Point(619, 212);
            this.btnGuardarCambios.Name = "btnGuardarCambios";
            this.btnGuardarCambios.Size = new System.Drawing.Size(154, 26);
            this.btnGuardarCambios.TabIndex = 14;
            this.btnGuardarCambios.Text = "Guardar Cambios";
            this.btnGuardarCambios.UseVisualStyleBackColor = true;
            // 
            // btnCancelarcambios
            // 
            this.btnCancelarcambios.Location = new System.Drawing.Point(619, 250);
            this.btnCancelarcambios.Name = "btnCancelarcambios";
            this.btnCancelarcambios.Size = new System.Drawing.Size(154, 26);
            this.btnCancelarcambios.TabIndex = 15;
            this.btnCancelarcambios.Text = "Cancelar";
            this.btnCancelarcambios.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(427, 136);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(141, 23);
            this.button4.TabIndex = 16;
            this.button4.Text = "Agregar Producto";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // btnVolverMenu
            // 
            this.btnVolverMenu.Location = new System.Drawing.Point(619, 289);
            this.btnVolverMenu.Name = "btnVolverMenu";
            this.btnVolverMenu.Size = new System.Drawing.Size(154, 26);
            this.btnVolverMenu.TabIndex = 17;
            this.btnVolverMenu.Text = "Volver";
            this.btnVolverMenu.UseVisualStyleBackColor = true;
            this.btnVolverMenu.Click += new System.EventHandler(this.btnVolverMenu_Click);
            // 
            // Almacen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 494);
            this.Controls.Add(this.btnVolverMenu);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.btnCancelarcambios);
            this.Controls.Add(this.btnGuardarCambios);
            this.Controls.Add(this.btnModificarPro);
            this.Controls.Add(this.txtStockPro);
            this.Controls.Add(this.txtDesPro);
            this.Controls.Add(this.txtPrecioPro);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtIDPro);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.ID);
            this.Controls.Add(this.txtNomPro);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Name = "Almacen";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNomPro;
        private System.Windows.Forms.Label ID;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIDPro;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtPrecioPro;
        private System.Windows.Forms.TextBox txtDesPro;
        private System.Windows.Forms.TextBox txtStockPro;
        private System.Windows.Forms.Button btnModificarPro;
        private System.Windows.Forms.Button btnGuardarCambios;
        private System.Windows.Forms.Button btnCancelarcambios;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button btnVolverMenu;
    }
}