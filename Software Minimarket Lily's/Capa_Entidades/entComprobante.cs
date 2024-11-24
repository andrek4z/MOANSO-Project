using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidades
{
    public class entComprobante
    {
        public int idComprobante { get; set; } // ID del comprobante
        public int idVenta { get; set; }       // ID de la venta asociada
        public string nombreCliente { get; set; } // Nombre del cliente
        public string direccion { get; set; }  // Dirección del cliente
        public string tipoComprobante { get; set; } // Boleta o Factura
        public int? dni { get; set; }          // DNI (nullable)
        public int? ruc { get; set; }          // RUC (nullable)
        public DateTime fechaEmision { get; set; } // Fecha de emisión
        public bool estado { get; set; }       // Estado del comprobante (activo/anulado)
    }
}
