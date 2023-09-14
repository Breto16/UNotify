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
    public partial class viewUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BRETONDESKTOP\SQLEXPRESS;Initial Catalog=UNotify3.5;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
            int idUser = 1;
            try
            {
                SqlCommand cmd = new SqlCommand("ObtenerDatosUsuario", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Connection.Open();
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = idUser;
                cmd.Parameters.Add("@TipoUsuario", SqlDbType.VarChar, 1).Value = 'U';

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

        protected void buttonDelete_Click(object sender, EventArgs e)
        {

        }
    }
}