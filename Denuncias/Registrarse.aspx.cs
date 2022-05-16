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
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetDependencia";
            DataSet ds = conectar(comando);
            ddl_dependencia.DataSource= ds;
            ddl_dependencia.DataBind();
        }
        
        private DataSet conectar(SqlCommand comando) {
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
        protected void Btn_enviar_click(object sender, EventArgs e)
        {
            string nombre = tb_nombre.Text;
            string apellido = tb_apellido.Text;
            int dependencia = 1;
            string user = tb_user.Text;
            string pass = tb_pass.Text;

            

            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "SaveUsuario";
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@dependencia", dependencia);
            comando.Parameters.AddWithValue("@usuario", user);
            comando.Parameters.AddWithValue("@clave", pass);
         
            DataSet ds = conectar(comando);
            if (ds.Tables[0].Rows.Count > 0)
            {
                LBL_Error.InnerText = "Bienvenido " + ds.Tables[0].Rows[0]["Apellido"].ToString();
            }
            else
            {
                LBL_Error.InnerText = "No exite el usuario";
            }
        }
    }

}
