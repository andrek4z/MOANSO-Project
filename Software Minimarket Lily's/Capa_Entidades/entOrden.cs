using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidades
{
    public class entOrden
    {
        public string idOrden { get; set; } // Formato N001, N002, etc.
        public DateTime fecha { get; set; }
        public decimal total { get; set; }
    }

    public class entDetalleOrden
    {
        public int idDetalleOrden { get; set; }
        public string idOrden { get; set; }
        public int idProducto { get; set; }
        public string producto { get; set; }
        public int cantidad { get; set; }
        public decimal precioUnitario { get; set; }
        public decimal subtotal { get; set; }
        public string estado { get; set; } // "Elegido" o "No Elegido"
    }
}
