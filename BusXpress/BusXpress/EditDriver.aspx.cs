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
    public partial class EditDriver : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
        public int pId { get; set; }
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

        protected void DELETEBUTTON_Click(object sender, EventArgs e)
        {
            if (txtname.Text.Trim() != "" && ddlBuss.Text.Trim() != "" && ddlDeparture.Text.Trim() != "" && ddlDestiny.Text.Trim() != "" && txtid.Text.Trim() != "")
            {
                MySqlConnection connection = datos.ObtenerConexion();
                string query = "UPDATE drivers SET Name= @Name,  Bus= @Bus, Departure= @Departure, Destiny= @Destiny WHERE ID_driver=@ID_driver";
                MySqlCommand comando = new MySqlCommand(query, connection);


                comando.Parameters.AddWithValue("@Name", txtname.Text);
                comando.Parameters.AddWithValue("@Bus", ddlBuss.Text);
                comando.Parameters.AddWithValue("@Departure", ddlDeparture.Text);
                comando.Parameters.AddWithValue("@Destiny", ddlDestiny.Text);
                comando.Parameters.AddWithValue("@ID_driver", txtid.Text);


                comando.ExecuteNonQuery();
                connection.Close();
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


                alerta.Text = "<script>Swal.fire('Driver was added.', 'Thank you for review the changes!', 'success'); </script>";

                txtname.Text = "";
                ddlBuss.Text = "";
                ddlDeparture.Text = "";
                ddlDestiny.Text = "";
                txtid.Text = "";

                alerta.Text = "<script>Swal.fire('Success', 'The Driver has been Edited :) ', 'success'); </script>";
            }
            else
            {

                alerta.Text = "<script>Swal.fire('ERROR...', 'Don't leave empty spaces', 'error') </script>";


            }
        }

        protected void SELECTBUTTON_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection connection = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM drivers WHERE ID_driver= @ID_driver", connection);
                comand.Parameters.AddWithValue("@ID_driver", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Your Ticket has been Selected :) ', '', 'success'); </script>";

                    txtname.Text = registro["Name"].ToString();
                    ddlBuss.Text = registro["Bus"].ToString();
                    ddlDeparture.Text = registro["Departure"].ToString();
                    ddlDestiny.Text = registro["Destiny"].ToString();

                }
                connection.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went wrong. Try again', 'Verify the correct writing on the table', 'error') </script>";
            }
        }
    }
}