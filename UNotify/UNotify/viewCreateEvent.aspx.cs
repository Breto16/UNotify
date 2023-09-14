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

        protected void buttonCreateEvent_Click(object sender, EventArgs e)
        {
            string horaIngresada = textBoxTimeEvent.Text;

            // Formato esperado de hora (HH:mm)
            string formatoHora = "HH:mm";

            // Intenta analizar la entrada como una hora en el formato especificado
            if (DateTime.TryParseExact(horaIngresada, formatoHora, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime horaValida))
            {
                SqlConnection con = new SqlConnection(@"Data Source=SATELLITEPROC50\SQLEXPRESS;Initial Catalog=UNotify3.2;Integrated Security=True");
                try
                {
                    SqlCommand cmd = new SqlCommand("CrearEvento", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Connection.Open();
                    //Aqui va la parte de id del administrador
                    cmd.Parameters.Add("@Nombre", SqlDbType.NVarChar, 255).Value = textBoxNameEvent.Text;
                    cmd.Parameters.Add("@Descripcion", SqlDbType.NVarChar).Value = textBoxDescription.Text

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // Verificar si hay datos
                        {
                            // Obtener los valores de las columnas
                            string EstudianteID = reader.GetString(0); // El índice 0 representa la primera columna
                            string Nombre = reader.GetString(1); // El índice 1 representa la segunda columna
                            string Email = reader.GetString(2); // El índice 2 representa la tercera columna
                            bool EsColaborador = reader.GetBoolean(3); // El índice 3 representa la cuarta columna

                            string EsColaboradorS;
                            if (EsColaborador)
                            {
                                EsColaboradorS = "Si";
                            }
                            else
                            {
                                EsColaboradorS = "No";
                            }
                            // Luego, puedes usar estos valores como desees
                            // Por ejemplo, asignarlos a controles en tu página web
                            perfilNameTitle.Text = Nombre;
                            textBoxEmailAsociado.Text = Email;
                            textBoxCedulaAsociada.Text = EstudianteID;
                            textEsColab.Text = EsColaboradorS;
                        }
                        else
                        {
                            perfilNameTitle.Text = "Error de usuario";
                        }
                    }
                }
                catch (Exception err)
                {
                    perfilNameTitle.Text = err + "Ocurrió un error inesperado en la Base de Datos";
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