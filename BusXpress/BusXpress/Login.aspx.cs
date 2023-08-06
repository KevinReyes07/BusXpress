using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Contracts;
using System.IO;
using System.Linq;
using System.Net.PeerToPeer;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConfirmSession_Click(object sender, EventArgs e)
        {
            if (LoginPass.Text != "" && LoginUser.Text != "")
            {

                string password, user;


                password = EncryptString(LoginPass.Text, initVector);

                user = LoginUser.Text;

                datos1.valorGlobal = user;


                MySqlConnection connection = new MySqlConnection("Server=127.0.0.1; database= busxpress; Uid=root; pwd=info2023;");

                connection.Open();

                var cmd = "SELECT Role FROM users WHERE Username = @Username AND password = @Password";
                MySqlCommand comando = new MySqlCommand(cmd, connection);
                
                comando.Parameters.AddWithValue("@Username", user);
                comando.Parameters.AddWithValue("@Password", password);

                using (MySqlDataReader reader = comando.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string role = reader["Role"].ToString();

                        // Verificar el rol del usuario y redirigir a la página correspondiente
                        if (role == "Admin")
                        {
                            // Redirigir al panel de administrador (cambia "PanelAdmin.aspx" al nombre de tu página de administrador)
                            Response.Redirect("Admin.aspx");
                        }
                        else
                        {
                            // Redirigir a la página principal (cambia "PaginaPrincipal.aspx" al nombre de tu página principal)
                            Response.Redirect("MainPage.aspx");
                        }
                    }
                    else
                    {
                        // Mostrar un mensaje de error al usuario si las credenciales son incorrectas
                        // lblMensaje.Text = "Credenciales inválidas";
                        alerta.Text = "<script>Swal.fire('Something went wrong', 'Your username or password are incorrect', 'error') </script>";
                        LoginPass.Text = "";
                        LoginUser.Text = "";
                    }

                    //        int retorno = Convert.ToInt32(comando.ExecuteScalar());
                    //    if (retorno != 0)
                    //    {
                    //        Session["user"] = LoginUser;
                    //        Response.Redirect("MainPage.aspx");

                    //    }
                    //    else
                    //    {
                    //        alerta.Text = "<script>Swal.fire('An error has occurred', 'your username or password is not correct', 'error') </script>";
                    //        LoginPass.Text = "";
                    //        LoginUser.Text = "";
                    //    }
                    //}
                    //else
                    //{
                    //    alerta.Text = "<script>Swal.fire('oops', 'Don't leave empty spaces', 'error') </script>";
                    //}
                    //var cmd1 = "SELECT User_ID from users WHERE Username='" + user + "' AND Password='" + password + "';";
                    //    MySqlCommand comando1 = new MySqlCommand(cmd1, connection);

                    //    var cmd2 = "SELECT User_ID from users WHERE Username='" + user + "' AND Password='" + password + "';";
                    //    MySqlCommand comando2 = new MySqlCommand(cmd2, connection);

                    //    //    var cmd3 = "SELECT User_ID from users WHERE Username='" + user + "' AND Password='" + password + "' AND Role ='Client';";
                    //    //    MySqlCommand comando3 = new MySqlCommand(cmd3, connection);



                    //    connection.Open();



                    //    int return1 = Convert.ToInt32(comando1.ExecuteScalar());
                    //    int return2 = Convert.ToInt32(comando2.ExecuteScalar());
                    //    //    int return3 = Convert.ToInt32(comando3.ExecuteScalar());



                    //    if (return1 != 0)
                    //    {
                    //        Session["user"] = LoginUser;
                    //        Response.Redirect("MainPage.aspx");

                    //    }
                    //    else if (return2 != 0)
                    //    {
                    //        Session["user"] = LoginUser;
                    //        Response.Redirect("Driver.aspx");

                    //        //    }
                    //        //    else if (return3 != 0)
                    //        //    {
                    //        //        Session["Client"] = LoginUser;
                    //        //        Response.Redirect("MainPage.aspx");

                    //    }
                    //    else
                    //    {
                    //        alerta.Text = "<script>Swal.fire('Something went wrong', 'Your username or password are incorrect', 'error') </script>";
                    //        LoginPass.Text = "";
                    //        LoginUser.Text = "";
                    //    }
                    //}
                    //else
                    //{
                    //    alerta.Text = "<script>Swal.fire('hmmm...', 'Don't leave empty spaces', 'error') </script>";
                    //}

                }
            }
        } 

        // ************************* OG CODE *************************

            //        var cmd = "SELECT id from users WHERE username='" + user + "' AND Password='" + password + "';";
            //        MySqlCommand comando = new MySqlCommand(cmd, connection);
            //        connection.Open();
            //        int retorno = Convert.ToInt32(comando.ExecuteScalar());
            //        if (retorno != 0)
            //        {
            //            Session["username"] = LoginUser;
            //            Response.Redirect("MainPage.aspx");

            //        }
            //        else
            //        {
            //            alerta.Text = "<script>Swal.fire('An error has occurred', 'your username or password is not correct', 'error') </script>";
            //            LoginPass.Text = "";
            //            LoginUser.Text = "";
            //        }
            //    }
            //    else
            //    {
            //        alerta.Text = "<script>Swal.fire('oops', 'Don't leave empty spaces', 'error') </script>";
            //    }
            //}

            // ***************************************************************************

        private const string initVector = "busxpressptc2023";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }

        protected void LoginToInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}
