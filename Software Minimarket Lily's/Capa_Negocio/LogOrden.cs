using Capa_Datos;
using Capa_Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Logica
{
    public class logOrden
    {
        #region Singleton
        private static readonly logOrden instancia = new logOrden();
        public static logOrden Instancia => instancia;
        #endregion

        public string GenerarIdOrden()
        {
            return datOrden.Instancia.GenerarIdOrden();
        }
        public void InsertarDetalle(entDetalleOrden detalle)
        {
            datOrden.Instancia.InsertarDetalle(detalle);
        }
        public void ActualizarEstado(int idDetalleOrden)
        {
            datOrden.Instancia.ActualizarEstado(idDetalleOrden);
        }


        public List<entDetalleOrden> ListarDetalles(string idOrden)
        {
            return datOrden.Instancia.ListarDetalles(idOrden);
        }

        public void AgregarDetalle(entDetalleOrden detalle)
        {
            datOrden.Instancia.AgregarDetalle(detalle);
        }
        public void ModificarDetalle(entDetalleOrden detalle)
        {
            datOrden.Instancia.ModificarDetalle(detalle);
        }
        public void InhabilitarDetalle(int idDetalleOrden)
        {
            datOrden.Instancia.InhabilitarDetalle(idDetalleOrden);
        }


    }
}
