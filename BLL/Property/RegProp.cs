using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{

    public class DonorProp
    {
        public int D_id { get; set; }
        public string D_Name { get; set; }
        public int D_age { get; set; }
        public string D_Contact { get; set; }
        public string D_SecContact { get; set; }
        public string D_Gender { get; set; }
        public string D_Address { get; set; }
        public string D_bgroup { get; set; }
        public DateTime Reg_date { get; set; }
        public string Image_name { get; set; }

        public string Email { get; set; }
        public string Password { get; set; }
        
    }

    public class UserProp
    {
        public int U_id { get; set; }
        public string U_Name { get; set; }
        public string Email { get; set; }
        public int U_Type { get; set; }
        public string Password { get; set; }
        public string U_Contact { get; set; }
        public string U_Contact2 { get; set; }
        public string U_CName { get; set; }
        public string U_CName2 { get; set; }
        public string U_Address { get; set; }
        public DateTime Reg_date { get; set; }
        public string Image_name { get; set; }
    }

    public class Login
    {
        public int LoginID { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int UserType { get; set; }
        public int UserStatus { get; set; }

    }

    public class Request
    {

        public int RId { get; set; }
        public int Requested_By { get; set; }
        public int Requested_To { get; set; }
        public DateTime Requested_Date { get; set; }
        public string Requested_BloodGroup { get; set; }
        public string ReasonForReject { get; set; }

        public int Status { get; set; }

    }
  
    public class DonorHistory
    {

    public int D_id { get; set; }
    public DateTime Donate_Date { get; set; }
    public string Description { get; set; }

    }
}
