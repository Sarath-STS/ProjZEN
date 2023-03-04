using System;
using BLL.Manager;
using BLL.Property;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjZEN
{
    public partial class UserProfile : System.Web.UI.Page
    {
        UserManager UserObj = new UserManager();
        UserProp UserProp = new UserProp();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"]!=null)
                {
                   int userid=Convert.ToInt32( Session["UserID"].ToString()) ;
                    UserProp.U_id = userid;
                    UserObj.UsProp = UserProp;
                    DataTable dt = new DataTable();
                    dt = UserObj.GetUserDetails();
                    if (dt.Rows.Count > 0) 
                    {
  
                        TxtName.Text = dt.Rows[0]["U_Name"].ToString();
                        TxtAddress.Text= dt.Rows[0]["U_Address"].ToString();
                        TXTCONTCT.Text = dt.Rows[0]["U_Contact"].ToString();
                        TXTcontact1.Text = dt.Rows[0]["U_Contact2"].ToString();
                        TxtCName.Text = dt.Rows[0]["U_CName"].ToString();
                        TxtCname1.Text = dt.Rows[0]["U_CName2"].ToString();
                       DropDown.SelectedValue= dt.Rows[0]["U_Type"].ToString();
                    }
                }
            }
           
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            UserProp.U_id = Convert.ToInt32(Session["UserID"].ToString());
            UserProp.U_Name = TxtName.Text;
            UserProp.U_Type = Convert.ToInt32(DropDown.SelectedValue);
            UserProp.U_Contact = TXTCONTCT.Text;
            UserProp.U_CName = TxtCName.Text;
            UserProp.U_Contact2 = TXTcontact1.Text;
            UserProp.U_CName2 = TxtCname1.Text;
            UserProp.U_Address = TxtAddress.Text;
            UserProp.Image_name = FileUpload.PostedFile.FileName;
            UserProp.Reg_date = System.DateTime.Now;
            UserObj.UsProp = UserProp;
            UserObj.UpdateUser();
            RegLbl.Text = "User Updated SuccessFully";
            
            TxtName.Text = "";
            TxtAddress.Text = "";
            TXTCONTCT.Text = "";
            TxtCName.Text = "";
            TXTcontact1.Text = "";
            TxtCname1.Text = "";
        }

        
    }
}