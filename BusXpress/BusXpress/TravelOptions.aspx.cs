using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Types;
using Twilio.Rest.Api.V2010.Account;


namespace BusXpress
{
    public partial class TravelOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string startingPoint = ddlStartingPoint.SelectedValue;
            string destination = ddlDestination.SelectedValue;
            string birthday = txtBirthday.Text;
            string dueDate = txtDueDate.Text;
            int passengers = int.Parse(txtPassengers.Text);
            string email = userEmail.Text;
            string phone = userPhone.Text;

            // Use the retrieved values as needed
            // ...
            MySqlConnection connection = new MySqlConnection("Server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");

            var selectQuery = "SELECT User_ID from users WHERE Email=@Email";
            var insertQuery = "INSERT INTO ticket (status, Number_of_Passengers, Terminal_from, Terminal_to, Departure_D, Return_D ,ID_User) VALUES (@Value1, @Value2, @Value3, @Value4, @Value5, @Value6, @Value7)"; // Modify with your table and column names

            MySqlCommand selectCommand = new MySqlCommand(selectQuery, connection);
            selectCommand.Parameters.AddWithValue("@Email", email);

            MySqlCommand insertCommand = new MySqlCommand(insertQuery, connection);
            insertCommand.Parameters.AddWithValue("@Value1", "activo"); // Modify with your desired values
            insertCommand.Parameters.AddWithValue("@Value2", + passengers); // Placeholder for passengers
            insertCommand.Parameters.AddWithValue("@Value3", startingPoint); // placeholder From
            insertCommand.Parameters.AddWithValue("@Value4", destination); // placeholder To
            insertCommand.Parameters.AddWithValue("@Value5", birthday); // placeholder for to go
            insertCommand.Parameters.AddWithValue("@Value6", dueDate); // Placeholder for return
            insertCommand.Parameters.AddWithValue("@Value7", 0); // Placeholder for userId

            connection.Open();

            int userId = 0;

            using (MySqlDataReader reader = selectCommand.ExecuteReader())
            {
                if (reader.Read())
                {
                    userId = reader.GetInt32("User_ID");
                    reader.Close();

                    insertCommand.Parameters["@Value7"].Value = userId;
                    int rowsAffected = insertCommand.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Insert operation was successful
                        // Redirect to another page or perform further actions
                        //string accountSid = "AC446be6fb569fd5c8d252727a29303da8";
                        //string authToken = "272d86a0ff7e3f3793f61600ded8b6a1";
                        //string twilioPhoneNumber = "+14174907808";

                        string accountSid = "AC558a125e5ae48af0c562234e08b786c9";
                        string authToken = "dc1f37f320d3061144425daebd147cf0";
                        string twilioPhoneNumber = "+15416127926";

                        string recipientPhoneNumber = "+503" + phone;
                        string messageBody = "Ticket created for the user " + email ;

                        TwilioClient.Init(accountSid, authToken);

                        var message = MessageResource.Create(
                            body: messageBody,
                            from: new PhoneNumber(twilioPhoneNumber),
                            to: new PhoneNumber(recipientPhoneNumber)
                        );




                        string script = "alert('Please, Check out SMS on your cell phone');";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

                        //+14174907808 twilio phone number


                    }
                    else
                    {
                        // Insert operation failed
                        // Handle the failure accordingly
                    }
                }
                else
                {
                    // Handle the case where no user with the given email is found
                    // ...
                }
            }
            
            connection.Close();
            Response.Redirect("Payment.aspx");
        }


        protected void Next(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Back_MainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

        protected void LogOut_Ticket_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}