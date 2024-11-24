using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Capa_Datos.datComprobante;
using Capa_Entidades;

namespace Capa_Datos
{
    public class datComprobante
    {
        #region Singleton
        private static readonly datComprobante instancia = new datComprobante();
        public static datComprobante Instancia
        {
            get { return instancia; }
        }
        private datComprobante() { }
        #endregion

        public List<entComprobante> ListarComprobantes(bool soloActivos)
        {
            List<entComprobante> lista = new List<entComprobante>();
            SqlCommand cmd = null;

            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar())
                {
                    cmd = new SqlCommand("spListarComprobantes", cn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    // Pasar el parámetro para filtrar por estado (activos o todos)
                    cmd.Parameters.AddWithValue("@soloActivos", soloActivos);

                    cn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        lista.Add(new entComprobante
                        {
                            idComprobante = Convert.ToInt32(dr["idComprobante"]),
                            idVenta = Convert.ToInt32(dr["idVenta"]),
                            nombreCliente = dr["nombreCliente"].ToString(),
                            direccion = dr["direccion"].ToString(),
                            tipoComprobante = dr["tipoComprobante"].ToString(),
                            dni = dr["dni"] != DBNull.Value ? Convert.ToInt32(dr["dni"]) : (int?)null,
                            ruc = dr["ruc"] != DBNull.Value ? Convert.ToInt32(dr["ruc"]) : (int?)null,
                            fechaEmision = Convert.ToDateTime(dr["fechaEmision"]),
                            estado = Convert.ToBoolean(dr["estado"]) // Mapear el estado
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al listar comprobantes: " + ex.Message);
            }

            return lista;
        }

        public void InsertarComprobante(entComprobante comprobante)
        {
            SqlCommand cmd = null;

            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar())
                {
                    cmd = new SqlCommand("spInsertarComprobante", cn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    // Agregar parámetros
                    cmd.Parameters.AddWithValue("@idVenta", comprobante.idVenta);
                    cmd.Parameters.AddWithValue("@nombreCliente", comprobante.nombreCliente);
                    cmd.Parameters.AddWithValue("@direccion", comprobante.direccion);
                    cmd.Parameters.AddWithValue("@tipoComprobante", comprobante.tipoComprobante);
                    cmd.Parameters.AddWithValue("@dni", comprobante.dni.HasValue ? (object)comprobante.dni.Value : DBNull.Value);
                    cmd.Parameters.AddWithValue("@ruc", comprobante.ruc.HasValue ? (object)comprobante.ruc.Value : DBNull.Value);
                    cmd.Parameters.AddWithValue("@fechaEmision", comprobante.fechaEmision);

                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al registrar el comprobante: " + ex.Message);
            }
        }

        public void AnularComprobante(int idComprobante)
        {
            SqlCommand cmd = null;

            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar())
                {
                    cmd = new SqlCommand("spAnularComprobante", cn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@idComprobante", idComprobante);

                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al anular el comprobante: " + ex.Message);
            }
        }

    }
}
