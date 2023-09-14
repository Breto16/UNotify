using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
        }
        SqlConnection con = new SqlConnection(@"Data Source=BRETONDESKTOP\SQLEXPRESS;Initial Catalog=UNotify3.2;Integrated Security=True");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_Registrar_Click(object sender, EventArgs e)
        {

        }
    }
}