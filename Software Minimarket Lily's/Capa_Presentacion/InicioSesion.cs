﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Capa_Presentacion
{
    public partial class InicioSesion : Form
    {
        public InicioSesion()
        {
            InitializeComponent();
        }

        private void InicioSesion_Load(object sender, EventArgs e)
        {

        }

        private void btnIngreso_Click(object sender, EventArgs e)
        {
            string user = txtUser.Text;
            string password = txtPassword.Text;

            if (user == "admin" && password == "Lavidaesunalenteja*")
            {
                //MessageBox.Show("Bienvenido a tiendas Lily's");
                txtUser.Clear();
                txtPassword.Clear();
                MenuPrincipal menuPrincipal = new MenuPrincipal();
                menuPrincipal.Show();
                
                //this.Hide();
            }
            else
            {
                MessageBox.Show("Informacion Invalida, pruebe nuevamente");
                txtPassword.Clear();
                txtPassword.Focus();
            }
        }
    }
}
