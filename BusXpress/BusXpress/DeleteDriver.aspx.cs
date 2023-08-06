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
    public partial class DeleteDriver : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from drivers";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlist.DataSource = dt;
            gvdlist.DataBind();

            conec.Close();
        }

        protected void SELECTBUTTON_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM drivers WHERE ID_driver=@ID_driver", conexion);
                comand.Parameters.AddWithValue("@ID_driver", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Successfully selected.', '', 'success'); </script>";

                    txtname.Text = registro["Name"].ToString();
                    ddlBuss.Text = registro["Bus"].ToString();
                    ddlDeparture.Text = registro["Departure"].ToString();
                    ddlDestiny.Text = registro["Destiny"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went wrong. Try again', 'Verify that ID is correct', 'error') </script>";
            }
        }

        protected void DELETEBUTTON_Click(object sender, EventArgs e)
        {


            if (txtname.Text.Trim() != "" && ddlBuss.Text.Trim() != "" && ddlDeparture.Text.Trim() != "" && ddlDestiny.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                conexiones.DELETEDRIVER(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from drivers";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlist.DataSource = dt;
                gvdlist.DataBind();


                txtname.Text = "";
                ddlBuss.Text = "";
                ddlDeparture.Text = "";
                txtid.Text = "";
                ddlDestiny.Text = "";
                alerta.Text = "<script>Swal.fire('Ticket was eliminated.', '¡Thanks for choosing us!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }


        }
    }
}