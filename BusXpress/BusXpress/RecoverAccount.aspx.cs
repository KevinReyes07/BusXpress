using MySql.Data.MySqlClient;

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class RecoverAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This size of the IV (in bytes) must = (keysize / 8).  Default keysize is 256, so the IV must be
        // 32 bytes long.  Using a 16 character string here gives us 32 bytes when converted to a byte array.
        private const string initVector = "pemgail9uzpgzl88";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;

        public static string DecryptString(string cipherText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] cipherTextBytes = Convert.FromBase64String(cipherText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream(cipherTextBytes);
            CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            byte[] plainTextBytes = new byte[cipherTextBytes.Length];
            int decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
            memoryStream.Close();
            cryptoStream.Close();
            return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
        }
        protected void btnregistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void recover_Click_Click(object sender, EventArgs e)
        {
            if (txtcuenta.Text != "")
            {
                try
                {



                    string userforgot;

                    userforgot = txtcuenta.Text;

                    ValorGlobalOlvidoContra.valorGlobal = userforgot;



                    Random rand = new Random();
                    string randomCode = (rand.Next(999999)).ToString();
                    string eventorandom = randomCode + "reset_randomcode";

                    MySqlConnection conexion2 = new MySqlConnection("Server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
                    conexion2.Open();

                    MySqlCommand comando = new MySqlCommand(string.Format("UPDATE users SET token = '{0}' WHERE Username = '{1}'", randomCode, txtcuenta.Text), conexion2);
                    MySqlCommand evento = new MySqlCommand("CREATE EVENT " + eventorandom + " ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 2 MINUTE DO UPDATE users SET token  = NULL", conexion2);
                    comando.ExecuteNonQuery();
                    evento.ExecuteNonQuery();
                    conexion2.Close();




                    string user = txtcuenta.Text;




                    MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");


                    var cmd = "Select Password from users where Username='" + user + "';";
                    var cmd1 = "Select Email from users where Username='" + user + "';";
                    var cmd2 = "Select First_Names from users where Username='" + user + "';";


                    MySqlCommand obtenerContra = new MySqlCommand(cmd, conexion);
                    obtenerContra.Parameters.Add("@Name", MySqlDbType.VarChar);
                    MySqlCommand obtenerCorreo = new MySqlCommand(cmd1, conexion);
                    obtenerCorreo.Parameters.Add("@Name", MySqlDbType.VarChar);
                    MySqlCommand obtenerNombre = new MySqlCommand(cmd2, conexion);

                    string mail;
                    string contra;
                    string nombrecliente;
                    //string contraDesencriptada;
                    conexion.Open();
                    mail = (string)obtenerCorreo.ExecuteScalar();
                    contra = (string)obtenerContra.ExecuteScalar();
                    nombrecliente = (string)obtenerNombre.ExecuteScalar();
                    //contraDesencriptada = DecryptString(contra, initVector);

                    string correo = mail;
                    string nombre = "BusXpress";



                    var fromAddress = new MailAddress("busxpressoficial@gmail.com", "BusXpress");
                    const string fromPassword = "sabeqvriguoczxzg";
                    var toAddress = new MailAddress(correo, nombre);//Dirección de correo y nombre que se muestra				
                    const string subject = "Password recovered";//Asunto del correo
                    string body = "Senior" + nombrecliente + ", thank you for choosing and trusting us. It is a pleasure for us that you are our customer, and we do not want you to suffer any inconvenience. In the present mail we send you the password you requested. Thank you very much for being our client. Token: " + randomCode + "";
                    //Fin de datos del envío


                    var smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                    };
                    using (var message = new MailMessage(fromAddress, toAddress)
                    {
                        Subject = subject,
                        Body = body
                    })
                    {
                        smtp.Send(message);//Enviar el correo
                    }

                    alertas.Text = "<script>Swal.fire('Token Sent successfully', 'Password recovered', 'success');</script>";

                    Response.AddHeader("REFRESH", "3;URL=Recover_account_token.aspx");

                }


                catch
                {
                    alertas.Text = "<script>Swal.fire('ERROR', 'Check The Username.', 'error');</script>";
                }
            }
            else
            {
                alertas.Text = "<script>Swal.fire('ERROR', 'Dont leave empty spaces.', 'error');</script>";
            }
        }
    }
    
}