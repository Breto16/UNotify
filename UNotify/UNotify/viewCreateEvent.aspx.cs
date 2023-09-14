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
using System.IO;

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
            //Guardar la imagen en la ruta y obtener le nombre de la imagen para la base de datos
            if (uploadImage.HasFile)
            {
                try
                {
                    string nombreArchivo = Path.GetFileName(uploadImage.FileName);
                    string rutaGuardar = Server.MapPath("~/img/") + nombreArchivo;

                    if(File.Exists(rutaGuardar))
                    {
                        //Ya existe el archivo
                        createEventTitle.Text = "Ya existe";
                    }
                    else
                    {
                        uploadImage.SaveAs(rutaGuardar);

                        //Apartir de aqui empieza la ejecución del storedProcedure
                        string horaIngresada = textBoxTimeEvent.Text;
                        // Formato esperado de hora (HH:mm)
                        string formatoHora = "HH:mm";
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
                                cmd.Parameters.Add("@Hora", SqlDbType.Time).Value = textBoxTimeEvent.Text;
                                cmd.Parameters.Add("@Lugar", SqlDbType.NVarChar, 255).Value = textBoxPlace.Text;

                                //Se hace en ParseInt
                                string cadena = textBoxCapacityMax.Text;
                                int capacidad;
                                if (int.TryParse(cadena, out capacidad))
                                {
                                    cmd.Parameters.Add("@Capacidad", SqlDbType.Int).Value = capacidad;
                                }
                                else
                                {
                                    cmd.Parameters.Add("@Capacidad", SqlDbType.Int).Value = 0;
                                }

                                cmd.Parameters.Add("@NombreImagen", SqlDbType.NVarChar).Value = nombreArchivo;

                                int filasAfectadas = cmd.ExecuteNonQuery();
                                if (filasAfectadas > 0)
                                {
                                    createEventTitle.Text = nombreArchivo;
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
                catch(Exception ex)
                {
                    //Maneja error en la carga del archivo
                    createEventTitle.Text = ex + "";

                }
            }
            else
            {
                //No se carga imagen
                createEventTitle.Text = "No se cargo imagen";
            }
        }
    }
}