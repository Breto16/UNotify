using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BRETONDESKTOP\SQLEXPRESS;Initial Catalog=UNotify3.7;Integrated Security=True");
        int userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
            lbl_colabs.Visible = false;
            lbl_explorar.Visible = false;
            lbl_sugerir.Visible = false;
            lbl_calendar.Visible = false;

            if (!string.IsNullOrEmpty(Request.QueryString["cuentaID"]))
            {
                userId = int.Parse(Request.QueryString["cuentaID"]);
                lbl_user.Text = userId.ToString();
                string sqlQuery = "SELECT Nombre FROM Estudiantes WHERE EstudianteID = @UserId";

                using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);

                    try
                    {
                        con.Open();
                        object resultado = cmd.ExecuteScalar();

                        if (resultado != null)
                        {
                            // El resultado es el nombre del estudiante.
                            string nombre = resultado.ToString();
                            lbl_user.Text = nombre;
                        }
                        else
                        {
                            // El usuario no fue encontrado.
                            lbl_user.Text = "Usuario no encontrado";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Manejar cualquier excepción de conexión o consulta aquí.
                        lbl_user.Text = "Error al consultar la base de datos";
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else
            {
                lbl_user.Text = "Usuario no Encontrado";
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("viewCrearEvento.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("viewUser.aspx?cuentaID=" + userId);
        }
    }
}