using MySql.Data.MySqlClient;

using Newtonsoft.Json.Linq;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PayConfirm_Click(object sender, EventArgs e)
        {
            string validcard = ValidCard.Text;
            string expirationcard = ExpirationCard.Text;
            int cvc = int.Parse(TxtCVC.Text); 
            string cardowner = CardOwner.Text;

            MySqlConnection connection = new MySqlConnection("Server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");

            var insertQuery = "Insert into payment (validcard, expirationcard, cvc, cardowner) VALUES (@Value1, @Value2, @Value3, @Value4)";

            MySqlCommand insertCommand = new MySqlCommand(insertQuery, connection); 

            insertCommand.Parameters.AddWithValue("@Value1", validcard); 
            insertCommand.Parameters.AddWithValue("@Value2", expirationcard); 
            insertCommand.Parameters.AddWithValue("@Value3", cvc); 
            insertCommand.Parameters.AddWithValue("@Value4", cardowner);
            connection.Open();
            connection.Close();

            Response.Redirect("MainPage.aspx");


        }
    }
}