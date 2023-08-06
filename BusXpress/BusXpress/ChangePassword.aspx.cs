﻿using MySql.Data.MySqlClient;

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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Change_Click_Click(object sender, EventArgs e)
        {

            if (txtpassword1.Text.Trim() != "" && txtpassword2.Text.Trim() != "")
            {
                if (txtpassword2.Text == txtpassword1.Text)
                {
                    string userforgot;
                    string contraEsencriptada;

                    userforgot = ValorGlobalOlvidoContra.valorGlobal;


                    MySqlConnection conexion = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
                    string query = "UPDATE users SET Password = @Password WHERE Username = @Username";

                    conexion.Open();

                    contraEsencriptada = EncryptString(txtpassword2.Text, initVector);
                    MySqlCommand comando = new MySqlCommand(query, conexion);
                    comando.Parameters.AddWithValue("@Username", userforgot);
                    comando.Parameters.AddWithValue("@Password", contraEsencriptada);

                    comando.ExecuteNonQuery();
                    conexion.Close();

                    alerta.Text = "<script>Swal.fire('Password successfully updated!', '', 'success'); </script>";
                    Response.AddHeader("REFRESH", "3;URL=Login.aspx");
                    txtpassword1.Text = "";
                    txtpassword2.Text = "";
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Different passwords!', 'Passwords do not match', 'error'); </script>";
                    txtpassword1.Text = "";
                    txtpassword2.Text = "";
                }

            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS!', 'Do not leave empty spaces', 'warning') </script>";
                txtpassword1.Text = "";
                txtpassword2.Text = "";
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
    }
}