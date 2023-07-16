using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BusXpress
{
    public class datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=127.0.0.1; database=busxpress; Uid=root; pwd=info2023;");
            datos.Open();
            return datos;
        }
    }
}