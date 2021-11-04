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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_login_click(object sender, EventArgs e)
        {
            string user = tb_user.Text;
            string pass = tb_pass.Text;
            //asadsad
            //asdaasdas
            //dos
            //tres
            SqlConnectionStringBuilder cadenaConexion = new SqlConnectionStringBuilder();
            cadenaConexion.DataSource = "DESKTOP-RN897LR";
            cadenaConexion.InitialCatalog = "Denuncias";
            cadenaConexion.UserID = "sa";
            cadenaConexion.Password = "sql";


            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = cadenaConexion.ConnectionString;
            conn.Open();

            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetUsuario";
            comando.Parameters.AddWithValue("@usuario", user);
            comando.Parameters.AddWithValue("@clave", pass);
            comando.Connection = conn;

            DataSet ds = new DataSet();
            SqlDataAdapter cargador = new SqlDataAdapter();
            cargador.SelectCommand = comando;
            cargador.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0) 
            {
                LBL_Error.InnerText = "Bienvenido "+ ds.Tables[0].Rows[0]["Apellido"].ToString();
            }
            else
            {
                LBL_Error.InnerText = "No exite el usuario";
            }
        }
    }
   
}
