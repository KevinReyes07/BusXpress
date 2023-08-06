using MySql.Data.MySqlClient;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class Recover_account_token : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void token_Click_Click(object sender, EventArgs e)
        {
            if (txttoken.Text.Trim() != "")
            {
                string tokenusu = txttoken.Text;
                MySqlConnection connection = datos.ObtenerConexion();
                var cmd = "SELECT User_ID from users WHERE token='" + tokenusu + "';";
                MySqlCommand comando = new MySqlCommand(cmd, connection);
                //conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());

                if (retorno != 0)
                {
                    alertas.Text = "<script>Swal.fire('Verification code correct!', '', 'success') </script>";
                    Response.AddHeader("REFRESH", "3;URL=ChangePassword.aspx");
                    txttoken.Text = "";
                }
                else

                {
                    alertas.Text = "<script>Swal.fire('Incorrect Code!', 'The code does not match, please check the email again', 'error') </script>";
                    txttoken.Text = "";
                }

            }
            else
            {
                alertas.Text = "<script>Swal.fire('OOPS!', 'Do not leave empty spaces', 'warning') </script>";
                txttoken.Text = "";
            }
        }
    }
}