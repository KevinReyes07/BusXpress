using PayPalCheckoutSdk.Core;
using PayPalCheckoutSdk.Orders;
using PayPalHttp;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;

namespace BusXpress.Utilities
{
    public class PayPalTransaction
    {
        private readonly string clientId = "AR83lIXVfLLhyWatPu9Q1AHKwp0G5Dx_ycD61hHQjts7d19X-al5lFEbsH8IdHu4rUXZXu8lu3XlbWwv";
        private readonly string clientSecret = "EDohXnU9T2AnSTZ15e-Y20Sf144ylXEUlqPGT5qylwp4K4ERI3iCnyg1JXql9Dck3N2KifUdQmRX5U2l";

        public PayPalTransaction()
        {

        }

        public void ProcessPaypalTransaction()
        {
            PageAsyncTask task = new PageAsyncTask(async () =>
            {
                string orderId = await CreatePaypalOrder();

                string response = "";

                if (!string.IsNullOrEmpty(orderId))
                {
                    // Continue with order processing or any other logic
                    response = $"PayPal transaction successful. Order ID: {orderId}";
                }
                else
                {
                    // Handle error or display failure message
                    response = "PayPal transaction failed.";
                }

            });

            // Register the asynchronous task
            //Page.RegisterAsyncTask(task);


        }

        private async Task<string> CreatePaypalOrder()
        {
            string hello = "world";
            try
            {
                // Set up the PayPal environment
                var environment = new SandboxEnvironment(clientId, clientSecret);
                var client = new PayPalHttpClient(environment);

                // Create an order
                var order = new OrderRequest()
                {
                    CheckoutPaymentIntent = "CAPTURE",
                    ApplicationContext = new ApplicationContext()
                    {
                        BrandName = "Your Brand",
                        LandingPage = "BILLING",
                        UserAction = "CONTINUE",
                        ShippingPreference = "SET_PROVIDED_ADDRESS"
                    },
                    PurchaseUnits = new List<PurchaseUnitRequest>()
                {
                    new PurchaseUnitRequest()
                    {
                        AmountWithBreakdown = new AmountWithBreakdown()
                        {
                            CurrencyCode = "USD",
                            Value = "100.00"
                        },
                        Payee = new Payee()
                        {
                            Email = "recipient@example.com"
                        }
                    }
                }
                };

                // Create the payment
                var request = new OrdersCreateRequest();
                request.RequestBody(order);

                var response = await client.Execute(request);
                var result = response.Result<Order>();
                return result.Id;
            }
            catch (HttpException ex)
            {
                // Handle exceptions if any
                Console.WriteLine("Error: " + ex.Message);
                return null;
            }
        }
    }
}