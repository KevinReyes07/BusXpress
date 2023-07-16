using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusXpress
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_up(object sender, EventArgs e)
        {
            if (TextName.Text.Trim() != "" && TextLast.Text.Trim() != "" && TextUsername.Text.Trim() != "" && TextEmail.Text.Trim() != "" && TextPassword.Text.Trim() != "" && TextRepeat.Text.Trim() != "" )
            {
                if (TextPassword.Text == TextRepeat.Text)
                {
                    string name;
                    string last;
                    string encrypted;
                    string user;
                    string email;
                    string age;
                    

                    name = TextName.Text;
                    last = TextLast.Text;
                    user = TextUsername.Text;
                    encrypted = EncryptString(TextPassword.Text, initVector);
                    email = TextEmail.Text;
                    age = TextAge.Text;
                    

                    if (conexiones.RepeatedUsers(name, last, user, age, email, encrypted) == 0)
                    {
                        alerta.Text = "<script>Swal.fire('Successfully registered', 'Thank you for choosing us', 'success'); </script>";

                        TextName.Text = "";
                        TextLast.Text = "";
                        TextUsername.Text = "";
                        TextPassword.Text = "";
                        TextRepeat.Text = "";
                        TextEmail.Text = "";
                        
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('This user already exists', 'Choose another username', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Wrong Password', 'Repeat your password', 'error');</script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('hmmm...', 'Don't leave empty spaces', 'error') </script>";
            }
        }

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

        protected void RegistroToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}