using System;
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

        /*private void RecolectarInformacion()
        {
            string usuario = txtUser.Text;
            string contraseña = txtPassword.Text;

            ValidarCredenciales(usuario, contraseña);
        }

        private void ValidarCredenciales(string usuario, string contraseña)
        {
            if (usuario == "admin" && contraseña == "Lavidaesunalenteja*")
            {
                MessageBox.Show("Bienvenido a tiendas Lily's");
            }
            else 
            {
                MessageBox.Show("Informacion Invalida, pruebe nuevamente");
            }
        }*/
    }
}
