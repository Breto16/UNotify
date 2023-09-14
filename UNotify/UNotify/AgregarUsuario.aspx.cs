using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
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
        SqlConnection con = new SqlConnection(@"Data Source=BRETONDESKTOP\SQLEXPRESS;Initial Catalog=UNotify3.5;Integrated Security=True");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            if (txt_cedula.Text == "" || txt_Nombre.Text == "" || txt_email.Text == "" || txt_password1.Text == "" || txt_password2.Text == "")
                lbl_error.Text = "¡Uno o más campos están vacíos!";
            else
            {
                if (txt_password1.Text == txt_password2.Text)
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("CrearCuentaUsuario", con)
                        {
                            CommandType = CommandType.StoredProcedure
                        };
                        cmd.Connection.Open();
                        //Aqui va la parte de id del administrador
                        cmd.Parameters.Add("@Nombre", SqlDbType.NVarChar, 255).Value = txt_Nombre.Text;
                        cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 255).Value = txt_email.Text;
                        cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 255).Value = txt_password1.Text;
                        cmd.Parameters.Add("@Cedula", SqlDbType.NVarChar, 255).Value = txt_cedula.Text;
                        cmd.Parameters.Add("@EsColaborador", SqlDbType.Bit).Value = 0;
    
                        int filasAfectadas = cmd.ExecuteNonQuery();
                        if (filasAfectadas > 0)
                        {
                            
                            lbl_error.Text = "¡Insercion Exitosa! Volviendo al Login...";
                            Thread.Sleep(2000);
                        }
                        else
                        {
                            lbl_error.Text = "Usuario Inválido | Ya Existe ";
                        }
                        if(lbl_error.Text== "¡Insercion Exitosa! Volviendo al Login...")
                        {
                            Thread.Sleep(2000);
                            Response.Redirect("Login.aspx");
                        }
                    }
                    catch (Exception err)
                    {
                        lbl_error.Text = err + "";
                    }
                    finally
                    {
                        con.Close();
                    }
                }
                else
                {
                    lbl_error.Text = "Las Contraseñas no Coinciden";
                }
            }
        }
    }
}