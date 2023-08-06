using MySql.Data.MySqlClient;

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class DeleteTicket : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from admin";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();

            conec.Close();
        }

        protected void deletebutton_Click(object sender, EventArgs e)
        {



            if (txtuser.Text.Trim() != "" && txtemail.Text.Trim() != "" && ddlbuses.Text.Trim() != "" && txtpasengers.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                conexiones.Eliminar(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from admin";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();


                txtuser.Text = "";
                txtemail.Text = "";
                ddlbuses.Text = "";
                txtid.Text = "";
                txtpasengers.Text = "";
                alerta.Text = "<script>Swal.fire('Ticket was eliminated.', '¡Thanks for choosing us!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }





        }

        protected void selectbutton_Click(object sender, EventArgs e)
        {



            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM admin WHERE admin_ID=@admin_ID", conexion);
                comand.Parameters.AddWithValue("@admin_ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Successfully selected.', '', 'success'); </script>";

                    txtuser.Text = registro["Username"].ToString();
                    txtemail.Text = registro["Email"].ToString();
                    ddlbuses.Text = registro["Bus"].ToString();
                    txtpasengers.Text = registro["Passengers"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went wrong. Try again', 'Verify that ID is correct', 'error') </script>";
            }






        }
    }
}