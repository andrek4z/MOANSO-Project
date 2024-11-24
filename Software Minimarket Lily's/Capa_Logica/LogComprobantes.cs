using Capa_Datos;
using Capa_Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Logica
{
    public class logComprobante
    {
        #region Singleton
        private static readonly logComprobante instancia = new logComprobante();
        public static logComprobante Instancia
        {
            get { return instancia; }
        }
        private logComprobante() { }
        #endregion

        public List<entComprobante> ListarComprobantes(bool soloActivos = true)
        {
            return datComprobante.Instancia.ListarComprobantes(soloActivos);
        }

        public void RegistrarComprobante(entComprobante comprobante)
        {
            // Validar los datos recibidos
            if (string.IsNullOrWhiteSpace(comprobante.tipoComprobante))
                throw new ArgumentException("El tipo de comprobante no puede estar vacío.");

            if (comprobante.tipoComprobante == "Boleta" && !comprobante.dni.HasValue)
                throw new ArgumentException("Debe proporcionar un DNI para una Boleta.");

            if (comprobante.tipoComprobante == "Factura" && !comprobante.ruc.HasValue)
                throw new ArgumentException("Debe proporcionar un RUC para una Factura.");

            if (comprobante.idVenta <= 0)
                throw new ArgumentException("Debe proporcionar un ID de venta válido.");

            // Llamar a la capa de datos para registrar el comprobante
            datComprobante.Instancia.InsertarComprobante(comprobante);
        }


        public void AnularComprobante(int idComprobante)
        {
            if (idComprobante <= 0)
                throw new ArgumentException("Debe proporcionar un ID de comprobante válido.");

            datComprobante.Instancia.AnularComprobante(idComprobante);
        }
    }
}
