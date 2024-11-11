using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Capa_Datos
{
    public class conexion
    {
            SqlConnection cnx;

        public conexion()
        {
            try
            {
                cnx = new SqlConnection("Data Source=DESKTOP-5J5OEOD\\SQLEXPRESS;Initial Catalog=MinimarketLogistica_Normalizada;Integrated Security=True");
                cnx.Open();
            }
            catch
            {
            }
        }

        public DataTable ObtenerProductos()
        {
            DataTable dt = new DataTable();
            try
            {
                string query = "SELECT * FROM Productos"; 
                SqlCommand cmd = new SqlCommand(query, cnx);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {
            }
            return dt;
        }
    }
}
