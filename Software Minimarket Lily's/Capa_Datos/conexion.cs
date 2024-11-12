using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Capa_Datos
{
    public class conexion
    {
        public static SqlConnection Conectar()
        {
            SqlConnection conex = new SqlConnection();
            conex.ConnectionString = "Data Source = .; Initial Catalog = MinimarketLogistica_Normalizada;" + "Integrated Security = true";
            return conex;
        }
    }
}
