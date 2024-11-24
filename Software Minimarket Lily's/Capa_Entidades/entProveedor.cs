using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidades
{
    public class entProveedor
    {
        public int idProveedor { get; set; }
        public string nombre { get; set; }
        public int telefono { get; set; }
        public int ruc { get; set; }
        public string direccion { get; set; }
        public DateTime fecRegProveedor { get; set; }
        public bool estProveedor { get; set; }
    }
}
