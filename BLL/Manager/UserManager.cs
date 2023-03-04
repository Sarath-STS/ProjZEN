using BLL.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class UserManager
    {
        private Dbhelper Db_Obj = new Dbhelper();

        public UserProp UsProp = new UserProp();

        private SortedList S1 = new SortedList();
        public string Insertuser()
        {
            S1.Clear();
            S1.Add("U_Name", UsProp.U_Name);
            S1.Add("Email", UsProp.Email);
            S1.Add("Password", UsProp.Password);
            S1.Add("U_Type", UsProp.U_Type);
            S1.Add("U_Contact", UsProp.U_Contact);
            S1.Add("U_CName", UsProp.U_CName);
            S1.Add("U_Contact2", UsProp.U_Contact2);
            S1.Add("U_CName2", UsProp.U_CName2);
            S1.Add("U_Address", UsProp.U_Address);
            S1.Add("Reg_date", UsProp.Reg_date);
            S1.Add("Image_name", UsProp.Image_name);

            return Db_Obj.insertprocedure(S1, "InsertUserOrg");
        }
        
        public string UpdateUser()
        {
            S1.Clear();
            S1.Add("U_id", UsProp.U_id);
            S1.Add("U_Name", UsProp.U_Name);
            S1.Add("U_Type", UsProp.U_Type);
            S1.Add("U_Contact", UsProp.U_Contact);
            S1.Add("U_CName", UsProp.U_CName);
            S1.Add("U_Contact2", UsProp.U_Contact2);
            S1.Add("U_CName2", UsProp.U_CName2);
            S1.Add("U_Address", UsProp.U_Address);
            S1.Add("Image_name", UsProp.Image_name);

            return Db_Obj.insertprocedure(S1, "UpdateUserOrg");
        }
        public string SetUserActive()
        {
            S1.Clear();
            S1.Add("U_id", UsProp.U_id);

            return Db_Obj.insertprocedure(S1, "sp_SetUserActive");

        }
        public string SetUserInActive()
        {
            S1.Clear();
            S1.Add("U_id", UsProp.U_id);

            return Db_Obj.insertprocedure(S1, "sp_SetUserInActive");

        }

        public DataTable GetAllUserDetails()
        {
            string Sql = "select U_id,U_Name,U_Type,U_Contact,U_Contact2,U_CName,U_CName2 from UserOrg";
            return Db_Obj.GetDataTable(Sql);

        }

        public void ViewLoginUser()
        {
            S1.Clear();
            S1.Add("Email", UsProp.Email);
            DataTable dt = new DataTable();
            dt = Db_Obj.GetDataTable(S1, "sp_userpersonaldetails");
            if (dt.Rows.Count > 0)
            {
                UsProp.U_Name = dt.Rows[0].ItemArray[0].ToString();
                UsProp.Email = dt.Rows[0].ItemArray[1].ToString();
                UsProp.U_Type = Convert.ToInt32(dt.Rows[0].ItemArray[2].ToString());
                UsProp.U_Contact = dt.Rows[0].ItemArray[3].ToString();
                UsProp.U_Contact2 = dt.Rows[0].ItemArray[4].ToString();
                UsProp.U_CName = dt.Rows[0].ItemArray[5].ToString();
                UsProp.U_CName2 = dt.Rows[0].ItemArray[6].ToString();
                UsProp.U_Address = dt.Rows[0].ItemArray[7].ToString();
                UsProp.Image_name = dt.Rows[0].ItemArray[8].ToString();
                UsProp.Reg_date = Convert.ToDateTime(dt.Rows[0].ItemArray[9]);
            }
        }
        public DataTable GetUserDetails()
        {
            S1.Clear();
            S1.Add("U_id", UsProp.U_id);
            DataTable dt = new DataTable();
            dt = Db_Obj.GetDataTable(S1, "sp_getuserdetails");
            return dt;
        }
        
    }
       
}
