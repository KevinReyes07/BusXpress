

using PayPalCheckoutSdk.Core;
using PayPalCheckoutSdk.Orders;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;
using System.Net.Http;
using PayPalHttp;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace BusXpress
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //// Configurar las credenciales de PayPal
            //var config = new Dictionary<string, string>
            //{
            //    { "mode", "sandbox" },
            //    { "clientId", ConfigurationManager.AppSettings["PayPalClientId"] },
            //    { "clientSecret", ConfigurationManager.AppSettings["PayPalClientSecret"] }
            //};

            //// Crear el entorno
            //var environment = new SandboxEnvironment(config["clientId"], config["clientSecret"]);
            //var client = new PayPalHttpClient(environment);

            //// Crear una orden de prueba
            //var request = new OrdersCreateRequest();
            //request.Prefer("return=representation");
            //request.RequestBody(new OrderRequest
            //{
            //    CheckoutPaymentIntent = "CAPTURE",
            //    PurchaseUnits = new List<PurchaseUnitRequest>
            //    {
            //        new PurchaseUnitRequest
            //        {
            //            AmountWithBreakdown = new AmountWithBreakdown
            //            {
            //                CurrencyCode = "USD",
            //                Value = "100.00"
            //            }
            //        }
            //    },
            //    ApplicationContext = new ApplicationContext
            //    {
            //        ReturnUrl = "https://tu-sitio.com/retorno",
            //        CancelUrl = "https://tu-sitio.com/cancelado"
            //    }
            //});

            //try
            //{
            //    // Crear la orden
            //    var response = client.Execute(request).Result;

            //    // Obtener la URL de aprobación para redirigir al usuario
            //    var approvalUrl = response.Result<PayPalCheckoutSdk.Orders.Order>().Links.Find(link => link.Rel.Equals("approve", StringComparison.OrdinalIgnoreCase)).Href;

            //    // Redirigir al usuario a la URL de aprobación
            //    Response.Redirect(approvalUrl);
            //}
            //catch (Exception ex)
            //{
            //    // Manejar errores
            //    Response.Write("Error al crear la orden: " + ex.Message);
            //}
        }


        //string endpointUrl = "https://api-m.sandbox.paypal.com/v1/oauth2/token"; // Replace this with the actual endpoint URL

        //// Sample data to send in the request body
        //string userId = "AR83lIXVfLLhyWatPu9Q1AHKwp0G5Dx_ycD61hHQjts7d19X-al5lFEbsH8IdHu4rUXZXu8lu3XlbWwv";
        //string secret = "EDohXnU9T2AnSTZ15e-Y20Sf144ylXEUlqPGT5qylwp4K4ERI3iCnyg1JXql9Dck3N2KifUdQmRX5U2l";


        //private string GetPaypalToken()
        //{
        //    string endpointUrl = "https://api-m.sandbox.paypal.com/v1/oauth2/token"; // Replace this with the actual endpoint URL

        //    // Sample data to send in the request body
        //    string userId = "AR83lIXVfLLhyWatPu9Q1AHKwp0G5Dx_ycD61hHQjts7d19X-al5lFEbsH8IdHu4rUXZXu8lu3XlbWwv";
        //    string secret = "EDohXnU9T2AnSTZ15e-Y20Sf144ylXEUlqPGT5qylwp4K4ERI3iCnyg1JXql9Dck3N2KifUdQmRX5U2l";

        //    try
        //    {
        //        // Call PostRequest and pass the userId and secret
        //        string token = PostRequest(endpointUrl, userId, secret);


        //        return token;
        //    }
        //    catch (HttpRequestException ex)
        //    {
        //        // Handle exceptions if any
        //        Console.WriteLine("Error: " + ex.Message);
        //        return "";
        //    }
        //}

        //private async Task<string> CreatePaypalOrder()
        //{
        //    string clientId = "AR83lIXVfLLhyWatPu9Q1AHKwp0G5Dx_ycD61hHQjts7d19X-al5lFEbsH8IdHu4rUXZXu8lu3XlbWwv";
        //    string secret = "EDohXnU9T2AnSTZ15e-Y20Sf144ylXEUlqPGT5qylwp4K4ERI3iCnyg1JXql9Dck3N2KifUdQmRX5U2l";

        //    try
        //    {
        //        Set up the PayPal environment
        //        string test = "test";
        //        SandboxEnvironment env = new SandboxEnvironment(clientId, secret);
        //        PayPalHttpClient client = new PayPalHttpClient(env);

        //        Create an order
        //       OrderRequest order = new OrderRequest()
        //       {
        //           CheckoutPaymentIntent = "CAPTURE",
        //           ApplicationContext = new ApplicationContext()
        //           {
        //               BrandName = "Your Brand",
        //               LandingPage = "BILLING",
        //               UserAction = "CONTINUE",
        //               ShippingPreference = "SET_PROVIDED_ADDRESS"
        //           },
        //           PurchaseUnits = new List<PurchaseUnitRequest>()
        //           {
        //                new PurchaseUnitRequest()
        //                {
        //                    AmountWithBreakdown = new AmountWithBreakdown()
        //                    {
        //                        CurrencyCode = "USD",
        //                        Value = "100.00"
        //                    },
        //                    Payee = new Payee()
        //                    {
        //                        Email = "recipient@example.com"
        //                    }
        //                }
        //           }
        //       };

        //        Create the payment
        //       var request = new OrdersCreateRequest();
        //        request.RequestBody(order);

        //        var response = await client.Execute(request);
        //        var result = response.Result<Order>();
        //        return result.Id;
        //    }
        //    catch (HttpException ex)
        //    {
        //        Handle exceptions if any
        //        Console.WriteLine("Error: " + ex.Message);
        //        string error = ex.Message;
        //        return null;
        //    }
        //}

        //private string PostRequest(string url, string userId, string secret)
        //{
        //    using (HttpClient client = new HttpClient())
        //    {
        //        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        //        client.DefaultRequestHeaders.AcceptLanguage.Add(new StringWithQualityHeaderValue("en_US"));

        //        var clientId = userId;
        //        var clientSecret = secret;
        //        var bytes = Encoding.UTF8.GetBytes($"{clientId}:{clientSecret}");

        //        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(bytes));

        //        var keyValues = new List<KeyValuePair<string, string>>();
        //        keyValues.Add(new KeyValuePair<string, string>("grant_type", "client_credentials"));

        //        // Use Task.Run to perform the asynchronous operation and get the response
        //        var responseMessage = Task.Run(() => client.PostAsync(url, new FormUrlEncodedContent(keyValues))).Result;
        //        string result = responseMessage.Content.ReadAsStringAsync().Result;

        //        // Process the result if needed
        //        Console.WriteLine("Response: " + result);

        //        return result;
        //    }
        //}

        public void Paypal_Click(object sender, EventArgs e)
        {
            // Configurar las credenciales de PayPal
            var config = new Dictionary<string, string>
            {
                { "mode", "sandbox" },
                { "clientId", ConfigurationManager.AppSettings["PayPalClientId"] },
                { "clientSecret", ConfigurationManager.AppSettings["PayPalClientSecret"] }
            };

            // Crear el entorno
            var environment = new SandboxEnvironment(config["clientId"], config["clientSecret"]);
            var client = new PayPalHttpClient(environment);

            // Crear una orden de prueba
            var request = new OrdersCreateRequest();
            request.Prefer("return=representation");
            request.RequestBody(new OrderRequest
            {
                CheckoutPaymentIntent = "CAPTURE",
                PurchaseUnits = new List<PurchaseUnitRequest>
                {
                    new PurchaseUnitRequest
                    {
                        AmountWithBreakdown = new AmountWithBreakdown
                        {
                            CurrencyCode = "USD",
                            Value = "100.00"
                        }
                    }
                },
                ApplicationContext = new ApplicationContext
                {
                    ReturnUrl = "https://tu-sitio.com/retorno",
                    CancelUrl = "https://tu-sitio.com/cancelado"
                }
            });

            try
            {
                // Crear la orden
                var response = client.Execute(request).Result;

                // Obtener la URL de aprobación para redirigir al usuario
                var approvalUrl = response.Result<PayPalCheckoutSdk.Orders.Order>().Links.Find(link => link.Rel.Equals("approve", StringComparison.OrdinalIgnoreCase)).Href;

                // Redirigir al usuario a la URL de aprobación
                Response.Redirect(approvalUrl);
            }
            catch (Exception ex)
            {
                // Manejar errores
                Response.Write("Error al crear la orden: " + ex.Message);
            }
        }

        //public void ProcessPaypalTransaction()
        //{
        //    PageAsyncTask task = new PageAsyncTask(async () =>
        //    {
        //        string orderId = await CreatePaypalOrder();

        //        string response = "";

        //        if (!string.IsNullOrEmpty(orderId))
        //        {
        //            // Continue with order processing or any other logic
        //            response = $"PayPal transaction successful. Order ID: {orderId}";
        //        }
        //        else
        //        {
        //            // Handle error or display failure message
        //            response = "PayPal transaction failed.";
        //        }

        //    });

        //    // Register the asynchronous task
        //    Page.RegisterAsyncTask(task);


        //}



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