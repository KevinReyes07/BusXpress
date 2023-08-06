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
    public partial class AddDriver : System.Web.UI.Page
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

        protected void ADDBUTTON_Click1(object sender, EventArgs e)
        {
            if (txtname.Text.Trim() != "" && ddlBuss.Text.Trim() != "" && ddlDeparture.Text.Trim() != "" && ddlDestiny.Text.Trim() != "")
            {
                try
                {
                    add_driver dAlumno = new add_driver();
                    dAlumno.Name = txtname.Text.Trim();
                    dAlumno.Bus = ddlBuss.Text.Trim();
                    dAlumno.Departure = ddlDeparture.Text.Trim();
                    dAlumno.Destiny = ddlDestiny.Text.Trim();
                    int resultado = conexiones.ADDDRIVER(dAlumno);
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

                    alerta.Text = "<script>Swal.fire('Driver was added.', 'Thank you for choosing us!', 'success'); </script>";
                    ddlBuss.Text = "";
                    ddlDestiny.Text = "";
                    ddlDeparture.Text = "";
                    txtname.Text = "";
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