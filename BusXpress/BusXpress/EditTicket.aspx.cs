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
    public partial class EditTicket : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
        public int pId { get; set; }
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


        protected void Editbutton_Click(object sender, EventArgs e)
        {
            if (txtuser.Text.Trim() != "" && txtemail.Text.Trim() != "" && ddlbuses.Text.Trim() != "" && txtpassengers.Text.Trim() != "" && Textid.Text.Trim() != "")
            {
                MySqlConnection connection = datos.ObtenerConexion();
                string query = "UPDATE admin SET Username= @username,  Email= @Email, Bus= @bus, Passengers= @passengers WHERE admin_ID=@admin_ID";
                MySqlCommand comando = new MySqlCommand(query, connection);


                comando.Parameters.AddWithValue("@Username", txtuser.Text);
                comando.Parameters.AddWithValue("@Email", txtemail.Text);
                comando.Parameters.AddWithValue("@Bus", ddlbuses.Text);
                comando.Parameters.AddWithValue("@Passengers", txtpassengers.Text);
                comando.Parameters.AddWithValue("@admin_ID", Textid.Text);


                comando.ExecuteNonQuery();
                connection.Close();
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


                alerta.Text = "<script>Swal.fire('Ticket was added.', 'Thank you for review the changes!', 'success'); </script>";

                txtuser.Text = "";
                txtemail.Text = "";
                ddlbuses.Text = "";
                txtpassengers.Text = "";
                Textid.Text = "";

                alerta.Text = "<script>Swal.fire('Success', 'The Ticket has been Edited :) ', 'success'); </script>";
            }
            else
            {

                alerta.Text = "<script>Swal.fire('ERROR...', 'Don't leave empty spaces', 'error') </script>";


            }
        }

        protected void Selectbutton_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection connection = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM admin WHERE admin_ID= @admin_ID", connection);
                comand.Parameters.AddWithValue("@admin_ID", Textid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Your Ticket has been Selected :) ', '', 'success'); </script>";

                    txtuser.Text = registro["Username"].ToString();
                    txtemail.Text = registro["Email"].ToString();
                    ddlbuses.Text = registro["Bus"].ToString();
                    txtpassengers.Text = registro["Passengers"].ToString();

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