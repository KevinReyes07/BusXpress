using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BusXpress
{
    public class conexiones
    {
        public static int RepeatedUsers(string name, string last, string user, string age, string email, string password)
        {
            int valor = 0;
            MySqlConnection connection = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT User_ID FROM users WHERE Username ='" + user + "'", connection);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                conexiones.AddUser(name, last, user, email, password );

            }
            connection.Close();
            return valor;
        }

        public static int AddUser(string name, string last, string user, string email, string password)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into users (First_Names, Last_Names, Username, Email, Password) values ('{0}','{1}','{2}','{3}','{4}')", name, last, user, email, password), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        public static int ADD(add pAlumno)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into admin (admin_ID, Username, Email, Bus, Passengers) values('{0}','{1}','{2}','{3}','{4}')", pAlumno.Id, pAlumno.Username, pAlumno.Email, pAlumno.Bus, pAlumno.Passengers), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }

        public static int Delete(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From tickets where ID={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }

        public static int Eliminar(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From admin where admin_ID={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }
        public static int AddTicket(string To, string From, string Passenger)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ticket (From,To,P_option) vaues ('{0}','{1}','{2}')", datos.ObtenerConexion()));
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //----------------------------
        //          DRIVERS
        //----------------------------



        public static int ADDDRIVER(add_driver dAlumno)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into drivers (ID_driver, Name, Bus, Departure, Destiny) values('{0}','{1}','{2}','{3}','{4}')", dAlumno.ID, dAlumno.Name, dAlumno.Bus, dAlumno.Departure, dAlumno.Destiny), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }

        public static int DELETEDRIVER(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From drivers where ID_driver={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }


    }
}