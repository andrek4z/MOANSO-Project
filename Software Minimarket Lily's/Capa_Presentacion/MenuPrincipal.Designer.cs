namespace Capa_Presentacion
{
    partial class MenuPrincipal
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
            this.btnVentas = new System.Windows.Forms.Button();
            this.btnAlmacen = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.ptbVentas = new System.Windows.Forms.PictureBox();
            this.ptbAlmacen = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ptbVentas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ptbAlmacen)).BeginInit();
            this.SuspendLayout();
            // 
            // btnVentas
            // 
            this.btnVentas.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnVentas.Location = new System.Drawing.Point(75, 336);
            this.btnVentas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnVentas.Name = "btnVentas";
            this.btnVentas.Size = new System.Drawing.Size(201, 44);
            this.btnVentas.TabIndex = 0;
            this.btnVentas.Text = "Ventas";
            this.btnVentas.UseVisualStyleBackColor = true;
            this.btnVentas.Click += new System.EventHandler(this.btnVentas_Click);
            // 
            // btnAlmacen
            // 
            this.btnAlmacen.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAlmacen.Location = new System.Drawing.Point(346, 336);
            this.btnAlmacen.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnAlmacen.Name = "btnAlmacen";
            this.btnAlmacen.Size = new System.Drawing.Size(201, 44);
            this.btnAlmacen.TabIndex = 1;
            this.btnAlmacen.Text = "Almacen";
            this.btnAlmacen.UseVisualStyleBackColor = true;
            this.btnAlmacen.Click += new System.EventHandler(this.btnAlmacen_Click);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(587, 336);
            this.button3.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(201, 44);
            this.button3.TabIndex = 2;
            this.button3.Text = "button3";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(42, 32);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(150, 24);
            this.label1.TabIndex = 6;
            this.label1.Text = "Elija una opción:";
            // 
            // pictureBox3
            // 
            this.pictureBox3.Location = new System.Drawing.Point(594, 89);
            this.pictureBox3.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(185, 201);
            this.pictureBox3.TabIndex = 5;
            this.pictureBox3.TabStop = false;
            // 
            // ptbVentas
            // 
            this.ptbVentas.Image = global::Capa_Presentacion.Properties.Resources.ventas__1_;
            this.ptbVentas.Location = new System.Drawing.Point(46, 89);
            this.ptbVentas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.ptbVentas.Name = "ptbVentas";
            this.ptbVentas.Size = new System.Drawing.Size(247, 247);
            this.ptbVentas.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.ptbVentas.TabIndex = 4;
            this.ptbVentas.TabStop = false;
            // 
            // ptbAlmacen
            // 
            this.ptbAlmacen.Image = global::Capa_Presentacion.Properties.Resources.almacen1;
            this.ptbAlmacen.Location = new System.Drawing.Point(326, 89);
            this.ptbAlmacen.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.ptbAlmacen.Name = "ptbAlmacen";
            this.ptbAlmacen.Size = new System.Drawing.Size(247, 247);
            this.ptbAlmacen.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.ptbAlmacen.TabIndex = 3;
            this.ptbAlmacen.TabStop = false;
            // 
            // MenuPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(813, 458);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.ptbVentas);
            this.Controls.Add(this.ptbAlmacen);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.btnAlmacen);
            this.Controls.Add(this.btnVentas);
            this.Name = "MenuPrincipal";
            this.Text = "Menu Principal";
            this.Load += new System.EventHandler(this.Menu_principal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ptbVentas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ptbAlmacen)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnVentas;
        private System.Windows.Forms.Button btnAlmacen;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.PictureBox ptbAlmacen;
        private System.Windows.Forms.PictureBox ptbVentas;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Label label1;
    }
}