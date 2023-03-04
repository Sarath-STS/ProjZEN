using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace DAL
{
    public class Dbhelper
    {
        public SqlCommand cmd;
        public SqlConnection con;
        public SortedList S1 = new SortedList();

       

        public SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-SSLK9LPO;Initial Catalog=BloodBank;Integrated Security=True");
            
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            return con;
        }
        
        
        public DataTable GetDataTable(string query)
        {
            SqlDataAdapter ad = new SqlDataAdapter(query, GetConnection());
            DataTable dt = new DataTable();
            ad.Fill(dt);
            return dt;
        }

        public DataTable GetDataTable(SortedList list, string query)
        {
            SqlCommand cmd = new SqlCommand(query, GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;

            if (!(list.Count == 0)) 
            {
                string[] mkeys = new string[list.Count];
                list.Keys.CopyTo(mkeys, 0);
                int i = 0;
                for (i = 1; i <= list.Count; i++)
                {
                    cmd.Parameters.Add(new SqlParameter("@" + mkeys[i - 1], list[mkeys[i - 1]]));
                }
            }

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            return dt;
        }
        
        public object execscalar(string query)
        {
            SqlCommand cmd = new SqlCommand(query, GetConnection());
            object s;
            s = cmd.ExecuteScalar();
            return s;
        }

        
    
        public int execquery(string query)
        {
            SqlCommand cmd = new SqlCommand(query, GetConnection());
            return cmd.ExecuteNonQuery();
        }


        public string executeprocedure(SortedList list, string query)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(query, GetConnection());
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.StoredProcedure;
                if (!(list.Count == 0)) 
                {
                    string[] mkeys = new string[list.Count];
                    list.Keys.CopyTo(mkeys, 0);
                    int i = 0;
                    for (i = 1; i <= list.Count; i++)
                    {
                        cmd.Parameters.Add(new SqlParameter("@" + mkeys[i - 1], list[mkeys[i - 1]]));
                    }
                }
                return cmd.ExecuteScalar().ToString();
            }
            catch (Exception ex)
            {
                return "-1";
            }
            finally
            {
                if (GetConnection().State == ConnectionState.Open) 
                {
                    GetConnection().Close();
                }
            }
        }

        public string insertprocedure(SortedList list, string query)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(query, GetConnection());
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.StoredProcedure;
                if (!(list.Count == 0))
                {
                    string[] mkeys = new string[list.Count];
                    list.Keys.CopyTo(mkeys, 0);
                    int i = 0;
                    for (i = 1; i <= list.Count; i++)
                    {
                        cmd.Parameters.Add(new SqlParameter("@" + mkeys[i - 1], list[mkeys[i - 1]]));
                    }
                }
                return cmd.ExecuteNonQuery().ToString();
            }
            catch (Exception ex)
            {
                return "-1";
            }
            finally
            {
                if (GetConnection().State == ConnectionState.Open)
                {
                    GetConnection().Close();
                }
            }
        }

    }
}
