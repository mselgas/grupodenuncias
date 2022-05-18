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
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            actualizarGrilla();
        }
        private void actualizarGrilla() {
            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetDenuncias";
            DataSet ds = conectar(comando);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        private void Fill(ListControl listControl, DataSet ds, string valueMember, string displayMember, int table, bool mostrarSeleccione)
        {
            listControl.DataSource = ds.Tables[table].DefaultView;
            listControl.DataTextField = displayMember;
            listControl.DataValueField = valueMember;
            listControl.DataBind();
            if (mostrarSeleccione.Equals(true))
            {
                listControl.Items.Insert(0, new ListItem("Seleccione..", "-1"));
            }
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

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetDenuncias";
            DataSet ds = conectar(comando);

            if (TB_caratula.Text != "")
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (ds.Tables[0].Rows[i]["Caratula"].ToString() != TB_caratula.Text)
                    {
                        ds.Tables[0].Rows[i].Delete();
                    }
                }
                ds.AcceptChanges();
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
            actualizarGrilla();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                SqlCommand comando = new SqlCommand();
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.CommandText = "DeleteDenuncia";
                comando.Parameters.AddWithValue("@id", id);
                conectar(comando);
                actualizarGrilla();

            }
        }
    }
}