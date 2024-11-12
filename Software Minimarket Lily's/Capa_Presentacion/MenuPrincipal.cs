using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Capa_Presentacion
{
    public partial class MenuPrincipal : Form
    {
        private ProductoNegocio productoNegocio = new ProductoNegocio();

        public MenuPrincipal()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label15_Click(object sender, EventArgs e)
        {

        }

        private void Menu_principal_Load(object sender, EventArgs e)
        {
            CargarProductos();
        }
        private void CargarProductos()
        {
            listViewBD.Items.Clear(); // Limpia el ListView antes de agregar los datos
            DataTable dt = productoNegocio.ObtenerProductos();

            foreach (DataRow row in dt.Rows)
            {
                ListViewItem item = new ListViewItem(row["CodigoProducto"].ToString());
                item.SubItems.Add(row["NombreProducto"].ToString());
                item.SubItems.Add(row["Cantidad"].ToString());
                item.SubItems.Add(row["Precio"].ToString());
                listViewBD.Items.Add(item);
            }
        }
    }
}
