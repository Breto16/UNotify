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
            lbl_colabs.Visible = false;
            lbl_sugerir.Visible = false;

            DataTable eventData = ObtenerEventos();

            //Para el event repeater
            eventRepeater.DataSource = eventData;
            eventRepeater.DataBind();

        }

        SqlConnection con = new SqlConnection("Data Source=SATELLITEPROC50\\SQLEXPRESS;Initial Catalog=UNotify3.9;Integrated Security=True");
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
            Button btn = (Button)sender; // Convierte el sender a un control Button
            string datoComoCadena = btn.CommandArgument;

            pruebaCommand.Text = datoComoCadena;
        }

    }
}