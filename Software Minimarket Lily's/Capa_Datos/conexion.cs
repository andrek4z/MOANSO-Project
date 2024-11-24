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
    public class Conexion
    {
        private static readonly Conexion _instancia = new Conexion();

        private readonly string connectionString = "Data Source=.; Initial Catalog = MinimarketLogistica_Normalizada;" + " Integrated Security = true";

        private Conexion() { }

        public static Conexion Instancia
        {
            get { return _instancia; }
        }

        public SqlConnection Conectar()
        {
            return new SqlConnection(connectionString);
        }
    }
}
