using MySql.Data.MySqlClient;

using Newtonsoft.Json.Linq;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

namespace BusXpress
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void PayConfirm_Click(object sender, EventArgs e)
        {
            string apiUrl = "https://api.sandbox.paypal.com/v1/payments/payment";
            string accessToken = "A21AAKcW3FFhX3NCsWzeZQfLgEOe001ivjJErHQw-PHimxpzeK3LJjTDxY7kKD3UyxcY7AMkZRHfI7u0ISN_iq5cFNoe0CxKw";

            string jsonRequest = @"{
                ""intent"": ""sale"",
                ""payer"": {
                    ""payment_method"": ""paypal""
                },
                ""transactions"": [
                    {
                        ""amount"": {
                            ""total"": ""10.00"",
                            ""currency"": ""USD""
                        },
                        ""description"": ""Test payment""
                    }
                ],
                ""redirect_urls"": {
                    ""return_url"": ""https://yourwebsite.com/return"",
                    ""cancel_url"": ""https://yourwebsite.com/cancel""
                }
            }";

            string transactionId = await MakeHttpPostRequest(apiUrl, accessToken, jsonRequest);
            if (!string.IsNullOrEmpty(transactionId))
            {
                TransactionIdLabel.Text = "Transaction ID: " + transactionId;
                TransactionIdLabel.Visible = true;
            }
        }

        static async Task<string> MakeHttpPostRequest(string apiUrl, string accessToken, string jsonRequest)
        {
            using (HttpClient httpClient = new HttpClient())
            {
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                StringContent content = new StringContent(jsonRequest, Encoding.UTF8, "application/json");

                HttpResponseMessage response = await httpClient.PostAsync(apiUrl, content);

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    JObject responseJson = JObject.Parse(responseBody);
                    string transactionId = responseJson["id"].ToString();
                    return transactionId;
                }
                else
                {
                    return null;
                }
            }
        }
        protected void PayConfirm_ClickTest(object sender, EventArgs e)
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