using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Denuncias
{
    public partial class Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["usuario"];
            if (ds != null)
            {
                lbl_usuario.Text= ds.Tables[0].Rows[0]["Nombre"].ToString() + " "+ ds.Tables[0].Rows[0]["Apellido"].ToString();
            }
            else {
                Response.Redirect("Login.aspx");
            }
        }
    }
}