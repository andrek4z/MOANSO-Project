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
            // Limpiar todas las filas del DataGridView2
            dataGridView2.Rows.Clear();

            // Reiniciar el total
            lblTotal.Text = "0.00";
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

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            string codigoBuscar = txtCodigoProducto.Text.Trim();

            // Recorrer las filas del DataGridView1
            foreach (DataGridViewRow fila in dataGridView1.Rows)
            {
                if (fila.Cells["idProducto"].Value != null && fila.Cells["idProducto"].Value.ToString() == codigoBuscar)
                {
                    // Seleccionar la fila
                    fila.Selected = true;
                    dataGridView1.CurrentCell = fila.Cells[0]; // Mover el cursor a la fila seleccionada
                    return; // Salir después de encontrar el producto
                }
            }

            // Si no se encuentra el producto
            MessageBox.Show("Producto no encontrado.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void lblTotal_Click(object sender, EventArgs e)
        {

        }
        private void CalcularTotal()
        {
            decimal total = 0;

            // Recorrer todas las filas del DataGridView2
            foreach (DataGridViewRow fila in dataGridView2.Rows)
            {
                if (fila.Cells["Importe"].Value != null)
                {
                    total += Convert.ToDecimal(fila.Cells["Importe"].Value);
                }
            }

            // Actualizar el Label (por ejemplo: lblTotal)
            lblTotal.Text = "S/. " + total.ToString("0.00");
        }

        private void btnTotal_Click(object sender, EventArgs e)
        {
            decimal total = 0;

            // Recorrer todas las filas del DataGridView2
            foreach (DataGridViewRow fila in dataGridView2.Rows)
            {
                if (fila.Cells["Importe"].Value != null) // Validar que no sea nulo
                {
                    total += Convert.ToDecimal(fila.Cells["Importe"].Value); // Sumar el valor de la columna "Importe"
                }
            }

            // Actualizar el Label con el total
            lblTotal.Text = "S/. " + total.ToString("0.00");
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
