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
    public partial class AddTicket1 : System.Web.UI.Page
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

        protected void addbutton_Click(object sender, EventArgs e)
        {



            if (txtuser.Text.Trim() != "" && txtemail.Text.Trim() != "" && ddlbuses.Text.Trim() != "" && txtpasengers.Text.Trim() != "")
            {
                try
                {
                    add pAlumno = new add ();
                    pAlumno.Username = txtuser.Text.Trim();
                    pAlumno.Email = txtemail.Text.Trim();
                    pAlumno.Bus = ddlbuses.Text.Trim();
                    pAlumno.Passengers = txtpasengers.Text.Trim();
                    int resultado = conexiones.ADD(pAlumno);
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

                    alerta.Text = "<script>Swal.fire('Ticket was added.', 'Thank you for choosing us!', 'success'); </script>";
                    txtemail.Text = "";
                    txtpasengers.Text = "";
                    ddlbuses.Text = "";
                    txtuser.Text = "";
                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Something went wrong.' , 'Try again', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'Do not leave blank spaces', 'error') </script>";
            }
        }
    }
}