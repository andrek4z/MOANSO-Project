using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Capa_Datos
{
    internal class conexion
    {
            SqlConnection cnx;

        public conexion()
        {
            try
            {
                cnx = new SqlConnection("Data Source=DESKTOP-5J5OED0\\SQLEXPRESS;Initial Catalog=MinimarketLogistica_Normalizada");
                cnx.Open();
            }
            catch
            {
             
            }
        }
    }
}
