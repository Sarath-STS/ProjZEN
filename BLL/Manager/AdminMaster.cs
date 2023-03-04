using BLL.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
   public class AdminMaster 
   { 
    private Dbhelper Db_Obj = new Dbhelper();

        public Login Adm_Obj = new Login();

    private SortedList S1 = new SortedList();

        public string AdminLogin()
        {
            S1.Add("Email", Adm_Obj.Email);
            S1.Add("Password", Adm_Obj.Password);

            return Db_Obj.executeprocedure(S1, "adminLogin");
        }

    }

}
