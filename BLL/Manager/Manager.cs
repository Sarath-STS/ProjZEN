using BLL.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{ // login
    public class Manager
    {
        public Dbhelper Db_Obj = new Dbhelper();

        public Login LogRegPro_Obj = new Login();

        public SortedList S1 = new SortedList();

        public int VerifyLogin()
        {
            S1.Clear();
            S1.Add("Email", LogRegPro_Obj.Email);
            S1.Add("Password", LogRegPro_Obj.Password);

            return Convert.ToInt32(Db_Obj.executeprocedure(S1, "sp_VerifyLogin"));
            
        }

        public int GetLoginDetails()
        {
            S1.Clear();
            S1.Add("Email", LogRegPro_Obj.Email);
            S1.Add("Password", LogRegPro_Obj.Password);

            return Convert.ToInt32(Db_Obj.executeprocedure(S1, "sp_GetLoginDetails"));

        }

        public DataTable Getdonorpersonaldetails()
        {
            S1.Clear();
            S1.Add("Email", LogRegPro_Obj.Email);

            return Db_Obj.GetDataTable(S1, "sp_getdonorpersonaldetails");
        }

        public DataTable Userpersonaldetails()
        {
            S1.Clear();
            S1.Add("Email", LogRegPro_Obj.Email);

            return Db_Obj.GetDataTable(S1, "sp_userpersonaldetails");
        }
    }
}
