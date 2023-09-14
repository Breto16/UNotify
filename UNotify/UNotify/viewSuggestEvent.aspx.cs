using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    public partial class viewSuggestEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");

        }

        protected void btn_Sugerir_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btn_Explorar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Explorar.aspx");
        }

        protected void btn_home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}