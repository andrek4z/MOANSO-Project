using Capa_Logica;
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
    public partial class Ventas : Form
    {
        public Ventas()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            string id_producto = dataGridView1.CurrentRow.Cells["idProducto"].Value.ToString();
            string precio = dataGridView1.CurrentRow.Cells["precio"].Value.ToString();
            string nombre = dataGridView1.CurrentRow.Cells["nombre"].Value.ToString();
            decimal importe = Convert.ToDecimal(txtCantidadP.Text) * Convert.ToDecimal(precio);
            dataGridView2.Rows.Add(id_producto,nombre,txtCantidadP.Text, precio,importe );

            txtCantidadP.Text = "";
        }

        private void btnEliminarP_Click(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        private void btnCobrar_Click(object sender, EventArgs e)
        {

        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
            this.Close();
        }

        private void Ventas_Load(object sender, EventArgs e)
        {
            var productos = logProducto.ListarProductos();
            dataGridView1.DataSource = productos;
        }
    }
}
