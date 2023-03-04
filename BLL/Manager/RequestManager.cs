using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL.Property;
using System.Collections;
using System.Data;

namespace BLL.Manager
{
   public class RequestManager
    {
        private Dbhelper Db_Obj = new Dbhelper();

        public Request ReqProp = new Request();
        public DonorHistory DonHistory = new DonorHistory();

        private SortedList S1 = new SortedList();
        public string InsertRequest()
        {

            S1.Clear();
            S1.Add("Requested_By", ReqProp.Requested_By);
            S1.Add("Requested_To", ReqProp.Requested_To);
            S1.Add("Requested_Date", ReqProp.Requested_Date);
            S1.Add("Requested_BloodGroup", ReqProp.Requested_BloodGroup);


            return Db_Obj.insertprocedure(S1, "InsertRequest");
        }
        public DataTable GetAllRequestFromUser()
        {
            S1.Clear();
            S1.Add("Requested_By", ReqProp.Requested_By);

            return Db_Obj.GetDataTable(S1, "GetAllRequestFromUser");
        }

        public DataTable GetAllRequestForDonor()
        {
            S1.Clear();
            S1.Add("Requested_To", ReqProp.Requested_To);

            return Db_Obj.GetDataTable(S1, "GetAllRequestForDonor");
        }
        public string UpdateRequest()
        {

            S1.Clear();
            S1.Add("RId", ReqProp.RId);
            S1.Add("ReasonForReject", ReqProp.ReasonForReject);
            S1.Add("Status", ReqProp.Status);

            return Db_Obj.insertprocedure(S1, "UpdateRequest");
        }
        public string Insertdonhistory()
        {
        
            S1.Clear();
            S1.Add("D_id", DonHistory.D_id);
            S1.Add("Donate_Date", DonHistory.Donate_Date);
            S1.Add("Description", DonHistory.Description);


            return Db_Obj.insertprocedure(S1, "sp_insertdonhistory");
        }
    }
}
