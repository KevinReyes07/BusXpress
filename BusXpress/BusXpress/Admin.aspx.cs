using MySql.Data.MySqlClient;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class Admin : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("Server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["Role"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            //}

            //conec.Open();
            //try
            //{
            //    String user = Session["1"].ToString();

            //}
            //catch (Exception ex)
            //{

            //}

            //Número de buses
            //string nameuser = "SELECT Username FROM users";
            //MySqlCommand command = new MySqlCommand(nameuser, conec);

            //command.ExecuteScalar();
            //string count = Convert.ToString(command.ExecuteScalar());
            //NameUser.Text = count.ToString();

        }
    }
}