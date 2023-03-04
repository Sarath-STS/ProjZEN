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
    public class DonorManager
    {
        private Dbhelper Db_Obj = new Dbhelper();

        public DonorProp DnProp = new DonorProp();

        private SortedList S1 = new SortedList();

        public string insertdonor()
        {
            S1.Clear();
            S1.Add("D_Name", DnProp.D_Name);
            S1.Add("D_SecContact", DnProp.D_SecContact);
            S1.Add("D_Contact", DnProp.D_Contact);
            S1.Add("D_Gender", DnProp.D_Gender);
            S1.Add("D_age", DnProp.D_age);
            S1.Add("D_bgroup", DnProp.D_bgroup);
            S1.Add("D_Address", DnProp.D_Address);
            S1.Add("Reg_date", DnProp.Reg_date);
            S1.Add("Image_name", DnProp.Image_name);
            S1.Add("Email", DnProp.Email);
            S1.Add("Password", DnProp.Password);

            return Db_Obj.insertprocedure(S1, "InsertDonor");
        }

        public string Updatedonor()
        {
            S1.Clear();
            S1.Add("D_id", DnProp.D_id);
            S1.Add("D_Name", DnProp.D_Name);
            S1.Add("D_SecContact", DnProp.D_SecContact);
            S1.Add("D_Contact", DnProp.D_Contact);
            S1.Add("D_Gender", DnProp.D_Gender);
            S1.Add("D_age", DnProp.D_age);
            S1.Add("D_bgroup", DnProp.D_bgroup);
            S1.Add("D_Address", DnProp.D_Address);
            S1.Add("Image_name", DnProp.Image_name);

            return Db_Obj.insertprocedure(S1, "UpdateDonor");

        }
        public DataTable GetAllDonerDetails()
        {
            string Sql = "select D_id,D_Name,D_age,D_Contact,D_SecContact,D_Gender,D_bgroup from Donor";
            return  Db_Obj.GetDataTable(Sql) ;

        }
        public DataTable GetdonorHistory()
        {
            S1.Clear();
            S1.Add("D_id", DnProp.D_id);

            return Db_Obj.GetDataTable(S1, "sp_getdonhistory");
        }

        public string SetDonorActive()
        {
            S1.Clear();
            S1.Add("D_id", DnProp.D_id);

            return Db_Obj.insertprocedure(S1, "sp_SetDonorActive");
            
        }
        public string SetDonorInActive()
        {
            S1.Clear();
            S1.Add("D_id", DnProp.D_id);

            return Db_Obj.insertprocedure(S1, "sp_SetDonorInActive");

        }

        public DataTable GetDonorDetails()
        {
            S1.Clear();
            S1.Add("D_id", DnProp.D_id);
            DataTable dt = new DataTable();
            dt = Db_Obj.GetDataTable(S1, "sp_getdonordetails");
            return dt;
        }
    }
}
