using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    public partial class viewCreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-38G492P;Initial Catalog=UNotify3.3;Integrated Security=True");
        protected void buttonCreateEvent_Click(object sender, EventArgs e)
        {
            string horaIngresada = textBoxTimeEvent.Text;

            // Formato esperado de hora (HH:mm)
            string formatoHora = "HH:mm";

            // Intenta analizar la entrada como una hora en el formato especificado
            if (DateTime.TryParseExact(horaIngresada, formatoHora, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime horaValida))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("CrearEvento", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Connection.Open();
                    //Aqui va la parte de id del administrador
                    cmd.Parameters.Add("@AsociacionID", SqlDbType.Int).Value = 1;
                    cmd.Parameters.Add("@Nombre", SqlDbType.NVarChar, 255).Value = textBoxNameEvent.Text;
                    cmd.Parameters.Add("@Descripcion", SqlDbType.NVarChar).Value = textBoxDescription.Text;
                    cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = textBoxDateEvent.Text;
                    cmd.Parameters.Add("@Lugar", SqlDbType.NVarChar, 255).Value = textBoxPlace.Text;

                    //Se hace en ParseInt
                    string cadena = textBoxCapacityMax.Text;
                    int capacidad;
                    if(int.TryParse(cadena, out capacidad))
                    {
                        cmd.Parameters.Add("@Capacidad", SqlDbType.Int).Value = capacidad;
                    }
                    else
                    {
                        cmd.Parameters.Add("@Capacidad", SqlDbType.Int).Value = 0;
                    }
                    cmd.Parameters.Add("@Hora", SqlDbType.Time).Value = textBoxTimeEvent.Text;

                    int filasAfectadas = cmd.ExecuteNonQuery();
                    if(filasAfectadas > 0)
                    {
                        createEventTitle.Text = "Inserto";
                    }
                    else
                    {
                        createEventTitle.Text = "No Inserto";
                    }
                }
                catch (Exception err)
                {
                    createEventTitle.Text = err + "";
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                // La entrada no es una hora válida, muestra un mensaje de error
                createEventTitle.Text = "No Sirve validar";
            }
        }
    }
}