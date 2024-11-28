using Capa_Logica;
using Capa_Datos;
using Capa_Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
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


        private void btnCancelar_Click(object sender, EventArgs e)
        {
            // Limpiar todas las filas del DataGridView2
            dataGridView2.Rows.Clear();

            // Reiniciar el total
            lblTotal.Text = "0.00";
        }

       private void btnCobrar_Click(object sender, EventArgs e)
        {
            try
            {
                // Registrar la orden
                string idOrden = "N" + DateTime.Now.Ticks; // Generar un ID único
                decimal total = Convert.ToDecimal(lblTotal.Text.Replace("S/. ", ""));

                using (SqlConnection Conectar = Conexion.Instancia.Conectar()) // Usa la conexión de la clase Conexion
                {
                    Conectar.Open();

                    // Comando para registrar la orden
                    using (SqlCommand cmdOrden = new SqlCommand("spRegistrarOrden", Conectar))
                    {
                        cmdOrden.CommandType = CommandType.StoredProcedure;
                        cmdOrden.Parameters.AddWithValue("@idOrden", idOrden);
                        cmdOrden.Parameters.AddWithValue("@total", total);
                        cmdOrden.ExecuteNonQuery();
                    }

                    // Registrar los detalles de la orden
                    foreach (DataGridViewRow fila in dataGridView2.Rows)
                    {
                        if (fila.Cells["idProducto"].Value != null)
                        {
                            using (SqlCommand cmdDetalle = new SqlCommand("spInsertarDetalleOrden", Conectar))
                            {
                                cmdDetalle.CommandType = CommandType.StoredProcedure;
                                cmdDetalle.Parameters.AddWithValue("@idOrden", idOrden);
                                cmdDetalle.Parameters.AddWithValue("@idProducto", fila.Cells["CnidProducto"].Value.ToString());
                                cmdDetalle.Parameters.AddWithValue("@cantidad", Convert.ToInt32(fila.Cells["Cncantidad"].Value));
                                cmdDetalle.Parameters.AddWithValue("@precioUnitario", Convert.ToDecimal(fila.Cells["Cnprecio"].Value));
                                cmdDetalle.Parameters.AddWithValue("@subtotal", Convert.ToDecimal(fila.Cells["CnImporte"].Value));
                                cmdDetalle.ExecuteNonQuery();
                            }
                        }
                    }
                }

                // Confirmación de registro exitoso
                MessageBox.Show("Venta registrada correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // Limpieza de datos
                dataGridView2.Rows.Clear();
                lblTotal.Text = "0.00";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al registrar la venta: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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
                if (fila.Cells["nombre"].Value != null && fila.Cells["nombre"].Value.ToString() == codigoBuscar)
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
                total += Convert.ToDecimal(fila.Cells["CnImporte"].Value); // Sumar el valor de la columna "Importe"
            }

            // Actualizar el Label con el total
            lblTotal.Text = "S/. " + total.ToString("0.00");
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }
    }
}
