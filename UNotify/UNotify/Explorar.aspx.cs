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
    public partial class Explorar : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
            lbl_calendar.Visible = false;
            
            lbl_sugerir.Visible = false;

            DataTable eventData = ObtenerEventos();

            //Para el event repeater
            eventRepeater.DataSource = eventData;
            eventRepeater.DataBind();


            if (!IsPostBack)
            {
                foreach(RepeaterItem item in eventRepeater.Items)
                {
                    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        Button btnGenerar = item.FindControl("btnEjemplo") as Button;
                        if(btnGenerar != null)
                        {
                            string argument = btnGenerar.UniqueID + "$" + btnGenerar.CommandArgument;
                            Page.ClientScript.RegisterForEventValidation(btnGenerar.UniqueID, argument);
                        }
                    }
                }
            }
        }

        SqlConnection con = new SqlConnection("Data Source=BRETONDESKTOP\\SQLEXPRESS;Initial Catalog=UNotify3.9;Integrated Security=True");
        private DataTable ObtenerEventos()
        {

            using (SqlCommand command = new SqlCommand("MostrarEventosDisponibles", con))
            {
                command.CommandType = CommandType.StoredProcedure;


                // Crear un adaptador de datos para llenar el DataTable
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    DataTable eventData = new DataTable();

                    // Abrir la conexión y llenar el DataTable con los resultados
                    con.Open();
                    adapter.Fill(eventData);

                    return eventData;
                }
            }

        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {

            Button botonClickeado = (Button)sender;
            imagenQr.Visible = true;
            btnCerrar.Visible = true;
        }

        protected void cerrar(object sender, EventArgs e)
        {
            imagenQr.Visible = false; // Reemplaza con la ruta de tu imagen
            btnCerrar.Visible = false;

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("viewSuggestEvent.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}