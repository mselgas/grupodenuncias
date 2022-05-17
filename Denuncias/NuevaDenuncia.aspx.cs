using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Denuncias
{
    public partial class NuevaDenuncia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private DataSet conectar(SqlCommand comando)
        {
            SqlConnectionStringBuilder cadenaConexion = new SqlConnectionStringBuilder();
            cadenaConexion.DataSource = "DESKTOP-RN897LR";
            cadenaConexion.InitialCatalog = "Denuncias";
            cadenaConexion.UserID = "sa";
            cadenaConexion.Password = "sql";


            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = cadenaConexion.ConnectionString;
            conn.Open();


            comando.Connection = conn;

            DataSet ds = new DataSet();
            SqlDataAdapter cargador = new SqlDataAdapter();
            cargador.SelectCommand = comando;
            cargador.Fill(ds);
            return ds;
        }
        private string validarFecha(string fecha) 
        {
            string mensaje = "";
            Boolean ok;
            DateTime f;
            ok = DateTime.TryParse(fecha, out f);
            if (ok == false) {
                mensaje = "El campo Fecha esta mal formado .<br />";
            }
            return mensaje;
        }
        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            DateTime fecha;
            string msj = validarFecha(TB_fecha.Text);
            if (msj == "")
            {
                fecha = DateTime.Parse(TB_fecha.Text);
                DataSet dsUsuario = (DataSet)Session["usuario"];
               int idDep= int.Parse(dsUsuario.Tables[0].Rows[0]["IdDependencia"].ToString());

                SqlCommand comando = new SqlCommand();
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.CommandText = "SaveDenuncia";
                comando.Parameters.AddWithValue("@fecha", fecha);
                comando.Parameters.AddWithValue("@caratula",TB_caratula.Text );
                comando.Parameters.AddWithValue("@observacion",TB_observacion.Text );
                comando.Parameters.AddWithValue("@extracto", TB_extracto.Text);
                comando.Parameters.AddWithValue("@idDep", idDep);
                DataSet ds = conectar(comando);
                Response.Redirect("DenunciaPaso2.aspx");
            }
            else 
            {
                lbl_error.Text = msj;
            }

        }
    }
}