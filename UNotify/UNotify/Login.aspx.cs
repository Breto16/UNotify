using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNotify
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBody.Attributes.Add("bgcolor", "1E2126");
        }
        SqlConnection con = new SqlConnection(@"Data Source=BRETONDESKTOP\SQLEXPRESS;Initial Catalog=UNotify3.9;Integrated Security=True");

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarUsuario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txt_email.Text != "" && txt_pass.Text != "")
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("HacerLogin", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Connection.Open();
                    //Aqui va la parte de id del administrador                   
                    cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 255).Value = txt_email.Text;
                    cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 255).Value = txt_pass.Text;

                    SqlParameter cuentaIDParam = new SqlParameter("@CuentaID", SqlDbType.Int);
                    cuentaIDParam.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(cuentaIDParam);

                    SqlParameter esAsociacionParam = new SqlParameter("@EsAsociacion", SqlDbType.Bit);
                    esAsociacionParam.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(esAsociacionParam);
                    
                    cmd.ExecuteNonQuery();
                    int cuentaID = (int)cuentaIDParam.Value;
                    bool esAsociacion = (bool)esAsociacionParam.Value;

                    if (cuentaID != 0)
                    {

                        if (esAsociacion == true)
                        {
                            //Admin
                            Response.Redirect("indexAdmins.aspx?cuentaID=" + cuentaID);
                        }
                        else
                        {
                            
                            Response.Redirect("index.aspx?cuentaID=" + cuentaID);
                            
                        }
                    }
                    else
                    {
                        lbl_error.Text = "Usuario Inválido | Combinacion Email/Password Incorrecta";
                    }
                    
                }
                catch (Exception err)
                {
                    lbl_error.Text = "SPUsuario Inválido | Combinacion Email/Password Incorrecta";
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                lbl_error.Text = "Campos Vacíos";
            }
        }
    }
}