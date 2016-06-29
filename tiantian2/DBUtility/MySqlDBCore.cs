using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtility
{
    public class MySqlDBCore
    {
        private static MySqlTransaction transaction;
        private const string CONNECTIONSTRING = "server=localhost;user id=root;password=123456;database=net";
        private static MySqlConnection connection = new MySqlConnection(CONNECTIONSTRING);

        public static void BeginT()//Begin transaction
        {
            try
            {
                connection.Open();
                transaction = connection.BeginTransaction();
            }
            catch
            {
                Console.WriteLine("Error in starting transaction!");
            }
        }

        public static void EndT()//End transaction
        {
            try
            {
                transaction.Commit();
                connection.Close();
            }
            catch { }
        }

        public static void Execute(string command)//Execute Sql
        {
            try
            {
                BeginT();
                MySqlCommand _command = new MySqlCommand(command, connection);
                _command.ExecuteNonQuery();
            }
            catch { Console.WriteLine("command error 01"); }
            EndT();
            return;
        }

        public static void Execute(string command, ref DataSet data)//Execute Sql and fill dataset
        {
            try
            {
                BeginT();
                MySqlDataAdapter ada = new MySqlDataAdapter(command, connection);
                ada.Fill(data);
            }
            catch
            {
                Console.WriteLine("command error 02");
            }
            EndT();
            return;
        }
    }
}
