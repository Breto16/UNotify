using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    public partial class Explorar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
            lbl_calendar.Visible = false;
            lbl_colabs.Visible = false;
            lbl_sugerir.Visible = false;

            //Para el event repeater
        }

    }

    
}